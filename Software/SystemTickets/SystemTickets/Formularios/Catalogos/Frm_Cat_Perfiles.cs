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
    public partial class Frm_Cat_Perfiles : DevExpress.XtraEditors.XtraForm
    {
        public string c_codigo_usu { get; set; }
        public string c_codigo_per { get; set; }
        public string c_codigo_pan { get; set; }
        private static Frm_Cat_Perfiles m_FormDefInstance;
        public static Frm_Cat_Perfiles DefInstance
        {
            get
            {
                if (m_FormDefInstance == null || m_FormDefInstance.IsDisposed)
                    m_FormDefInstance = new Frm_Cat_Perfiles();
                return m_FormDefInstance;
            }
            set
            {
                m_FormDefInstance = value;
            }
        }

        public bool isEdit { get; private set; }

        public Frm_Cat_Perfiles()
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
            column.Caption = "Id";
            column.ReadOnly = false;
            column.Unique = false;

            table.Columns.Add(column);

            column = new DataColumn();
            column.DataType = typeof(string);
            column.ColumnName = "v_nombre_per";
            column.AutoIncrement = false;
            column.Caption = "Nombre";
            column.ReadOnly = false;
            column.Unique = false;

            table.Columns.Add(column);

            

            dtgPerfiles.DataSource = table;
        }
        private void LimpiarCampos()
        {
            txtId.Text = string.Empty;
            txtNombre.Text = string.Empty;
            dtgPerfiles.DataSource = null;
            MakeTablaPantallas();
            txtNombre.Focus();
            isEdit = false;
           

        }

        private void CargarPantallas()
        {
            CLS_CatPerfiles sel = new CLS_CatPerfiles();
            sel.MtdSeleccionarPerfiles();
            if (sel.Exito)
            {
                dtgPerfiles.DataSource = sel.Datos;
            }
        }

        private void InsertarRegistro()
        {
            CLS_CatPerfiles ins = new CLS_CatPerfiles();
            ins.v_nombre_per = txtNombre.Text;
            ins.MtdInsertarPerfiles();
            if (ins.Exito)
            {
                dtgPerfiles.DataSource = ins.Datos;
                XtraMessageBox.Show("Se ha Insertado en registro con exito");
                LimpiarCampos();
                CargarPantallas();
            }
            else
            {
                XtraMessageBox.Show(ins.Mensaje);
            }
        }
        private void ActualizarRegistro()
        {
            CLS_CatPerfiles ins = new CLS_CatPerfiles();
            ins.c_codigo_per = txtId.Text;
            ins.v_nombre_per = txtNombre.Text;
            ins.MtdActualizarPerfiles();
            if (ins.Exito)
            {
                dtgPerfiles.DataSource = ins.Datos;
                XtraMessageBox.Show("Se ha Actualizado el registro con exito");
                LimpiarCampos();
                CargarPantallas();
            }
            else
            {
                XtraMessageBox.Show(ins.Mensaje);
            }
        }

        private void EliminarRegistro()
        {
            CLS_CatPerfiles ins = new CLS_CatPerfiles();
            ins.c_codigo_per = txtId.Text;
            ins.MtdEliminarPerfiles();
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

        private void btnNuevo_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            LimpiarCampos();
            CargarPantallas();
            
        }

        private void btnGuardar_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            if (txtNombre.Text != string.Empty)
            {
                if (isEdit == false)
                {
                    InsertarRegistro();
                }
                else
                {
                    ActualizarRegistro();
                }
            }
            else
            {
                XtraMessageBox.Show("El nombre de la pantalla mo puede Estar Vacio [Campo Requerido]");
            }
        }

        private void btnEliminar_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            if (isEdit == true)
            {
                EliminarRegistro();

            }
            else
            {
                XtraMessageBox.Show("No se ha seleccionado registro a Eliminar [Registro Requerido]");
            }
        }

        private void btnSalir_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            this.Close();
        }

        private void Frm_Cat_Perfiles_Load(object sender, EventArgs e)
        {
            MakeTablaPantallas();
            CargarPantallas();
           
        }

        private void dtgPerfiles_Click(object sender, EventArgs e)
        {
            try
            {
                foreach (int i in this.gridView1.GetSelectedRows())
                {
                    DataRow row = this.gridView1.GetDataRow(i);
                    txtId.Text = row["c_codigo_per"].ToString();
                    txtNombre.Text = row["v_nombre_per"].ToString();
                    
                    isEdit = true;
                }
            }
            catch (Exception ex)
            {
                XtraMessageBox.Show(ex.Message);
            }
        }
    }
}
