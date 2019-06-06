using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CapaDeDatos
{
    public class CLS_ConfCorreos : ConexionBase
    {
        public string v_correoremitente { get; set; }
        public string v_correousuario { get; set; }
        public string v_correocontrasenia { get; set; }
        public string v_correoservidorsalida { get; set; }
        public string v_correoservidorentrada { get; set; }
        public Int16 b_correocifradoSSL { get; set; }
        public string n_correopuertosalida { get; set; }

        public void MtdSeleccionarCorreos()
        {
            TipoDato _dato = new TipoDato();
            Conexion _conexion = new Conexion(cadenaConexionR);

            Exito = true;
            try
            {
                _conexion.NombreProcedimiento = "STic_ConfCorreos_Select";
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

        public void MtdInsertarCorreos()
        {
            TipoDato _dato = new TipoDato();
            Conexion _conexion = new Conexion(cadenaConexionR);

            Exito = true;
            try
            {
                _conexion.NombreProcedimiento = "STic_ConfCorreos_Insert";
                _dato.CadenaTexto = v_correoremitente;
                _conexion.agregarParametro(EnumTipoDato.CadenaTexto, _dato, "v_correoremitente");
                _dato.CadenaTexto = v_correousuario;
                _conexion.agregarParametro(EnumTipoDato.CadenaTexto, _dato, "v_correousuario");
                _dato.CadenaTexto = v_correocontrasenia;
                _conexion.agregarParametro(EnumTipoDato.CadenaTexto, _dato, "v_correocontrasenia");
                _dato.CadenaTexto = v_correoservidorsalida;
                _conexion.agregarParametro(EnumTipoDato.CadenaTexto, _dato, "v_correoservidorsalida");
                _dato.CadenaTexto = v_correoservidorentrada;
                _conexion.agregarParametro(EnumTipoDato.CadenaTexto, _dato, "v_correoservidorentrada");
                _dato.Entero = b_correocifradoSSL;
                _conexion.agregarParametro(EnumTipoDato.Entero, _dato, "b_correocifradoSSL");
                _dato.CadenaTexto = n_correopuertosalida;
                _conexion.agregarParametro(EnumTipoDato.CadenaTexto, _dato, "n_correopuertosalida");
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
