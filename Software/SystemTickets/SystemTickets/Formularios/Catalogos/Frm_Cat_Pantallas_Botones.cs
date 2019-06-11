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
    public partial class Frm_Cat_Pantallas_Botones : DevExpress.XtraEditors.XtraForm
    {
        public string c_codigo_usu { get; set; }
        public string c_codigo_per { get; set; }
        public string c_codigo_pan { get; set; }

        private static Frm_Cat_Pantallas_Botones m_FormDefInstance;
        public static Frm_Cat_Pantallas_Botones DefInstance
        {
            get
            {
                if (m_FormDefInstance == null || m_FormDefInstance.IsDisposed)
                    m_FormDefInstance = new Frm_Cat_Pantallas_Botones();
                return m_FormDefInstance;
            }
            set
            {
                m_FormDefInstance = value;
            }
        }
        public Frm_Cat_Pantallas_Botones()
        {
            InitializeComponent();
        }
        private void SeleccionarPantallas(string ValorInicial)
        {
            CLS_CatPantallas ins = new CLS_CatPantallas();

            ins.MtdSeleccionarPantallas();
            if (ins.Exito)
            {
                cmbPantallas.Properties.DisplayMember = "v_nombre_pan";
                cmbPantallas.Properties.ValueMember = "c_codigo_pan";
                cmbPantallas.EditValue = ValorInicial;
                cmbPantallas.Properties.DataSource = ins.Datos;
            }
            else
            {
                XtraMessageBox.Show(ins.Mensaje);
            }
        }
        private void SeleccionarBotones(string ValorInicial)
        {
            CLS_CatBotones ins = new CLS_CatBotones();

            ins.MtdSeleccionarBotones();
            if (ins.Exito)
            {
                cmbBotones.Properties.DisplayMember = "v_nombre_bot";
                cmbBotones.Properties.ValueMember = "c_codigo_bot";
                cmbBotones.EditValue = ValorInicial;
                cmbBotones.Properties.DataSource = ins.Datos;
            }
            else
            {
                XtraMessageBox.Show(ins.Mensaje);
            }
        }

        private void Frm_Cat_Pantallas_Botones_Shown(object sender, EventArgs e)
        {
            string ValorIni = null;
            SeleccionarPantallas(ValorIni);
            SeleccionarBotones(ValorIni);
        }

        private void btnNuevo_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            string ValorIni = null;
            SeleccionarPantallas(ValorIni);
            SeleccionarBotones(ValorIni);
            cmbBotones.EditValue = null;
            cmbPantallas.EditValue = null;
        }

        private void btnGuardar_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            if(cmbPantallas.EditValue!=null && cmbBotones.EditValue!=null)
            {
                string vPantalla = cmbPantallas.Text;
                string vBoton = cmbBotones.Text;
                if (ExisteRegistro())
                {
                    CLS_Pantallas_Botones ins = new CLS_Pantallas_Botones();
                    ins.c_codigo_pan = cmbPantallas.EditValue.ToString();
                    ins.c_codigo_bot = cmbBotones.EditValue.ToString();
                    ins.MtdInsertarPantallasBotones();
                    
                    if(ins.Exito)
                    {
                        XtraMessageBox.Show("El Registro se ha insertado Exitosamente");
                        CargarGridBotones();
                    }
                    else
                    {
                        XtraMessageBox.Show(ins.Mensaje);
                    }
                }
                else
                {
                    XtraMessageBox.Show("La Pantalla "+ vPantalla + " ya tiene asignado el boton "+ vBoton);
                }
            }
            else
            {

            }
        }

        private bool ExisteRegistro()
        {
            Boolean Valor = true;
            CLS_Pantallas_Botones sel = new CLS_Pantallas_Botones();
            sel.c_codigo_pan = cmbPantallas.EditValue.ToString();
            sel.c_codigo_bot = cmbBotones.EditValue.ToString();
            sel.MtdSeleccionarPantallaBotonBuscar();
            if(sel.Exito)
            {
                if(sel.Datos.Rows.Count>0)
                {
                    Valor = false;
                }
            }
            return Valor;
        }

        private void cmbPantallas_EditValueChanged(object sender, EventArgs e)
        {
            CargarGridBotones();
        }

        private void CargarGridBotones()
        {
            if (cmbPantallas.EditValue != null)
            {
                CLS_Pantallas_Botones sel = new CLS_Pantallas_Botones();
                sel.c_codigo_pan = cmbPantallas.EditValue.ToString();
                sel.MtdSeleccionarPantallaBoton();
                if (sel.Exito)
                {
                    dtgBotones.DataSource = sel.Datos;
                }
            }
        }
    }
}