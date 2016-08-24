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
            content = AccesoDatos.RegresaTablaMySql("select Correo from correosinternos where CodigoEmpresa ='" + CodigoEmpresa + "'");
            foreach (DataRow rw in content.Rows)
            {
                CorreosInternos address = new CorreosInternos();
                address.Correo = rw[0].ToString();
                data.Add(address);
            }
            
            return data;

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
         public static  decimal ObtienePorcentajeMenor(string Codigo)
         {
             decimal resultado = 0;

             DataTable content = new DataTable();
             content = AccesoDatos.RegresaTablaMySql("Select porcentaje_menor_100 from coberturas_adicionales where codigo = '" + Codigo + "'");
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
         public static decimal ObtienePorcentajeMayor(string Codigo)
         {
             decimal resultado = 0;

             DataTable content = new DataTable();
             content = AccesoDatos.RegresaTablaMySql("Select porcentaje_mayor_100 from coberturas_adicionales where codigo = '" + Codigo + "'");
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
             content = AccesoDatos.RegresaTablaMySql("Select iva from coberturas_adicionales where codigo = '" + Codigo + "'");
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

        public Valores(string _Codigo, decimal _SumaAsegurada, bool _roboParcial, bool _MenoresDesde16, bool _MenoresDesde18, bool _ExcesoRC)
        {
             Codigo = _Codigo;
             SumaAsegurada = _SumaAsegurada;
             MontoBase = Cotizadores.ObtieneBase(_Codigo);
             SumaLimiteParaCalculo = Cotizadores.ObtieneLimiteDeSeguros(_Codigo);
             Porcentaje_Menor_100 = Cotizadores.ObtienePorcentajeMenor(_Codigo);
             Porcentaje_Mayor_100 = Cotizadores.ObtienePorcentajeMayor(_Codigo);
             Costo = Cotizadores.ObtieneCosto(_Codigo);
             RoboParcial = Cotizadores.ObtieneValor_RoboParcial(_Codigo);
             MenoresDesde16 = Cotizadores.ObtieneValor_Menores_desde_16(_Codigo);
             MenoresDesde18 = Cotizadores.ObtieneValor_Menores_desde_18(_Codigo);
             ExcesoRC = Cotizadores.ObtieneValor_Exceso_RC(_Codigo);
             Asisto = Cotizadores.ObtieneValor_Asisto(_Codigo);
             CalculoIva = Cotizadores.ObtieneIva(_Codigo);
             System.DateTime olddate = System.DateTime.Today;
             System.DateTime newDate = new System.DateTime(olddate.Year, olddate.Month, 1, 0, 0, 0, olddate.Kind);
             System.DateTime nextyear = newDate.AddYears(1);
             DiasAnuales = int.Parse((newDate - nextyear).TotalDays.ToString()) * -1;
             DiasTotales = int.Parse((nextyear - olddate).TotalDays.ToString());
 
          

             if (SumaAsegurada < SumaLimiteParaCalculo)
             {
                 PrimaNeta = (SumaAsegurada * Porcentaje_Menor_100 + Costo);
                 //=SI((B6*0.025+500)<1000,1000,(B6*0.025+500))+D5
           
             }
             else {
                 PrimaNeta = (SumaAsegurada * Porcentaje_Mayor_100 + Costo);
                     //=SI((B6*0.02+500)<1000,1000,(B6*0.02+500))+D5
       
             }
             GastosPorEmision = PrimaNeta * (Cotizadores.ObtieneValor_GastosEmision(_Codigo));
             PrimaNetaProRata = PrimaNeta * DiasTotales / DiasAnuales;
             GastosPorEmisionProRata = PrimaNetaProRata * (Cotizadores.ObtieneValor_GastosEmision(_Codigo));

             if (_roboParcial)
                 CoberturaAdicional += RoboParcial;

            if(_MenoresDesde16)
                CoberturaAdicional += MenoresDesde16;

            if (_MenoresDesde18)
                CoberturaAdicional += MenoresDesde18;

            if (_ExcesoRC)
                CoberturaAdicional += ExcesoRC;

            Iva = (CoberturaAdicional + PrimaNeta + GastosPorEmision + Asisto) * CalculoIva;
            IvaProRata = (CoberturaAdicional + PrimaNetaProRata + GastosPorEmisionProRata + Asisto) * CalculoIva;
            PrimaTotal = CoberturaAdicional + PrimaNeta + GastosPorEmision + Asisto + Iva;
            PrimaTotalProRata = CoberturaAdicional + PrimaNetaProRata + GastosPorEmisionProRata + Asisto + IvaProRata;
            
            Iva = decimal.Parse(Iva.ToString("F", CultureInfo.InvariantCulture));
            IvaProRata =  decimal.Parse(IvaProRata.ToString("F", CultureInfo.InvariantCulture));
            PrimaNetaProRata =  decimal.Parse(PrimaNetaProRata.ToString("F", CultureInfo.InvariantCulture));
            PrimaTotal =  decimal.Parse(PrimaTotal.ToString("F", CultureInfo.InvariantCulture));
            PrimaTotalProRata =  decimal.Parse(PrimaTotalProRata.ToString("F", CultureInfo.InvariantCulture));
            GastosPorEmisionProRata = decimal.Parse(GastosPorEmisionProRata.ToString("F", CultureInfo.InvariantCulture));
            CadaPago = decimal.Parse((PrimaTotalProRata / 11).ToString("F", CultureInfo.InvariantCulture));
        
        }
      
    }

    public class CorreosInternos
    {
        public string Correo = "";
        public CorreosInternos() { }
    }
}

