using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CapaDeDatos
{
    public class CLS_CatPerfil_PantallaBotones : ConexionBase
    {
        public string c_codigo_per { get; set; }
        public int id_pantalla_boton { get; set; }
        public string c_codigo_pan { get; set; }

        public void MtdSeleccionarPerfil_PantallaBotones_PantallaBotones()
        {
            TipoDato _dato = new TipoDato();
            Conexion _conexion = new Conexion(cadenaConexionR);

            Exito = true;
            try
            {
                _conexion.NombreProcedimiento = "STic_CatPerfil_PantallaBotones_PantallaBotones_Select";
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
        

        public void MtdSeleccionarPerfil_PantallaBotones()
        {
            TipoDato _dato = new TipoDato();
            Conexion _conexion = new Conexion(cadenaConexionR);

            Exito = true;
            try
            {
                _conexion.NombreProcedimiento = "STic_CatPerfil_PantallaBotones_Select";
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

        public void MtdInsertarPerfil_PantallaBotones()
        {
            TipoDato _dato = new TipoDato();
            Conexion _conexion = new Conexion(cadenaConexionR);

            Exito = true;
            try
            {
                _conexion.NombreProcedimiento = "STic_CatPerfil_PantallaBotones_Insert";
                _dato.CadenaTexto = c_codigo_per;
                _conexion.agregarParametro(EnumTipoDato.CadenaTexto, _dato, "c_codigo_per");
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

        

        public void MtdEliminarPerfil_PantallaBotones()
        {
            TipoDato _dato = new TipoDato();
            Conexion _conexion = new Conexion(cadenaConexionR);

            Exito = true;
            try
            {
                _conexion.NombreProcedimiento = "STic_CatPerfil_PantallaBotones_Delete";
                _dato.CadenaTexto = c_codigo_per;
                _conexion.agregarParametro(EnumTipoDato.CadenaTexto, _dato, "c_codigo_per");
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
