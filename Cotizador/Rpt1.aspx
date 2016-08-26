<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Rpt1.aspx.cs" Inherits="Cotizador.Rpt1" %>
<%@ Register assembly="Microsoft.ReportViewer.WebForms, Version=11.0.0.0, Culture=neutral, PublicKeyToken=89845dcd8080cc91" namespace="Microsoft.Reporting.WebForms" tagprefix="rsweb" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div style="text-align:center; width:100%; height:100%">
    
        <rsweb:ReportViewer ID="ReportViewer1" runat="server" Font-Names="Verdana" Font-Size="8pt" Height="2190px" WaitMessageFont-Names="Verdana" WaitMessageFont-Size="14pt" Width="100%" >
            <LocalReport ReportPath="Reportes\CotizadorRoble.rdlc">
                <DataSources>
                    <rsweb:ReportDataSource DataSourceId="ObjectDataSource1" Name="CotizadorRoble" />
                </DataSources>
            </LocalReport>
        </rsweb:ReportViewer>
    
        <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" SelectMethod="ReporteCotizacion1" TypeName="Cotizador.Cotizadores">
            <SelectParameters>
                <asp:SessionParameter DefaultValue="&quot;&quot;" Name="CodigoEmpresa" SessionField="CodigoEmpresa" Type="String" />
                <asp:SessionParameter DefaultValue="0" Name="SumaAsegurada" SessionField="SumaAsegurada" Type="Decimal" />
                <asp:SessionParameter DefaultValue="false" Name="RoboParcial" SessionField="RoboParcial" Type="Boolean" />
                <asp:SessionParameter DefaultValue="false" Name="Menores16" SessionField="Menores16" Type="Boolean" />
                <asp:SessionParameter DefaultValue="false" Name="Menores18" SessionField="Menores18" Type="Boolean" />
                <asp:SessionParameter DefaultValue="false" Name="ExcesosRC" SessionField="ExcesosRC" Type="Boolean" />
                <asp:SessionParameter DefaultValue="0" Name="_RoboParcial" SessionField="_RoboParcial" Type="Decimal" />
                <asp:SessionParameter DefaultValue="&quot;&quot;" Name="NombreCliente" SessionField="NombreCliente" Type="String" />
                <asp:SessionParameter DefaultValue="&quot;&quot;" Name="DescripcionVehiculo" SessionField="DescripcionVehiculo" Type="String" />
            </SelectParameters>
        </asp:ObjectDataSource>
    
    </div>
    <asp:ScriptManager ID="ScriptManager1" runat="server">
    </asp:ScriptManager>
        </form>
    </body>
</html>
