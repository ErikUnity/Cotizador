using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Text;
using System.Web.UI.HtmlControls;

namespace Cotizador
{
    public partial class Paso3 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string cotizacion = ""; 
        
            string tiposeguro = "";
            string codigoempresa = "";
            try
            {
                cotizacion = Request.QueryString["asdf"];
            }
            catch (Exception)
            { }
 
            try
            {
                cotizacion = Session["Cotizacion"].ToString();
            }
            catch (Exception)
            {}
            if (cotizacion == "")
            {
                Response.Redirect("Formulario1.aspx");
            }

            DataTable content = Cotizadores.Cotizacion(cotizacion);
            Cotizadores.ActualizaPaso3(cotizacion);
            Session["Cotizacion"] = cotizacion;
            foreach (DataRow rw in content.Rows)
            {
                Session["CodigoEmpresa"] = rw["CodigoEmpresa"];
                codigoempresa = rw["CodigoEmpresa"].ToString();
                Session["SumaAsegurada"] = rw["SumaAsegurada"];
                Session["RoboParcial"] = "false";
                Session["Menores16"] = "false";
                Session["Menores18"] = "false";
                Session["ExcesosRC"] = "false";
                Session["_RoboParcial"] = "0";
                Session["NombreCliente"] = rw["NombreCliente"];
                Session["DescripcionVehiculo"] = rw["DescripcionVehiculo"];
                tiposeguro = rw["TipoSeguro"].ToString();
                break;
            }

            this.Image1.ImageUrl = Cotizadores.LinkPaso1(codigoempresa, cotizacion);
            this.Image2.ImageUrl = Cotizadores.LinkPaso2(codigoempresa, cotizacion);
            this.Image3.ImageUrl = Cotizadores.LinkPaso3(codigoempresa, cotizacion);
            this.Image1.Width = 150;
            this.Image1.Height = 150;
            this.Image2.Width = 150;
            this.Image2.Height = 150;
            this.Image3.Width = 150;
            this.Image3.Height = 150;
            Cotizadores proc = new Cotizadores();
            //StringBuilder html = proc.ObtieneMensaje(4);
            this.HyperLink1.NavigateUrl = Cotizadores.LinkUbicaciones(codigoempresa, "Link1") + "?asdf=" + cotizacion;
            this.HyperLink2.NavigateUrl = Cotizadores.LinkUbicaciones(codigoempresa, "Link2") + "?asdf=" + cotizacion;
            this.HyperLink3.NavigateUrl = Cotizadores.LinkUbicaciones(codigoempresa, "Link3") + "?asdf=" + cotizacion; 
           
            //HtmlGenericControl div = new HtmlGenericControl();
            //div.ID = "message" ;
            //div.TagName = "div";
            //div.InnerHtml = html.ToString();
            //div.Style.Add("text-align", "left");
            //div.Style.Add("width", "72%");
            //div.Style.Add("height", "100%");
            //div.Style.Add("left", "20%");
            //Panel1.Controls.Add(div);



        }

        protected void Button1_Click(object sender, EventArgs e)
        {

        }
    }
}