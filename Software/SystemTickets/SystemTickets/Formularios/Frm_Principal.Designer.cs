namespace SystemTickets
{
    partial class Frm_Principal
    {
        /// <summary>
        /// Required designer variable.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// Clean up any resources being used.
        /// </summary>
        /// <param name="disposing">true if managed resources should be disposed; otherwise, false.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Windows Form Designer generated code

        /// <summary>
        /// Required method for Designer support - do not modify
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            this.components = new System.ComponentModel.Container();
            System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(Frm_Principal));
            this.ribbon = new DevExpress.XtraBars.Ribbon.RibbonControl();
            this.btnBotones = new DevExpress.XtraBars.BarButtonItem();
            this.btnPantalla = new DevExpress.XtraBars.BarButtonItem();
            this.btnPerfiles = new DevExpress.XtraBars.BarButtonItem();
            this.btnJefes = new DevExpress.XtraBars.BarButtonItem();
            this.btnDepartamentos = new DevExpress.XtraBars.BarButtonItem();
            this.btnCorreos = new DevExpress.XtraBars.BarButtonItem();
            this.btnActividades = new DevExpress.XtraBars.BarButtonItem();
            this.btnUsuarios = new DevExpress.XtraBars.BarButtonItem();
            this.btnDepartamentoActividad = new DevExpress.XtraBars.BarButtonItem();
            this.btnPantallaBoton = new DevExpress.XtraBars.BarButtonItem();
            this.btnPerfilPantallaBoton = new DevExpress.XtraBars.BarButtonItem();
            this.ribbonPage1 = new DevExpress.XtraBars.Ribbon.RibbonPage();
            this.ribbonPageGroup1 = new DevExpress.XtraBars.Ribbon.RibbonPageGroup();
            this.ribbonPageGroup2 = new DevExpress.XtraBars.Ribbon.RibbonPageGroup();
            this.ribbonPageGroup4 = new DevExpress.XtraBars.Ribbon.RibbonPageGroup();
            this.ribbonPageGroup5 = new DevExpress.XtraBars.Ribbon.RibbonPageGroup();
            this.ribbonPage2 = new DevExpress.XtraBars.Ribbon.RibbonPage();
            this.ribbonPageGroup3 = new DevExpress.XtraBars.Ribbon.RibbonPageGroup();
            this.ribbonStatusBar = new DevExpress.XtraBars.Ribbon.RibbonStatusBar();
            this.Sking = new DevExpress.LookAndFeel.DefaultLookAndFeel(this.components);
            this.xtraTabbedMdiManager1 = new DevExpress.XtraTabbedMdi.XtraTabbedMdiManager(this.components);
            ((System.ComponentModel.ISupportInitialize)(this.ribbon)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.xtraTabbedMdiManager1)).BeginInit();
            this.SuspendLayout();
            // 
            // ribbon
            // 
            this.ribbon.ExpandCollapseItem.Id = 0;
            this.ribbon.Items.AddRange(new DevExpress.XtraBars.BarItem[] {
            this.ribbon.ExpandCollapseItem,
            this.btnBotones,
            this.btnPantalla,
            this.btnPerfiles,
            this.btnJefes,
            this.btnDepartamentos,
            this.btnCorreos,
            this.btnActividades,
            this.btnUsuarios,
            this.btnDepartamentoActividad,
            this.btnPantallaBoton,
            this.btnPerfilPantallaBoton});
            this.ribbon.Location = new System.Drawing.Point(0, 0);
            this.ribbon.MaxItemId = 12;
            this.ribbon.Name = "ribbon";
            this.ribbon.Pages.AddRange(new DevExpress.XtraBars.Ribbon.RibbonPage[] {
            this.ribbonPage1,
            this.ribbonPage2});
            this.ribbon.RibbonStyle = DevExpress.XtraBars.Ribbon.RibbonControlStyle.Office2007;
            this.ribbon.Size = new System.Drawing.Size(892, 143);
            this.ribbon.StatusBar = this.ribbonStatusBar;
            // 
            // btnBotones
            // 
            this.btnBotones.Caption = "Botones";
            this.btnBotones.Id = 1;
            this.btnBotones.ImageOptions.Image = ((System.Drawing.Image)(resources.GetObject("btnBotones.ImageOptions.Image")));
            this.btnBotones.ImageOptions.LargeImage = ((System.Drawing.Image)(resources.GetObject("btnBotones.ImageOptions.LargeImage")));
            this.btnBotones.Name = "btnBotones";
            this.btnBotones.ItemClick += new DevExpress.XtraBars.ItemClickEventHandler(this.btnBotones_ItemClick);
            // 
            // btnPantalla
            // 
            this.btnPantalla.Caption = "Pantallas";
            this.btnPantalla.Id = 2;
            this.btnPantalla.ImageOptions.Image = ((System.Drawing.Image)(resources.GetObject("btnPantalla.ImageOptions.Image")));
            this.btnPantalla.ImageOptions.LargeImage = ((System.Drawing.Image)(resources.GetObject("btnPantalla.ImageOptions.LargeImage")));
            this.btnPantalla.Name = "btnPantalla";
            this.btnPantalla.ItemClick += new DevExpress.XtraBars.ItemClickEventHandler(this.btnPantalla_ItemClick);
            // 
            // btnPerfiles
            // 
            this.btnPerfiles.Caption = "Perfiles";
            this.btnPerfiles.Id = 3;
            this.btnPerfiles.ImageOptions.Image = ((System.Drawing.Image)(resources.GetObject("btnPerfiles.ImageOptions.Image")));
            this.btnPerfiles.ImageOptions.LargeImage = ((System.Drawing.Image)(resources.GetObject("btnPerfiles.ImageOptions.LargeImage")));
            this.btnPerfiles.Name = "btnPerfiles";
            this.btnPerfiles.ItemClick += new DevExpress.XtraBars.ItemClickEventHandler(this.btnPerfiles_ItemClick);
            // 
            // btnJefes
            // 
            this.btnJefes.Caption = "Jefes";
            this.btnJefes.Id = 4;
            this.btnJefes.ImageOptions.Image = ((System.Drawing.Image)(resources.GetObject("btnJefes.ImageOptions.Image")));
            this.btnJefes.ImageOptions.LargeImage = ((System.Drawing.Image)(resources.GetObject("btnJefes.ImageOptions.LargeImage")));
            this.btnJefes.Name = "btnJefes";
            this.btnJefes.ItemClick += new DevExpress.XtraBars.ItemClickEventHandler(this.btnJefes_ItemClick);
            // 
            // btnDepartamentos
            // 
            this.btnDepartamentos.Caption = "Departamentos";
            this.btnDepartamentos.Id = 5;
            this.btnDepartamentos.ImageOptions.Image = ((System.Drawing.Image)(resources.GetObject("btnDepartamentos.ImageOptions.Image")));
            this.btnDepartamentos.ImageOptions.LargeImage = ((System.Drawing.Image)(resources.GetObject("btnDepartamentos.ImageOptions.LargeImage")));
            this.btnDepartamentos.Name = "btnDepartamentos";
            this.btnDepartamentos.ItemClick += new DevExpress.XtraBars.ItemClickEventHandler(this.btnDepartamentos_ItemClick);
            // 
            // btnCorreos
            // 
            this.btnCorreos.Caption = "Correo E.";
            this.btnCorreos.Id = 6;
            this.btnCorreos.ImageOptions.Image = ((System.Drawing.Image)(resources.GetObject("btnCorreos.ImageOptions.Image")));
            this.btnCorreos.ImageOptions.LargeImage = ((System.Drawing.Image)(resources.GetObject("btnCorreos.ImageOptions.LargeImage")));
            this.btnCorreos.Name = "btnCorreos";
            this.btnCorreos.ItemClick += new DevExpress.XtraBars.ItemClickEventHandler(this.btnCorreos_ItemClick);
            // 
            // btnActividades
            // 
            this.btnActividades.Caption = "Actividades";
            this.btnActividades.Id = 7;
            this.btnActividades.ImageOptions.Image = ((System.Drawing.Image)(resources.GetObject("btnActividades.ImageOptions.Image")));
            this.btnActividades.ImageOptions.LargeImage = ((System.Drawing.Image)(resources.GetObject("btnActividades.ImageOptions.LargeImage")));
            this.btnActividades.Name = "btnActividades";
            this.btnActividades.ItemClick += new DevExpress.XtraBars.ItemClickEventHandler(this.btnActividades_ItemClick);
            // 
            // btnUsuarios
            // 
            this.btnUsuarios.Caption = "Usuarios";
            this.btnUsuarios.Id = 8;
            this.btnUsuarios.ImageOptions.Image = ((System.Drawing.Image)(resources.GetObject("btnUsuarios.ImageOptions.Image")));
            this.btnUsuarios.ImageOptions.LargeImage = ((System.Drawing.Image)(resources.GetObject("btnUsuarios.ImageOptions.LargeImage")));
            this.btnUsuarios.Name = "btnUsuarios";
            this.btnUsuarios.ItemClick += new DevExpress.XtraBars.ItemClickEventHandler(this.btnUsuarios_ItemClick);
            // 
            // btnDepartamentoActividad
            // 
            this.btnDepartamentoActividad.Caption = "Departamento - Actividad";
            this.btnDepartamentoActividad.Id = 9;
            this.btnDepartamentoActividad.ImageOptions.Image = ((System.Drawing.Image)(resources.GetObject("btnDepartamentoActividad.ImageOptions.Image")));
            this.btnDepartamentoActividad.ImageOptions.LargeImage = ((System.Drawing.Image)(resources.GetObject("btnDepartamentoActividad.ImageOptions.LargeImage")));
            this.btnDepartamentoActividad.Name = "btnDepartamentoActividad";
            this.btnDepartamentoActividad.ItemClick += new DevExpress.XtraBars.ItemClickEventHandler(this.btnDepartamentoActividad_ItemClick);
            // 
            // btnPantallaBoton
            // 
            this.btnPantallaBoton.Caption = "Pantalla - Boton";
            this.btnPantallaBoton.Id = 10;
            this.btnPantallaBoton.ImageOptions.Image = ((System.Drawing.Image)(resources.GetObject("btnPantallaBoton.ImageOptions.Image")));
            this.btnPantallaBoton.ImageOptions.LargeImage = ((System.Drawing.Image)(resources.GetObject("btnPantallaBoton.ImageOptions.LargeImage")));
            this.btnPantallaBoton.Name = "btnPantallaBoton";
            this.btnPantallaBoton.ItemClick += new DevExpress.XtraBars.ItemClickEventHandler(this.btnPantallaBoton_ItemClick);
            // 
            // btnPerfilPantallaBoton
            // 
            this.btnPerfilPantallaBoton.Caption = "Perfil - [Pantalla - Boton]";
            this.btnPerfilPantallaBoton.Id = 11;
            this.btnPerfilPantallaBoton.ImageOptions.Image = ((System.Drawing.Image)(resources.GetObject("btnPerfilPantallaBoton.ImageOptions.Image")));
            this.btnPerfilPantallaBoton.ImageOptions.LargeImage = ((System.Drawing.Image)(resources.GetObject("btnPerfilPantallaBoton.ImageOptions.LargeImage")));
            this.btnPerfilPantallaBoton.Name = "btnPerfilPantallaBoton";
            this.btnPerfilPantallaBoton.ItemClick += new DevExpress.XtraBars.ItemClickEventHandler(this.btnPerfilPantallaBoton_ItemClick);
            // 
            // ribbonPage1
            // 
            this.ribbonPage1.Groups.AddRange(new DevExpress.XtraBars.Ribbon.RibbonPageGroup[] {
            this.ribbonPageGroup1,
            this.ribbonPageGroup2,
            this.ribbonPageGroup4,
            this.ribbonPageGroup5});
            this.ribbonPage1.Name = "ribbonPage1";
            this.ribbonPage1.Text = "Catalogos";
            // 
            // ribbonPageGroup1
            // 
            this.ribbonPageGroup1.ItemLinks.Add(this.btnBotones);
            this.ribbonPageGroup1.ItemLinks.Add(this.btnPantalla);
            this.ribbonPageGroup1.ItemLinks.Add(this.btnPerfiles);
            this.ribbonPageGroup1.ItemLinks.Add(this.btnUsuarios);
            this.ribbonPageGroup1.Name = "ribbonPageGroup1";
            this.ribbonPageGroup1.Text = "Seguridad";
            // 
            // ribbonPageGroup2
            // 
            this.ribbonPageGroup2.ItemLinks.Add(this.btnJefes);
            this.ribbonPageGroup2.ItemLinks.Add(this.btnDepartamentos);
            this.ribbonPageGroup2.Name = "ribbonPageGroup2";
            this.ribbonPageGroup2.Text = "Areas";
            // 
            // ribbonPageGroup4
            // 
            this.ribbonPageGroup4.ItemLinks.Add(this.btnActividades);
            this.ribbonPageGroup4.Name = "ribbonPageGroup4";
            this.ribbonPageGroup4.Text = "Actividades";
            // 
            // ribbonPageGroup5
            // 
            this.ribbonPageGroup5.ItemLinks.Add(this.btnPantallaBoton);
            this.ribbonPageGroup5.ItemLinks.Add(this.btnPerfilPantallaBoton);
            this.ribbonPageGroup5.ItemLinks.Add(this.btnDepartamentoActividad);
            this.ribbonPageGroup5.Name = "ribbonPageGroup5";
            this.ribbonPageGroup5.Text = "Relaciones";
            // 
            // ribbonPage2
            // 
            this.ribbonPage2.Groups.AddRange(new DevExpress.XtraBars.Ribbon.RibbonPageGroup[] {
            this.ribbonPageGroup3});
            this.ribbonPage2.Name = "ribbonPage2";
            this.ribbonPage2.Text = "Configuracion";
            // 
            // ribbonPageGroup3
            // 
            this.ribbonPageGroup3.ItemLinks.Add(this.btnCorreos);
            this.ribbonPageGroup3.Name = "ribbonPageGroup3";
            this.ribbonPageGroup3.Text = "Parametros";
            // 
            // ribbonStatusBar
            // 
            this.ribbonStatusBar.Location = new System.Drawing.Point(0, 419);
            this.ribbonStatusBar.Name = "ribbonStatusBar";
            this.ribbonStatusBar.Ribbon = this.ribbon;
            this.ribbonStatusBar.Size = new System.Drawing.Size(892, 31);
            // 
            // xtraTabbedMdiManager1
            // 
            this.xtraTabbedMdiManager1.MdiParent = this;
            // 
            // Frm_Principal
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(892, 450);
            this.Controls.Add(this.ribbonStatusBar);
            this.Controls.Add(this.ribbon);
            this.IsMdiContainer = true;
            this.Name = "Frm_Principal";
            this.Ribbon = this.ribbon;
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen;
            this.StatusBar = this.ribbonStatusBar;
            this.Text = "Sistema Tickets";
            this.WindowState = System.Windows.Forms.FormWindowState.Maximized;
            ((System.ComponentModel.ISupportInitialize)(this.ribbon)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.xtraTabbedMdiManager1)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private DevExpress.XtraBars.Ribbon.RibbonControl ribbon;
        private DevExpress.XtraBars.Ribbon.RibbonPage ribbonPage1;
        private DevExpress.XtraBars.Ribbon.RibbonPageGroup ribbonPageGroup1;
        private DevExpress.XtraBars.Ribbon.RibbonStatusBar ribbonStatusBar;
        private DevExpress.XtraBars.BarButtonItem btnBotones;
        private DevExpress.XtraBars.BarButtonItem btnPantalla;
        private DevExpress.XtraBars.BarButtonItem btnPerfiles;
        private DevExpress.XtraBars.BarButtonItem btnJefes;
        private DevExpress.XtraBars.BarButtonItem btnDepartamentos;
        private DevExpress.XtraBars.Ribbon.RibbonPageGroup ribbonPageGroup2;
        private DevExpress.LookAndFeel.DefaultLookAndFeel Sking;
        private DevExpress.XtraBars.Ribbon.RibbonPage ribbonPage2;
        private DevExpress.XtraBars.Ribbon.RibbonPageGroup ribbonPageGroup3;
        private DevExpress.XtraBars.BarButtonItem btnCorreos;
        private DevExpress.XtraTabbedMdi.XtraTabbedMdiManager xtraTabbedMdiManager1;
        private DevExpress.XtraBars.BarButtonItem btnActividades;
        private DevExpress.XtraBars.BarButtonItem btnUsuarios;
        private DevExpress.XtraBars.BarButtonItem btnDepartamentoActividad;
        private DevExpress.XtraBars.BarButtonItem btnPantallaBoton;
        private DevExpress.XtraBars.BarButtonItem btnPerfilPantallaBoton;
        private DevExpress.XtraBars.Ribbon.RibbonPageGroup ribbonPageGroup4;
        private DevExpress.XtraBars.Ribbon.RibbonPageGroup ribbonPageGroup5;
    }
}