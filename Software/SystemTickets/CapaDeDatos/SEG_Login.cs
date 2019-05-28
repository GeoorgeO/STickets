using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data;


namespace CapaDeDatos
{
    public class SEG_Login:ConexionBase
    {
        public string c_codigo_usu { get; set; }
        public string v_login { get; set; }

        public void MtdSeleccionarUsuarioLogin()
        {
            TipoDato _dato = new TipoDato();
            Conexion _conexion = new Conexion(cadenaConexionR);

            Exito = true;
            try
            {
                _conexion.NombreProcedimiento = "usp_UsuariosAcceso_Select";
                _dato.CadenaTexto = v_login;
                _conexion.agregarParametro(EnumTipoDato.CadenaTexto, _dato, "v_login");
                _conexion.EjecutarDataset();

                if (_conexion.Exito)
                {
                    Datos = _conexion.Datos;
                }
                else
                {
                    Mensaje = _conexion.Mensaje;
                    Exito = false;
                }
            }
            catch (Exception e)
            {
                Mensaje = e.Message;
                Exito = false;
            }

        }
    }
}
