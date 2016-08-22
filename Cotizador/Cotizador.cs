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

    }

    public class ComboBox 
    {
      public  int indice = 0;
      public  string Descripcion = "";
    }
}

