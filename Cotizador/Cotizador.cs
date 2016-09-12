﻿using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Collections;
using System.Text;
using System.Data.OleDb;
using System.Diagnostics;
using Microsoft.VisualBasic;
using System.Security.Cryptography;
using System.Configuration;
using System.IO;
using System.Web.Configuration;
using System.Net.Mail;
using System.Xml;
using System.Collections.Generic;
using System.Globalization; 
 

namespace Cotizador
{
    public class Cotizadores
    {

        public DataView LlenaComboTipoVehiculo()
        {


           DataTable content = new DataTable();
           content = AccesoDatos.RegresaTablaMySql("Select indice, Descripcion from TipodeVehiculo order by Descripcion");
           DataView dv = new DataView(content);
           return dv;

        }
        public static List<CorreosInternos> EnviarCorreosInternos(string CodigoEmpresa)
        {

            List<CorreosInternos> data = new List<CorreosInternos>();

            DataTable content = new DataTable();
            content = AccesoDatos.RegresaTablaMySql("select Correo from maestro_correosinternos where CodigoEmpresa ='" + CodigoEmpresa + "'");
            foreach (DataRow rw in content.Rows)
            {
                CorreosInternos address = new CorreosInternos();
                address.Correo = rw[0].ToString();
                data.Add(address);
            }
            
            return data;

        }

        public static List<Impresion> ReporteCotizacion1(string CodigoEmpresa,decimal SumaAsegurada, bool RoboParcial, bool Menores16, bool Menores18,bool ExcesosRC, decimal _RoboParcial,string NombreCliente, string DescripcionVehiculo)
        {

            Valores Calculo = new Valores(CodigoEmpresa, SumaAsegurada, RoboParcial, Menores16, Menores18, ExcesosRC, _RoboParcial, 0);
            Impresion lista = new Impresion();
            List<Impresion> data = new List<Impresion>();
       lista.SumaAsegurada = Calculo.SumaAsegurada;
       lista.Codigo= Calculo.Codigo;
       lista.PrimaNeta= Calculo.PrimaNeta;
       lista.PrimaNetaProRata= Calculo.PrimaNetaProRata;
       lista.MontoBase = Calculo.MontoBase;
       lista.SumaLimiteParaCalculo = Calculo.SumaLimiteParaCalculo;
       lista.Porcentaje_Menor_100 = Calculo.Porcentaje_Menor_100;
       lista.Porcentaje_Mayor_100 = Calculo.Porcentaje_Mayor_100;
       lista.Costo = Calculo.Costo;
       lista.RoboParcial = Calculo.RoboParcial;
       lista.MenoresDesde16 = Calculo.MenoresDesde16;
       lista.MenoresDesde18 = Calculo.MenoresDesde18;
       lista.ExcesoRC = Calculo.ExcesoRC;
       lista.GastosPorEmision = Calculo.GastosPorEmision;
       lista.GastosPorEmisionProRata = Calculo.GastosPorEmisionProRata;
       lista.Asisto = Calculo.Asisto;
       lista.Iva = Calculo.Iva;
       lista.IvaProRata = Calculo.IvaProRata;
       lista.CoberturaAdicional = Calculo.CoberturaAdicional;
       lista.PrimaTotal = Calculo.PrimaTotal;
       lista.PrimaTotalProRata = Calculo.PrimaTotalProRata;
       lista.CalculoIva = Calculo.CalculoIva;
       lista.DiasAnuales = Calculo.DiasAnuales;
       lista.DiasTotales = Calculo.DiasTotales;
       lista.CadaPago = Calculo.CadaPago;
       lista.Exceso_RC_ElevacionDeCobertura = Calculo.Exceso_RC_ElevacionDeCobertura;
       lista.Exceso_RC_Base = Calculo.Exceso_RC_Base;
       lista.DañosATerceros = Calculo.DañosATerceros;
       lista.NombreCliente = NombreCliente;
       lista.NombreAgente = "";
       lista.DescripcionVehiculo = DescripcionVehiculo;
       lista.MotoDeduciblePorDañosyAccidentes = Calculo.MotoDeduciblesPorDañosyAccidentes;
       lista.MotoDeducibleRobo = Calculo.MotoDeducibles_Robo;
       data.Add(lista);

            return data;

        }
        public DataView LlenaComboMarca()
        {

            DataTable content = new DataTable();
            content = AccesoDatos.RegresaTablaMySql(" SELECT A.* FROM(select * from marca ORDER BY DESCRIPCION) A union all " +
 "Select 0000, '...OTRAS MARCAS'");
            DataView dv = new DataView(content);
            return dv;

        }
        public DataView LlenaComboLinea()
        {

            DataTable content = new DataTable();
            content = AccesoDatos.RegresaTablaMySql("Select indice, Descripcion from linea order by Descripcion");
            DataView dv = new DataView(content);
            return dv;

        }
        public DataView LlenaComboModelo()
        {

            DataTable content = new DataTable();
            content = AccesoDatos.RegresaTablaMySql("Select indice, Descripcion from modelo order by Descripcion");
            DataView dv = new DataView(content);
            return dv;

        }

        public StringBuilder ObtieneMensaje(int MensajeTipo)
        {
            StringBuilder mensaje = new StringBuilder();

            DataTable content = new DataTable();
            content = AccesoDatos.RegresaTablaMySql("Select mensaje from  maestro_correoautomatico where codigo = " + MensajeTipo.ToString());
            foreach (DataRow rw in content.Rows)
            {
                mensaje.Append(rw[0].ToString());
            }

            return mensaje;

        }

        public string GuardaCotizacion(string _Nombre,string Apellidos, string _Correo, string _TipoDeVehiculo, string _Linea, string _Marca, string _Telefono, string _Modelo, decimal _SumaAsegurada, string _TipoSeguro, string Hora, string _CodigoEmpresa, string _ComoContactar) 
         {
             string id = "";
             string sql = " insert into trans_correosenviados(Nombre, Apellidos, Correo, TipoDeVehiculo, Linea, Marca, Telefono, Modelo, SumaAsegurada, TipoSeguro, contactar, CodigoEmpresa,ComoContactar)";
             sql += " values('" + _Nombre.Trim() + "','" + Apellidos.Trim() + "','" + _Correo + "','" + _TipoDeVehiculo + "','" + _Linea + "','" + _Marca + "','" + _Telefono + "','" + _Modelo + "'," + _SumaAsegurada.ToString() + ",'" + _TipoSeguro + "','" + Hora + "','" + _CodigoEmpresa + "','" + _ComoContactar + "')";
             AccesoDatos.EjecutaQueryMySql( sql);
             id = AccesoDatos.RegresaCadena_1_ResultadoMysql("select max(indice) from trans_correosenviados where Nombre = '"+ _Nombre.Trim() + "' and Apellidos = '"+ Apellidos.Trim() + "'");
             return id;
        }
         public static  decimal ObtienePorcentajeMenor(string Codigo)
         {
             decimal resultado = 0;

             DataTable content = new DataTable();
             content = AccesoDatos.RegresaTablaMySql("Select porcentaje_menor_100 from maestro_reglasnegocio where CodigoEmpresa = '" + Codigo + "'");
             DataView dv = new DataView(content);
             foreach (DataRow rw in content.Rows)
             {
                 if (rw[0].ToString() != null && rw[0].ToString().Trim() != "" )
                 {
                     resultado = decimal.Parse(rw[0].ToString());
                 }
             }
            
             return resultado;
         }
         public static decimal ObtieneMotoDañosATercerosBase(string Codigo)
         {
             decimal resultado = 0;

             DataTable content = new DataTable();
             content = AccesoDatos.RegresaTablaMySql("Select MotoDanosATercerosBase from maestro_reglasnegocio where CodigoEmpresa = '" + Codigo + "'");
             DataView dv = new DataView(content);
             foreach (DataRow rw in content.Rows)
             {
                 if (rw[0].ToString() != null && rw[0].ToString().Trim() != "")
                 {
                     resultado = decimal.Parse(rw[0].ToString());
                 }
             }

             return resultado;
         }

         public static decimal ObtieneMotoPorcentaje_DeducibleDañosYAccidentes(string Codigo)
         {
             decimal resultado = 0;

             DataTable content = new DataTable();
             content = AccesoDatos.RegresaTablaMySql("Select MotoPorcentaje_DeducibleDañosYAccidentes from maestro_reglasnegocio where CodigoEmpresa = '" + Codigo + "'");
             DataView dv = new DataView(content);
             foreach (DataRow rw in content.Rows)
             {
                 if (rw[0].ToString() != null && rw[0].ToString().Trim() != "")
                 {
                     resultado = decimal.Parse(rw[0].ToString());
                 }
             }

             return resultado;
         }


         public static decimal ObtieneMotoPorcentaje_DeducibleRobo(string Codigo)
         {
             decimal resultado = 0;

             DataTable content = new DataTable();
             content = AccesoDatos.RegresaTablaMySql("Select MotoPorcentaje_DeducibleRobo from maestro_reglasnegocio where CodigoEmpresa = '" + Codigo + "'");
             DataView dv = new DataView(content);
             foreach (DataRow rw in content.Rows)
             {
                 if (rw[0].ToString() != null && rw[0].ToString().Trim() != "")
                 {
                     resultado = decimal.Parse(rw[0].ToString());
                 }
             }

             return resultado;
         }

         public static decimal ObtieneMotoPorcentaje_Cobro(string Codigo)
         {
             decimal resultado = 0;

             DataTable content = new DataTable();
             content = AccesoDatos.RegresaTablaMySql("Select MotoPorcentaje_Cobro from maestro_reglasnegocio where CodigoEmpresa = '" + Codigo + "'");
             DataView dv = new DataView(content);
             foreach (DataRow rw in content.Rows)
             {
                 if (rw[0].ToString() != null && rw[0].ToString().Trim() != "")
                 {
                     resultado = decimal.Parse(rw[0].ToString());
                 }
             }

             return resultado;
         }

         public static decimal ObtieneMotoCobro_PorServicio(string Codigo)
         {
             decimal resultado = 0;

             DataTable content = new DataTable();
             content = AccesoDatos.RegresaTablaMySql("Select MotoCobro_PorServicio from maestro_reglasnegocio where CodigoEmpresa = '" + Codigo + "'");
             DataView dv = new DataView(content);
             foreach (DataRow rw in content.Rows)
             {
                 if (rw[0].ToString() != null && rw[0].ToString().Trim() != "")
                 {
                     resultado = decimal.Parse(rw[0].ToString());
                 }
             }

             return resultado;
         }

         public static decimal ObtieneMotoPorcentaje_PorServicio(string Codigo)
         {
             decimal resultado = 0;

             DataTable content = new DataTable();
             content = AccesoDatos.RegresaTablaMySql("Select MotoPorcentaje_PorServicio from maestro_reglasnegocio where CodigoEmpresa = '" + Codigo + "'");
             DataView dv = new DataView(content);
             foreach (DataRow rw in content.Rows)
             {
                 if (rw[0].ToString() != null && rw[0].ToString().Trim() != "")
                 {
                     resultado = decimal.Parse(rw[0].ToString());
                 }
             }

             return resultado;
         }

         public static decimal MotoSumaLimiteParaCalculo(string Codigo)
         {
             decimal resultado = 0;

             DataTable content = new DataTable();
             content = AccesoDatos.RegresaTablaMySql("Select MotoSumaLimiteParaCalculo from maestro_reglasnegocio where CodigoEmpresa = '" + Codigo + "'");
             DataView dv = new DataView(content);
             foreach (DataRow rw in content.Rows)
             {
                 if (rw[0].ToString() != null && rw[0].ToString().Trim() != "")
                 {
                     resultado = decimal.Parse(rw[0].ToString());
                 }
             }

             return resultado;
         }

         public static decimal ObtienePorcentajeMayor(string Codigo)
         {
             decimal resultado = 0;

             DataTable content = new DataTable();
             content = AccesoDatos.RegresaTablaMySql("Select porcentaje_mayor_100 from maestro_reglasnegocio where CodigoEmpresa = '" + Codigo + "'");
             DataView dv = new DataView(content);
             foreach (DataRow rw in content.Rows)
             {
                 if (rw[0].ToString() != null && rw[0].ToString().Trim() != "")
                 {
                     resultado = decimal.Parse(rw[0].ToString());
                 }
             }

             return resultado;
         }
         public static decimal ObtieneCosto(string Codigo)
         {
             decimal resultado = 0;

             DataTable content = new DataTable();
             content = AccesoDatos.RegresaTablaMySql("Select costo from maestro_reglasnegocio where CodigoEmpresa = '" + Codigo + "'");
             DataView dv = new DataView(content);
             foreach (DataRow rw in content.Rows)
             {
                 if (rw[0].ToString() != null && rw[0].ToString().Trim() != "")
                 {
                     resultado = decimal.Parse(rw[0].ToString());
                 }
             }

             return resultado;
         }
         public static decimal ObtieneBase(string Codigo)
         {
             decimal resultado = 0;

             DataTable content = new DataTable();
             content = AccesoDatos.RegresaTablaMySql("Select base from maestro_reglasnegocio where CodigoEmpresa = '" + Codigo + "'");
             DataView dv = new DataView(content);
             foreach (DataRow rw in content.Rows)
             {
                 if (rw[0].ToString() != null && rw[0].ToString().Trim() != "")
                 {
                     resultado = decimal.Parse(rw[0].ToString());
                 }
             }

             return resultado;
         }
         public static decimal ObtieneLimiteDeSeguros(string Codigo)
         {
             decimal resultado = 0;

             DataTable content = new DataTable();
             content = AccesoDatos.RegresaTablaMySql("Select suma_asegurada_limite from maestro_reglasnegocio where CodigoEmpresa = '" + Codigo + "'");
             DataView dv = new DataView(content);
             foreach (DataRow rw in content.Rows)
             {
                 if (rw[0].ToString() != null && rw[0].ToString().Trim() != "")
                 {
                     resultado = decimal.Parse(rw[0].ToString());
                 }
             }

             return resultado;
         }
         
 
          public static decimal ObtieneElecacionDeCoberturaRC(string Codigo)
         {
             decimal resultado = 0;

             DataTable content = new DataTable();
             content = AccesoDatos.RegresaTablaMySql("Select Exceso_RC_ElevacionDeCobertura from maestro_reglasnegocio where CodigoEmpresa = '" + Codigo + "'");
             DataView dv = new DataView(content);
             foreach (DataRow rw in content.Rows)
             {
                 if (rw[0].ToString() != null && rw[0].ToString().Trim() != "")
                 {
                     resultado = decimal.Parse(rw[0].ToString());
                 }
             }

             return resultado;
         }
          public static decimal ObtienePorcentajeResponsabilidadCivil(string Codigo)
         {
             decimal resultado = 0;

             DataTable content = new DataTable();
             content = AccesoDatos.RegresaTablaMySql("Select PorcentajeResponsabilidadCivil from maestro_reglasnegocio where CodigoEmpresa = '" + Codigo + "'");
             DataView dv = new DataView(content);
             foreach (DataRow rw in content.Rows)
             {
                 if (rw[0].ToString() != null && rw[0].ToString().Trim() != "")
                 {
                     resultado = decimal.Parse(rw[0].ToString());
                 }
             }

             return resultado;
         }

        
          public static decimal ObtienePrimaNetaRC(string Codigo)
         {
             decimal resultado = 0;

             DataTable content = new DataTable();
             content = AccesoDatos.RegresaTablaMySql("Select PrimaNetaRC from maestro_reglasnegocio where CodigoEmpresa = '" + Codigo + "'");
             DataView dv = new DataView(content);
             foreach (DataRow rw in content.Rows)
             {
                 if (rw[0].ToString() != null && rw[0].ToString().Trim() != "")
                 {
                     resultado = decimal.Parse(rw[0].ToString());
                 }
             }

             return resultado;
         }

          public static void ActualizaPaso1(string _id)
          {
              string sql = "update trans_correosenviados  set Paso1 = 1 where indice = " + _id; 
              AccesoDatos.EjecutaQueryMySql(sql);
          }
          public static void ActualizaPaso2(string _id)
          {
              string sql = "update trans_correosenviados  set Paso2 = 1 where indice = " + _id;
              AccesoDatos.EjecutaQueryMySql(sql);
          }
          public static void ActualizaPaso3(string _id)
          {
              string sql = "update trans_correosenviados  set Paso3 = 1 where indice = " + _id;
              AccesoDatos.EjecutaQueryMySql(sql);
          }
          public static void Actualiza3Paso(string _id, string _nit, string _dpi, string _direccion, string _zona, string _municipio)
          {
              string sql = "update trans_correosenviados  set nit = '"+ _nit +"', dpi = '"+ _dpi +"', direccion = '"+ _direccion +"', zona = '"+ _zona +"', municipio = '"+ _municipio +"' where indice = " + _id;
              AccesoDatos.EjecutaQueryMySql(sql);
          }
          public static bool VerificaExistenciaDato3Paso(string _id)
          {
              string sql = "Select count(*) from trans_correosenviados where indice = " + _id + " and ifnull(dpi,'') = ''";
              string verifica =  AccesoDatos.RegresaCadena_1_ResultadoMysql(sql);

              if (verifica != "0")
              {
                  return false;
              }
              else { return true; }

          }

          public static string GuardaCodigo(string _id)
          {
              string resultado = "";
              string sql = "call Generacodigo()";
              resultado = AccesoDatos.RegresaCadena_1_ResultadoMysql(sql);

               sql = "update trans_correosenviados  set ingreso = '"+ resultado +"' where indice = " + _id;
              AccesoDatos.EjecutaQueryMySql(sql);
              return resultado;

          }
          public static string ObtieneCodigo(string _id)
          {
              string resultado = "";

              DataTable content = new DataTable();
              content = AccesoDatos.RegresaTablaMySql("Select ingreso  from trans_correosenviados where indice = " + _id );
              DataView dv = new DataView(content);
              foreach (DataRow rw in content.Rows)
              {
                  if (rw[0].ToString() != null && rw[0].ToString().Trim() != "")
                  {
                      resultado = rw[0].ToString();
                      break;
                 }
              }

              return resultado;
          }
          public static List<string> Autocomplete(string _nombre)
          {
              List<string> retorna = new List<string>();
              string linea = "";
              DataTable content = new DataTable();
              content = AccesoDatos.RegresaTablaMySql("Select concat(Apellidos , ',' , Nombre , '/ ' , TipoDeVehiculo , ' ' , Marca , ' Modelo=', Modelo, ' Fecha Solicitud: ' , Fecha) as Nombre, indice as id  from trans_correosenviados where concat(Apellidos, ',', Nombre) like '%" + _nombre + "%'  order by concat(Apellidos, ',', Nombre), Fecha desc");
              DataView dv = new DataView(content);
              foreach (DataRow rw in content.Rows)
              {
                  linea = rw[0] + " >" + rw[1];
                  retorna.Add(linea);
              }
              return retorna;
          }
          public static DataTable Datos(string _indice)
          {
              DataTable content = new DataTable();
              content = AccesoDatos.RegresaTablaMySql("Select * from trans_correosenviados where indice = " + _indice);
              return content;
          }

        public static DataTable Cotizacion(string _id)
          {
              DataTable content = new DataTable();
              content = AccesoDatos.RegresaTablaMySql("Select  tv.indice as moto, ce.CodigoEmpresa, ce.SumaAsegurada, Concat( ce.Nombre , ' ' , ce.Apellidos) as NombreCliente , Concat(ce.TipoDeVehiculo , ' ' , ce.Marca , ' ' , ce.Modelo , ' ' ,  ce.Linea) as DescripcionVehiculo, ce.TipoSeguro, ce.TipoDeVehiculo from  trans_correosenviados ce, tipodevehiculo tv where ce.TipoDeVehiculo =  tv.Descripcion and ce.indice =  " + _id);
              DataView dv = new DataView(content);
              return content;
          }

   
        public static decimal ObtieneExcesoRC_Base(string Codigo)
         {
             decimal resultado = 0;

             DataTable content = new DataTable();
             content = AccesoDatos.RegresaTablaMySql("Select Exceso_RC_Base from maestro_reglasnegocio where CodigoEmpresa = '" + Codigo + "'");
             DataView dv = new DataView(content);
             foreach (DataRow rw in content.Rows)
             {
                 if (rw[0].ToString() != null && rw[0].ToString().Trim() != "")
                 {
                     resultado = decimal.Parse(rw[0].ToString());
                 }
             }

             return resultado;
         }
         public static decimal ObtieneValor_RoboParcial(string Codigo)
         {
             decimal resultado = 0;

             DataTable content = new DataTable();
             content = AccesoDatos.RegresaTablaMySql("Select robo_parcial from maestro_reglasnegocio where CodigoEmpresa = '" + Codigo + "'");
             DataView dv = new DataView(content);
             foreach (DataRow rw in content.Rows)
             {
                 if (rw[0].ToString() != null && rw[0].ToString().Trim() != "")
                 {
                     resultado = decimal.Parse(rw[0].ToString());
                 }
             }

             return resultado;
         }
         public static decimal ObtieneValor_Menores_desde_16(string Codigo)
         {
             decimal resultado = 0;

             DataTable content = new DataTable();
             content = AccesoDatos.RegresaTablaMySql("Select Menores_desde_16 from maestro_reglasnegocio where CodigoEmpresa = '" + Codigo + "'");
             DataView dv = new DataView(content);
             foreach (DataRow rw in content.Rows)
             {
                 if (rw[0].ToString() != null && rw[0].ToString().Trim() != "")
                 {
                     resultado = decimal.Parse(rw[0].ToString());
                 }
             }

             return resultado;
         }
         public static decimal ObtieneValor_Menores_desde_18(string Codigo)
         {
             decimal resultado = 0;

             DataTable content = new DataTable();
             content = AccesoDatos.RegresaTablaMySql("Select Menores_desde_18 from maestro_reglasnegocio where CodigoEmpresa = '" + Codigo + "'");
             DataView dv = new DataView(content);
             foreach (DataRow rw in content.Rows)
             {
                 if (rw[0].ToString() != null && rw[0].ToString().Trim() != "")
                 {
                     resultado = decimal.Parse(rw[0].ToString());
                 }
             }

             return resultado;
         }
         public static decimal ObtieneValor_Exceso_RC(string Codigo)
         {
             decimal resultado = 0;

             DataTable content = new DataTable();
             content = AccesoDatos.RegresaTablaMySql("Select Exceso_RC from maestro_reglasnegocio where CodigoEmpresa = '" + Codigo + "'");
             DataView dv = new DataView(content);
             foreach (DataRow rw in content.Rows)
             {
                 if (rw[0].ToString() != null && rw[0].ToString().Trim() != "")
                 {
                     resultado = decimal.Parse(rw[0].ToString());
                 }
             }

             return resultado;
         }
         public static decimal ObtieneValor_GastosEmision(string Codigo)
         {
             decimal resultado = 0;

             DataTable content = new DataTable();
             content = AccesoDatos.RegresaTablaMySql("Select gastos_emision from maestro_reglasnegocio where CodigoEmpresa = '" + Codigo + "'");
             DataView dv = new DataView(content);
             foreach (DataRow rw in content.Rows)
             {
                 if (rw[0].ToString() != null && rw[0].ToString().Trim() != "")
                 {
                     resultado = decimal.Parse(rw[0].ToString());
                 }
             }

             return resultado;
         }
         public static decimal ObtieneValor_Asisto(string Codigo)
         {
             decimal resultado = 0;

             DataTable content = new DataTable();
             content = AccesoDatos.RegresaTablaMySql("Select asisto from maestro_reglasnegocio where CodigoEmpresa = '" + Codigo + "'");
             DataView dv = new DataView(content);
             foreach (DataRow rw in content.Rows)
             {
                 if (rw[0].ToString() != null && rw[0].ToString().Trim() != "")
                 {
                     resultado = decimal.Parse(rw[0].ToString());
                 }
             }

             return resultado;
         }
         public static decimal ObtieneIva(string Codigo)
         {
             decimal resultado = 0;

             DataTable content = new DataTable();
             content = AccesoDatos.RegresaTablaMySql("Select iva from maestro_reglasnegocio where CodigoEmpresa = '" + Codigo + "'");
             DataView dv = new DataView(content);
             foreach (DataRow rw in content.Rows)
             {
                 if (rw[0].ToString() != null && rw[0].ToString().Trim() != "")
                 {
                     resultado = decimal.Parse(rw[0].ToString());
                 }
             }

             return resultado;
         }
         public static List<Impresion> ReporteFormato1()
         {
             List<Impresion> data = new List<Impresion>();
             Impresion lista = new Impresion();
             data.Add(lista);

             return data;

         }

         public static string StatusDescripcionPaso1(string _id)
         {
             string resultado = "";

             DataTable content = new DataTable();
             content = AccesoDatos.RegresaTablaMySql("select case when ifnull(Paso1,0) = 0 then 'Paso1' else   'Paso11'   end from trans_correosenviados where indice = " + _id  );
             DataView dv = new DataView(content);
             foreach (DataRow rw in content.Rows)
             {
                 if (rw[0].ToString() != null && rw[0].ToString().Trim() != "")
                 {
                     resultado = rw[0].ToString();
                 }
             }

             return resultado;
         }
         public static string CorreoCliente(string _id)
         {
             string resultado = "";

             DataTable content = new DataTable();
             content = AccesoDatos.RegresaTablaMySql("select correo from trans_correosenviados where indice = " + _id);
             DataView dv = new DataView(content);
             foreach (DataRow rw in content.Rows)
             {
                 if (rw[0].ToString() != null && rw[0].ToString().Trim() != "")
                 {
                     resultado = rw[0].ToString();
                     break;
                 }
             }

             return resultado;
         }
         public static string CodigoEmpresaCliente(string _id)
         {
             string resultado = "";

             DataTable content = new DataTable();
             content = AccesoDatos.RegresaTablaMySql("select CodigoEmpresa from trans_correosenviados where indice = " + _id);
             DataView dv = new DataView(content);
             foreach (DataRow rw in content.Rows)
             {
                 if (rw[0].ToString() != null && rw[0].ToString().Trim() != "")
                 {
                     resultado = rw[0].ToString();
                     break;
                 }
             }

             return resultado;
         }
         public static string TelefonoCliente(string _id)
         {
             string resultado = "";

             DataTable content = new DataTable();
             content = AccesoDatos.RegresaTablaMySql("select Telefono from trans_correosenviados where indice = " + _id);
             DataView dv = new DataView(content);
             foreach (DataRow rw in content.Rows)
             {
                 if (rw[0].ToString() != null && rw[0].ToString().Trim() != "")
                 {
                     resultado = rw[0].ToString();
                     break;
                 }
             }

             return resultado;
         }

         public static bool RestringirCorreoAvisoCliente(string _id)
         {
             bool resultado = false;

             DataTable content = new DataTable();
             content = AccesoDatos.RegresaTablaMySql("select status from trans_correosenviados where indice = " + _id);
             DataView dv = new DataView(content);
             foreach (DataRow rw in content.Rows)
             {
                 if (rw[0].ToString() != null && rw[0].ToString().Trim() != "")
                 {
                     resultado = bool.Parse(rw[0].ToString());
                     break;
                 }
             }


             return resultado;
         }

         public static string NombreCliente(string _id)
         {
             string resultado = "";

             DataTable content = new DataTable();
             content = AccesoDatos.RegresaTablaMySql("select Nombre from trans_correosenviados where indice = " + _id);
             DataView dv = new DataView(content);
             foreach (DataRow rw in content.Rows)
             {
                 if (rw[0].ToString() != null && rw[0].ToString().Trim() != "")
                 {
                     resultado = rw[0].ToString();
                     break;
                 }
             }

             return resultado;
         }
         public static string ApellidosCliente(string _id)
         {
             string resultado = "";

             DataTable content = new DataTable();
             content = AccesoDatos.RegresaTablaMySql("select Apellidos from trans_correosenviados where indice = " + _id);
             DataView dv = new DataView(content);
             foreach (DataRow rw in content.Rows)
             {
                 if (rw[0].ToString() != null && rw[0].ToString().Trim() != "")
                 {
                     resultado = rw[0].ToString();
                     break;
                 }
             }

             return resultado;
         }
         public static string MensajesAutomaticos(string _codigo)
         {
             string resultado = "";

             DataTable content = new DataTable();
             content = AccesoDatos.RegresaTablaMySql("select mensaje from maestro_correoautomatico where codigo = '"+ _codigo +"'");
             DataView dv = new DataView(content);
             foreach (DataRow rw in content.Rows)
             {
                 if (rw[0].ToString() != null && rw[0].ToString().Trim() != "")
                 {
                     resultado = rw[0].ToString();
                     break;
                 }
             }

             return resultado;
         }
         public static string StatusDescripcionPaso2(string _id)
         {
             string resultado = "";

             DataTable content = new DataTable();
             content = AccesoDatos.RegresaTablaMySql("select case when ifnull(Paso2,0) = 0 then 'Paso2' else   'Paso22'   end from trans_correosenviados where indice = " + _id);
             DataView dv = new DataView(content);
             foreach (DataRow rw in content.Rows)
             {
                 if (rw[0].ToString() != null && rw[0].ToString().Trim() != "")
                 {
                     resultado = rw[0].ToString();
                 }
             }

             return resultado;
         }
         public static string StatusDescripcionPaso3(string _id)
         {
             string resultado = "";

             DataTable content = new DataTable();
             content = AccesoDatos.RegresaTablaMySql("select case when ifnull(Paso3,0) = 0 then 'Paso3' else   'Paso33'   end from trans_correosenviados where indice = " + _id);
             DataView dv = new DataView(content);
             foreach (DataRow rw in content.Rows)
             {
                 if (rw[0].ToString() != null && rw[0].ToString().Trim() != "")
                 {
                     resultado = rw[0].ToString();
                 }
             }

             return resultado;
         }
         public static string StatusDescripcionPaso4(string _id)
         {
             string resultado = "";

             DataTable content = new DataTable();
             content = AccesoDatos.RegresaTablaMySql("select case when ifnull(Paso3,0) = 0 then 'Paso4' else   'Paso44'   end from trans_correosenviados where indice = " + _id);
             DataView dv = new DataView(content);
             foreach (DataRow rw in content.Rows)
             {
                 if (rw[0].ToString() != null && rw[0].ToString().Trim() != "")
                 {
                     resultado = rw[0].ToString();
                 }
             }

             return resultado;
         }
         public static string LinkPaso1(string _CodigoEmpresa, string _id)
         {
             string resultado = "";
             string descripcion = StatusDescripcionPaso1(_id);

             DataTable content = new DataTable();
             content = AccesoDatos.RegresaTablaMySql("Select Link from maestro_link_externo where CodigoEmpresa = '" + _CodigoEmpresa + "' and Descripcion = '" + descripcion  + "'");
             DataView dv = new DataView(content);
             foreach (DataRow rw in content.Rows)
             {
                 if (rw[0].ToString() != null && rw[0].ToString().Trim() != "")
                 {
                     resultado = rw[0].ToString();
                 }
             }

             return resultado;
         }

         public static string LinkPaso2(string _CodigoEmpresa, string _id)
         {
             string resultado = "";
             string descripcion = StatusDescripcionPaso2(_id);

             DataTable content = new DataTable();
             content = AccesoDatos.RegresaTablaMySql("Select Link from maestro_link_externo where CodigoEmpresa = '" + _CodigoEmpresa + "' and Descripcion = '" + descripcion + "'");
             DataView dv = new DataView(content);
             foreach (DataRow rw in content.Rows)
             {
                 if (rw[0].ToString() != null && rw[0].ToString().Trim() != "")
                 {
                     resultado = rw[0].ToString();
                 }
             }

             return resultado;
         }
         public static string LinkPaso3(string _CodigoEmpresa, string _id)
         {
             string resultado = "";
             string descripcion = StatusDescripcionPaso3(_id);

             DataTable content = new DataTable();
             content = AccesoDatos.RegresaTablaMySql("Select Link from maestro_link_externo where CodigoEmpresa = '" + _CodigoEmpresa + "' and Descripcion = '" + descripcion + "'");
             DataView dv = new DataView(content);
             foreach (DataRow rw in content.Rows)
             {
                 if (rw[0].ToString() != null && rw[0].ToString().Trim() != "")
                 {
                     resultado = rw[0].ToString();
                 }
             }

             return resultado;
         }
         public static string LinkPaso4(string _CodigoEmpresa, string _id)
         {
             string resultado = "";
             string descripcion = StatusDescripcionPaso4(_id);

             DataTable content = new DataTable();
             content = AccesoDatos.RegresaTablaMySql("Select Link from maestro_link_externo where CodigoEmpresa = '" + _CodigoEmpresa + "' and Descripcion = '" + descripcion + "'");
             DataView dv = new DataView(content);
             foreach (DataRow rw in content.Rows)
             {
                 if (rw[0].ToString() != null && rw[0].ToString().Trim() != "")
                 {
                     resultado = rw[0].ToString();
                 }
             }

             return resultado;
         }

          
          public static string LinkUbicaciones(string _CodigoEmpresa, string _Descripcion)
         {
             string resultado = "";

             DataTable content = new DataTable();
             content = AccesoDatos.RegresaTablaMySql("Select Link from maestro_link_externo where CodigoEmpresa = '" + _CodigoEmpresa + "' and Descripcion = '" + _Descripcion + "'");
             DataView dv = new DataView(content);
             foreach (DataRow rw in content.Rows)
             {
                 if (rw[0].ToString() != null && rw[0].ToString().Trim() != "")
                 {
                     resultado = rw[0].ToString();
                 }
             }

             return resultado;
         }
        

    }
    
    public class Valores 
    {
      public decimal SumaAsegurada = 0;
      public string Codigo = "";
      public decimal PrimaNeta = 0;
      public decimal PrimaNetaProRata = 0;
      public decimal MontoBase = 0;
      public decimal SumaLimiteParaCalculo = 0;
      public decimal Porcentaje_Menor_100 = 0;
      public decimal Porcentaje_Mayor_100 = 0;
      public decimal Costo = 0;
      public decimal RoboParcial = 0;
      public decimal MenoresDesde16 = 0;
      public decimal MenoresDesde18 = 0;
      public decimal ExcesoRC = 0;
      public decimal GastosPorEmision = 0;
      public decimal GastosPorEmisionProRata = 0;
      public decimal Asisto = 0;
      public decimal Iva = 0;
      public decimal IvaProRata = 0;
      public decimal CoberturaAdicional = 0;
      public decimal PrimaTotal = 0;
      public decimal PrimaTotalProRata = 0;
      public decimal CalculoIva = 0;
      public int DiasAnuales = 0;
      public int DiasTotales = 0;
      public decimal CadaPago = 0;
      public decimal  Exceso_RC_ElevacionDeCobertura = 0;
      public decimal Exceso_RC_Base = 0;
      public decimal DañosATerceros = 0;
      public decimal PorcentajeResponsabilidadCivil = 0;
      public decimal MotoDeduciblesPorDañosyAccidentes = 0;
      public decimal MotoDeducibles_Robo = 0;
/// <summary>
/// Ejecuta los valores de las formulas de acuerdo a la empresa para el calculo de la cotización.
/// </summary>
/// <param name="_Codigo"></param>
/// <param name="_SumaAsegurada"></param>
/// <param name="_roboParcial"></param>
/// <param name="_MenoresDesde16"></param>
/// <param name="_MenoresDesde18"></param>
/// <param name="_ExcesoRC"></param>
/// <param name="_RoboParcial"></param>
/// <param name="MensajeTipo"></param>
      public Valores(string _Codigo, decimal _SumaAsegurada, bool _roboParcial, bool _MenoresDesde16, bool _MenoresDesde18, bool _ExcesoRC, decimal _RoboParcial, int MensajeTipo)
        {
            decimal equipo_especial = 0;
            decimal cien = 100;
            decimal mil = 1000;
            decimal docientoscientuena = 250;
            decimal PrimaNetaRC = Cotizadores.ObtienePrimaNetaRC(_Codigo);
            decimal MotoDañosATerceros = Cotizadores.ObtieneMotoDañosATercerosBase(_Codigo);
            decimal MotoPorcentaje_DeducibleDañosYAccidentes = Cotizadores.ObtieneMotoPorcentaje_DeducibleDañosYAccidentes(_Codigo);
            decimal MotoSumaLimiteParaCalculo = Cotizadores.MotoSumaLimiteParaCalculo(_Codigo);
            decimal MotoPorcentaje_DeducibleRobo = Cotizadores.ObtieneMotoPorcentaje_DeducibleRobo(_Codigo);
            decimal MotoPorcentaje_Cobro = Cotizadores.ObtieneMotoPorcentaje_Cobro(_Codigo);
            decimal MotoCobro_PorServicio = Cotizadores.ObtieneMotoCobro_PorServicio(_Codigo);
            decimal MotoPorcentaje_PorServicio = Cotizadores.ObtieneMotoPorcentaje_PorServicio(_Codigo);

             Codigo = _Codigo;
             SumaAsegurada = _SumaAsegurada;
             Exceso_RC_ElevacionDeCobertura = Cotizadores.ObtieneElecacionDeCoberturaRC(_Codigo);
             Exceso_RC_Base = Cotizadores.ObtieneExcesoRC_Base(_Codigo);
             MontoBase = Cotizadores.ObtieneBase(_Codigo);
             SumaLimiteParaCalculo = Cotizadores.ObtieneLimiteDeSeguros(_Codigo);
             Porcentaje_Menor_100 = Cotizadores.ObtienePorcentajeMenor(_Codigo);
             Porcentaje_Mayor_100 = Cotizadores.ObtienePorcentajeMayor(_Codigo);
             Costo = Cotizadores.ObtieneCosto(_Codigo);
             RoboParcial = 0;
             MenoresDesde16 = 0;
             MenoresDesde18 = 0;
             ExcesoRC = Cotizadores.ObtieneValor_Exceso_RC(_Codigo);
             Asisto = Cotizadores.ObtieneValor_Asisto(_Codigo);
             CalculoIva = Cotizadores.ObtieneIva(_Codigo);
             System.DateTime olddate = System.DateTime.Today;
             System.DateTime newDate = new System.DateTime(olddate.Year, olddate.Month, 1, 0, 0, 0, olddate.Kind);
             System.DateTime nextyear = newDate.AddYears(1);
             DiasAnuales = int.Parse((newDate - nextyear).TotalDays.ToString()) * -1;
             DiasTotales = int.Parse((nextyear - olddate).TotalDays.ToString());
             DañosATerceros = Exceso_RC_Base;
             PorcentajeResponsabilidadCivil = Cotizadores.ObtienePorcentajeResponsabilidadCivil(_Codigo);
             

             if (MensajeTipo == 1)
             {
                 if ((SumaAsegurada * Porcentaje_Menor_100 + Costo) < SumaLimiteParaCalculo)
                 {
                     PrimaNeta = (SumaAsegurada * Porcentaje_Menor_100 + Costo);
                     //=SI((B6*0.025+500)<1000,1000,(B6*0.025+500))+D5

                 }
                 else
                 {
                     PrimaNeta = (SumaAsegurada * Porcentaje_Mayor_100 + Costo);
                     //=SI((B6*0.02+500)<1000,1000,(B6*0.02+500))+D5
                 }
             }

             if (MensajeTipo == 2)
             {

                 PrimaNeta = (PrimaNetaRC * PorcentajeResponsabilidadCivil);
                 //=(D6*1.05)+145.45+((D6*1.05+145.45)*0.12) 
             }

             if (MensajeTipo == 7)
             {
                 if ((SumaAsegurada * MotoPorcentaje_DeducibleDañosYAccidentes) < MotoSumaLimiteParaCalculo)
                 {
                     MotoDeduciblesPorDañosyAccidentes = MotoSumaLimiteParaCalculo;
                     
                 // =SI(($B$6*0.05<500),500,($B$6*0.05))
          
                 }
                 else {
                     MotoDeduciblesPorDañosyAccidentes = SumaAsegurada * MotoPorcentaje_DeducibleDañosYAccidentes;
      
                 // =SI(($B$6*0.05<500),500,($B$6*0.05))
         

                 }

                 if ((SumaAsegurada * MotoPorcentaje_DeducibleRobo) < MotoSumaLimiteParaCalculo)
                 {
                   
                     MotoDeducibles_Robo = MotoSumaLimiteParaCalculo;
                     
                     // =SI(($B$6*0.2<500),500,($B$6*0.2))
                 }
                 else
                 {
                     MotoDeducibles_Robo = SumaAsegurada * MotoPorcentaje_DeducibleRobo;
                   
                     //=SI(($B$6*0.2<500),500,($B$6*0.2))

                 }

                 if ((SumaAsegurada * MotoPorcentaje_Cobro + MotoCobro_PorServicio) < MotoSumaLimiteParaCalculo)
                 {
                     PrimaNeta = MotoSumaLimiteParaCalculo;
                 }else{

                     PrimaNeta = SumaAsegurada * MotoPorcentaje_Cobro + MotoCobro_PorServicio;
                 }
                 
                 
    
             }

             //L31*100/1000

             if (MensajeTipo != 7)
             {
                 GastosPorEmision = PrimaNeta * (Cotizadores.ObtieneValor_GastosEmision(_Codigo));
                 PrimaNetaProRata = PrimaNeta * DiasTotales / DiasAnuales;
                 GastosPorEmisionProRata = PrimaNetaProRata * (Cotizadores.ObtieneValor_GastosEmision(_Codigo));
             }
             else {
                 GastosPorEmision = PrimaNeta * (Cotizadores.ObtieneValor_GastosEmision(_Codigo));
                 PrimaNetaProRata = PrimaNeta * DiasTotales / DiasAnuales;
                 //=E2/365*I3
                 PrimaTotalProRata = PrimaNetaProRata * MotoPorcentaje_PorServicio * Iva;
                
             }


             if (_roboParcial)
             {
                 equipo_especial = SumaAsegurada * (cien) / (mil);
                 if (_RoboParcial > equipo_especial)
                 {
                     RoboParcial = equipo_especial * (cien) / (mil);
                 }
                 else
                 {
                     RoboParcial = _RoboParcial * (cien) / (mil);
                 }

                 CoberturaAdicional += RoboParcial;

             }
             else {
                 RoboParcial = SumaAsegurada * (cien) / (mil);
             }

             if (_MenoresDesde16)
             {
                 MenoresDesde16 = PrimaNeta * (docientoscientuena) / (mil);
                 CoberturaAdicional += MenoresDesde16;
             }
             else {
                 MenoresDesde16 = PrimaNeta * (docientoscientuena) / (mil);
             }

             if (_MenoresDesde18)
             {
                 MenoresDesde18 = PrimaNeta * (docientoscientuena) / (mil);
                 CoberturaAdicional += MenoresDesde18;
             }
             else {
                 MenoresDesde18 = PrimaNeta * (docientoscientuena) / (mil);
             }

             if (_ExcesoRC)
             {
                 if (_MenoresDesde16 == true || _MenoresDesde18 == true)
                 {
                     ExcesoRC += PrimaNeta * (docientoscientuena) / (mil);
                 }

                 DañosATerceros += Exceso_RC_ElevacionDeCobertura;
                 CoberturaAdicional += ExcesoRC;
             }



            Iva = (CoberturaAdicional + PrimaNeta + GastosPorEmision + Asisto) * CalculoIva;
            IvaProRata = (CoberturaAdicional + PrimaNetaProRata + GastosPorEmisionProRata + Asisto) * CalculoIva;
            PrimaTotal = CoberturaAdicional + PrimaNeta + GastosPorEmision + Asisto + Iva;
            if (MensajeTipo != 7)
            {
                PrimaTotalProRata = CoberturaAdicional + PrimaNetaProRata + GastosPorEmisionProRata + Asisto + IvaProRata;
            }

            Iva = decimal.Parse(Iva.ToString("F", CultureInfo.InvariantCulture));
            IvaProRata =  decimal.Parse(IvaProRata.ToString("F", CultureInfo.InvariantCulture));
            PrimaNetaProRata =  decimal.Parse(PrimaNetaProRata.ToString("F", CultureInfo.InvariantCulture));
            PrimaTotal =  decimal.Parse(PrimaTotal.ToString("F", CultureInfo.InvariantCulture));
            PrimaTotalProRata =  decimal.Parse(PrimaTotalProRata.ToString("F", CultureInfo.InvariantCulture));
            GastosPorEmisionProRata = decimal.Parse(GastosPorEmisionProRata.ToString("F", CultureInfo.InvariantCulture));
            CadaPago = decimal.Parse((PrimaTotalProRata / 12).ToString("F", CultureInfo.InvariantCulture));
            RoboParcial = decimal.Parse(RoboParcial.ToString("F", CultureInfo.InvariantCulture));
            MenoresDesde16 = decimal.Parse(MenoresDesde16.ToString("F", CultureInfo.InvariantCulture));
            MenoresDesde18 = decimal.Parse(MenoresDesde18.ToString("F", CultureInfo.InvariantCulture));
            ExcesoRC = decimal.Parse(ExcesoRC.ToString("F", CultureInfo.InvariantCulture));

        }
      
    }

    public class CorreosInternos
    {
        public string Correo = "";
        public CorreosInternos() { }
    }

    public class Impresion
    {

      public Impresion()
        {
        }
      private decimal _SumaAsegruada = 0;
      public decimal SumaAsegurada
      {
          get { return _SumaAsegruada; }
          set { this._SumaAsegruada = value; }
      }
      private string _Codigo = "";
      public string Codigo
      {
          get { return _Codigo; }
          set { this._Codigo = value; }
      }
      private decimal _PrimaNeta = 0;
      public decimal PrimaNeta
      {
          get { return _PrimaNeta; }
          set { this._PrimaNeta = value; }
      }
      private decimal _PrimaNetaProRata = 0;
      public decimal PrimaNetaProRata
      {
          get { return _PrimaNetaProRata; }
          set { this._PrimaNetaProRata = value; }
      }
      private decimal _MontoBase = 0;
      public decimal MontoBase
      {
          get { return _MontoBase; }
          set { this._MontoBase = value; }
      }
      private decimal _SumaLimitieParaCalculo = 0;
      public decimal SumaLimiteParaCalculo
      {
          get { return _SumaLimitieParaCalculo; }
          set { this._SumaLimitieParaCalculo = value; }
      }
      private decimal _Porcentaje_Menor_100 = 0;
      public decimal Porcentaje_Menor_100
      {
          get { return _Porcentaje_Menor_100; }
          set { this._Porcentaje_Menor_100 = value; }
      }
      private decimal _Porcentaje_Mayor_100 = 0;
      public decimal Porcentaje_Mayor_100
      {
          get { return _Porcentaje_Mayor_100; }
          set { this._Porcentaje_Mayor_100 = value; }
      }
      private decimal _Costo = 0;
      public decimal Costo
      {
          get { return _Costo; }
          set { this._Costo = value; }
      }
      private decimal _RoboParcial = 0;
      public decimal RoboParcial
      {
          get { return _RoboParcial; }
          set { this._RoboParcial = value; }
      }
        private decimal _MenoresDeEdad16 = 0;
      public decimal MenoresDesde16
      {
          get { return _MenoresDeEdad16; }
          set { this._MenoresDeEdad16 = value; }
      }
      private decimal _MenoresDesde18 = 0;
      public decimal MenoresDesde18
      {
          get { return _MenoresDesde18; }
          set { this._MenoresDesde18 = value; }
      }
      private decimal _ExcesoRC = 0;
      public decimal ExcesoRC
      {
          get { return _ExcesoRC; }
          set { this._ExcesoRC = value; }
      }
      private decimal _GastosPorEmision = 0;
      public decimal GastosPorEmision
      {
          get { return _GastosPorEmision; }
          set { this._GastosPorEmision = value; }
      }
      private decimal _GastosPorEmisionProRata = 0;
      public decimal GastosPorEmisionProRata
      {
          get { return _GastosPorEmisionProRata; }
          set { this._GastosPorEmisionProRata = value; }
      }
      private decimal _Asisto = 0;
      public decimal Asisto
      {
          get { return _Asisto; }
          set { this._Asisto = value; }
      }
      private decimal _Iva = 0;
      public decimal Iva
      {
          get { return _Iva; }
          set { this._Iva = value; }
      }
      private decimal _IvaProRata = 0;
      public decimal IvaProRata
      {
          get { return _IvaProRata; }
          set { this._IvaProRata = value; }
      }
      private decimal _CoberturaAdicional = 0;
      public decimal CoberturaAdicional
      {
          get { return _CoberturaAdicional; }
          set { this._CoberturaAdicional = value; }
      }
        private decimal _Primatotal = 0;
      public decimal PrimaTotal
      {
          get { return _Primatotal; }
          set { this._Primatotal = value; }
      }
      private decimal _PrimaTotalProRata = 0;
      public decimal PrimaTotalProRata
      {
          get { return _PrimaTotalProRata; }
          set { this._PrimaTotalProRata = value; }
      }
      private decimal _CalculoIva = 0;
      public decimal CalculoIva
      {
          get { return _CalculoIva; }
          set { this._CalculoIva = value; }
      }
      private decimal _DiasAnuales = 0;
      public decimal DiasAnuales
      {
          get { return _DiasAnuales; }
          set { this._DiasAnuales = value; }
      }
      private int _DiasTotales = 0;
      public int DiasTotales
      {
          get { return _DiasTotales; }
          set { this._DiasTotales = value; }
      }
      private decimal _CadaPago = 0;
      public decimal CadaPago
      {
          get { return _CadaPago; }
          set { this._CadaPago = value; }
      }
      private decimal _Exceso_RC_ElevacionDeCobertura = 0;
      public decimal Exceso_RC_ElevacionDeCobertura
      {
          get { return _Exceso_RC_ElevacionDeCobertura; }
          set { this._Exceso_RC_ElevacionDeCobertura = value; }
      }
      private decimal _Exceso_RC_Base = 0;
      public decimal Exceso_RC_Base
      {
          get { return _Exceso_RC_Base; }
          set { this._Exceso_RC_Base = value; }
      }
        private decimal _DañosATerceros = 0;
      public decimal DañosATerceros
      {
          get { return _DañosATerceros; }
          set { this._DañosATerceros = value; }
      }
      private string _NombreCliente = "";
      public string NombreCliente
      {
          get { return _NombreCliente; }
          set { this._NombreCliente = value; }
      }
      private string _NombreAgente = "";
      public string NombreAgente
      {
          get { return _NombreAgente; }
          set { this._NombreAgente = value; }
      }
      private string _DescripcionVehiculo = "";
      public string DescripcionVehiculo
      {
          get { return _DescripcionVehiculo; }
          set { this._DescripcionVehiculo = value; }
      }
      private decimal _MotoDeduciblePorDañosyAccidentes = 0;
      public decimal MotoDeduciblePorDañosyAccidentes
      {
          get { return _MotoDeduciblePorDañosyAccidentes; }
          set { this._MotoDeduciblePorDañosyAccidentes = value; }
      }
      private decimal _MotoDeducibleRobo = 0;
      public decimal MotoDeducibleRobo
      {
          get { return _MotoDeducibleRobo; }
          set { this._MotoDeducibleRobo = value; }
      }

    }

}

