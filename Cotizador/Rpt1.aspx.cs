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

            this.ReportViewer1.LocalReport.DataSources.Add(new ReportDataSource("CotizadorRoble", Cotizadores.ReporteCotizacion1("", 0, false, false, false, false, 0)));
            this.ReportViewer1.DataBind();

        }
    }
}