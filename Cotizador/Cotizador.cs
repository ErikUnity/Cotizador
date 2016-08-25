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
        public static List<Impresion> ReporteCotizacion1(string CodigoEmpresa,decimal SumaAsegurada, bool RoboParcial, bool Menores16, bool Menores18,bool ExcesosRC, decimal _RoboParcial)
        {
            Valores Calculo = new Valores(CodigoEmpresa, SumaAsegurada, RoboParcial, Menores16, Menores18, ExcesosRC, _RoboParcial);
            Impresion lista = new Impresion();
            List<Impresion> data = new List<Impresion>();
            lista.Asisto = Calculo.Asisto;
            lista.CadaPago = Calculo.CadaPago;
            lista.CalculoIva = Calculo.CalculoIva;
            lista.CoberturaAdicional = Calculo.CoberturaAdicional;
            lista.Codigo = Calculo.Codigo;
            lista.Costo = Calculo.Costo;
            lista.DiasAnuales = Calculo.DiasAnuales;
            lista.DiasTotales = Calculo.DiasTotales;
            lista.ExcesoRC = Calculo.ExcesoRC;
            lista.GastosPorEmision = Calculo.GastosPorEmision;
            lista.GastosPorEmisionProRata = Calculo.GastosPorEmisionProRata;
            lista.Iva = Calculo.Iva;
            lista.IvaProRata = Calculo.IvaProRata;
            lista.MenoresDesde16 = Calculo.MenoresDesde16;
            lista.MenoresDesde18 = Calculo.MenoresDesde18;
            lista.MontoBase = Calculo.MontoBase;
            lista.Porcentaje_Mayor_100 = Calculo.Porcentaje_Mayor_100;
            lista.Porcentaje_Menor_100 = Calculo.Porcentaje_Menor_100;
            lista.PrimaNeta = Calculo.PrimaNeta;
            lista.PrimaNetaProRata = Calculo.PrimaNetaProRata;
            lista.PrimaTotal = Calculo.PrimaTotal;
            lista.PrimaTotalProRata = Calculo.PrimaTotalProRata;
            lista.RoboParcial = Calculo.RoboParcial;
            lista.SumaAsegurada = Calculo.SumaAsegurada;
            lista.SumaLimiteParaCalculo = Calculo.SumaLimiteParaCalculo;
            lista.DañosATerceros = Calculo.DañosATerceros;
            data.Add(lista);

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

         public void GuardaCotizacion( string _Nombre, string _Correo, string _TipoDeVehiculo,string  _Linea,string  _Marca, string _Telefono, string _Modelo, decimal _SumaAsegurada, string _TipoSeguro, string Hora, string _CodigoEmpresa) 
         { 
         string sql = " insert into LogCorreosEnviados(Nombre, Correo, TipoDeVehiculo, Linea, Marca, Telefono, Modelo, SumaAsegurada, TipoSeguro, contactar, CodigoEmpresa)";
         sql += " values('" + _Nombre + "','" + _Correo + "','" + _TipoDeVehiculo + "','" + _Linea + "','" + _Marca + "','" + _Telefono + "','" + _Modelo + "'," + _SumaAsegurada.ToString() + ",'" + _TipoSeguro + "','" + Hora + "','" + _CodigoEmpresa + "')";
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
         
 
          public static decimal ObtieneElecacionDeCoberturaRC(string Codigo)
         {
             decimal resultado = 0;

             DataTable content = new DataTable();
             content = AccesoDatos.RegresaTablaMySql("Select Exceso_RC_ElevacionDeCobertura from coberturas_adicionales where codigo = '" + Codigo + "'");
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
       
        public static decimal ObtieneExcesoRC_Base(string Codigo)
         {
             decimal resultado = 0;

             DataTable content = new DataTable();
             content = AccesoDatos.RegresaTablaMySql("Select Exceso_RC_Base from coberturas_adicionales where codigo = '" + Codigo + "'");
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
         public static List<Impresion> ReporteFormato1()
         {
             List<Impresion> data = new List<Impresion>();
             Impresion lista = new Impresion();
             data.Add(lista);

             return data;

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

        public Valores(string _Codigo, decimal _SumaAsegurada, bool _roboParcial, bool _MenoresDesde16, bool _MenoresDesde18, bool _ExcesoRC, decimal _RoboParcial)
        {
            decimal equipo_especial = 0;
            decimal cien = 100;
            decimal mil = 1000;
            decimal docientoscientuena = 250;

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

             if (SumaAsegurada < SumaLimiteParaCalculo)
             {
                 PrimaNeta = (SumaAsegurada * Porcentaje_Menor_100 + Costo);
                 //=SI((B6*0.025+500)<1000,1000,(B6*0.025+500))+D5
           
             }
             else {
                 PrimaNeta = (SumaAsegurada * Porcentaje_Mayor_100 + Costo);
                     //=SI((B6*0.02+500)<1000,1000,(B6*0.02+500))+D5
       
             }
             
             //L31*100/1000
             

             GastosPorEmision = PrimaNeta * (Cotizadores.ObtieneValor_GastosEmision(_Codigo));
             PrimaNetaProRata = PrimaNeta * DiasTotales / DiasAnuales;
             GastosPorEmisionProRata = PrimaNetaProRata * (Cotizadores.ObtieneValor_GastosEmision(_Codigo));

             if (_roboParcial)
             {
                 equipo_especial = SumaAsegurada * (cien) / (mil);
                 if (_RoboParcial > equipo_especial)
                 {
                     RoboParcial = equipo_especial * (cien) / (mil);
                 }
                 else {
                     RoboParcial = _RoboParcial * (cien) / (mil);
                 }
               
                 CoberturaAdicional += RoboParcial;

             }
             if (_MenoresDesde16)
             {
                 MenoresDesde16 = PrimaNeta * (docientoscientuena) / (mil);
                 CoberturaAdicional += MenoresDesde16;
             }
             if (_MenoresDesde18)
             {
                 MenoresDesde18 = PrimaNeta * (docientoscientuena) / (mil);
                 CoberturaAdicional += MenoresDesde18;
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

    public class Impresion
    {

      public Impresion()
        {
        }
      public decimal SumaAsegurada
      {
          get { return SumaAsegurada; }
          set { this.SumaAsegurada = value; }
      }
      public string Codigo
      {
          get { return Codigo; }
          set { this.Codigo = value; }
      }
      public decimal PrimaNeta
      {
          get { return PrimaNeta; }
          set { this.PrimaNeta = value; }
      }
      public decimal PrimaNetaProRata
      {
          get { return PrimaNetaProRata; }
          set { this.PrimaNetaProRata = value; }
      }
      public decimal MontoBase
      {
          get { return MontoBase; }
          set { this.MontoBase = value; }
      }
      public decimal SumaLimiteParaCalculo
      {
          get { return SumaLimiteParaCalculo; }
          set { this.SumaLimiteParaCalculo = value; }
      }
      public decimal Porcentaje_Menor_100
      {
          get { return Porcentaje_Menor_100; }
          set { this.Porcentaje_Menor_100 = value; }
      }
      public decimal Porcentaje_Mayor_100
      {
          get { return Porcentaje_Mayor_100; }
          set { this.Porcentaje_Mayor_100 = value; }
      }
      public decimal Costo
      {
          get { return Costo; }
          set { this.Costo = value; }
      }
      public decimal RoboParcial
      {
          get { return RoboParcial; }
          set { this.RoboParcial = value; }
      }
      public decimal MenoresDesde16
      {
          get { return MenoresDesde16; }
          set { this.MenoresDesde16 = value; }
      }
      public decimal MenoresDesde18
      {
          get { return MenoresDesde18; }
          set { this.MenoresDesde18 = value; }
      }

      public decimal ExcesoRC
      {
          get { return ExcesoRC; }
          set { this.ExcesoRC = value; }
      }

      public decimal GastosPorEmision
      {
          get { return GastosPorEmision; }
          set { this.GastosPorEmision = value; }
      }

      public decimal GastosPorEmisionProRata
      {
          get { return GastosPorEmisionProRata; }
          set { this.GastosPorEmisionProRata = value; }
      }
      public decimal Asisto
      {
          get { return Asisto; }
          set { this.Asisto = value; }
      }
      public decimal Iva
      {
          get { return Iva; }
          set { this.Iva = value; }
      }
      public decimal IvaProRata
      {
          get { return IvaProRata; }
          set { this.IvaProRata = value; }
      }
      public decimal CoberturaAdicional
      {
          get { return CoberturaAdicional; }
          set { this.CoberturaAdicional = value; }
      }
      public decimal PrimaTotal
      {
          get { return PrimaTotal; }
          set { this.PrimaTotal = value; }
      }
      public decimal PrimaTotalProRata
      {
          get { return PrimaTotalProRata; }
          set { this.PrimaTotalProRata = value; }
      }
      public decimal CalculoIva
      {
          get { return CalculoIva; }
          set { this.CalculoIva = value; }
      }
      public decimal DiasAnuales
      {
          get { return DiasAnuales; }
          set { this.DiasAnuales = value; }
      }
      public int DiasTotales
      {
          get { return DiasTotales; }
          set { this.DiasTotales = value; }
      }
      public decimal CadaPago
      {
          get { return CadaPago; }
          set { this.CadaPago = value; }
      }

      public decimal Exceso_RC_ElevacionDeCobertura
      {
          get { return Exceso_RC_ElevacionDeCobertura; }
          set { this.Exceso_RC_ElevacionDeCobertura = value; }
      }
      public decimal Exceso_RC_Base
      {
          get { return Exceso_RC_Base; }
          set { this.Exceso_RC_Base = value; }
      }
      public decimal DañosATerceros
      {
          get { return DañosATerceros; }
          set { this.DañosATerceros = value; }
      }

      public string NombreCliente
      {
          get { return NombreCliente; }
          set { this.NombreCliente = value; }
      }
      public string NombreAgente
      {
          get { return NombreAgente; }
          set { this.NombreAgente = value; }
      }
      public string DescripcionVehiculo
      {
          get { return DescripcionVehiculo; }
          set { this.DescripcionVehiculo = value; }
      }

    }

}

