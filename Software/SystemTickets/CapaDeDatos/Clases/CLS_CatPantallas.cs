using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CapaDeDatos.Clases
{
    public class CLS_CatPantallas:ConexionBase
    {
        public string c_codigo_pan { get; set; }
        public string v_nombre_pan { get; set; }

        public void MtdSeleccionarPantallas()
        {
            TipoDato _dato = new TipoDato();
            Conexion _conexion = new Conexion(cadenaConexionR);

            Exito = true;
            try
            {
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
        public void MtdInsertarPantalla()
        {
            TipoDato _dato = new TipoDato();
            Conexion _conexion = new Conexion(cadenaConexionR);

            Exito = true;
            try
            {
                _dato.CadenaTexto = v_nombre_pan;
                _conexion.agregarParametro(EnumTipoDato.CadenaTexto, _dato, "v_nombre_pan");
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
        public void MtdActualizarPantalla()
        {
            TipoDato _dato = new TipoDato();
            Conexion _conexion = new Conexion(cadenaConexionR);

            Exito = true;
            try
            {
                _dato.CadenaTexto = c_codigo_pan;
                _conexion.agregarParametro(EnumTipoDato.CadenaTexto, _dato, "c_codigo_pan");
                _dato.CadenaTexto = v_nombre_pan;
                _conexion.agregarParametro(EnumTipoDato.CadenaTexto, _dato, "v_nombre_pan");
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
        public void MtdEliminarPantalla()
        {
            TipoDato _dato = new TipoDato();
            Conexion _conexion = new Conexion(cadenaConexionR);

            Exito = true;
            try
            {
                _dato.CadenaTexto = c_codigo_pan;
                _conexion.agregarParametro(EnumTipoDato.CadenaTexto, _dato, "c_codigo_pan");
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
