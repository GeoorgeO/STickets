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
    public partial class Frm_Cat_Pantallas : DevExpress.XtraEditors.XtraForm
    {
        public Frm_Cat_Pantallas()
        {
            InitializeComponent();
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

        }

        private void btnGuardar_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {

        }

        private void btnEliminar_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {

        }
        private void btnSalir_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            this.Close();
        }

        private void Frm_Cat_Pantallas_Shown(object sender, EventArgs e)
        {
            CargarPantallas();
        }

        private void CargarPantallas()
        {
            
        }
    }
}