using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Microsoft.Reporting.WebForms;

namespace Cotizador
{
    public partial class Rpt1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                //string CodigoEmpresa = (string)(Session["CodigoEmpresa"]);
                //string SumaAsegurada = (string)(Session["SumaAsegurada"]);
                //string RoboParcial = (string)(Session["RoboParcial"]);
                //string Menores16 = (string)(Session["Menores16"]);
                //string Menores18 = (string)(Session["Menores18"]);
                //string ExcesosRC = (string)(Session["ExcesosRC"]);
                //string _RoboParcial = (string)(Session["_RoboParcial"]);
                //string NombreCliente = (string)(Session["NombreCliente"]);
                //string DescripcionVehiculo = (string)(Session["DescripcionVehiculo"]);
                //int Ext = NombreCliente.ToString().Length;

                //NombreCliente = NombreCliente.Substring(0, 1).ToUpper() + NombreCliente.Substring(1, (Ext - 1)).ToLower();

                //this.ReportViewer1.LocalReport.DataSources.Add(new ReportDataSource("CotizadorRoble", Cotizadores.ReporteCotizacion1(CodigoEmpresa, Decimal.Parse(SumaAsegurada), bool.Parse(RoboParcial), bool.Parse(Menores16), bool.Parse(Menores18), bool.Parse(ExcesosRC), Decimal.Parse(_RoboParcial), NombreCliente, DescripcionVehiculo)));
                //this.ReportViewer1.DataBind();
            }
            catch (Exception ed)
            {
                Helper.RegistrarEvento("Error de reporte : " + ed.Message);
            }


        }
    }
}