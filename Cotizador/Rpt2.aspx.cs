using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Microsoft.Reporting.WebForms;

namespace Cotizador
{
    public partial class Rpt2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string cotizacion = "";
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
            { }
            if (cotizacion == "")
            {
                Response.Redirect("Formulario1.aspx");
            }
            string codigo = "";
            string revison_codigo = "";
            try
            {
                codigo = Session["Codigo"].ToString();
                revison_codigo = Cotizadores.ObtieneCodigo(cotizacion);
                if (codigo != revison_codigo)
                {
                    Response.Redirect("Formulario1.aspx");
                }
            }
            catch (Exception)
            {

                Response.Redirect("Formulario1.aspx");

            }

            try
            {
                string codigoempresa = Session["CodigoEmpresa"].ToString();
                this.Image1.ImageUrl = Cotizadores.LinkPaso1(codigoempresa, cotizacion);
                this.Image2.ImageUrl = Cotizadores.LinkPaso2(codigoempresa, cotizacion);
                this.Image3.ImageUrl = Cotizadores.LinkPaso3(codigoempresa, cotizacion);
                this.Image1.Width = 150;
                this.Image1.Height = 150;
                this.Image2.Width = 150;
                this.Image2.Height = 150;
                this.Image3.Width = 150;
                this.Image3.Height = 150;
                this.HyperLink1.NavigateUrl = Cotizadores.LinkUbicaciones(codigoempresa, "Link5");
                this.HyperLink2.NavigateUrl = Cotizadores.LinkUbicaciones(codigoempresa, "Link2") + "?asdf=" + cotizacion;
                this.HyperLink3.NavigateUrl = Cotizadores.LinkUbicaciones(codigoempresa, "Link3") + "?asdf=" + cotizacion; ;
                this.Image2.Visible = false;
            }
            catch (Exception)
            {

                Response.Redirect("Formulario1.aspx");
            }



        }
    }
}