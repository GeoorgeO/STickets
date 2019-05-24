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
    public partial class Frm_Cat_Pantallas : DevExpress.XtraEditors.XtraForm
    {
        public string c_codigo_usu { get; set; }
        public string c_codigo_per { get; set; }
        public string c_codigo_pan { get; set; }
        private static Frm_Cat_Pantallas m_FormDefInstance;
        public static Frm_Cat_Pantallas DefInstance
        {
            get
            {
                if (m_FormDefInstance == null || m_FormDefInstance.IsDisposed)
                    m_FormDefInstance = new Frm_Cat_Pantallas();
                return m_FormDefInstance;
            }
            set
            {
                m_FormDefInstance = value;
            }
        }

        public bool isEdit { get; private set; }

        public Frm_Cat_Pantallas()
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
            column.ColumnName = "c_codigo_pam";
            column.AutoIncrement = false;
            column.Caption = "Id";
            column.ReadOnly = false;
            column.Unique = false;

            table.Columns.Add(column);

            column = new DataColumn();
            column.DataType = typeof(string);
            column.ColumnName = "v_nombre_pan";
            column.AutoIncrement = false;
            column.Caption = "Nombre";
            column.ReadOnly = false;
            column.Unique = false;

            table.Columns.Add(column);
            
            dtgPantallas.DataSource = table;
        }
        private void dtgPantallas_Click(object sender, EventArgs e)
        {
            try
            {
                foreach (int i in this.dtgValPantallas.GetSelectedRows())
                {
                    DataRow row = this.dtgValPantallas.GetDataRow(i);
                    txtCodigo.Text = row["c_codigo_pam"].ToString();
                    txtNombre.Text = row["v_nombre_pan"].ToString();
                }
            }
            catch (Exception ex)
            {
                XtraMessageBox.Show(ex.Message);
            }
        }

        private void btnNuevo_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            LimpiarCampos();
        }

        private void LimpiarCampos()
        {
            txtCodigo.Text = string.Empty;
            txtNombre.Text = string.Empty;
            dtgPantallas.DataSource = null;
            MakeTablaPantallas();
            txtNombre.Focus();
        }

        private void btnGuardar_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            if(txtNombre.Text!= string.Empty)
            {
                if(isEdit==false)
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

        private void InsertarRegistro()
        {
            CLS_CatPantallas ins = new CLS_CatPantallas();
            ins.v_nombre_pan = txtNombre.Text;
            ins.MtdInsertarPantalla();
            if(ins.Exito)
            {
                dtgPantallas.DataSource = ins.Datos;
                XtraMessageBox.Show("Se ha Insertado en registro con exito");
            }
            else
            {
                XtraMessageBox.Show(ins.Mensaje);
            }
        }

        private void ActualizarRegistro()
        {
            CLS_CatPantallas ins = new CLS_CatPantallas();
            ins.c_codigo_pan = txtCodigo.Text;
            ins.v_nombre_pan = txtNombre.Text;
            ins.MtdActualizarPantalla();
            if (ins.Exito)
            {
                dtgPantallas.DataSource = ins.Datos;
                XtraMessageBox.Show("Se ha Insertado en registro con exito");
            }
            else
            {
                XtraMessageBox.Show(ins.Mensaje);
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

        private void EliminarRegistro()
        {
            CLS_CatPantallas ins = new CLS_CatPantallas();
            ins.c_codigo_pan = txtCodigo.Text;
            ins.MtdEliminarPantalla();
            if (ins.Exito)
            {
                CargarPantallas();
                XtraMessageBox.Show("Se ha Eliminado el registro con exito");
            }
            else
            {
                XtraMessageBox.Show(ins.Mensaje);
            }
        }

        private void btnSalir_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            this.Close();
        }

        private void Frm_Cat_Pantallas_Shown(object sender, EventArgs e)
        {
            MakeTablaPantallas();
            CargarPantallas();
        }

        private void CargarPantallas()
        {
            CLS_CatPantallas sel = new CLS_CatPantallas();
            sel.MtdSeleccionarPantallas();
            if(sel.Exito)
            {
                dtgPantallas.DataSource = sel.Datos;
            }
        }
    }
}