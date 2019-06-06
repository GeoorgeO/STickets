using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CapaDeDatos
{
    public class CLS_CatDepartamentos : ConexionBase
    {
        public string c_codigo_dep { get; set; }
        public string v_nombre_dep { get; set; }
        public string c_codigo_jef { get; set; }

        public void MtdSeleccionarDepartamentos()
        {
            TipoDato _dato = new TipoDato();
            Conexion _conexion = new Conexion(cadenaConexionR);

            Exito = true;
            try
            {
                _conexion.NombreProcedimiento = "STic_CatDepartamentos_Select";
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

        public void MtdInsertarDepartamentos()
        {
            TipoDato _dato = new TipoDato();
            Conexion _conexion = new Conexion(cadenaConexionR);

            Exito = true;
            try
            {
                _conexion.NombreProcedimiento = "STic_CatDepartamentos_Insert";
                _dato.CadenaTexto = v_nombre_dep;
                _conexion.agregarParametro(EnumTipoDato.CadenaTexto, _dato, "v_nombre_dep");
                _dato.CadenaTexto = c_codigo_jef;
                _conexion.agregarParametro(EnumTipoDato.CadenaTexto, _dato, "c_codigo_jef");
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

        public void MtdActualizarDepartamentos()
        {
            TipoDato _dato = new TipoDato();
            Conexion _conexion = new Conexion(cadenaConexionR);

            Exito = true;
            try
            {
                _conexion.NombreProcedimiento = "STic_CatDepartamentos_Update";
                _dato.CadenaTexto = c_codigo_dep;
                _conexion.agregarParametro(EnumTipoDato.CadenaTexto, _dato, "c_codigo_dep");
                _dato.CadenaTexto = v_nombre_dep;
                _conexion.agregarParametro(EnumTipoDato.CadenaTexto, _dato, "v_nombre_dep");
                _dato.CadenaTexto = c_codigo_jef;
                _conexion.agregarParametro(EnumTipoDato.CadenaTexto, _dato, "c_codigo_jef");
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
                _conexion.NombreProcedimiento = "STic_CatDepartamentos_Delete";
                _dato.CadenaTexto = c_codigo_dep;
                _conexion.agregarParametro(EnumTipoDato.CadenaTexto, _dato, "c_codigo_dep");
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

        public void MtdSeleccionarDepartamentosJefe()
        {
            TipoDato _dato = new TipoDato();
            Conexion _conexion = new Conexion(cadenaConexionR);

            Exito = true;
            try
            {
                _conexion.NombreProcedimiento = "STic_CatDepartamentos_Jefe_Select";
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
