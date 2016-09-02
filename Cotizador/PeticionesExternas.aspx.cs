using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace Cotizador
{
    public partial class PeticionesExternas : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            string cotizacion = "";
            try
            {
                cotizacion = Request.QueryString["asdf"];
                if (cotizacion == "")
                {
                    Response.Redirect("Formulario1.aspx");
                }
            }
            catch (Exception)
            {

                Response.Redirect("Formulario1.aspx");
            }


          DataTable content = Cotizadores.Cotizacion(cotizacion);
          string tiposeguro = "";
          Session["Cotizacion"] = cotizacion;
          foreach (DataRow rw in content.Rows)
          {
              Session["CodigoEmpresa"] =rw["CodigoEmpresa"];
              Session["SumaAsegurada"] = rw["SumaAsegurada"];
              Session["RoboParcial"] = "false";
              Session["Menores16"] = "false";
              Session["Menores18"] = "false";
              Session["ExcesosRC"] = "false";
              Session["_RoboParcial"] ="0";
              Session["NombreCliente"] = rw["NombreCliente"];
              Session["DescripcionVehiculo"] = rw["DescripcionVehiculo"];
              tiposeguro = rw["TipoSeguro"].ToString();
              break;
          }
          Cotizadores.ActualizaPaso1(cotizacion);
          string codigo = Cotizadores.GuardaCodigo(cotizacion);
          Session["Codigo"] = codigo;

          if (tiposeguro == "Seguro Completo")
          {
              Session["Seguro"] = "Seguro Completo";
              Response.Redirect("Rpt1.aspx");

          }
          else {
              Session["Seguro"] = "Responsabilidad Civil";
              Response.Redirect("Rpt2.aspx"); 
          }
 
        }
    }
}