using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Text;
using System.Linq;
using System.Threading.Tasks;
using System.Windows.Forms;
using DevExpress.XtraBars;

namespace SystemTickets
{
    public partial class Frm_Principal : DevExpress.XtraBars.Ribbon.RibbonForm
    {
        public Frm_Principal()
        {
            InitializeComponent();
        }

        public string c_codigo_usu { get;  set; }
        public string c_codigo_per { get;  set; }

        private void btnPantalla_ItemClick(object sender, ItemClickEventArgs e)
        {
            Frm_Cat_Pantallas.DefInstance.MdiParent = this;
            Frm_Cat_Pantallas.DefInstance.c_codigo_pan = "0002";
            Frm_Cat_Pantallas.DefInstance.c_codigo_usu = c_codigo_usu;
            Frm_Cat_Pantallas.DefInstance.c_codigo_per = c_codigo_per;
            Frm_Cat_Pantallas.DefInstance.Show();
        }
    }
}