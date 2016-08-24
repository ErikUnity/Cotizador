<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Rpt1.aspx.cs" Inherits="Cotizador.Rpt1" %>
<%@ Register assembly="Microsoft.ReportViewer.WebForms, Version=11.0.0.0, Culture=neutral, PublicKeyToken=89845dcd8080cc91" namespace="Microsoft.Reporting.WebForms" tagprefix="rsweb" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <rsweb:ReportViewer ID="ReportViewer1" runat="server" Font-Names="Verdana" Font-Size="8pt" Height="744px" WaitMessageFont-Names="Verdana" WaitMessageFont-Size="14pt" Width="883px">
            <LocalReport ReportPath="Reportes\Cotizacion1.rdlc">
                <DataSources>
                    <rsweb:ReportDataSource DataSourceId="SiteMapDataSource1" Name="Cotizador1" />
                </DataSources>
            </LocalReport>
        </rsweb:ReportViewer>
    
    </div>
    <asp:ScriptManager ID="ScriptManager1" runat="server">
    </asp:ScriptManager>
    </body>
</html>
