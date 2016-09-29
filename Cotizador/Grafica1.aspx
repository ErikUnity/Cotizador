<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Grafica1.aspx.cs" Inherits="Cotizador.Grafica1" %>

<%@ Register Assembly="WebChart" Namespace="WebChart" TagPrefix="Web" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .centro {
            display: inline-block;
        }

        .pageCenter {
            margin-left: 15%;
            margin-right: auto;
            max-width: 1000px;
            float: none;
        }

        html, body {
            height: 100%;
        }

        html {
            background: #eee;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="pageCenter">

            <table>
                <tr>
                    <td>
                        <asp:ScriptManager ID="ScriptManager1" runat="server">
                                    </asp:ScriptManager>
                        <table>
                            <tr style="background-color: dodgerblue"><td colspan="3"><a style="color:white">Use el combo para visualizar las graficas</a></td></tr>
                            <tr style="background-color: dodgerblue">
                                <td colspan="2">

                                    <asp:DropDownList ID="cmbEmpresas" runat="server" Height="20px" OnSelectedIndexChanged="cmbEmpresas_SelectedIndexChanged" Width="310px" AutoPostBack="False" onclick="MostrarSeleccion();">
                                    </asp:DropDownList>

                                </td>
                                <td>
                                    </td>

                            </tr>
                            <tr style="background-color: dodgerblue">
                                <td>
                                    <asp:Button ID="btnPie" runat="server" Text="Pie Chart Anual" OnClick="btnPie_Click" />
                                   </td>
                                    <td>
                                        <asp:Button ID="btnLine" runat="server" Text="Line Graph Anual" OnClick="btnLine_Click" /></td>
                                    <td>
                                        <asp:Button ID="btnBar" runat="server" Text="Bar Graph Anual" OnClick="btnBar_Click" /></td>
                            </tr>
                            <tr style="background-color: aquamarine">
                                <td>
                                    <asp:HiddenField ID="HiddenField1" runat="server" />
                                    <input id="FechaIni" type="date" onchange="LlenarFechaIni()" /></td>
                                <td>
                                    <asp:HiddenField ID="HiddenField2" runat="server" />
                                    <input id="FechaFin" type="date" onchange="LlenarFechaFin()" />
                                </td>
                                <td>
                                    <asp:Button ID="Button1" runat="server" Text="Reporte por Fechas" OnClick="Button1_Click" /></td>
                            </tr>
                            <tr>
                                <td colspan="3">
                                    <asp:Label ID="lblMsg" runat="server" Text="." Font-Size="X-Large" ForeColor="Red"></asp:Label></td>
                            </tr>
                        </table>

                    </td>
                </tr>
                <tr>
                    <td>
                        <Web:ChartControl ID="ChartControl1" runat="server" BorderStyle="Outset" BorderWidth="5px" Height="550px" Width="864px" ChartPadding="30" GridLines="Both" HasChartLegend="False" ShowTitlesOnBackground="False" TopPadding="20" YCustomEnd="0" YCustomStart="0" YValuesInterval="0">
                            <Border Color="CornflowerBlue" />
                            <Background Color="CornflowerBlue" Angle="90" EndPoint="100, 400" ForeColor="#80FF80" Type="LinearGradient"></Background>

                            <PlotBackground Angle="90" EndPoint="100, 400" ForeColor="#FFFFC0" Type="LinearGradient" />

                            <ChartTitle StringFormat="Center,Near,Character,LineLimit" Font="Tahoma, 10pt, style=Bold" ForeColor="White"></ChartTitle>

                            <XAxisFont StringFormat="Center,Near,Character,LineLimit"></XAxisFont>

                            <YAxisFont StringFormat="Far,Near,Character,LineLimit"></YAxisFont>

                            <XTitle StringFormat="Center,Far,Character,LineLimit" Font="Tahoma, 8pt, style=Bold" ForeColor="SteelBlue"></XTitle>

                            <YTitle StringFormat="Near,Near,Character,DirectionVertical" Font="Tahoma, 8pt, style=Bold" ForeColor="SteelBlue"></YTitle>
                        </Web:ChartControl>
                    </td>
                </tr>
            </table>




        </div>
    </form>
</body>
<script type="text/javascript">

    window.onload = function () {

        $('td#oReportCell', window.parent.frames[0].frames[1].document).next().remove();
        $('div#oReportDiv table', window.parent.frames[0].frames[1].document).attr("align", "center");
    };
    function LlenarFechaIni() {
        var ver = document.getElementById("FechaIni").value;
        $("#HiddenField1").val(ver);
    }
    function LlenarFechaFin() {
        var ver = document.getElementById("FechaFin").value;
        $("#HiddenField2").val(ver);
    }


</script>
</html>
