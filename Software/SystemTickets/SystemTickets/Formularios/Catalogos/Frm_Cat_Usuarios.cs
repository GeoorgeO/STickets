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

        private void eliminaDepyPer()
        {
            CLS_CatUsuarios sel = new CLS_CatUsuarios();
            sel.c_codigo_usu = txtId.Text;
            sel.MtdEliminarDepyPerUsauario();
            if (sel.Exito)
            {
                if (Convert.ToUInt16(sel.Datos.Rows[0][0]) == 1)
                {
                    
                }
                else
                {
                    
                }

            }
            else
            {
                XtraMessageBox.Show(sel.Mensaje);
            }

        }

        private void selectMaxId()
        {
            CLS_CatUsuarios sel = new CLS_CatUsuarios();
            sel.MtdSeleccionarMaxUsuarios();
            if (sel.Exito)
            {
                txtId.Text = sel.Datos.Rows[0][0].ToString();
            }
        }


        private void agregaIdaDepyPer()
        {
            int f = 0, xRow;
            for (f = 0; f < gridView2.RowCount; f++)
            {
                xRow = gridView2.GetVisibleRowHandle(f);
                gridView2.SetRowCellValue(xRow, "c_codigo_usu", txtId.Text);
            }
            for (f = 0; f < gridView3.RowCount; f++)
            {
                xRow = gridView3.GetVisibleRowHandle(f);
                gridView3.SetRowCellValue(xRow, "c_codigo_usu", txtId.Text);
            }
        }

        private void recorrerdep()
        {
            int f = 0,xRow;
            for (f=0;f< gridView2.RowCount;f++)
            {
                xRow = gridView2.GetVisibleRowHandle(f);
                
                

             
                InsertarRegistroDep(gridView2.GetRowCellValue(xRow, "c_codigo_usu").ToString(), gridView2.GetRowCellValue(xRow, "c_codigo_dep").ToString());
            }
        }

        private void recorrerper()
        {
            int f = 0, xRow;
            for (f = 0; f < gridView3.RowCount; f++)
            {
                xRow = gridView3.GetVisibleRowHandle(f);




                InsertarRegistroPer(gridView3.GetRowCellValue(xRow, "c_codigo_usu").ToString(), gridView3.GetRowCellValue(xRow, "c_codigo_per").ToString());
            }
        }

        private void AgregaRenglonDep(string val1, string val2, string val3)
        {
            gridView2.AddNewRow();
            int rowHandle = gridView2.GetRowHandle(gridView2.DataRowCount);
            if (gridView2.IsNewItemRow(rowHandle))
            {
                gridView2.SetRowCellValue(rowHandle, gridView2.Columns[0], val1);
                gridView2.SetRowCellValue(rowHandle, gridView2.Columns[1], val2);
                gridView2.SetRowCellValue(rowHandle, gridView2.Columns[2], val3);
            }
        }

        private void AgregaRenglonPer(string val1, string val2, string val3)
        {
            gridView3.AddNewRow();
            int rowHandle = gridView3.GetRowHandle(gridView3.DataRowCount);
            if (gridView3.IsNewItemRow(rowHandle))
            {
                gridView3.SetRowCellValue(rowHandle, gridView3.Columns[0], val1);
                gridView3.SetRowCellValue(rowHandle, gridView3.Columns[1], val2);
                gridView3.SetRowCellValue(rowHandle, gridView3.Columns[2], val3);
            }
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
            column.ColumnName = "v_apaterno";
            column.AutoIncrement = false;
            column.Caption = "A. Paterno";
            column.ReadOnly = false;
            column.Unique = false;

            table.Columns.Add(column);

            column = new DataColumn();
            column.DataType = typeof(string);
            column.ColumnName = "v_amaterno";
            column.AutoIncrement = false;
            column.Caption = "A. Materno";
            column.ReadOnly = false;
            column.Unique = false;

            table.Columns.Add(column);

            column = new DataColumn();
            column.DataType = typeof(string);
            column.ColumnName = "d_fecha_alta";
            column.AutoIncrement = false;
            column.Caption = "F. Alta";
            column.ReadOnly = false;
            column.Unique = false;

            table.Columns.Add(column);

            column = new DataColumn();
            column.DataType = typeof(string);
            column.ColumnName = "d_fecha_udp";
            column.AutoIncrement = false;
            column.Caption = "F. Modificacion";
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
            DataTable table = new DataTable("Table2");
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

        private void MakeTablaPer()
        {
            DataTable table = new DataTable("Table3");
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
            column.ColumnName = "c_codigo_usu";
            column.AutoIncrement = false;
            column.Caption = "Usuario";
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

            gcPer.DataSource = table;
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

            gcDep.DataSource = null;
            MakeTablaDep();

            gcPer.DataSource = null;
            MakeTablaPer();
        }

        private void LimpiarCamposDep()
        {
            gcDep.DataSource = null;
            MakeTablaDep();
        }

        private void LimpiarCamposPer()
        {
            gcPer.DataSource = null;
            MakeTablaPer();
        }

        private void CargarPantallas()
        {
            CLS_CatUsuarios sel = new CLS_CatUsuarios();
            sel.MtdSeleccionarUsuarios();
            if (sel.Exito)
            {
                gridControl1.DataSource = sel.Datos;
            }
            txtUsuario.Focus();
        }

        private void CargarDep()
        {
            CLS_CatUsuario_Departamento sel = new CLS_CatUsuario_Departamento();
            sel.MtdSeleccionarUsuario_Departamento_Departamentos();
            if (sel.Exito)
            {
                
                
                lueDep.Properties.DisplayMember = "v_nombre_dep";
                lueDep.Properties.ValueMember = "c_codigo_dep";
                lueDep.EditValue = null;
                lueDep.Properties.DataSource = sel.Datos;
            }
        }

        private void CargarPer()
        {
            CLS_CatUsuario_Perfil sel = new CLS_CatUsuario_Perfil();
            sel.MtdSeleccionarUsuario_Perfil_Perfiles();
            if (sel.Exito)
            {


                luePer.Properties.DisplayMember = "v_nombre_per";
                luePer.Properties.ValueMember = "c_codigo_per";
                luePer.EditValue = null;
                luePer.Properties.DataSource = sel.Datos;
            }
        }

        private void Cargarusuario_departamento()
        {
            CLS_CatUsuario_Departamento sel = new CLS_CatUsuario_Departamento();
            sel.c_codigo_usu = txtId.Text;
            sel.MtdSeleccionarUsuario_Departamento();
            if (sel.Exito)
            {
                gcDep.DataSource = sel.Datos;
            }
        }

        private void Cargarusuario_perfil()
        {
            CLS_CatUsuario_Perfil sel = new CLS_CatUsuario_Perfil();
            sel.c_codigo_usu = txtId.Text;
            sel.MtdSeleccionarUsuario_Perfil();
            if (sel.Exito)
            {
                gcPer.DataSource = sel.Datos;
            }
        }

        private void InsertarRegistro()
        {
            CLS_CatUsuarios x = new CLS_CatUsuarios();
            x.v_login = txtUsuario.Text;
            x.v_nombres = txtNombre.Text;
            x.v_password = txtContrasena.Text;
            
            x.v_correoelectronico = txtEmail.Text;
            x.v_apaterno = txtPaterno.Text;
            x.v_amaterno = txtMaterno.Text;
            x.c_codigo_usu = txtId.Text;
            
            
            x.MtdInsertarUsuarios();
            if (x.Exito)
            {
                gridControl1.DataSource = x.Datos;
                XtraMessageBox.Show("Se ha Insertado el registro con exito");
                //LimpiarCampos();
                //CargarPantallas();
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
            
          
            ins.v_correoelectronico = txtEmail.Text;
            ins.v_apaterno = txtPaterno.Text;
            ins.v_amaterno = txtMaterno.Text;
            ins.MtdActualizarUsuarios();
            if (ins.Exito)
            {
                gridControl1.DataSource = ins.Datos;
                XtraMessageBox.Show("Se ha Actualizado el registro con exito");
                
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
                if (Convert.ToUInt16(ins.Datos.Rows[0][0]) == 1) {
                    LimpiarCampos();
                    CargarPantallas();
                    XtraMessageBox.Show("Se ha Eliminado el registro con exito");
                }
                else
                {
                    XtraMessageBox.Show("No se puede eliminar, antes debe quitar departamento y perfil, y verificar que no tenga datos capturados o actividad, de lo contrario no es posible esta operación.");
                }
                
            }
            else
            {
                XtraMessageBox.Show(ins.Mensaje);
            }
        }

        private void InsertarRegistroDep(string usu,string dep)
        {
            CLS_CatUsuario_Departamento x = new CLS_CatUsuario_Departamento();
            x.c_codigo_usu = usu;
            x.c_codigo_dep = dep;


            x.MtdInsertarUsuario_Departamento();
            if (x.Exito)
            {
                //gcDep.DataSource = x.Datos;
                //XtraMessageBox.Show("Se ha Insertado el registro con exito");
                //LimpiarCamposDep();
                //CargarDep();
            }
            else
            {
                XtraMessageBox.Show(x.Mensaje);
            }
        }

        private void InsertarRegistroPer(string usu, string per)
        {
            CLS_CatUsuario_Perfil x = new CLS_CatUsuario_Perfil();
            x.c_codigo_usu = usu;
            x.c_codigo_per = per;


            x.MtdInsertarUsuario_Perfil();
            if (x.Exito)
            {
                //gcDep.DataSource = x.Datos;
                //XtraMessageBox.Show("Se ha Insertado el registro con exito");
                //LimpiarCamposDep();
                //CargarDep();
            }
            else
            {
                XtraMessageBox.Show(x.Mensaje);
            }
        }

        private void InsertarRegistroPer()
        {
            CLS_CatUsuario_Perfil x = new CLS_CatUsuario_Perfil();
            x.c_codigo_usu = txtId.Text;
            x.c_codigo_per = luePer.EditValue.ToString();


            x.MtdInsertarUsuario_Perfil();
            if (x.Exito)
            {
                gcPer.DataSource = x.Datos;
                XtraMessageBox.Show("Se ha Insertado el registro con exito");
                LimpiarCamposPer();
                CargarPer();
            }
            else
            {
                XtraMessageBox.Show(x.Mensaje);
            }
        }

        private void EliminarRegistroDep(string depa)
        {
            CLS_CatUsuario_Departamento ins = new CLS_CatUsuario_Departamento();
            ins.c_codigo_usu = txtId.Text;
            ins.c_codigo_dep = depa;

            ins.MtdEliminarUsuario_Departamento();
            if (ins.Exito)
            {
                LimpiarCamposDep();
                Cargarusuario_departamento();
                XtraMessageBox.Show("Se ha Eliminado el registro con exito");
            }
            else
            {
                XtraMessageBox.Show(ins.Mensaje);
            }
        }

        private void EliminarRegistroPer(string perfil)
        {
            CLS_CatUsuario_Perfil ins = new CLS_CatUsuario_Perfil();
            ins.c_codigo_usu = txtId.Text;
            ins.c_codigo_per = perfil;

            ins.MtdEliminarUsuario_Perfil();
            if (ins.Exito)
            {
                LimpiarCamposPer();
                Cargarusuario_perfil();
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
            MakeTablaDep();
            MakeTablaPer();
            CargarPantallas();
            CargarDep();
            CargarPer();
           
        }

        private void btnNuevo_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            LimpiarCampos();
            CargarPantallas();
            CargarDep();
            CargarPer();
        }

        private void btnGuardar_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            if (txtNombre.Text != string.Empty)
            {
                if (isEdit == false)
                {
                    selectMaxId();
                    
                    InsertarRegistro();
                }
                else
                {
                    ActualizarRegistro();
                }
                agregaIdaDepyPer();
                eliminaDepyPer();
                recorrerdep();
                recorrerper();

                LimpiarCampos();
                CargarPantallas();
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
                   
                    txtEmail.Text = row["v_correoelectronico"].ToString();


                    isEdit = true;

                    if (txtUsuario.Text.Length > 0)
                    {
                        Cargarusuario_departamento();
                        Cargarusuario_perfil();
                    }
                }
            }
            catch (Exception ex)
            {
                XtraMessageBox.Show(ex.Message);
            }
        }

        private void sbAgregarDep_Click(object sender, EventArgs e)
        {
            if (lueDep.EditValue != null )
            { 
                AgregaRenglonDep("", lueDep.EditValue.ToString(), lueDep.Text);
            }
            else
            {
                XtraMessageBox.Show("Falta especificar un departamento.");
            }
        }

        private void sbAltaDep_Click(object sender, EventArgs e)
        {
            Frm_Cat_Departamentos departamentos = new Frm_Cat_Departamentos();
            departamentos.c_codigo_pan = "0006";
            departamentos.c_codigo_usu = c_codigo_usu;
            departamentos.c_codigo_per = c_codigo_per;
            departamentos.ShowDialog();
        }

        private void sbAgregarPer_Click(object sender, EventArgs e)
        {
            if (luePer.EditValue != null)
            {
                AgregaRenglonPer("", luePer.EditValue.ToString(), luePer.Text);
            }
            else
            {
                XtraMessageBox.Show("Falta especificar un departamento.");
            }
        }

        private void sbAltaPer_Click(object sender, EventArgs e)
        {
            Frm_Cat_Perfiles perfiles = new Frm_Cat_Perfiles();
            perfiles.c_codigo_pan = "0003";
            perfiles.c_codigo_usu = c_codigo_usu;
            perfiles.c_codigo_per = c_codigo_per;
            perfiles.ShowDialog();
        }

        private void gcPer_DoubleClick(object sender, EventArgs e)
        {
            string perfil;
            foreach (int i in this.gridView3.GetSelectedRows())
            {
                DataRow row = this.gridView3.GetDataRow(i);
                perfil = row["c_codigo_per"].ToString();

                DialogResult dialogResult = MessageBox.Show("Deseas borrar el perfil seleccionado?", "Confirmación", MessageBoxButtons.YesNo);
                if (dialogResult == DialogResult.Yes)
                {
                    EliminarRegistroPer(perfil);
                }
                else if (dialogResult == DialogResult.No)
                {
                    //do something else
                }
            }
        }

        private void gcDep_DoubleClick(object sender, EventArgs e)
        {
            string depa;
            foreach (int i in this.gridView2.GetSelectedRows())
            {
                DataRow row = this.gridView2.GetDataRow(i);
                depa = row["c_codigo_dep"].ToString();

                DialogResult dialogResult = MessageBox.Show("Deseas borrar el departamento seleccionado?", "Confirmación", MessageBoxButtons.YesNo);
                if (dialogResult == DialogResult.Yes)
                {
                    EliminarRegistroDep(depa);
                }
                else if (dialogResult == DialogResult.No)
                {
                    //do something else
                }
            }
        }
    }
}