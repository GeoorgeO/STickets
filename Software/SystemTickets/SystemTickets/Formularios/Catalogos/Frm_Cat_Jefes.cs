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
    public partial class Frm_Cat_Jefes : DevExpress.XtraEditors.XtraForm
    {
        public string c_codigo_usu { get; set; }
        public string c_codigo_per { get; set; }
        public string c_codigo_pan { get; set; }

        public bool isEdit { get; private set; }

        private static Frm_Cat_Jefes m_FormDefInstance;
        public static Frm_Cat_Jefes DefInstance
        {
            get
            {
                if (m_FormDefInstance == null || m_FormDefInstance.IsDisposed)
                    m_FormDefInstance = new Frm_Cat_Jefes();
                return m_FormDefInstance;
            }
            set
            {
                m_FormDefInstance = value;
            }
        }

        public Frm_Cat_Jefes()
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
            column.ColumnName = "c_codigo_jef";
            column.AutoIncrement = false;
            column.Caption = "Id";
            column.ReadOnly = false;
            column.Unique = false;

            table.Columns.Add(column);

            column = new DataColumn();
            column.DataType = typeof(string);
            column.ColumnName = "v_nombre_jef";
            column.AutoIncrement = false;
            column.Caption = "Nombre";
            column.ReadOnly = false;
            column.Unique = false;

            table.Columns.Add(column);

            column = new DataColumn();
            column.DataType = typeof(string);
            column.ColumnName = "v_correoelectronico";
            column.AutoIncrement = false;
            column.Caption = "Correo";
            column.ReadOnly = false;
            column.Unique = false;

            table.Columns.Add(column);

            gridControl1.DataSource = table;
        }

        private void LimpiarCampos()
        {
            txtId.Text = string.Empty;
            txtNombre.Text = string.Empty;
            txtCorreo.Text = string.Empty;
            gridControl1.DataSource = null;
            MakeTablaPantallas();
            txtNombre.Focus();
            isEdit = false;
        }

        private void CargarPantallas()
        {
            CLS_CatJefesarea sel = new CLS_CatJefesarea();
            sel.MtdSeleccionarJefesarea();
            if (sel.Exito)
            {
                gridControl1.DataSource = sel.Datos;
            }
        }

        private void InsertarRegistro()
        {
            CLS_CatJefesarea ins = new CLS_CatJefesarea();
            ins.v_nombre_jef = txtNombre.Text;
            ins.v_correoelectronico = txtCorreo.Text;
            ins.MtdInsertarJefesarea();
            if (ins.Exito)
            {
                gridControl1.DataSource = ins.Datos;
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
            CLS_CatJefesarea ins = new CLS_CatJefesarea();
            ins.c_codigo_jef = txtId.Text;
            ins.v_nombre_jef = txtNombre.Text;
            ins.v_correoelectronico = txtCorreo.Text;
            ins.MtdActualizarJefesarea();
            if (ins.Exito)
            {
                gridControl1.DataSource = ins.Datos;
                XtraMessageBox.Show("Se ha Actualizado en registro con exito");
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
            CLS_CatJefesarea ins = new CLS_CatJefesarea();
            ins.c_codigo_jef = txtId.Text;
            ins.MtdEliminarJefesarea();
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

        private void Frm_Cat_Jefes_Shown(object sender, EventArgs e)
        {
            MakeTablaPantallas();
            CargarPantallas();
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

        private void gridControl1_Click(object sender, EventArgs e)
        {
            try
            {
                foreach (int i in this.gridView1.GetSelectedRows())
                {
                    DataRow row = this.gridView1.GetDataRow(i);
                    txtId.Text = row["c_codigo_jef"].ToString();
                    txtNombre.Text = row["v_nombre_jef"].ToString();
                    txtCorreo.Text = row["v_correoelectronico"].ToString();
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