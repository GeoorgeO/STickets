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
    public partial class Frm_Cat_Pantallas_Botones : DevExpress.XtraEditors.XtraForm
    {
        public Frm_Cat_Pantallas_Botones()
        {
            InitializeComponent();
        }
        private void SeleccionarPantallas()
        {
            CLS_CatPantallas ins = new CLS_CatPantallas();

            ins.MtdSeleccionarPantallas();
            if (ins.Exito)
            {
                lookUpEdit1.Properties.DisplayMember = "v_nombre_pan";
                lookUpEdit1.Properties.ValueMember = "c_codigo_pan";
                lookUpEdit1.EditValue = null;
                lookUpEdit1.Properties.DataSource = ins.Datos;

            }
            else
            {
                XtraMessageBox.Show(ins.Mensaje);
            }
        }
        private void SeleccionarBotones()
        {
            CLS_CatBotones ins = new CLS_CatBotones();

            ins.MtdSeleccionarBotones();
            if (ins.Exito)
            {
                lookUpEdit1.Properties.DisplayMember = "v_nombre_bot";
                lookUpEdit1.Properties.ValueMember = "c_codigo_bot";
                lookUpEdit1.EditValue = null;
                lookUpEdit1.Properties.DataSource = ins.Datos;

            }
            else
            {
                XtraMessageBox.Show(ins.Mensaje);
            }
        }

        private void Frm_Cat_Pantallas_Botones_Shown(object sender, EventArgs e)
        {
            SeleccionarPantallas();
            SeleccionarBotones();
        }
    }
}