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
    public partial class Frm_Cat_Usuarios : DevExpress.XtraEditors.XtraForm
    {
        public string c_codigo_usu { get; set; }
        public string c_codigo_per { get; set; }
        public string c_codigo_pan { get; set; }
        private static Frm_Cat_Usuarios m_FormDefInstance;
        public static Frm_Cat_Usuarios DefInstance
        {
            get
            {
                if (m_FormDefInstance == null || m_FormDefInstance.IsDisposed)
                    m_FormDefInstance = new Frm_Cat_Usuarios();
                return m_FormDefInstance;
            }
            set
            {
                m_FormDefInstance = value;
            }
        }

        public bool isEdit { get; private set; }


        public Frm_Cat_Usuarios()
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
            column.ColumnName = "c_codigo_usu";
            column.AutoIncrement = false;
            column.Caption = "Id";
            column.ReadOnly = false;
            column.Unique = false;

            table.Columns.Add(column);

            column = new DataColumn();
            column.DataType = typeof(string);
            column.ColumnName = "v_login";
            column.AutoIncrement = false;
            column.Caption = "Usuarios";
            column.ReadOnly = false;
            column.Unique = false;

            table.Columns.Add(column);

            column = new DataColumn();
            column.DataType = typeof(string);
            column.ColumnName = "v_nombres";
            column.AutoIncrement = false;
            column.Caption = "Nombre";
            column.ReadOnly = false;
            column.Unique = false;

            table.Columns.Add(column);

            column = new DataColumn();
            column.DataType = typeof(string);
            column.ColumnName = "d_fecha_alta";
            column.AutoIncrement = false;
            column.Caption = "Fecha";
            column.ReadOnly = false;
            column.Unique = false;

            table.Columns.Add(column);

            column = new DataColumn();
            column.DataType = typeof(string);
            column.ColumnName = "v_password";
            column.AutoIncrement = false;
            column.Caption = "Pass";
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

        private void MakeTablaDep()
        {
            DataTable table = new DataTable("FirstTable");
            DataColumn column = new DataColumn();
            table.Reset();

            // DataRow row;
            column.DataType = typeof(string);
            column.ColumnName = "c_codigo_usu";
            column.AutoIncrement = false;
            column.Caption = "Id";
            column.ReadOnly = false;
            column.Unique = false;

            table.Columns.Add(column);

            column = new DataColumn();
            column.DataType = typeof(string);
            column.ColumnName = "c_codigo_dep";
            column.AutoIncrement = false;
            column.Caption = "Cod. Dep.";
            column.ReadOnly = false;
            column.Unique = false;

            table.Columns.Add(column);

            column = new DataColumn();
            column.DataType = typeof(string);
            column.ColumnName = "v_nombre_dep";
            column.AutoIncrement = false;
            column.Caption = "Departamento";
            column.ReadOnly = false;
            column.Unique = false;

            table.Columns.Add(column);

            gcDep.DataSource = table;
        }

        private void LimpiarCampos()
        {
            txtId.Text = string.Empty;
            txtUsuario.Text = string.Empty;
            txtNombre.Text = string.Empty;
            txtEmail.Text = string.Empty;
            txtPaterno.Text = string.Empty;
            txtMaterno.Text = string.Empty;
            txtContrasena.Text = string.Empty;

            gridControl1.DataSource = null;
            MakeTablaPantallas();
            txtNombre.Focus();
            isEdit = false;
        }

        private void CargarPantallas()
        {
            CLS_CatUsuarios sel = new CLS_CatUsuarios();
            sel.MtdSeleccionarUsuarios();
            if (sel.Exito)
            {
                gridControl1.DataSource = sel.Datos;
            }
        }

        private void InsertarRegistro()
        {
            CLS_CatUsuarios x = new CLS_CatUsuarios();
            x.v_login = txtUsuario.Text;
            x.v_nombres = txtNombre.Text;
            x.v_password = txtContrasena.Text;
            x.d_fecha_alta = deFecha.Text;
            x.d_fecha_udp = deFecha.Text;
            x.v_correoelectronico = txtEmail.Text;
            x.v_apaterno = txtPaterno.Text;
            x.v_amaterno = txtMaterno.Text;
            
            
            x.MtdInsertarUsuarios();
            if (x.Exito)
            {
                gridControl1.DataSource = x.Datos;
                XtraMessageBox.Show("Se ha Insertado el registro con exito");
                LimpiarCampos();
                CargarPantallas();
            }
            else
            {
                XtraMessageBox.Show(x.Mensaje);
            }
        }

        private void ActualizarRegistro()
        {
            CLS_CatUsuarios ins = new CLS_CatUsuarios();
            ins.c_codigo_usu = txtId.Text;
            ins.v_login = txtUsuario.Text;
            ins.v_nombres = txtNombre.Text;
            ins.v_password = txtContrasena.Text;
            ins.d_fecha_alta = deFecha.Text;
            ins.d_fecha_udp = deFecha.Text;
            ins.v_correoelectronico = txtEmail.Text;
            ins.v_apaterno = txtPaterno.Text;
            ins.v_amaterno = txtMaterno.Text;
            ins.MtdActualizarUsuarios();
            if (ins.Exito)
            {
                gridControl1.DataSource = ins.Datos;
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
            CLS_CatUsuarios ins = new CLS_CatUsuarios();
            ins.c_codigo_usu = txtId.Text;
            ins.MtdEliminarUsuarios();
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

        


        private void groupControl1_Paint(object sender, PaintEventArgs e)
        {

        }

        private void Frm_Cat_Usuarios_Load(object sender, EventArgs e)
        {
            MakeTablaPantallas();
            CargarPantallas();
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

        private void gridControl1_Click(object sender, EventArgs e)
        {
            try
            {
                foreach (int i in this.gridView1.GetSelectedRows())
                {
                    DataRow row = this.gridView1.GetDataRow(i);
                    txtId.Text = row["c_codigo_usu"].ToString();
                    txtNombre.Text = row["v_nombres"].ToString();
                    txtUsuario.Text = row["v_login"].ToString();
                    txtPaterno.Text = row["v_apaterno"].ToString();
                    txtMaterno.Text = row["v_amaterno"].ToString();
                    txtContrasena.Text = row["v_password"].ToString();
                    deFecha.Text = row["d_fecha_alta"].ToString();
                    
                    txtEmail.Text = row["v_correoelectronico"].ToString();
                    

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