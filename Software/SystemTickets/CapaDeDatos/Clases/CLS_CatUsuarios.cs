using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CapaDeDatos
{
    public class CLS_CatUsuarios : ConexionBase
    {
        public string c_codigo_usu { get; set; }
        public string v_login { get; set; }
        public string v_nombres { get; set; }
        public string v_apaterno { get; set; }
        public string v_amaterno { get; set; }
        public string v_password { get; set; }
        
       
        public string v_correoelectronico { get; set; }
        public int c_codigo_act { get; set; }

        public void MtdSeleccionarMaxUsuarios()
        {
            TipoDato _dato = new TipoDato();
            Conexion _conexion = new Conexion(cadenaConexionR);

            Exito = true;
            try
            {
                _conexion.NombreProcedimiento = "STic_CatUsuarios_SelectMax";
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

        public void MtdSeleccionarUsuarios()
        {
            TipoDato _dato = new TipoDato();
            Conexion _conexion = new Conexion(cadenaConexionR);

            Exito = true;
            try
            {
                _conexion.NombreProcedimiento = "STic_CatUsuarios_Select";
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

        public void MtdInsertarUsuarios()
        {
            TipoDato _dato = new TipoDato();
            Conexion _conexion = new Conexion(cadenaConexionR);

            Exito = true;
            try
            {
                _conexion.NombreProcedimiento = "STic_CatUsuarios_Insert";
                _dato.CadenaTexto = v_login;
                _conexion.agregarParametro(EnumTipoDato.CadenaTexto, _dato, "v_login");
                _dato.CadenaTexto = v_nombres;
                _conexion.agregarParametro(EnumTipoDato.CadenaTexto, _dato, "v_nombres");
                _dato.CadenaTexto = v_apaterno;
                _conexion.agregarParametro(EnumTipoDato.CadenaTexto, _dato, "v_apaterno");
                _dato.CadenaTexto = v_amaterno;
                _conexion.agregarParametro(EnumTipoDato.CadenaTexto, _dato, "v_amaterno");
                _dato.CadenaTexto = v_password;
                _conexion.agregarParametro(EnumTipoDato.CadenaTexto, _dato, "v_password");
                
                
                _dato.CadenaTexto = v_correoelectronico;
                _conexion.agregarParametro(EnumTipoDato.CadenaTexto, _dato, "v_correoelectronico");
                _dato.Entero = c_codigo_act;
                _conexion.agregarParametro(EnumTipoDato.Entero, _dato, "c_codigo_act");
                _dato.CadenaTexto = c_codigo_usu;
                _conexion.agregarParametro(EnumTipoDato.CadenaTexto, _dato, "c_codigo_usu");
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

        public void MtdActualizarUsuarios()
        {
            TipoDato _dato = new TipoDato();
            Conexion _conexion = new Conexion(cadenaConexionR);

            Exito = true;
            try
            {
                _conexion.NombreProcedimiento = "STic_CatUsuarios_Update";
                _dato.CadenaTexto = c_codigo_usu;
                _conexion.agregarParametro(EnumTipoDato.CadenaTexto, _dato, "c_codigo_usu");
                _dato.CadenaTexto = v_login;
                _conexion.agregarParametro(EnumTipoDato.CadenaTexto, _dato, "v_login");
                _dato.CadenaTexto = v_nombres;
                _conexion.agregarParametro(EnumTipoDato.CadenaTexto, _dato, "v_nombres");
                _dato.CadenaTexto = v_apaterno;
                _conexion.agregarParametro(EnumTipoDato.CadenaTexto, _dato, "v_apaterno");
                _dato.CadenaTexto = v_amaterno;
                _conexion.agregarParametro(EnumTipoDato.CadenaTexto, _dato, "v_amaterno");
                _dato.CadenaTexto = v_password;
                _conexion.agregarParametro(EnumTipoDato.CadenaTexto, _dato, "v_password");
               
                _dato.CadenaTexto = v_correoelectronico;
                _conexion.agregarParametro(EnumTipoDato.CadenaTexto, _dato, "v_correoelectronico");
                _dato.Entero = c_codigo_act;
                _conexion.agregarParametro(EnumTipoDato.Entero, _dato, "c_codigo_act");
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

        public void MtdEliminarUsuarios()
        {
            TipoDato _dato = new TipoDato();
            Conexion _conexion = new Conexion(cadenaConexionR);

            Exito = true;
            try
            {
                _conexion.NombreProcedimiento = "STic_CatUsuarios_Delete";
                _dato.CadenaTexto = c_codigo_usu;
                _conexion.agregarParametro(EnumTipoDato.CadenaTexto, _dato, "c_codigo_usu");
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

        public void MtdEliminarDepyPerUsauario()
        {
            TipoDato _dato = new TipoDato();
            Conexion _conexion = new Conexion(cadenaConexionR);

            Exito = true;
            try
            {
                _conexion.NombreProcedimiento = "STic_CatUsuario_All_Departamento_Perfil_Delete";
                _dato.CadenaTexto = c_codigo_usu;
                _conexion.agregarParametro(EnumTipoDato.CadenaTexto, _dato, "c_codigo_usu");
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
