using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CapaDeDatos
{
    public class CLS_Pantallas_Botones : ConexionBase
    {
        public string c_codigo_pan { get; set; }
        public string c_codigo_bot { get; set; }
        public int id_pantalla_boton { get;  set; }

        public void MtdSeleccionarPantallaBotonBuscar()
        {
            TipoDato _dato = new TipoDato();
            Conexion _conexion = new Conexion(cadenaConexionR);

            Exito = true;
            try
            {
                _conexion.NombreProcedimiento = "STic_CatPantallasBotones_Buscar_Select";
                _dato.CadenaTexto = c_codigo_pan;
                _conexion.agregarParametro(EnumTipoDato.CadenaTexto, _dato, "c_codigo_pan");
                _dato.CadenaTexto = c_codigo_bot;
                _conexion.agregarParametro(EnumTipoDato.CadenaTexto, _dato, "c_codigo_bot");
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
        public void MtdInsertarPantallasBotones()
        {
            TipoDato _dato = new TipoDato();
            Conexion _conexion = new Conexion(cadenaConexionR);

            Exito = true;
            try
            {
                _conexion.NombreProcedimiento = "STic_CatPantallasBotones_Insert";
                _dato.CadenaTexto = c_codigo_pan;
                _conexion.agregarParametro(EnumTipoDato.CadenaTexto, _dato, "c_codigo_pan");
                _dato.CadenaTexto = c_codigo_bot;
                _conexion.agregarParametro(EnumTipoDato.CadenaTexto, _dato, "c_codigo_bot");
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
        public void MtdActualizarPantallasBotones()
        {
            TipoDato _dato = new TipoDato();
            Conexion _conexion = new Conexion(cadenaConexionR);

            Exito = true;
            try
            {
                _conexion.NombreProcedimiento = "STic_CatDepartamentos_Update";
                _dato.CadenaTexto = c_codigo_pan;
                _conexion.agregarParametro(EnumTipoDato.CadenaTexto, _dato, "c_codigo_pan");
                _dato.CadenaTexto = c_codigo_bot;
                _conexion.agregarParametro(EnumTipoDato.CadenaTexto, _dato, "c_codigo_bot");
                _dato.Entero = id_pantalla_boton;
                _conexion.agregarParametro(EnumTipoDato.Entero, _dato, "id_pantalla_boton");
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
        public void MtdEliminarDepartamentos()
        {
            TipoDato _dato = new TipoDato();
            Conexion _conexion = new Conexion(cadenaConexionR);

            Exito = true;
            try
            {
                _conexion.NombreProcedimiento = "STic_CatPantallasBotones_Delete";
                _dato.Entero = id_pantalla_boton;
                _conexion.agregarParametro(EnumTipoDato.Entero, _dato, "id_pantalla_boton");
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


