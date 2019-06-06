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
    public partial class Frm_Cat_Correos : DevExpress.XtraEditors.XtraForm
    {

        public string c_codigo_usu { get; set; }
        public string c_codigo_per { get; set; }
        public string c_codigo_pan { get; set; }
        private static Frm_Cat_Correos m_FormDefInstance;
        public static Frm_Cat_Correos DefInstance
        {
            get
            {
                if (m_FormDefInstance == null || m_FormDefInstance.IsDisposed)
                    m_FormDefInstance = new Frm_Cat_Correos();
                return m_FormDefInstance;
            }
            set
            {
                m_FormDefInstance = value;
            }
        }

        public bool isEdit { get; private set; }

        public Frm_Cat_Correos()
        {
            InitializeComponent();
        }

        private void CargarPantallas()
        {
            CLS_ConfCorreos sel = new CLS_ConfCorreos();
            sel.MtdSeleccionarCorreos();
            if (sel.Exito)
            {
                
                for (int i = 0; i < sel.Datos.Rows.Count; i++)
                {
                    txtRemitente.Text = sel.Datos.Rows[i][0].ToString();
                    txtCorreo.Text = sel.Datos.Rows[i][1].ToString();
                    txtContrasenia.Text = sel.Datos.Rows[i][2].ToString();
                    txtServerS.Text = sel.Datos.Rows[i][3].ToString();
                    txtServerE.Text= sel.Datos.Rows[i][4].ToString();
                    if (sel.Datos.Rows[i][5].ToString() == "True")
                    {
                        cbeCifrado.Text = "Si";
                        
                    }
                    else
                    {
                        cbeCifrado.Text = "No";
                        // cbeCifrado.Text = "No";
                    }
                    
                    txtPuerto.Text = sel.Datos.Rows[i][6].ToString();
                }
                if (sel.Datos.Rows.Count == 0)
                {
                    cbeCifrado.Text = "No";
                }
                


            }
        }

        private void InsertarRegistro()
        {
            CLS_ConfCorreos x = new CLS_ConfCorreos();
            x.v_correoremitente = txtRemitente.Text;
            x.v_correousuario = txtCorreo.Text;
            x.v_correocontrasenia = txtContrasenia.Text;
            x.v_correoservidorsalida = txtServerS.Text;
            x.v_correoservidorentrada = txtServerE.Text;
            if (cbeCifrado.Text == "Si")
            {
                x.b_correocifradoSSL = 1;
            }
            else
            {
                x.b_correocifradoSSL = 0;
            }
            
            x.n_correopuertosalida = txtPuerto.Text;
            x.MtdInsertarCorreos();
            if (x.Exito)
            {
                XtraMessageBox.Show("Se ha Guardado el registro con exito");

            }
            else
            {
                XtraMessageBox.Show(x.Mensaje);
            }
        }

        private void groupControl1_Paint(object sender, PaintEventArgs e)
        {

        }

        private void labelControl5_Click(object sender, EventArgs e)
        {

        }

        private void Frm_Cat_Correos_Load(object sender, EventArgs e)
        {
            CargarPantallas();
        }

        private void btnGuardar_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            if (txtCorreo.Text != string.Empty)
            {
                if (txtContrasenia.Text != string.Empty)
                {
                    if (txtServerS.Text != string.Empty)
                    {
                        if (txtServerE.Text != string.Empty)
                        {
                            if (txtPuerto.Text != string.Empty)
                            {
                                if (txtRemitente.Text != string.Empty)
                                { 

                                    InsertarRegistro();
                                }
                                else
                                {
                                    XtraMessageBox.Show("El Remitente no puede Estar Vacio [Campo Requerido]");
                                }
                            }
                            else
                            {
                                XtraMessageBox.Show("El Puerto no puede Estar Vacio [Campo Requerido]");
                            }
                        }
                        else
                        {
                            XtraMessageBox.Show("El Servidor de entrada no puede Estar Vacio [Campo Requerido]");
                        }
                    }
                    else
                    {
                        XtraMessageBox.Show("El Servidor de salida no puede Estar Vacio [Campo Requerido]");
                    }
                }
                else
                {
                    XtraMessageBox.Show("La contraseña no puede Estar Vacio [Campo Requerido]");
                }
                }
            else
            {
                XtraMessageBox.Show("El correo no puede Estar Vacio [Campo Requerido]");
            }
        }

        private void btnSalir_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            this.Close();
        }
    }
}