using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace CapaDeDatos
{

    public class CLS_Correos : ConexionBase
    {
        public string v_correoremitente { get; set; }
        public string v_correousuario { get; set; }
        public string v_correocontrasenia { get; set; }
        public string v_correoservidorsalida { get; set; }
        public string v_correoservidorentrada { get; set; }
        public int b_correocifradoSSL { get; set; }
        public int n_correopuertosalida { get; set; }

        public void MtdSeleccionar()
        {
            TipoDato _dato = new TipoDato();
            Conexion _conexionR = new Conexion(cadenaConexionR);

            Exito = true;
            try
            {
                _conexionR.NombreProcedimiento = "STic_ConfCorreos_Select";
                _conexionR.EjecutarDataset();

                if (_conexionR.Exito)
                {
                    Datos = _conexionR.Datos;
                    Mensaje = _conexionR.Mensaje;
                }
                else
                {
                    Mensaje = _conexionR.Mensaje;
                    Exito = false;
                }
            }
            catch (Exception e)
            {
                Mensaje = e.Message;
                Exito = false;
            }
        }
        public void MtdInsertar()
        {
            TipoDato _dato = new TipoDato();
            Conexion _conexionR = new Conexion(cadenaConexionR);

            Exito = true;
            try
            {
                _conexionR.NombreProcedimiento = "STic_ConfCorreos_Insert";
                _dato.CadenaTexto = v_correoremitente;
                _conexionR.agregarParametro(EnumTipoDato.CadenaTexto, _dato, "v_correoremitente");
                _dato.CadenaTexto = v_correousuario;
                _conexionR.agregarParametro(EnumTipoDato.CadenaTexto, _dato, "v_correousuario");
                _dato.CadenaTexto = v_correocontrasenia;
                _conexionR.agregarParametro(EnumTipoDato.CadenaTexto, _dato, "v_correocontrasenia");
                _dato.CadenaTexto = v_correoservidorsalida;
                _conexionR.agregarParametro(EnumTipoDato.CadenaTexto, _dato, "v_correoservidorsalida");
                _dato.CadenaTexto = v_correoservidorentrada;
                _conexionR.agregarParametro(EnumTipoDato.CadenaTexto, _dato, "v_correoservidorentrada");
                _dato.Entero = n_correopuertosalida;
                _conexionR.agregarParametro(EnumTipoDato.Entero, _dato, "n_correopuertosalida");
                _dato.Entero = b_correocifradoSSL;
                _conexionR.agregarParametro(EnumTipoDato.Entero, _dato, "b_correocifradoSSL");

                _conexionR.EjecutarNonQuery();
                Exito = _conexionR.Exito;
                Mensaje = _conexionR.Mensaje;
            }
            catch (Exception e)
            {
                Mensaje = e.Message;
                Exito = false;
            }

        }
    }
}
