using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Text.RegularExpressions;

namespace Cotizador
{
    public partial class Forumlario1 : System.Web.UI.Page
    {
        Cotizadores  Cotizar = new Cotizadores();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
           
                CargarCombos();
            }

        }

        private void CargarCombos()
        {

            this.cmbTipoVehiculo.DataValueField = "indice";
            this.cmbTipoVehiculo.DataTextField = "Descripcion";
            this.cmbTipoVehiculo.DataSource = Cotizar.LlenaComboTipoVehiculo();
            this.cmbTipoVehiculo.DataBind();

            this.cmbLinea.DataValueField = "indice";
            this.cmbLinea.DataTextField = "Descripcion";
            this.cmbLinea.DataSource = Cotizar.LlenaComboLinea();
            this.cmbLinea.DataBind();

            this.cmbMarca.DataValueField = "indice";
            this.cmbMarca.DataTextField = "Descripcion";
            this.cmbMarca.DataSource = Cotizar.LlenaComboMarca();
            this.cmbMarca.DataBind();

            this.cmbModelo.DataValueField = "indice";
            this.cmbModelo.DataTextField = "Descripcion";
            this.cmbModelo.DataSource = Cotizar.LlenaComboModelo();
            this.cmbModelo.DataBind();


        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Decimal SumaAsegurada = 0;
            Decimal NetaAnual = 0;
            bool Incompleto = false;
            if (this.txtNombre.Text.Trim() == "")
            {
                ClientScript.RegisterStartupScript(this.GetType(), "errNombre", "document.getElementById('errNombre').style.visibility = 'visible';", true);
                Incompleto = true;
            }
            else
            {
                ClientScript.RegisterStartupScript(this.GetType(), "errNombre", "document.getElementById('errNombre').style.visibility = 'hidden';", true);
            }
            if (this.txtCorreo.Text.Trim() == "")
            {
                ClientScript.RegisterStartupScript(this.GetType(), "errCorreo", "document.getElementById('errCorreo').style.visibility = 'visible';", true);
                Incompleto = true;
            }
            else
            {
                ClientScript.RegisterStartupScript(this.GetType(), "errCorreo", "document.getElementById('errCorreo').style.visibility = 'hidden';", true);
            }
            if (this.txtTelefono.Text.Trim() == "" || this.txtTelefono.Text.ToString().Length != 8)
            {
                ClientScript.RegisterStartupScript(this.GetType(), "errTelefono", "document.getElementById('errTelefono').style.visibility = 'visible';", true);
                Incompleto = true;
            }
            else
            {
                ClientScript.RegisterStartupScript(this.GetType(), "errTelefono", "document.getElementById('errTelefono').style.visibility = 'hidden';", true);
            }
            string ValorMercado = "";

            if (this.rdSeguroCompleto.Checked == true)
            {
            
                if (this.txtValorMercado.Text.Trim() == "")
                {
                    ClientScript.RegisterStartupScript(this.GetType(), "errMontoAsegurado", "document.getElementById('errMontoAsegurado').style.visibility = 'visible';", true);
                    Incompleto = true;
                }
                else
                {
                    ValorMercado = this.txtValorMercado.Text.Trim();
                    ClientScript.RegisterStartupScript(this.GetType(), "errMontoAsegurado", "document.getElementById('errMontoAsegurado').style.visibility = 'hidden';", true);
                }
            }
            if (this.rdSeguroCompleto.Checked == false && this.rdResponsabilidadCivil.Checked == false)
            {
                ClientScript.RegisterStartupScript(this.GetType(), "errDañosATerceros", "document.getElementById('errDañosATerceros').style.visibility = 'visible';", true);
                ClientScript.RegisterStartupScript(this.GetType(), "errResponsabilidadCivil", "document.getElementById('errResponsabilidadCivil').style.visibility = 'visible';", true);

                Incompleto = true;
            }
            else
            {
                ClientScript.RegisterStartupScript(this.GetType(), "errDañosATerceros", "document.getElementById('errDañosATerceros').style.visibility = 'hidden';", true);
                ClientScript.RegisterStartupScript(this.GetType(), "errResponsabilidadCivil", "document.getElementById('errResponsabilidadCivil').style.visibility = 'hidden';", true);
            }

         
            bool isEmail = Regex.IsMatch(this.txtCorreo.Text.Trim().ToString(), @"\A(?:[a-z0-9!#$%&'*+/=?^_`{|}~-]+(?:\.[a-z0-9!#$%&'*+/=?^_`{|}~-]+)*@(?:[a-z0-9](?:[a-z0-9-]*[a-z0-9])?\.)+[a-z0-9](?:[a-z0-9-]*[a-z0-9])?)\Z", RegexOptions.IgnoreCase);
            if (isEmail == false)
            {
                ClientScript.RegisterStartupScript(this.GetType(), "errCorreo", "document.getElementById('errCorreo').style.visibility = 'visible';", true);
                Incompleto = true;
            }
            else
            {
                ClientScript.RegisterStartupScript(this.GetType(), "errCorreo", "document.getElementById('errCorreo').style.visibility = 'hidden';", true);
            }
            if (this.HiddenField1.Value.ToString() == "")
            {
                ClientScript.RegisterStartupScript(this.GetType(), "errFecha", "document.getElementById('errFecha').style.visibility = 'visible';", true);
                Incompleto = true;
            }
            else
            {
                ClientScript.RegisterStartupScript(this.GetType(), "errFecha", "document.getElementById('errFecha').style.visibility = 'hidden';", true);
            }
            if (this.txtHora.Text.ToString() == "")
            {
                ClientScript.RegisterStartupScript(this.GetType(), "errHora", "document.getElementById('errHora').style.visibility = 'visible';", true);
                Incompleto = true;
            }
            else
            {
                ClientScript.RegisterStartupScript(this.GetType(), "errHora", "document.getElementById('errHora').style.visibility = 'hidden';", true);
            }

            if (Incompleto)
                return;

            this.lblMsg.Text = "";

            string _tipo_seguro = "";
            int MensajeTipo = 1;
            if (this.rdSeguroCompleto.Checked == true)
            { _tipo_seguro = "Seguro Completo";
            MensajeTipo = 1;
            }
            else
            { _tipo_seguro = "Responsabilidad Civil";
            MensajeTipo = 2;
            }


            EnvioDeCorreoRapido.EjecutarProceso(this.txtCorreo.Text.Trim(), this.cmbTipoVehiculo.SelectedItem.Text.Trim(), this.cmbLinea.SelectedItem.Text.Trim(), this.cmbMarca.SelectedItem.Text.Trim(), this.cmbModelo.SelectedItem.Text.Trim(), ValorMercado, MensajeTipo, this.txtNombre.Text.Trim());
            if (ValorMercado == "")
                ValorMercado = "0";

            

            Cotizar.GuardaCotizacion(this.txtNombre.Text.Trim(), this.txtCorreo.Text.Trim(), this.cmbTipoVehiculo.SelectedItem.Text.Trim(), this.cmbLinea.SelectedItem.Text.Trim(), this.cmbMarca.SelectedItem.Text.Trim(), this.txtTelefono.Text.Trim(), this.cmbModelo.SelectedItem.Text.Trim(), Decimal.Parse(this.txtValorMercado.Text.Trim()), _tipo_seguro,this.txtCorreo.Text.ToString());

             SumaAsegurada = Decimal.Parse(ValorMercado);
             Valores Calculo = new Valores("Roble");
             Decimal Resultado = 0;
             Decimal PrimaNeta = SumaAsegurada;
             Decimal GastosEmision = PrimaNeta * Calculo.GastosPorEmision;

             if (SumaAsegurada <  Calculo.SumaLimiteParaCalculo)
             {
                 if (SumaAsegurada < Calculo.MontoBase)
                 {
                     Resultado = Calculo.MontoBase;
                 }
                 else {

                     Resultado = (SumaAsegurada * Calculo.Porcentaje + Calculo.Costo);
                     if (this.chkRoboParcial.Checked == true)
                     { Resultado += Calculo.RoboParcial; }

                     if (this.chkMenores16.Checked == true)
                     { Resultado += Calculo.MenoresDesde16; }

                     if (this.chkMenores18.Checked == true)
                     { Resultado += Calculo.MenoresDesde18; }

                     if (this.chkExcesoRC.Checked == true)
                     { Resultado += Calculo.ExcesoRC; }

                 }
             }
             this.lblMsg.Text = Resultado.ToString();

            ClientScript.RegisterStartupScript(this.GetType(), "Alert", "alert('La cotización ha sido enviada a su correo: " + this.txtCorreo.Text + ");", true);
           

        }

 


    }
}