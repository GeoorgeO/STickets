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
    public partial class Frm_Cat_Botones : DevExpress.XtraEditors.XtraForm
    {

        public string c_codigo_usu { get; set; }
        public string c_codigo_per { get; set; }
        public string c_codigo_pan { get; set; }
        private static Frm_Cat_Botones m_FormDefInstance;
        public static Frm_Cat_Botones DefInstance
        {
            get
            {
                if (m_FormDefInstance == null || m_FormDefInstance.IsDisposed)
                    m_FormDefInstance = new Frm_Cat_Botones();
                return m_FormDefInstance;
            }
            set
            {
                m_FormDefInstance = value;
            }
        }

        public bool isEdit { get; private set; }


        public Frm_Cat_Botones()
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
            column.ColumnName = "c_codigo_bot";
            column.AutoIncrement = false;
            column.Caption = "Id";
            column.ReadOnly = false;
            column.Unique = false;

            table.Columns.Add(column);

            column = new DataColumn();
            column.DataType = typeof(string);
            column.ColumnName = "v_nombre_bot";
            column.AutoIncrement = false;
            column.Caption = "Nombre";
            column.ReadOnly = false;
            column.Unique = false;

            table.Columns.Add(column);

            dtgBotones.DataSource = table;
        }

        private void LimpiarCampos()
        {
            txtId.Text = string.Empty;
            txtNombre.Text = string.Empty;
            dtgBotones.DataSource = null;
            MakeTablaPantallas();
            txtNombre.Focus();
            isEdit = false;
        }

        private void InsertarRegistro()
        {
            CLS_CatBotones ins = new CLS_CatBotones();
            ins.v_nombre_bot = txtNombre.Text;
            ins.MtdInsertarBotones();
            if (ins.Exito)
            {
                dtgBotones.DataSource = ins.Datos;
                XtraMessageBox.Show("Se ha Insertado el registro con exito");
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
            CLS_CatBotones ins = new CLS_CatBotones();
            ins.c_codigo_bot = txtId.Text;
            ins.v_nombre_bot = txtNombre.Text;
            ins.MtdActualizarBotones();
            if (ins.Exito)
            {
                dtgBotones.DataSource = ins.Datos;
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
            CLS_CatBotones ins = new CLS_CatBotones();
            ins.c_codigo_bot = txtId.Text;
            ins.MtdEliminarBotones();
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

        private void CargarPantallas()
        {
            CLS_CatBotones sel = new CLS_CatBotones();
            sel.MtdSeleccionarBotones();
            if (sel.Exito)
            {
                dtgBotones.DataSource = sel.Datos;
            }
        }

        private void Frm_Cat_Botones_Load(object sender, EventArgs e)
        {
            MakeTablaPantallas();
            CargarPantallas();
        }

        private void barLargeButtonItem1_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {

        }

        private void labelControl1_Click(object sender, EventArgs e)
        {

        }

        private void btnSalir_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            this.Close();
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

        private void btnNuevo_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            LimpiarCampos();
            CargarPantallas();
        }

        private void dtgBotones_Click(object sender, EventArgs e)
        {
            try
            {
                foreach (int i in this.gridView1.GetSelectedRows())
                {
                    DataRow row = this.gridView1.GetDataRow(i);
                    txtId.Text = row["c_codigo_bot"].ToString();
                    txtNombre.Text = row["v_nombre_bot"].ToString();
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