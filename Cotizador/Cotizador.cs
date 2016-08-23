using System.Web.UI;
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
        public DataView LlenaComboMarca()
        {

            DataTable content = new DataTable();
            content = AccesoDatos.RegresaTablaMySql("Select indice, Descripcion from marca order by  Descripcion");
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
            content = AccesoDatos.RegresaTablaMySql("Select mensaje from  correoautomatico where codigo = " + MensajeTipo.ToString());
            foreach (DataRow rw in content.Rows)
            {
                mensaje.Append(rw[0].ToString());
            }

            return mensaje;

        }

         public void GuardaCotizacion( string _Nombre, string _Correo, string _TipoDeVehiculo,string  _Linea,string  _Marca, string _Telefono, string _Modelo, decimal _SumaAsegurada, string _TipoSeguro, string Hora) 
         { 
         string sql = " insert into LogCorreosEnviados(Nombre, Correo, TipoDeVehiculo, Linea, Marca, Telefono, Modelo, SumaAsegurada, TipoSeguro, contactar)";
         sql += " values('" + _Nombre + "','" + _Correo + "','" + _TipoDeVehiculo + "','" + _Linea + "','" + _Marca + "','" + _Telefono + "','" + _Modelo + "'," + _SumaAsegurada.ToString() + ",'" + _TipoSeguro + "','" + Hora + "')";
         AccesoDatos.EjecutaQueryMySql( sql);
        
        }
         public static  decimal ObtienePorcentaje(string Codigo)
         {
             decimal resultado = 0;

             DataTable content = new DataTable();
             content = AccesoDatos.RegresaTablaMySql("Select porcentaje from coberturas_adicionales where codigo = '" + Codigo + "'");
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
         public static decimal ObtieneCosto(string Codigo)
         {
             decimal resultado = 0;

             DataTable content = new DataTable();
             content = AccesoDatos.RegresaTablaMySql("Select costo from coberturas_adicionales where codigo = '" + Codigo + "'");
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
             content = AccesoDatos.RegresaTablaMySql("Select base from coberturas_adicionales where codigo = '" + Codigo + "'");
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
             content = AccesoDatos.RegresaTablaMySql("Select suma_asegurada_limite from coberturas_adicionales where codigo = '" + Codigo + "'");
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
             content = AccesoDatos.RegresaTablaMySql("Select robo_parcial from coberturas_adicionales where codigo = '" + Codigo + "'");
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
             content = AccesoDatos.RegresaTablaMySql("Select Menores_desde_16 from coberturas_adicionales where codigo = '" + Codigo + "'");
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
             content = AccesoDatos.RegresaTablaMySql("Select Menores_desde_18 from coberturas_adicionales where codigo = '" + Codigo + "'");
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
             content = AccesoDatos.RegresaTablaMySql("Select Exceso_RC from coberturas_adicionales where codigo = '" + Codigo + "'");
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
             content = AccesoDatos.RegresaTablaMySql("Select gastos_emision from coberturas_adicionales where codigo = '" + Codigo + "'");
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
             content = AccesoDatos.RegresaTablaMySql("Select asisto from coberturas_adicionales where codigo = '" + Codigo + "'");
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
             content = AccesoDatos.RegresaTablaMySql("Select asisto from coberturas_adicionales where codigo = '" + Codigo + "'");
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
    }
    
    public class Valores 
    {
      public string Codigo = "";
      public decimal MontoBase = 0;
      public decimal SumaLimiteParaCalculo = 0;
      public decimal Porcentaje = 0;
      public decimal Costo = 0;
      public decimal RoboParcial = 0;
      public decimal MenoresDesde16 = 0;
      public decimal MenoresDesde18 = 0;
      public decimal ExcesoRC = 0;
      public decimal GastosPorEmision = 0;
      public decimal Asisto = 0;
      public decimal Iva = 0;
        public Valores(string _Codigo)
        {
             Codigo = _Codigo;
             MontoBase = Cotizadores.ObtieneBase(_Codigo);
             SumaLimiteParaCalculo = Cotizadores.ObtieneLimiteDeSeguros(_Codigo);
             Porcentaje = Cotizadores.ObtienePorcentaje(_Codigo);
             Costo = Cotizadores.ObtieneCosto(_Codigo);
             RoboParcial = Cotizadores.ObtieneValor_RoboParcial(_Codigo);
             MenoresDesde16 = Cotizadores.ObtieneValor_Menores_desde_16(_Codigo);
             MenoresDesde18 = Cotizadores.ObtieneValor_Menores_desde_18(_Codigo);
             ExcesoRC = Cotizadores.ObtieneValor_Exceso_RC(_Codigo);
             GastosPorEmision = Cotizadores.ObtieneValor_GastosEmision(_Codigo); ;
             Asisto = Cotizadores.ObtieneValor_Asisto(_Codigo);
             Iva = Cotizadores.ObtieneIva(_Codigo);
        
        
        }
      
    }
}

