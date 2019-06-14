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
    public partial class Frm_Cat_Departamentos : DevExpress.XtraEditors.XtraForm
    {

        public string c_codigo_usu { get; set; }
        public string c_codigo_per { get; set; }
        public string c_codigo_pan { get; set; }
        private static Frm_Cat_Departamentos m_FormDefInstance;
        public static Frm_Cat_Departamentos DefInstance
        {
            get
            {
                if (m_FormDefInstance == null || m_FormDefInstance.IsDisposed)
                    m_FormDefInstance = new Frm_Cat_Departamentos();
                return m_FormDefInstance;
            }
            set
            {
                m_FormDefInstance = value;
            }
        }

        public bool isEdit { get; private set; }

        public Frm_Cat_Departamentos()
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
            column.ColumnName = "c_codigo_dep";
            column.AutoIncrement = false;
            column.Caption = "Id";
            column.ReadOnly = false;
            column.Unique = false;

            table.Columns.Add(column);

            column = new DataColumn();
            column.DataType = typeof(string);
            column.ColumnName = "v_nombre_dep";
            column.AutoIncrement = false;
            column.Caption = "Nombre";
            column.ReadOnly = false;
            column.Unique = false;

            table.Columns.Add(column);

            column = new DataColumn();
            column.DataType = typeof(string);
            column.ColumnName = "c_codigo_jef";
            column.AutoIncrement = false;
            column.Caption = "Cod. Jefe";
            column.ReadOnly = false;
            column.Unique = false;

            table.Columns.Add(column);

            dtgDepartamentos.DataSource = table;
        }

        private void LimpiarCampos()
        {
            txtId.Text = string.Empty;
            txtNombre.Text = string.Empty;
            dtgDepartamentos.DataSource = null;
            MakeTablaPantallas();
            txtNombre.Focus();
            isEdit = false;
            lookUpEdit1.Properties.DataSource=null;
            
        }

        private void CargarPantallas()
        {
            CLS_CatDepartamentos sel = new CLS_CatDepartamentos();
            sel.MtdSeleccionarDepartamentos();
            if (sel.Exito)
            {
                dtgDepartamentos.DataSource = sel.Datos;
            }
        }

        private void InsertarRegistro()
        {
            CLS_CatDepartamentos x = new CLS_CatDepartamentos();
            x.v_nombre_dep = txtNombre.Text;
            x.c_codigo_jef = lookUpEdit1.EditValue.ToString();
            x.MtdInsertarDepartamentos();
            if (x.Exito)
            {
                dtgDepartamentos.DataSource = x.Datos;
                XtraMessageBox.Show("Se ha Insertado el registro con exito");
                LimpiarCampos();
                CargarPantallas();
                SeleccionarJefe();
            }
            else
            {
                XtraMessageBox.Show(x.Mensaje);
            }
        }

        private void ActualizarRegistro()
        {
            CLS_CatDepartamentos ins = new CLS_CatDepartamentos();
            ins.c_codigo_dep = txtId.Text;
            ins.v_nombre_dep = txtNombre.Text;
            ins.c_codigo_jef = lookUpEdit1.Text;
            ins.MtdActualizarDepartamentos();
            if (ins.Exito)
            {
                dtgDepartamentos.DataSource = ins.Datos;
                XtraMessageBox.Show("Se ha Actualizado el registro con exito");
                LimpiarCampos();
                CargarPantallas();
                SeleccionarJefe();
            }
            else
            {
                XtraMessageBox.Show(ins.Mensaje);
            }
        }

        private void EliminarRegistro()
        {
            CLS_CatDepartamentos ins = new CLS_CatDepartamentos();
            ins.c_codigo_dep = txtId.Text;
            ins.MtdEliminarDepartamentos();
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

        private void SeleccionarJefe()
        {
            CLS_CatDepartamentos ins = new CLS_CatDepartamentos();
          
            ins.MtdSeleccionarDepartamentosJefe();
            if (ins.Exito)
            {
                lookUpEdit1.Properties.DisplayMember = "v_nombre_jef";
                lookUpEdit1.Properties.ValueMember = "c_codigo_jef";
                lookUpEdit1.EditValue = null;
                lookUpEdit1.Properties.DataSource = ins.Datos;

            }
            else
            {
                XtraMessageBox.Show(ins.Mensaje);
            }
        }

        private void labelControl3_Click(object sender, EventArgs e)
        {

        }

        private void simpleButton1_Click(object sender, EventArgs e)
        {
            Frm_Cat_Jefes jefes = new Frm_Cat_Jefes();
            jefes.c_codigo_pan = "0005";
            jefes.c_codigo_usu = c_codigo_usu;
            jefes.c_codigo_per = c_codigo_per;
            jefes.ShowDialog();
            
        }

        private void Frm_Cat_Departamentos_Load(object sender, EventArgs e)
        {
            MakeTablaPantallas();
            CargarPantallas();
            SeleccionarJefe();
        }

        private void btnNuevo_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            LimpiarCampos();
            CargarPantallas();
            SeleccionarJefe();
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

        private void dtgDepartamentos_Click(object sender, EventArgs e)
        {
            try
            {
                foreach (int i in this.gridView1.GetSelectedRows())
                {
                    DataRow row = this.gridView1.GetDataRow(i);
                    txtId.Text = row["c_codigo_dep"].ToString();
                    txtNombre.Text = row["v_nombre_dep"].ToString();
                    lookUpEdit1.EditValue= row["c_codigo_jef"].ToString();
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