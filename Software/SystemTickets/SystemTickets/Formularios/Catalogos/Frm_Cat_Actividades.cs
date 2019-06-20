using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Text;
using System.Linq;
using System.Threading.Tasks;
using System.Windows.Forms;
using DevExpress.XtraEditors;
using CapaDeDatos;


namespace SystemTickets
{
    public partial class Frm_Cat_Actividades : DevExpress.XtraEditors.XtraForm
    {
        public string c_codigo_usu { get; set; }
        public string c_codigo_per { get; set; }
        public string c_codigo_pan { get; set; }

        private string codAct;

        private TreeNode Nodoseleccionado;
        private List<string> LCodAct = new List<string>();
        private List<string> LNomAct = new List<string>();


        private static Frm_Cat_Actividades m_FormDefInstance;
        public static Frm_Cat_Actividades DefInstance
        {
            get
            {
                if (m_FormDefInstance == null || m_FormDefInstance.IsDisposed)
                    m_FormDefInstance = new Frm_Cat_Actividades();
                return m_FormDefInstance;
            }
            set
            {
                m_FormDefInstance = value;
            }
        }

        public bool isEdit { get; private set; }

        public Frm_Cat_Actividades()
        {
            InitializeComponent();
        }

        private void LimpiarPantalla()
        {
            txtId.Text = "";
            txtNodoPadre.Text = "";
            txtActividad.Text = "";
            meDescripcion.Text = "";
            Nodoseleccionado = null;
            treeView1.Nodes.Clear();
            CargarPantallas();

            isEdit = false;

            txtActividad.ReadOnly = false;
            sbSelPadre.Enabled = true;
        }

        private void agregarNodo(string Texto)
        {
            treeView1.Nodes.Add(Texto);
        }
        private void agregarSubNodo(TreeNode NodoPadre,string Texto)
        {
            NodoPadre.Nodes.Add(Texto);
        }

        private void CargarPantallas()
        {
            CLS_CatActividades sel = new CLS_CatActividades();
            sel.MtdSeleccionarActividades();
            if (sel.Exito)
            {
                int r;
               
                for (r=0; r < sel.Datos.Rows.Count; r++)
                {
                    if (sel.Datos.Rows[r][2].ToString() == String.Empty || sel.Datos.Rows[r][2].ToString().Trim().Length==0)
                    {
                        agregarNodo(/*sel.Datos.Rows[r][0].ToString()+" - "+ */sel.Datos.Rows[r][1].ToString());
                        LCodAct.Add(sel.Datos.Rows[r][0].ToString());
                        LNomAct.Add(sel.Datos.Rows[r][1].ToString());
                    }
                    else
                    {
                        RecorrerTree(treeView1,sel.Datos,r); 
                    }
                }
                
                

            }
        }

        private void PrintRecursive(TreeNode treeNode, DataTable da,int r)
        {
            // Print the node.  
            System.Diagnostics.Debug.WriteLine(treeNode.Text);
            //XtraMessageBox.Show(da.Rows[r][2].ToString().Trim() + " == " + treeNode.Text.Substring(0, treeNode.Text.Trim().IndexOf("-") - 1));
            //if (da.Rows[r][2].ToString().Trim() == treeNode.Text.Substring(0, treeNode.Text.Trim().IndexOf("-") - 1))
            int g;
            string TempCodPadre="";
            for (g = 0; g < LCodAct.LongCount(); g++)
            {
                if (treeNode.Text == LNomAct[g])
                {
                    TempCodPadre = LCodAct[g];
                    break;
                }
            }

              if (da.Rows[r][2].ToString().Trim() == TempCodPadre)
                {
                agregarSubNodo(treeNode, /*da.Rows[r][0].ToString() + " - " +*/ da.Rows[r][1].ToString());
                LCodAct.Add(da.Rows[r][0].ToString());
                LNomAct.Add(da.Rows[r][1].ToString());
            }
            else
            {
                foreach (TreeNode tn in treeNode.Nodes)
                {
                    PrintRecursive(tn, da, r);
                }
            }
            // Print each node recursively.  
           
        }

        // Call the procedure using the TreeView.  
        private void RecorrerTree(TreeView treeView, DataTable da,int r)
        {
            // Print each node recursively.  
            TreeNodeCollection nodes = treeView.Nodes;
            foreach (TreeNode n in nodes)
            {
                PrintRecursive(n,da,r);
            }
        }

        private void selActividad()
        {
            CLS_CatActividades sel = new CLS_CatActividades();
            sel.c_codigo_act = codAct;
            sel.MtdSeleccionarActividad();
            if (sel.Exito)
            {
                int r;

                for (r = 0; r < sel.Datos.Rows.Count; r++)
                {

                    if (sel.Datos.Rows[r][0].ToString() == string.Empty)
                    {
                        txtId.Text = "";
                    }
                    else
                    {
                        txtId.Text = sel.Datos.Rows[r][0].ToString();
                    }
                    if (sel.Datos.Rows[r][1].ToString() == string.Empty)
                    {
                        txtNodoPadre.Text = "";
                    }
                    else
                    {
                        txtNodoPadre.Text = sel.Datos.Rows[r][1].ToString();
                    }
                    if (sel.Datos.Rows[r][2].ToString() == string.Empty)
                    {
                        meDescripcion.Text = "";
                    }
                    else
                    {
                        meDescripcion.Text = sel.Datos.Rows[r][2].ToString();
                    }



                }

            }
        }

        private void InsertarRegistro()
        {
            CLS_CatActividades ins = new CLS_CatActividades();
            ins.v_nombre_act = txtActividad.Text;
            ins.c_actividad_padre = txtId.Text;
            ins.v_descripcion_act = meDescripcion.Text;
            ins.MtdInsertarActividades();
            if (ins.Exito)
            {
                
                XtraMessageBox.Show("Se ha Insertado el registro con exito");
                LimpiarPantalla();
            }
            else
            {
                XtraMessageBox.Show(ins.Mensaje);
            }
        }

        private void ActualizarRegistro()
        {
            CLS_CatActividades ins = new CLS_CatActividades();
            ins.c_codigo_act = codAct;
            ins.v_nombre_act = txtActividad.Text;
            ins.v_descripcion_act = meDescripcion.Text;
            ins.MtdActualizarActividades();
            if (ins.Exito)
            {
                
                XtraMessageBox.Show("Se ha Actualizado el registro con exito");
                LimpiarPantalla();
            }
            else
            {
                XtraMessageBox.Show(ins.Mensaje);
            }
        }

        private void EliminarRegistro()
        {
            CLS_CatActividades ins = new CLS_CatActividades();
            ins.c_codigo_act = codAct;
            ins.MtdEliminarActividades();
            if (ins.Exito)
            {
                LimpiarPantalla();
                XtraMessageBox.Show("Se ha Eliminado el registro con exito");
            }
            else
            {
                XtraMessageBox.Show(ins.Mensaje);
            }
        }

        private void Frm_Cat_Actividades_Load(object sender, EventArgs e)
        {
            CargarPantallas();
        }

        private void treeView1_AfterSelect(object sender, TreeViewEventArgs e)
        {
            Nodoseleccionado=treeView1.SelectedNode;

            /*txtId.Text = Nodoseleccionado.Text.Substring(0, Nodoseleccionado.Text.IndexOf("-") - 1);
            txtNodoPadre.Text = Nodoseleccionado.Text.Substring(Nodoseleccionado.Text.IndexOf("-")+2);*/

            //codAct= Nodoseleccionado.Text.Substring(0, Nodoseleccionado.Text.IndexOf("-") - 1);
            int f;
            for (f = 0; f < LNomAct.LongCount(); f++)
            {
                if (Nodoseleccionado.Text.Trim() == LNomAct[f].Trim())
                {
                    codAct = LCodAct[f];
                    break;
                }
            }
            
            //txtActividad.Text = Nodoseleccionado.Text.Substring(Nodoseleccionado.Text.IndexOf("-") + 2);
            txtActividad.Text = Nodoseleccionado.Text;

            isEdit = true;

            
            sbSelPadre.Enabled = false;

            selActividad();

        }

        private void btnGuardar_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            if (txtActividad.Text != string.Empty || meDescripcion.Text !=string.Empty)
            {
                if (isEdit == false)
                {
                    InsertarRegistro();
                }
                else
                {
                    ActualizarRegistro();
                }
            }else
            {
                XtraMessageBox.Show("Es necesario Nombre y descripcion de actividad, verifique por favor");
            }
        }

        private void btnSalir_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            this.Close();
        }

        private void btnNuevo_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            LimpiarPantalla();
        }

        private void sbSelPadre_Click(object sender, EventArgs e)
        {
            Frm_Sel_ActividadPadre selP = new Frm_Sel_ActividadPadre();
            selP.ShowDialog();
            if (selP.NodoPadre != null)
            {
                txtId.Text = selP.NodoPadre.Text.Substring(0, selP.NodoPadre.Text.IndexOf("-") - 1);
                txtNodoPadre.Text = selP.NodoPadre.Text.Substring(selP.NodoPadre.Text.IndexOf("-") + 2);
            }
            
        }

        private void btnEliminar_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {

            if (isEdit == true)
            {
                if (treeView1.SelectedNode.Nodes.Count > 0)
                {
                    XtraMessageBox.Show("No se puede eliminar una actividad que contenga subactividades.");
                }
                else
                {
                    EliminarRegistro();
                }
            }
        }
    }
}