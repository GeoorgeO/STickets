namespace SystemTickets
{
    partial class Frm_Cat_Perfil_PantallaBotones
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
            System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(Frm_Cat_Perfil_PantallaBotones));
            this.barManager1 = new DevExpress.XtraBars.BarManager(this.components);
            this.bIconos = new DevExpress.XtraBars.Bar();
            this.btnNuevo = new DevExpress.XtraBars.BarLargeButtonItem();
            this.btnGuardar = new DevExpress.XtraBars.BarLargeButtonItem();
            this.btnEliminar = new DevExpress.XtraBars.BarLargeButtonItem();
            this.btnSalir = new DevExpress.XtraBars.BarLargeButtonItem();
            this.bEstado = new DevExpress.XtraBars.Bar();
            this.lblProveedor = new DevExpress.XtraBars.BarStaticItem();
            this.barDockControlTop = new DevExpress.XtraBars.BarDockControl();
            this.barDockControlBottom = new DevExpress.XtraBars.BarDockControl();
            this.barDockControlLeft = new DevExpress.XtraBars.BarDockControl();
            this.barDockControlRight = new DevExpress.XtraBars.BarDockControl();
            this.repositoryItemTextEdit1 = new DevExpress.XtraEditors.Repository.RepositoryItemTextEdit();
            this.panelControl2 = new DevExpress.XtraEditors.PanelControl();
            this.gcPerfilPantBot = new DevExpress.XtraGrid.GridControl();
            this.gridView1 = new DevExpress.XtraGrid.Views.Grid.GridView();
            this.gridColumn1 = new DevExpress.XtraGrid.Columns.GridColumn();
            this.gridColumn2 = new DevExpress.XtraGrid.Columns.GridColumn();
            this.gridColumn3 = new DevExpress.XtraGrid.Columns.GridColumn();
            this.gridColumn4 = new DevExpress.XtraGrid.Columns.GridColumn();
            this.panelControl1 = new DevExpress.XtraEditors.PanelControl();
            this.groupControl1 = new DevExpress.XtraEditors.GroupControl();
            this.sbPanBot = new DevExpress.XtraEditors.SimpleButton();
            this.luePantallaBoton = new DevExpress.XtraEditors.LookUpEdit();
            this.labelControl3 = new DevExpress.XtraEditors.LabelControl();
            this.sbPantalla = new DevExpress.XtraEditors.SimpleButton();
            this.sbPerfil = new DevExpress.XtraEditors.SimpleButton();
            this.luePantalla = new DevExpress.XtraEditors.LookUpEdit();
            this.luePerfil = new DevExpress.XtraEditors.LookUpEdit();
            this.labelControl2 = new DevExpress.XtraEditors.LabelControl();
            this.labelControl1 = new DevExpress.XtraEditors.LabelControl();
            ((System.ComponentModel.ISupportInitialize)(this.barManager1)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemTextEdit1)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.panelControl2)).BeginInit();
            this.panelControl2.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.gcPerfilPantBot)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.gridView1)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.panelControl1)).BeginInit();
            this.panelControl1.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.groupControl1)).BeginInit();
            this.groupControl1.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.luePantallaBoton.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.luePantalla.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.luePerfil.Properties)).BeginInit();
            this.SuspendLayout();
            // 
            // barManager1
            // 
            this.barManager1.Bars.AddRange(new DevExpress.XtraBars.Bar[] {
            this.bIconos,
            this.bEstado});
            this.barManager1.DockControls.Add(this.barDockControlTop);
            this.barManager1.DockControls.Add(this.barDockControlBottom);
            this.barManager1.DockControls.Add(this.barDockControlLeft);
            this.barManager1.DockControls.Add(this.barDockControlRight);
            this.barManager1.Form = this;
            this.barManager1.Items.AddRange(new DevExpress.XtraBars.BarItem[] {
            this.lblProveedor,
            this.btnNuevo,
            this.btnGuardar,
            this.btnSalir,
            this.btnEliminar});
            this.barManager1.MainMenu = this.bIconos;
            this.barManager1.MaxItemId = 64;
            this.barManager1.RepositoryItems.AddRange(new DevExpress.XtraEditors.Repository.RepositoryItem[] {
            this.repositoryItemTextEdit1});
            this.barManager1.StatusBar = this.bEstado;
            // 
            // bIconos
            // 
            this.bIconos.BarName = "Menú principal";
            this.bIconos.DockCol = 0;
            this.bIconos.DockRow = 0;
            this.bIconos.DockStyle = DevExpress.XtraBars.BarDockStyle.Left;
            this.bIconos.FloatLocation = new System.Drawing.Point(42, 184);
            this.bIconos.FloatSize = new System.Drawing.Size(1106, 535);
            this.bIconos.LinksPersistInfo.AddRange(new DevExpress.XtraBars.LinkPersistInfo[] {
            new DevExpress.XtraBars.LinkPersistInfo(this.btnNuevo),
            new DevExpress.XtraBars.LinkPersistInfo(this.btnGuardar),
            new DevExpress.XtraBars.LinkPersistInfo(this.btnEliminar),
            new DevExpress.XtraBars.LinkPersistInfo(this.btnSalir)});
            this.bIconos.OptionsBar.AllowCollapse = true;
            this.bIconos.OptionsBar.AllowQuickCustomization = false;
            this.bIconos.OptionsBar.AutoPopupMode = DevExpress.XtraBars.BarAutoPopupMode.None;
            this.bIconos.OptionsBar.DisableClose = true;
            this.bIconos.OptionsBar.DisableCustomization = true;
            this.bIconos.OptionsBar.DrawBorder = false;
            this.bIconos.OptionsBar.DrawDragBorder = false;
            this.bIconos.OptionsBar.RotateWhenVertical = false;
            this.bIconos.OptionsBar.UseWholeRow = true;
            this.bIconos.Text = "Menú principal";
            // 
            // btnNuevo
            // 
            this.btnNuevo.Caption = "Nuevo";
            this.btnNuevo.Id = 50;
            this.btnNuevo.ImageOptions.Image = ((System.Drawing.Image)(resources.GetObject("btnNuevo.ImageOptions.Image")));
            this.btnNuevo.ImageOptions.LargeImage = ((System.Drawing.Image)(resources.GetObject("btnNuevo.ImageOptions.LargeImage")));
            this.btnNuevo.Name = "btnNuevo";
            this.btnNuevo.ItemClick += new DevExpress.XtraBars.ItemClickEventHandler(this.btnNuevo_ItemClick);
            // 
            // btnGuardar
            // 
            this.btnGuardar.Caption = "Guardar";
            this.btnGuardar.Id = 53;
            this.btnGuardar.ImageOptions.Image = ((System.Drawing.Image)(resources.GetObject("btnGuardar.ImageOptions.Image")));
            this.btnGuardar.ImageOptions.LargeImage = ((System.Drawing.Image)(resources.GetObject("btnGuardar.ImageOptions.LargeImage")));
            this.btnGuardar.Name = "btnGuardar";
            this.btnGuardar.ItemClick += new DevExpress.XtraBars.ItemClickEventHandler(this.btnGuardar_ItemClick);
            // 
            // btnEliminar
            // 
            this.btnEliminar.Caption = "Eliminar";
            this.btnEliminar.Id = 63;
            this.btnEliminar.ImageOptions.Image = ((System.Drawing.Image)(resources.GetObject("btnEliminar.ImageOptions.Image")));
            this.btnEliminar.ImageOptions.LargeImage = ((System.Drawing.Image)(resources.GetObject("btnEliminar.ImageOptions.LargeImage")));
            this.btnEliminar.Name = "btnEliminar";
            this.btnEliminar.ItemClick += new DevExpress.XtraBars.ItemClickEventHandler(this.btnEliminar_ItemClick);
            // 
            // btnSalir
            // 
            this.btnSalir.Caption = "Salir";
            this.btnSalir.Id = 59;
            this.btnSalir.ImageOptions.Image = ((System.Drawing.Image)(resources.GetObject("btnSalir.ImageOptions.Image")));
            this.btnSalir.ImageOptions.LargeImage = ((System.Drawing.Image)(resources.GetObject("btnSalir.ImageOptions.LargeImage")));
            this.btnSalir.Name = "btnSalir";
            this.btnSalir.ItemClick += new DevExpress.XtraBars.ItemClickEventHandler(this.btnSalir_ItemClick);
            // 
            // bEstado
            // 
            this.bEstado.BarName = "Barra de estado";
            this.bEstado.CanDockStyle = DevExpress.XtraBars.BarCanDockStyle.Bottom;
            this.bEstado.DockCol = 0;
            this.bEstado.DockRow = 0;
            this.bEstado.DockStyle = DevExpress.XtraBars.BarDockStyle.Bottom;
            this.bEstado.LinksPersistInfo.AddRange(new DevExpress.XtraBars.LinkPersistInfo[] {
            new DevExpress.XtraBars.LinkPersistInfo(this.lblProveedor)});
            this.bEstado.OptionsBar.AllowQuickCustomization = false;
            this.bEstado.OptionsBar.DrawDragBorder = false;
            this.bEstado.OptionsBar.UseWholeRow = true;
            this.bEstado.Text = "Barra de estado";
            // 
            // lblProveedor
            // 
            this.lblProveedor.Caption = "Status:";
            this.lblProveedor.Id = 48;
            this.lblProveedor.Name = "lblProveedor";
            // 
            // barDockControlTop
            // 
            this.barDockControlTop.CausesValidation = false;
            this.barDockControlTop.Dock = System.Windows.Forms.DockStyle.Top;
            this.barDockControlTop.Location = new System.Drawing.Point(0, 0);
            this.barDockControlTop.Manager = this.barManager1;
            this.barDockControlTop.Size = new System.Drawing.Size(794, 0);
            // 
            // barDockControlBottom
            // 
            this.barDockControlBottom.CausesValidation = false;
            this.barDockControlBottom.Dock = System.Windows.Forms.DockStyle.Bottom;
            this.barDockControlBottom.Location = new System.Drawing.Point(0, 467);
            this.barDockControlBottom.Manager = this.barManager1;
            this.barDockControlBottom.Size = new System.Drawing.Size(794, 25);
            // 
            // barDockControlLeft
            // 
            this.barDockControlLeft.CausesValidation = false;
            this.barDockControlLeft.Dock = System.Windows.Forms.DockStyle.Left;
            this.barDockControlLeft.Location = new System.Drawing.Point(0, 0);
            this.barDockControlLeft.Manager = this.barManager1;
            this.barDockControlLeft.Size = new System.Drawing.Size(56, 467);
            // 
            // barDockControlRight
            // 
            this.barDockControlRight.CausesValidation = false;
            this.barDockControlRight.Dock = System.Windows.Forms.DockStyle.Right;
            this.barDockControlRight.Location = new System.Drawing.Point(794, 0);
            this.barDockControlRight.Manager = this.barManager1;
            this.barDockControlRight.Size = new System.Drawing.Size(0, 467);
            // 
            // repositoryItemTextEdit1
            // 
            this.repositoryItemTextEdit1.Name = "repositoryItemTextEdit1";
            // 
            // panelControl2
            // 
            this.panelControl2.Controls.Add(this.gcPerfilPantBot);
            this.panelControl2.Dock = System.Windows.Forms.DockStyle.Fill;
            this.panelControl2.Location = new System.Drawing.Point(56, 163);
            this.panelControl2.Name = "panelControl2";
            this.panelControl2.Padding = new System.Windows.Forms.Padding(10);
            this.panelControl2.Size = new System.Drawing.Size(738, 304);
            this.panelControl2.TabIndex = 13;
            // 
            // gcPerfilPantBot
            // 
            this.gcPerfilPantBot.Dock = System.Windows.Forms.DockStyle.Fill;
            this.gcPerfilPantBot.Location = new System.Drawing.Point(12, 12);
            this.gcPerfilPantBot.MainView = this.gridView1;
            this.gcPerfilPantBot.MenuManager = this.barManager1;
            this.gcPerfilPantBot.Name = "gcPerfilPantBot";
            this.gcPerfilPantBot.Size = new System.Drawing.Size(714, 280);
            this.gcPerfilPantBot.TabIndex = 0;
            this.gcPerfilPantBot.ViewCollection.AddRange(new DevExpress.XtraGrid.Views.Base.BaseView[] {
            this.gridView1});
            this.gcPerfilPantBot.Click += new System.EventHandler(this.gcPerfilPantBot_Click);
            // 
            // gridView1
            // 
            this.gridView1.Columns.AddRange(new DevExpress.XtraGrid.Columns.GridColumn[] {
            this.gridColumn1,
            this.gridColumn2,
            this.gridColumn3,
            this.gridColumn4});
            this.gridView1.GridControl = this.gcPerfilPantBot;
            this.gridView1.Name = "gridView1";
            this.gridView1.OptionsBehavior.Editable = false;
            this.gridView1.OptionsView.ShowGroupPanel = false;
            // 
            // gridColumn1
            // 
            this.gridColumn1.Caption = "cod. Perfil";
            this.gridColumn1.FieldName = "c_codigo_per";
            this.gridColumn1.Name = "gridColumn1";
            // 
            // gridColumn2
            // 
            this.gridColumn2.Caption = "Perfil";
            this.gridColumn2.FieldName = "v_nombre_per";
            this.gridColumn2.Name = "gridColumn2";
            this.gridColumn2.Visible = true;
            this.gridColumn2.VisibleIndex = 0;
            // 
            // gridColumn3
            // 
            this.gridColumn3.Caption = "cod. pant - boton";
            this.gridColumn3.FieldName = "id_pantalla_boton";
            this.gridColumn3.Name = "gridColumn3";
            // 
            // gridColumn4
            // 
            this.gridColumn4.Caption = "Pantalla Boton";
            this.gridColumn4.FieldName = "v_pantalla_boton";
            this.gridColumn4.Name = "gridColumn4";
            this.gridColumn4.Visible = true;
            this.gridColumn4.VisibleIndex = 1;
            // 
            // panelControl1
            // 
            this.panelControl1.Controls.Add(this.groupControl1);
            this.panelControl1.Dock = System.Windows.Forms.DockStyle.Top;
            this.panelControl1.Location = new System.Drawing.Point(56, 0);
            this.panelControl1.Name = "panelControl1";
            this.panelControl1.Padding = new System.Windows.Forms.Padding(10);
            this.panelControl1.Size = new System.Drawing.Size(738, 163);
            this.panelControl1.TabIndex = 12;
            // 
            // groupControl1
            // 
            this.groupControl1.Controls.Add(this.sbPanBot);
            this.groupControl1.Controls.Add(this.luePantallaBoton);
            this.groupControl1.Controls.Add(this.labelControl3);
            this.groupControl1.Controls.Add(this.sbPantalla);
            this.groupControl1.Controls.Add(this.sbPerfil);
            this.groupControl1.Controls.Add(this.luePantalla);
            this.groupControl1.Controls.Add(this.luePerfil);
            this.groupControl1.Controls.Add(this.labelControl2);
            this.groupControl1.Controls.Add(this.labelControl1);
            this.groupControl1.Dock = System.Windows.Forms.DockStyle.Fill;
            this.groupControl1.Location = new System.Drawing.Point(12, 12);
            this.groupControl1.Name = "groupControl1";
            this.groupControl1.Size = new System.Drawing.Size(714, 139);
            this.groupControl1.TabIndex = 0;
            this.groupControl1.Text = "Perfil Pantallas Botones";
            // 
            // sbPanBot
            // 
            this.sbPanBot.Location = new System.Drawing.Point(244, 98);
            this.sbPanBot.Name = "sbPanBot";
            this.sbPanBot.Size = new System.Drawing.Size(75, 23);
            this.sbPanBot.TabIndex = 9;
            this.sbPanBot.Text = "Alta";
            this.sbPanBot.Click += new System.EventHandler(this.sbPanBot_Click);
            // 
            // luePantallaBoton
            // 
            this.luePantallaBoton.Location = new System.Drawing.Point(114, 100);
            this.luePantallaBoton.MenuManager = this.barManager1;
            this.luePantallaBoton.Name = "luePantallaBoton";
            this.luePantallaBoton.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.luePantallaBoton.Size = new System.Drawing.Size(100, 20);
            this.luePantallaBoton.TabIndex = 8;
            // 
            // labelControl3
            // 
            this.labelControl3.Location = new System.Drawing.Point(33, 104);
            this.labelControl3.Name = "labelControl3";
            this.labelControl3.Size = new System.Drawing.Size(73, 13);
            this.labelControl3.TabIndex = 7;
            this.labelControl3.Text = "Pantalla Boton:";
            // 
            // sbPantalla
            // 
            this.sbPantalla.Location = new System.Drawing.Point(244, 63);
            this.sbPantalla.Name = "sbPantalla";
            this.sbPantalla.Size = new System.Drawing.Size(75, 23);
            this.sbPantalla.TabIndex = 5;
            this.sbPantalla.Text = "Alta";
            this.sbPantalla.Click += new System.EventHandler(this.sbPantalla_Click);
            // 
            // sbPerfil
            // 
            this.sbPerfil.Location = new System.Drawing.Point(244, 29);
            this.sbPerfil.Name = "sbPerfil";
            this.sbPerfil.Size = new System.Drawing.Size(75, 23);
            this.sbPerfil.TabIndex = 4;
            this.sbPerfil.Text = "Alta";
            this.sbPerfil.Click += new System.EventHandler(this.sbPerfil_Click);
            // 
            // luePantalla
            // 
            this.luePantalla.Location = new System.Drawing.Point(114, 64);
            this.luePantalla.MenuManager = this.barManager1;
            this.luePantalla.Name = "luePantalla";
            this.luePantalla.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.luePantalla.Size = new System.Drawing.Size(100, 20);
            this.luePantalla.TabIndex = 3;
            this.luePantalla.EditValueChanged += new System.EventHandler(this.luePantalla_EditValueChanged);
            // 
            // luePerfil
            // 
            this.luePerfil.Location = new System.Drawing.Point(114, 31);
            this.luePerfil.MenuManager = this.barManager1;
            this.luePerfil.Name = "luePerfil";
            this.luePerfil.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.luePerfil.Size = new System.Drawing.Size(100, 20);
            this.luePerfil.TabIndex = 2;
            // 
            // labelControl2
            // 
            this.labelControl2.Location = new System.Drawing.Point(64, 68);
            this.labelControl2.Name = "labelControl2";
            this.labelControl2.Size = new System.Drawing.Size(42, 13);
            this.labelControl2.TabIndex = 1;
            this.labelControl2.Text = "Pantalla:";
            // 
            // labelControl1
            // 
            this.labelControl1.Location = new System.Drawing.Point(78, 35);
            this.labelControl1.Name = "labelControl1";
            this.labelControl1.Size = new System.Drawing.Size(28, 13);
            this.labelControl1.TabIndex = 0;
            this.labelControl1.Text = "Perfil:";
            // 
            // Frm_Cat_Perfil_PantallaBotones
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(794, 492);
            this.Controls.Add(this.panelControl2);
            this.Controls.Add(this.panelControl1);
            this.Controls.Add(this.barDockControlLeft);
            this.Controls.Add(this.barDockControlRight);
            this.Controls.Add(this.barDockControlBottom);
            this.Controls.Add(this.barDockControlTop);
            this.Name = "Frm_Cat_Perfil_PantallaBotones";
            this.Text = "Frm_Cat_Perfil_PantallaBotones";
            this.Load += new System.EventHandler(this.Frm_Cat_Perfil_PantallaBotones_Load);
            ((System.ComponentModel.ISupportInitialize)(this.barManager1)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemTextEdit1)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.panelControl2)).EndInit();
            this.panelControl2.ResumeLayout(false);
            ((System.ComponentModel.ISupportInitialize)(this.gcPerfilPantBot)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.gridView1)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.panelControl1)).EndInit();
            this.panelControl1.ResumeLayout(false);
            ((System.ComponentModel.ISupportInitialize)(this.groupControl1)).EndInit();
            this.groupControl1.ResumeLayout(false);
            this.groupControl1.PerformLayout();
            ((System.ComponentModel.ISupportInitialize)(this.luePantallaBoton.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.luePantalla.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.luePerfil.Properties)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        public DevExpress.XtraBars.BarManager barManager1;
        public DevExpress.XtraBars.Bar bIconos;
        private DevExpress.XtraBars.BarLargeButtonItem btnNuevo;
        private DevExpress.XtraBars.BarLargeButtonItem btnGuardar;
        private DevExpress.XtraBars.BarLargeButtonItem btnEliminar;
        private DevExpress.XtraBars.BarLargeButtonItem btnSalir;
        private DevExpress.XtraBars.Bar bEstado;
        private DevExpress.XtraBars.BarStaticItem lblProveedor;
        private DevExpress.XtraBars.BarDockControl barDockControlTop;
        private DevExpress.XtraBars.BarDockControl barDockControlBottom;
        private DevExpress.XtraBars.BarDockControl barDockControlLeft;
        private DevExpress.XtraBars.BarDockControl barDockControlRight;
        private DevExpress.XtraEditors.Repository.RepositoryItemTextEdit repositoryItemTextEdit1;
        private DevExpress.XtraEditors.PanelControl panelControl2;
        private DevExpress.XtraGrid.GridControl gcPerfilPantBot;
        private DevExpress.XtraGrid.Views.Grid.GridView gridView1;
        private DevExpress.XtraGrid.Columns.GridColumn gridColumn1;
        private DevExpress.XtraEditors.PanelControl panelControl1;
        private DevExpress.XtraEditors.GroupControl groupControl1;
        private DevExpress.XtraEditors.SimpleButton sbPantalla;
        private DevExpress.XtraEditors.SimpleButton sbPerfil;
        private DevExpress.XtraEditors.LookUpEdit luePantalla;
        private DevExpress.XtraEditors.LookUpEdit luePerfil;
        private DevExpress.XtraEditors.LabelControl labelControl2;
        private DevExpress.XtraEditors.LabelControl labelControl1;
        private DevExpress.XtraEditors.SimpleButton sbPanBot;
        private DevExpress.XtraEditors.LookUpEdit luePantallaBoton;
        private DevExpress.XtraEditors.LabelControl labelControl3;
        private DevExpress.XtraGrid.Columns.GridColumn gridColumn2;
        private DevExpress.XtraGrid.Columns.GridColumn gridColumn3;
        private DevExpress.XtraGrid.Columns.GridColumn gridColumn4;
    }
}