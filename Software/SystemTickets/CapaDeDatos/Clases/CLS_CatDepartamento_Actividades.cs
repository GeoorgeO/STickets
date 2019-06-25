using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CapaDeDatos
{
    public class CLS_CatDepartamento_Actividades : ConexionBase
    {

        public string c_codigo_act { get; set; }
        public string c_codigo_dep { get; set; }

        public void MtdSeleccionarDepartamento_Actividades_Departamento()
        {
            TipoDato _dato = new TipoDato();
            Conexion _conexion = new Conexion(cadenaConexionR);

            Exito = true;
            try
            {
                _conexion.NombreProcedimiento = "STic_CatUsuario_Departamento_Departamentos_Select";
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

        public void MtdSeleccionarDepartamento_Actividades()
        {
            TipoDato _dato = new TipoDato();
            Conexion _conexion = new Conexion(cadenaConexionR);

            Exito = true;
            try
            {
                _conexion.NombreProcedimiento = "STic_CatDepartamento_Actividad_Select";
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

        public void MtdInsertarDepartamento_Actividad()
        {
            TipoDato _dato = new TipoDato();
            Conexion _conexion = new Conexion(cadenaConexionR);

            Exito = true;
            try
            {
                _conexion.NombreProcedimiento = "STic_CatDepartamento_Actividad_Insert";
                _dato.CadenaTexto = c_codigo_dep;
                _conexion.agregarParametro(EnumTipoDato.CadenaTexto, _dato, "c_codigo_dep");
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

        public void MtdEliminarDepartamento_Actividad()
        {
            TipoDato _dato = new TipoDato();
            Conexion _conexion = new Conexion(cadenaConexionR);

            Exito = true;
            try
            {
                _conexion.NombreProcedimiento = "STic_CatDepartamento_Actividad_Delete";
                _dato.CadenaTexto = c_codigo_dep;
                _conexion.agregarParametro(EnumTipoDato.CadenaTexto, _dato, "c_codigo_dep");
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
