﻿using System;
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

        private void barButtonItem4_ItemClick(object sender, ItemClickEventArgs e)
        {
            Frm_Cat_Jefes.DefInstance.MdiParent = this;
            Frm_Cat_Jefes.DefInstance.c_codigo_pan = "0004";
            Frm_Cat_Jefes.DefInstance.c_codigo_usu = c_codigo_usu;
            Frm_Cat_Jefes.DefInstance.c_codigo_per = c_codigo_per;
            Frm_Cat_Jefes.DefInstance.Show();
        }

        private void barButtonItem1_ItemClick(object sender, ItemClickEventArgs e)
        {
            Frm_Cat_Botones.DefInstance.MdiParent = this;
            Frm_Cat_Botones.DefInstance.c_codigo_pan = "0001";
            Frm_Cat_Botones.DefInstance.c_codigo_usu = c_codigo_usu;
            Frm_Cat_Botones.DefInstance.c_codigo_per = c_codigo_per;
            Frm_Cat_Botones.DefInstance.Show();
        }

        private void barButtonItem5_ItemClick(object sender, ItemClickEventArgs e)
        {
            Frm_Cat_Departamentos.DefInstance.MdiParent = this;
            Frm_Cat_Departamentos.DefInstance.c_codigo_pan = "0005";
            Frm_Cat_Departamentos.DefInstance.c_codigo_usu = c_codigo_usu;
            Frm_Cat_Departamentos.DefInstance.c_codigo_per = c_codigo_per;
            Frm_Cat_Departamentos.DefInstance.Show();
        }

        private void barButtonItem6_ItemClick(object sender, ItemClickEventArgs e)
        {
            Frm_Cat_Correos.DefInstance.MdiParent = this;
            Frm_Cat_Correos.DefInstance.c_codigo_pan = "0006";
            Frm_Cat_Correos.DefInstance.c_codigo_usu = c_codigo_usu;
            Frm_Cat_Correos.DefInstance.c_codigo_per = c_codigo_per;
            Frm_Cat_Correos.DefInstance.Show();
        }
    }
}