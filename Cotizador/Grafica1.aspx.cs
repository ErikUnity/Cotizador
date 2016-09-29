using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;
using WebChart;
using System.Drawing;

namespace Cotizador
{
    public partial class Grafica1 : System.Web.UI.Page
    {
        DataTable dt = new DataTable("Chart");
        string X, Y;
        Cotizadores Cotizar = new Cotizadores();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
               
                LoadGraphData(dt);
                btnLine_Click(sender, e);

                this.cmbEmpresas.DataValueField = "empresa";
                this.cmbEmpresas.DataTextField = "empresa";
                this.cmbEmpresas.DataSource = Cotizar.LlenaComboEmpresa();
                this.cmbEmpresas.DataBind();
                this.lblMsg.Text = "Grafica para " + this.cmbEmpresas.Text;

            }
            else {
             
                LoadGraphData(dt);
                btnLine_Click(sender, e);
            }


        }

        protected void btnPie_Click(object sender, EventArgs e)
        {

            DataTable dt = new DataTable("Chart");

            LoadGraphData(dt);
            PieChart chart = new PieChart();

            chart.Fill.Color = Color.FromArgb(50, Color.SteelBlue);
            chart.Line.Color = Color.SteelBlue;
            chart.Line.Width = 1;
            chart.ShowLineMarkers = true;
            chart.DataLabels.Visible = true;

            X = "Mes";
            Y = "Cotizacion";

            chart.DataXValueField = X;
            chart.DataYValueField = Y;

            //looping through datatable and adding to chart control
            foreach (DataRow dr2 in dt.Rows)
            {
                chart.Data.Add(new ChartPoint(dr2["Mes"].ToString(), (int)System.Convert.ToSingle(dr2["Cotizacion"])));
            }

            chart.ShowLegend = true;

            ConfigureColors();

            ChartControl1.Charts.Clear();
            ChartControl1.Charts.Add(chart);
            ChartControl1.HasChartLegend = true;
            ChartControl1.Legend.Width = 140;

            ChartControl1.RedrawChart();
            dt.Clear();
            dt.Dispose(); 

        }

        protected void btnLine_Click(object sender, EventArgs e)
        {

                DataTable dt = new DataTable("Chart");

                LoadGraphData(dt);

                LineChart chart = new LineChart();

                chart.Fill.Color = Color.FromArgb(50, Color.SteelBlue);
                chart.Line.Color = Color.SteelBlue;
                chart.Line.Width = 1;
                chart.ShowLineMarkers = true;
                chart.DataLabels.Visible = true;

                X = "Mes";
                Y = "Cotizacion";

                chart.DataXValueField = X;
                chart.DataYValueField = Y;

                //looping through datatable and adding to chart control
                foreach (DataRow dr2 in dt.Rows)
                {
                    chart.Data.Add(new ChartPoint(dr2["Mes"].ToString(), (int)System.Convert.ToSingle(dr2["Cotizacion"])));
                }

                ConfigureColors();
                ChartControl1.Charts.Clear();
                ChartControl1.Charts.Add(chart);

                ChartControl1.HasChartLegend = true;
                chart.ShowLegend = false;
                ChartControl1.RedrawChart();
                dt.Clear();
                dt.Dispose();


        }
        private void ConfigureColors()
        {
            ChartControl1.Legend.Position = LegendPosition.Bottom;
            ChartControl1.Legend.Width = 80;
            ChartControl1.YAxisFont.ForeColor = Color.Black;
            ChartControl1.XAxisFont.ForeColor = Color.Black;
            ChartControl1.ChartTitle.Text = "Cotizaciones Realizadas por Mes";
            ChartControl1.ChartTitle.ForeColor = Color.White;
            ChartControl1.XTitle.Text = "Mes";
            ChartControl1.YTitle.Text = "Cantidad";
        }
        private void LoadGraphData(DataTable dt)
        {
            // Preparing Data Source For Chart Control
            string empresa = "";
            try
            {
                empresa = this.cmbEmpresas.SelectedItem.Text;
            }
            catch (Exception)
            {

                empresa = this.cmbEmpresas.Text;
            }
         
 
            if (empresa == "Todas..")
            {
                empresa = "";
            }

            
            DataColumn dc = new DataColumn("Mes", typeof(string));
            DataColumn dc1 = new DataColumn("Cotizacion", typeof(int));
            dt.Columns.Add(dc);
            dt.Columns.Add(dc1);
            DataRow dr1 = dt.NewRow();
            dr1[0] = "Enero";
            dr1[1] =  Cotizador.Cotizadores.ObtieneEstadisticaPorMes("1",empresa);
            dt.Rows.Add(dr1);
            DataRow dr2 = dt.NewRow();
            dr2[0] = "Febrero";
            dr2[1] = Cotizador.Cotizadores.ObtieneEstadisticaPorMes("2", empresa);
            dt.Rows.Add(dr2);
            DataRow dr3 = dt.NewRow();
            dr3[0] = "Marzo";
            dr3[1] = Cotizador.Cotizadores.ObtieneEstadisticaPorMes("3", empresa);
            dt.Rows.Add(dr3);
            DataRow dr4 = dt.NewRow();
            dr4[0] = "Abril";
            dr4[1] = Cotizador.Cotizadores.ObtieneEstadisticaPorMes("4", empresa);
            dt.Rows.Add(dr4);
            DataRow dr5 = dt.NewRow();
            dr5[0] = "Mayo";
            dr5[1] = Cotizador.Cotizadores.ObtieneEstadisticaPorMes("5", empresa);
            dt.Rows.Add(dr5);
            DataRow dr6 = dt.NewRow();
            dr6[0] = "Junio";
            dr6[1] = Cotizador.Cotizadores.ObtieneEstadisticaPorMes("6", empresa);
            dt.Rows.Add(dr6);
            DataRow dr7 = dt.NewRow();
            dr7[0] = "Julio";
            dr7[1] = Cotizador.Cotizadores.ObtieneEstadisticaPorMes("7", empresa);
            dt.Rows.Add(dr7);
            DataRow dr8 = dt.NewRow();
            dr8[0] = "Agosto";
            dr8[1] = Cotizador.Cotizadores.ObtieneEstadisticaPorMes("8", empresa);
            dt.Rows.Add(dr8);
            DataRow dr9 = dt.NewRow();
            dr9[0] = "Septiembre";
            dr9[1] = Cotizador.Cotizadores.ObtieneEstadisticaPorMes("9", empresa);
            dt.Rows.Add(dr9);
            DataRow dr10 = dt.NewRow();
            dr10[0] = "Octubre";
            dr10[1] = Cotizador.Cotizadores.ObtieneEstadisticaPorMes("10", empresa);
            dt.Rows.Add(dr10);
            DataRow dr11 = dt.NewRow();
            dr11[0] = "Noviembre";
            dr11[1] = Cotizador.Cotizadores.ObtieneEstadisticaPorMes("11", empresa);
            dt.Rows.Add(dr11);
            DataRow dr12 = dt.NewRow();
            dr12[0] = "Diciembre";
            dr12[1] = Cotizador.Cotizadores.ObtieneEstadisticaPorMes("12", empresa);
            dt.Rows.Add(dr12);

        }

        protected void Button1_Click(object sender, EventArgs e)
        {

        }

        protected void cmbEmpresas_SelectedIndexChanged(object sender, EventArgs e)
        {
            this.lblMsg.Text = "Grafica para " +  this.cmbEmpresas.Text;
        }

        protected void btnBar_Click(object sender, EventArgs e)
        {
            DataTable dt = new DataTable("Chart");
            LoadGraphData(dt);

            ColumnChart chart = new ColumnChart();
            chart.Fill.Color = Color.FromArgb(50, Color.SteelBlue);
            chart.Line.Color = Color.Black;
            chart.Line.Width = 1;
            chart.ShowLineMarkers = true;
            chart.DataLabels.Visible = true;

            X = "Mes";
            Y = "Cotizacion";

            chart.DataXValueField = X;
            chart.DataYValueField = Y;

            //looping through datatable and adding to chart control
            foreach (DataRow dr2 in dt.Rows)
            {
                chart.Data.Add(new ChartPoint(dr2["Mes"].ToString(), (int)System.Convert.ToSingle(dr2["Cotizacion"])));
            }

            ConfigureColors();
            ChartControl1.Charts.Clear();
            ChartControl1.Charts.Add(chart);

            ChartControl1.HasChartLegend = true;
            chart.ShowLegend = false;
            ChartControl1.RedrawChart();

            dt.Clear();
            dt.Dispose();

        }
    }
}