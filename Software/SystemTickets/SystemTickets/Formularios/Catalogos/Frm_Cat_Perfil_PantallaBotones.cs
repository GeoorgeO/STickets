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
    public partial class Frm_Cat_Perfil_PantallaBotones : DevExpress.XtraEditors.XtraForm
    {

        public string c_codigo_usu { get; set; }
        public string c_codigo_per { get; set; }
        public string c_codigo_pan { get; set; }

        private string varpan,varpanbot;

        private static Frm_Cat_Perfil_PantallaBotones m_FormDefInstance;
        public static Frm_Cat_Perfil_PantallaBotones DefInstance
        {
            get
            {
                if (m_FormDefInstance == null || m_FormDefInstance.IsDisposed)
                    m_FormDefInstance = new Frm_Cat_Perfil_PantallaBotones();
                return m_FormDefInstance;
            }
            set
            {
                m_FormDefInstance = value;
            }
        }

        public bool isEdit { get; private set; }

        public Frm_Cat_Perfil_PantallaBotones()
        {
            InitializeComponent();
        }

        private void MakeTablaPantallas()
        {
            DataTable table = new DataTable("FirstTable");
            DataColumn column = new DataColumn();
            table.Reset();

            // DataRow row;
            column.DataType = typeof(string);
            column.ColumnName = "c_codigo_per";
            column.AutoIncrement = false;
            column.Caption = "Cod. Perfil";
            column.ReadOnly = false;
            column.Unique = false;

            table.Columns.Add(column);

            column = new DataColumn();
            column.DataType = typeof(string);
            column.ColumnName = "v_nombre_per";
            column.AutoIncrement = false;
            column.Caption = "Perfil";
            column.ReadOnly = false;
            column.Unique = false;

            table.Columns.Add(column);

            column = new DataColumn();
            column.DataType = typeof(string);
            column.ColumnName = "id_pantalla_boton";
            column.AutoIncrement = false;
            column.Caption = "cod. pant - boton";
            column.ReadOnly = false;
            column.Unique = false;

            table.Columns.Add(column);

            column = new DataColumn();
            column.DataType = typeof(string);
            column.ColumnName = "v_pantalla_boton";
            column.AutoIncrement = false;
            column.Caption = "Pantalla Boton";
            column.ReadOnly = false;
            column.Unique = false;

            table.Columns.Add(column);

            gcPerfilPantBot.DataSource = table;
        }

        private void LimpiarCampos()
        {
            luePantallaBoton.Properties.DataSource = null;
            luePerfil.Properties.DataSource = null;
            luePantalla.Properties.DataSource = null;
            isEdit = false;
        }

        private void CargarPantallas()
        {
            CLS_CatPerfil_PantallaBotones sel = new CLS_CatPerfil_PantallaBotones();
            sel.MtdSeleccionarPerfil_PantallaBotones();
            if (sel.Exito)
            {
                gcPerfilPantBot.DataSource = sel.Datos;
            }

            CLS_CatPantallas selPan = new CLS_CatPantallas();
            selPan.MtdSeleccionarPantallas();
            if (selPan.Exito)
            {
                luePantalla.Properties.DisplayMember = "v_nombre_pan";
                luePantalla.Properties.ValueMember = "c_codigo_pan";
                luePantalla.EditValue = null;
                luePantalla.Properties.DataSource = selPan.Datos;
            }

            CLS_CatPerfiles selPer = new CLS_CatPerfiles();
            selPer.MtdSeleccionarPerfiles();
            if (selPer.Exito)
            {
                luePerfil.Properties.DisplayMember = "v_nombre_per";
                luePerfil.Properties.ValueMember = "c_codigo_per";
                luePerfil.EditValue = null;
                luePerfil.Properties.DataSource = selPer.Datos;
            }
        }

        private void InsertarRegistro()
        {
            CLS_CatPerfil_PantallaBotones x = new CLS_CatPerfil_PantallaBotones();
            x.c_codigo_per = luePerfil.EditValue.ToString();
            x.id_pantalla_boton = Convert.ToInt32(luePantallaBoton.EditValue.ToString());
            x.MtdInsertarPerfil_PantallaBotones();
            if (x.Exito)
            {
                gcPerfilPantBot.DataSource = x.Datos;
                XtraMessageBox.Show("Se ha Insertado el registro con exito");
                LimpiarCampos();
                CargarPantallas();
            }
            else
            {
                XtraMessageBox.Show(x.Mensaje);
            }
        }


        private void EliminarRegistro(string codper,string codpanbot)
        {
            CLS_CatPerfil_PantallaBotones ins = new CLS_CatPerfil_PantallaBotones();
            ins.c_codigo_per = codper;
            ins.id_pantalla_boton = Convert.ToInt32(codpanbot);
            ins.MtdEliminarPerfil_PantallaBotones();
            if (ins.Exito)
            {
                LimpiarCampos();
                CargarPantallas();
                XtraMessageBox.Show("Se ha Eliminado el registro con exito");
            }
            else
            {
                XtraMessageBox.Show(ins.Mensaje);
            }
        }

        private void CargaPAntallaBotones(string codpan)
        {
            CLS_CatPerfil_PantallaBotones selPan = new CLS_CatPerfil_PantallaBotones();
            selPan.c_codigo_pan = codpan;
            selPan.MtdSeleccionarPerfil_PantallaBotones_PantallaBotones();
            if (selPan.Exito)
            {
                luePantallaBoton.Properties.DisplayMember = "v_pantalla_boton";
                luePantallaBoton.Properties.ValueMember = "id_pantalla_boton";
                luePantallaBoton.EditValue = null;
                luePantallaBoton.Properties.DataSource = selPan.Datos;
            }
        }

        private void Frm_Cat_Perfil_PantallaBotones_Load(object sender, EventArgs e)
        {
            MakeTablaPantallas();
            CargarPantallas();
        }

        private void btnSalir_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            this.Close();
        }

        private void luePantalla_EditValueChanged(object sender, EventArgs e)
        {
            luePantallaBoton.Properties.DataSource = null;
            if (luePantalla.Properties.DataSource == null)
            {
            }else { 
            
                CargaPAntallaBotones(luePantalla.EditValue.ToString());
            }
           

        }

        private void btnGuardar_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            InsertarRegistro();
        }

        private void btnNuevo_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            LimpiarCampos();
            CargarPantallas();
        }

        private void gcPerfilPantBot_Click(object sender, EventArgs e)
        {
            try
            {
                foreach (int i in this.gridView1.GetSelectedRows())
                {
                    DataRow row = this.gridView1.GetDataRow(i);
                   varpan = row["c_codigo_per"].ToString();
                    varpanbot = row["id_pantalla_boton"].ToString();
                    
                    isEdit = true;
                }
            }
            catch (Exception ex)
            {
                XtraMessageBox.Show(ex.Message);
            }
        }

        private void btnEliminar_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            if (isEdit == true)
            {
                EliminarRegistro(varpan,varpanbot);

            }
            else
            {
                XtraMessageBox.Show("No se ha seleccionado registro a Eliminar [Registro Requerido]");
            }
        }
    }
}