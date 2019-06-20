using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CapaDeDatos
{
    public class CLS_CatActividades : ConexionBase
    {

        public string c_codigo_act { get; set; }
        public string v_nombre_act { get; set; }
        public string c_actividad_padre { get; set; }
        public string v_descripcion_act { get; set; }

        public void MtdSeleccionarActividades()
        {
            TipoDato _dato = new TipoDato();
            Conexion _conexion = new Conexion(cadenaConexionR);

            Exito = true;
            try
            {
                _conexion.NombreProcedimiento = "STic_CatActividades_Select";
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

        public void MtdSeleccionarActividad()
        {
            TipoDato _dato = new TipoDato();
            Conexion _conexion = new Conexion(cadenaConexionR);

            Exito = true;
            try
            {
                _conexion.NombreProcedimiento = "STic_CatActividades_Actividad_Select";
                _dato.CadenaTexto = c_codigo_act;
                _conexion.agregarParametro(EnumTipoDato.CadenaTexto, _dato, "c_codigo_act");
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

        public void MtdInsertarActividades()
        {
            TipoDato _dato = new TipoDato();
            Conexion _conexion = new Conexion(cadenaConexionR);

            Exito = true;
            try
            {
                _conexion.NombreProcedimiento = "STic_CatActividades_Insert";
                _dato.CadenaTexto = v_nombre_act;
                _conexion.agregarParametro(EnumTipoDato.CadenaTexto, _dato, "v_nombre_act");
                _dato.CadenaTexto = c_actividad_padre;
                _conexion.agregarParametro(EnumTipoDato.CadenaTexto, _dato, "c_actividad_padre");
                _dato.CadenaTexto = v_descripcion_act;
                _conexion.agregarParametro(EnumTipoDato.CadenaTexto, _dato, "v_descripcion_act");
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
        public void MtdActualizarActividades()
        {
            TipoDato _dato = new TipoDato();
            Conexion _conexion = new Conexion(cadenaConexionR);

            Exito = true;
            try
            {
                _conexion.NombreProcedimiento = "STic_CatActividades_Update";
                _dato.CadenaTexto = c_codigo_act;
                _conexion.agregarParametro(EnumTipoDato.CadenaTexto, _dato, "c_codigo_act");
                _dato.CadenaTexto = v_nombre_act;
                _conexion.agregarParametro(EnumTipoDato.CadenaTexto, _dato, "v_nombre_act");
                _dato.CadenaTexto = v_descripcion_act;
                _conexion.agregarParametro(EnumTipoDato.CadenaTexto, _dato, "v_descripcion_act");
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
        public void MtdEliminarActividades()
        {
            TipoDato _dato = new TipoDato();
            Conexion _conexion = new Conexion(cadenaConexionR);

            Exito = true;
            try
            {
                _conexion.NombreProcedimiento = "STic_CatActividades_Delete";
                _dato.CadenaTexto = c_codigo_act;
                _conexion.agregarParametro(EnumTipoDato.CadenaTexto, _dato, "c_codigo_act");
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
