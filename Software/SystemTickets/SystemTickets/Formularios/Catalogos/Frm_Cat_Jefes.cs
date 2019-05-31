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

namespace SystemTickets.Formularios.Catalogos
{
    public partial class Frm_Cat_Jefes : DevExpress.XtraEditors.XtraForm
    {
        public string c_codigo_usu { get; set; }
        public string c_codigo_per { get; set; }
        public string c_codigo_jef { get; set; }

        public bool isEdit { get; private set; }
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


       

    }
}