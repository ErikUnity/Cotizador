using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

namespace Cotizador
{
    public partial class CS : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        [System.Web.Script.Services.ScriptMethod()]
        [System.Web.Services.WebMethod]
        public static List<string> SearchCustomers(string prefixText, int count)
        {
            string item = "({0}) {1}";
            string Codigo = "";
            string Nombre = "";
            List<string> Result = new List<string>();
            List<string> Content = new List<string>();
            Content = Cotizadores.Autocomplete(prefixText);

            if (Content.Count > 0)
            {
                foreach (string linea in Content)
                {
                    Codigo = linea.Substring(linea.IndexOf(">") + 1, linea.Length - linea.IndexOf(">") - 1);
                    Nombre = linea.Substring(0, linea.IndexOf(">"));
                    item = AjaxControlToolkit.AutoCompleteExtender.CreateAutoCompleteItem(linea, Nombre);
                    Result.Add(item);
                }
            }
            else
            {

                if (!string.IsNullOrEmpty(item))
                    Result.Add(item);
            }
            return Result;
        }
    }

}