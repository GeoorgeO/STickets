using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CapaDeDatos.Clases
{
   public class CLS_CatJefesarea: ConexionBase
    {
        public string c_codigo_jef { get; set; }
        public string v_nombre_jef { get; set; }
        public string v_correoelectronico { get; set; }

        public void MtdSeleccionarJefesarea()
        {
            TipoDato _dato = new TipoDato();
            Conexion _conexion = new Conexion(cadenaConexionR);

            Exito = true;
            try
            {
                _conexion.NombreProcedimiento = "STic_CatJefesarea_Select";
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

        public void MtdInsertarJefesarea()
        {
            TipoDato _dato = new TipoDato();
            Conexion _conexion = new Conexion(cadenaConexionR);

            Exito = true;
            try
            {
                _conexion.NombreProcedimiento = "STic_CatJefesarea_Insert";
                _dato.CadenaTexto = v_nombre_jef;                
                _conexion.agregarParametro(EnumTipoDato.CadenaTexto, _dato, "v_nombre_jef");
                _dato.CadenaTexto = v_correoelectronico;
                _conexion.agregarParametro(EnumTipoDato.CadenaTexto, _dato, "v_correoelectronico");
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

        public void MtdActualizarJefesarea()
        {
            TipoDato _dato = new TipoDato();
            Conexion _conexion = new Conexion(cadenaConexionR);

            Exito = true;
            try
            {
                _conexion.NombreProcedimiento = "STic_CatJefesarea_Update";
                _dato.CadenaTexto = c_codigo_jef;
                _conexion.agregarParametro(EnumTipoDato.CadenaTexto, _dato, "c_codigo_jef");
                _dato.CadenaTexto = v_nombre_jef;
                _conexion.agregarParametro(EnumTipoDato.CadenaTexto, _dato, "v_nombre_jef");
                _dato.CadenaTexto = v_correoelectronico;
                _conexion.agregarParametro(EnumTipoDato.CadenaTexto, _dato, "v_correoelectronico");
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

        public void MtdEliminarJefesarea()
        {
            TipoDato _dato = new TipoDato();
            Conexion _conexion = new Conexion(cadenaConexionR);

            Exito = true;
            try
            {
                _conexion.NombreProcedimiento = "STic_CatJefesarea_Delete";
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



    }
}
