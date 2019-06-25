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
    public partial class Frm_Cat_Departamento_Actividad : DevExpress.XtraEditors.XtraForm
    {

        public string c_codigo_usu { get; set; }
        public string c_codigo_per { get; set; }
        public string c_codigo_pan { get; set; }

        private static Frm_Cat_Departamento_Actividad m_FormDefInstance;

        private TreeNode Nodoseleccionado;
        private List<string> Lc_codigo_dep = new List<string>();
        private List<string> Lv_nombre_dep = new List<string>();
        private List<string> Lc_codigo_act = new List<string>();
        private List<string> Lv_nombre_act = new List<string>();
        private List<string> Lc_actividad_padre = new List<string>();
        private Boolean primario;

        public static Frm_Cat_Departamento_Actividad DefInstance
        {
            get
            {
                if (m_FormDefInstance == null || m_FormDefInstance.IsDisposed)
                    m_FormDefInstance = new Frm_Cat_Departamento_Actividad();
                return m_FormDefInstance;
            }
            set
            {
                m_FormDefInstance = value;
            }
        }

        public bool isEdit { get; private set; }

        public Frm_Cat_Departamento_Actividad()
        {
            InitializeComponent();
        }

        private void CargarDepartamentos()
        {
            CLS_CatDepartamento_Actividades sel = new CLS_CatDepartamento_Actividades();
            sel.MtdSeleccionarDepartamento_Actividades_Departamento();
            if (sel.Exito)
            {
                lueDep.Properties.DisplayMember = "v_nombre_dep";
                lueDep.Properties.ValueMember = "c_codigo_dep";
                lueDep.EditValue = null;
                lueDep.Properties.DataSource = sel.Datos;
            }
        }

        private void CargarDepartamento_Actividades()
        {
            primario = false;
            CLS_CatDepartamento_Actividades sel = new CLS_CatDepartamento_Actividades();
            sel.MtdSeleccionarDepartamento_Actividades();
            if (sel.Exito)
            {
                int r;

                for (r = 0; r < sel.Datos.Rows.Count; r++)
                {
                    if (sel.Datos.Rows[r][0].ToString()!=string.Empty || sel.Datos.Rows[r][2].ToString().Trim().Length == 0)
                    {
                        primario = true;

                        agregarNodo(sel.Datos.Rows[r][1].ToString()+" - "+ sel.Datos.Rows[r][3].ToString());
                        Lc_codigo_dep.Add(sel.Datos.Rows[r][0].ToString());
                        Lv_nombre_dep.Add(sel.Datos.Rows[r][1].ToString());
                        Lc_codigo_act.Add(sel.Datos.Rows[r][2].ToString());
                        Lv_nombre_act.Add(sel.Datos.Rows[r][3].ToString());
                        Lc_actividad_padre.Add(sel.Datos.Rows[r][4].ToString());
                        
                    }
                    else
                    {
                        RecorrerTree(treeView1, sel.Datos, r);
                    }
                }
            }
        }

        private void agregarNodo(string Texto)
        {
            treeView1.Nodes.Add(Texto);
        }
        private void agregarSubNodo(TreeNode NodoPadre, string Texto)
        {
            NodoPadre.Nodes.Add(Texto);
        }

        private void PrintRecursive(TreeNode treeNode, DataTable da, int r)
        {
            // Print the node.  
            System.Diagnostics.Debug.WriteLine(treeNode.Text);
            //XtraMessageBox.Show(da.Rows[r][2].ToString().Trim() + " == " + treeNode.Text.Substring(0, treeNode.Text.Trim().IndexOf("-") - 1));
            //if (da.Rows[r][2].ToString().Trim() == treeNode.Text.Substring(0, treeNode.Text.Trim().IndexOf("-") - 1))
            int g;
            string TempCodPadre = "";
            for (g = 0; g < Lc_codigo_act.LongCount(); g++)
            {
               
                    if (treeNode.Text == Lv_nombre_dep[g]+" - "+ Lv_nombre_act[g] || treeNode.Text == Lv_nombre_act[g])
                    {
                        
                            TempCodPadre = Lc_codigo_act[g];
   
                        break;
                    }
            }

            
                if (da.Rows[r][4].ToString().Trim() == TempCodPadre)
                {
                    primario = false;
                    agregarSubNodo(treeNode, /*da.Rows[r][0].ToString() + " - " +*/ da.Rows[r][3].ToString());
                    Lc_codigo_dep.Add(da.Rows[r][0].ToString());
                    Lv_nombre_dep.Add(da.Rows[r][1].ToString());
                    Lc_codigo_act.Add(da.Rows[r][2].ToString());
                    Lv_nombre_act.Add(da.Rows[r][3].ToString());
                    Lc_actividad_padre.Add(da.Rows[r][4].ToString());    
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
        private void RecorrerTree(TreeView treeView, DataTable da, int r)
        {
            // Print each node recursively.  
            TreeNodeCollection nodes = treeView.Nodes;
            foreach (TreeNode n in nodes)
            {
                PrintRecursive(n, da, r);
            }
        }

        private void LimpiarPantalla()
        {
            txtId.Text = "";
            txtActividad.Text = "";
            lueDep.Properties.DataSource = null;
            treeView1.Nodes.Clear();

            CargarDepartamentos();
            CargarDepartamento_Actividades();

            lueDep.ReadOnly = false;
            sbActividad.Enabled = true;

            isEdit = false;
        }

        private void InsertarRegistro()
        {
            CLS_CatDepartamento_Actividades ins = new CLS_CatDepartamento_Actividades();
            ins.c_codigo_dep = lueDep.EditValue.ToString();
            ins.c_codigo_act = txtId.Text;
           
            ins.MtdInsertarDepartamento_Actividad();
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

        private void EliminarRegistro()
        {
            CLS_CatDepartamento_Actividades ins = new CLS_CatDepartamento_Actividades();
            ins.c_codigo_act = txtId.Text;
            ins.c_codigo_dep = lueDep.EditValue.ToString();
            ins.MtdEliminarDepartamento_Actividad();
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


        private void Frm_Cat_Departamento_Actividad_Load(object sender, EventArgs e)
        {
            CargarDepartamentos();
            CargarDepartamento_Actividades();
        }

        private void btnSalir_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            this.Close();
        }

        private void sbActividad_Click(object sender, EventArgs e)
        {
            Frm_Sel_ActividadPadre selP = new Frm_Sel_ActividadPadre();
            selP.ShowDialog();
            if (selP.NodoPadre != null)
            {
                txtId.Text = selP.NodoPadre.Text.Substring(0, selP.NodoPadre.Text.IndexOf("-") - 1);
                txtActividad.Text = selP.NodoPadre.Text.Substring(selP.NodoPadre.Text.IndexOf("-") + 2);
            }
        }

        private void btnGuardar_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            if (isEdit == false && txtId.Text.Trim().Length > 0 && lueDep.EditValue.ToString().Trim().Length>0)
            {
                InsertarRegistro();
            }else
            {
                XtraMessageBox.Show("Es necesario seleccionar un departamento y una actividad.");
            }
        }

        private void btnNuevo_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            LimpiarPantalla();
        }

        private void treeView1_AfterSelect(object sender, TreeViewEventArgs e)
        {
            TreeNode NodoPadre;
            Nodoseleccionado = treeView1.SelectedNode;

            NodoPadre = Nodoseleccionado.Parent;
            int h;
            if (NodoPadre == null)
            {
                for (h = 0; h < Lv_nombre_act.Count; h++)
                {
                    if (Nodoseleccionado.Text == Lv_nombre_dep[h] + " - " + Lv_nombre_act[h])
                    {
                        lueDep.EditValue = Lc_codigo_dep[h];
                        txtId.Text = Lc_codigo_act[h];
                        txtActividad.Text = Lv_nombre_act[h];
                        break;
                    }
                }
            }
            else
            {
                
                for (h = 0; h < Lv_nombre_act.Count; h++)
                {
                    if (NodoPadre.Text == Lv_nombre_dep[h] + " - " + Lv_nombre_act[h])
                    {
                        lueDep.EditValue = Lc_codigo_dep[h];
                        txtId.Text = Lc_codigo_act[h];
                        txtActividad.Text = Lv_nombre_act[h];
                        break;
                    }
                }
            }

            lueDep.ReadOnly = true;
            sbActividad.Enabled = false;
            isEdit = true;


        }

        private void btnEliminar_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            if (isEdit==true && txtId.Text.Trim().Length>0)
            {
                EliminarRegistro();
            }
            
        }

        private void sbAlta_Click(object sender, EventArgs e)
        {
            Frm_Cat_Departamentos Dep = new Frm_Cat_Departamentos();
            Dep.ShowDialog();
            lueDep.Properties.DataSource = null;
            CargarDepartamentos();
        }
    }
}