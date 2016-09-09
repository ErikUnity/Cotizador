<%@ Page Language="C#" AutoEventWireup="true" CodeFile="CS.aspx.cs" Inherits="Cotizador.CS" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <script type="text/javascript" src="js/jquery.min.js"></script>
    <script type="text/javascript" src="js/jquery.js"></script>
    <link rel="stylesheet" type="text/css" href="http://testcotizador.unitypromotores.com/Cotizador/css/Formulario1.css" />
    <meta name="viewport" content="width=device-width,height=device-height,initial-scale=1.0" />
    <title></title>
    <style type="text/css">
        .autocomplete_completionListElement {
            visibility: hidden;
            margin: 0px /*!important*/;
            background-color: white;
            color: windowtext;
            border: buttonshadow;
            border-width: 1px;
            border-style: solid;
            cursor:pointer;
            overflow: auto;
            max-height: 300px;
            text-align: left;
            list-style-type: none;
            font-family: Arial;
            font-size: 9pt;
            list-style-type:none;
            padding:0px 0px 0px 0px;
            width:500px;
        }

        /* AutoComplete highlighted item */

        .autocomplete_highlightedListItem {
            background-color: #ffff99;
            color: black;
            padding: 1px;
            list-style-type:none;
        }


        /* AutoComplete item */

        .autocomplete_listItem {
            background-color: window;
            color: windowtext;
            padding: 1px;
            list-style-type:none;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server" class="outer-container">
        <div class="inner-container">
            <div id="Asoc1" class="divX">

                <asp:Image ID="Image2" CssClass="cuadro" runat="server" Height="226px" ImageUrl="http://testcotizador.unitypromotores.com/Cotizador/imagenes/LogoBlancoUnityPromotores.png" Width="317px" /></td>

                <div style="border: 2px solid rgb(255,255,255); background-color: white;">
                    <p style="font-family: Roboto; font-size: 22px; text-align: left; color: rgb(19, 27, 77); text-decoration: none; font-weight: bold; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; text-transform: none;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Buscador</p>
                </div>
                <div style="border: 2px solid rgb(255,255,255); background-color: white;">
                    <p style="font-family: Roboto; font-size: 22px; text-align: left; color: rgb(19, 27, 77); text-decoration: none; font-weight: bold; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; text-transform: none;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Por Nombre</p>
                </div>
                <div style="border: 2px solid rgb(255,255,255); background-color: white;">
                    <div>
                        <asp:ScriptManager ID="ScriptManager1" runat="server"
                            EnablePageMethods="true">
                        </asp:ScriptManager>

                        <asp:TextBox ID="txtContactsSearch" runat="server" Font-Size="12px" Width="25em" autocomplete="off"></asp:TextBox>
                        <cc1:AutoCompleteExtender ServiceMethod="SearchCustomers"
                            MinimumPrefixLength="2"
                            CompletionInterval="100" EnableCaching="false" CompletionSetCount="50"
                            TargetControlID="txtContactsSearch"
                            ID="AutoCompleteExtender1" runat="server" FirstRowSelected="false"
                            CompletionListCssClass="autocomplete_completionListElement"
                            CompletionListItemCssClass="autocomplete_listItem"
                            CompletionListHighlightedItemCssClass="autocomplete_highlightedListItem">
                        </cc1:AutoCompleteExtender>
                    </div>
                                            <asp:Button ID="Button2" runat="server" Text="Buscar" />
                    
                </div>
                <div style="border: 2px solid rgb(255,255,255); background-color: white;">
                    <p style="font-family: Roboto; font-size: 22px; text-align: left; color: rgb(19, 27, 77); text-decoration: none; font-weight: bold; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; text-transform: none;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Por Id: </p>
                </div>
                <div style="border: 2px solid rgb(255,255,255); background-color: white;">
                    <p style="font-family: Roboto; font-size: 22px; text-align: left; color: rgb(19, 27, 77); text-decoration: none; font-weight: bold; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; text-transform: none;">
                        <asp:TextBox ID="TextBox2" runat="server" Height="17px" Width="261px"></asp:TextBox>
                        <asp:Button ID="Button1" runat="server" Text="Buscar" />
                    </p>
                </div>



            </div>
            <table id="Principal" class="centered-content">
                <tr>
                    <td class="f4" style="font-family: Roboto; text-align: left; color: rgb(19, 27, 77); text-decoration: none; font-weight: normal; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; text-transform: none;">Nombres:</td>
                    <td class="f4" style="font-family: Roboto; text-align: left; color: rgb(19, 27, 77); text-decoration: none; font-weight: normal; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; text-transform: none;">Apellidos:</td>
                </tr>
                <tr>
                    <td class="f0" style="font-family: Arial, Helvetica, sans-serif; text-align: center; width: 142px; padding: 3px 3px 2px; overflow: hidden;">
                        <asp:TextBox ID="txtNombre" runat="server" CssClass="dxeEditArea dxeEditAreaSys" Width="193px" AutoCompleteType="Disabled"></asp:TextBox>
                    </td>
                    <td class="f0" style="font-family: Arial, Helvetica, sans-serif; text-align: center; width: 142px; padding: 3px 3px 2px; overflow: hidden;">
                        <asp:TextBox ID="txtApellido" runat="server" CssClass="dxeEditArea dxeEditAreaSys" Width="193px" AutoCompleteType="Disabled"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="f4" style="font-family: Roboto; text-align: left; color: rgb(19, 27, 77); text-decoration: none; font-weight: normal; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; text-transform: none;">Correo:</td>
                    <td class="f4" style="font-family: Roboto; text-align: left; color: rgb(19, 27, 77); text-decoration: none; font-weight: normal; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; text-transform: none;">Tipo de Vehiculo:</td>
                </tr>
                <tr>
                    <td class="f0" style="font-family: Arial, Helvetica, sans-serif; text-align: center; width: 142px; padding: 3px 3px 2px; overflow: hidden;">
                        <asp:TextBox ID="txtCorreo" runat="server" CssClass="dxeEditArea dxeEditAreaSys" Width="193px" AutoCompleteType="Disabled"></asp:TextBox>
                    </td>
                    <td class="f0" style="font-family: Arial, Helvetica, sans-serif; text-align: center; width: 142px; padding: 3px 3px 2px; overflow: hidden;">
                        <asp:TextBox ID="txtTipoVehiculo" runat="server" CssClass="dxeEditArea dxeEditAreaSys" Width="193px" AutoCompleteType="Disabled"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="f4" style="font-family: Roboto; text-align: left; color: rgb(19, 27, 77); text-decoration: none; font-weight: normal; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; text-transform: none;">Linea:</td>
                    <td class="f4" style="font-family: Roboto; text-align: left; color: rgb(19, 27, 77); text-decoration: none; font-weight: normal; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; text-transform: none;">Marca:</td>
                </tr>
                <tr>
                    <td class="f0" style="font-family: Arial, Helvetica, sans-serif; text-align: center; width: 142px; padding: 3px 3px 2px; overflow: hidden;">
                        <asp:TextBox ID="txtLinea" runat="server" CssClass="dxeEditArea dxeEditAreaSys" Width="193px" AutoCompleteType="Disabled"></asp:TextBox>
                    </td>
                    <td class="f0" style="font-family: Arial, Helvetica, sans-serif; text-align: center; width: 142px; padding: 3px 3px 2px; overflow: hidden;">
                        <asp:TextBox ID="txtMarca" runat="server" CssClass="dxeEditArea dxeEditAreaSys" Width="193px" AutoCompleteType="Disabled"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="f4" style="font-family: Roboto; text-align: left; color: rgb(19, 27, 77); text-decoration: none; font-weight: normal; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; text-transform: none;">Telefono:</td>
                    <td class="f4" style="font-family: Roboto; text-align: left; color: rgb(19, 27, 77); text-decoration: none; font-weight: normal; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; text-transform: none;">Modelo:</td>
                </tr>
                <tr>
                    <td class="f0" style="font-family: Arial, Helvetica, sans-serif; text-align: center; width: 142px; padding: 3px 3px 2px; overflow: hidden;">
                        <asp:TextBox ID="txtTelefono" runat="server" CssClass="dxeEditArea dxeEditAreaSys" Width="193px" AutoCompleteType="Disabled"></asp:TextBox>
                    </td>
                    <td class="f0" style="font-family: Arial, Helvetica, sans-serif; text-align: center; width: 142px; padding: 3px 3px 2px; overflow: hidden;">
                        <asp:TextBox ID="txtModelo" runat="server" CssClass="dxeEditArea dxeEditAreaSys" Width="193px" AutoCompleteType="Disabled"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="f4" style="font-family: Roboto; text-align: left; color: rgb(19, 27, 77); text-decoration: none; font-weight: normal; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; text-transform: none;">Suma Asegurada:</td>
                    <td class="f4" style="font-family: Roboto; text-align: left; color: rgb(19, 27, 77); text-decoration: none; font-weight: normal; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; text-transform: none;">Fecha:</td>
                </tr>
                <tr>
                    <td class="f0" style="font-family: Arial, Helvetica, sans-serif; text-align: center; width: 142px; padding: 3px 3px 2px; overflow: hidden;">
                        <asp:TextBox ID="txtSumaAsegurada" runat="server" CssClass="dxeEditArea dxeEditAreaSys" Width="193px" AutoCompleteType="Disabled"></asp:TextBox>
                    </td>
                    <td class="f0" style="font-family: Arial, Helvetica, sans-serif; text-align: center; width: 142px; padding: 3px 3px 2px; overflow: hidden;">
                        <asp:TextBox ID="txtFecha" runat="server" CssClass="dxeEditArea dxeEditAreaSys" Width="193px" AutoCompleteType="Disabled"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="f4" style="font-family: Roboto; text-align: left; color: rgb(19, 27, 77); text-decoration: none; font-weight: normal; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; text-transform: none;">Tipo de Seguro:</td>
                    <td class="f4" style="font-family: Roboto; text-align: left; color: rgb(19, 27, 77); text-decoration: none; font-weight: normal; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; text-transform: none;">Contactar:</td>
                </tr>
                <tr>
                    <td class="f0" style="font-family: Arial, Helvetica, sans-serif; text-align: center; width: 142px; padding: 3px 3px 2px; overflow: hidden;">
                        <asp:TextBox ID="txtTipoSeguro" runat="server" CssClass="dxeEditArea dxeEditAreaSys" Width="193px" AutoCompleteType="Disabled"></asp:TextBox>
                    </td>
                    <td class="f0" style="font-family: Arial, Helvetica, sans-serif; text-align: center; width: 142px; padding: 3px 3px 2px; overflow: hidden;">
                        <asp:TextBox ID="txtContactar" runat="server" CssClass="dxeEditArea dxeEditAreaSys" Width="193px" AutoCompleteType="Disabled"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="f4" style="font-family: Roboto; text-align: left; color: rgb(19, 27, 77); text-decoration: none; font-weight: normal; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; text-transform: none;">Empresa :</td>
                    <td class="f4" style="font-family: Roboto; text-align: left; color: rgb(19, 27, 77); text-decoration: none; font-weight: normal; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; text-transform: none;">Como Contactar:</td>
                </tr>
                <tr>
                    <td class="f0" style="font-family: Arial, Helvetica, sans-serif; text-align: center; width: 142px; padding: 3px 3px 2px; overflow: hidden;">
                        <asp:TextBox ID="txtCodigoEmpresa" runat="server" CssClass="dxeEditArea dxeEditAreaSys" Width="193px" AutoCompleteType="Disabled"></asp:TextBox>
                    </td>
                    <td class="f0" style="font-family: Arial, Helvetica, sans-serif; text-align: center; width: 142px; padding: 3px 3px 2px; overflow: hidden;">
                        <asp:TextBox ID="txtComoContactar" runat="server" CssClass="dxeEditArea dxeEditAreaSys" Width="193px" AutoCompleteType="Disabled"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="f4" style="font-family: Roboto; text-align: left; color: rgb(19, 27, 77); text-decoration: none; font-weight: normal; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; text-transform: none;">Paso 1:</td>
                    <td class="f4" style="font-family: Roboto; text-align: left; color: rgb(19, 27, 77); text-decoration: none; font-weight: normal; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; text-transform: none;">Paso 2:</td>
                </tr>
                <tr>
                    <td class="f0" style="font-family: Arial, Helvetica, sans-serif; text-align: center; width: 142px; padding: 3px 3px 2px; overflow: hidden;">
                        <asp:TextBox ID="txtPaso1" runat="server" CssClass="dxeEditArea dxeEditAreaSys" Width="193px" AutoCompleteType="Disabled"></asp:TextBox>
                    </td>
                    <td class="f0" style="font-family: Arial, Helvetica, sans-serif; text-align: center; width: 142px; padding: 3px 3px 2px; overflow: hidden;">
                        <asp:TextBox ID="txtPaso2" runat="server" CssClass="dxeEditArea dxeEditAreaSys" Width="193px" AutoCompleteType="Disabled"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="f4" style="font-family: Roboto; text-align: left; color: rgb(19, 27, 77); text-decoration: none; font-weight: normal; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; text-transform: none;">Paso 3:</td>
                    <td class="f4" style="font-family: Roboto; text-align: left; color: rgb(19, 27, 77); text-decoration: none; font-weight: normal; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; text-transform: none;">Nit:</td>
                </tr>
                <tr>
                    <td class="f0" style="font-family: Arial, Helvetica, sans-serif; text-align: center; width: 142px; padding: 3px 3px 2px; overflow: hidden;">
                        <asp:TextBox ID="txtPaso3" runat="server" CssClass="dxeEditArea dxeEditAreaSys" Width="193px" AutoCompleteType="Disabled"></asp:TextBox>
                    </td>
                    <td class="f0" style="font-family: Arial, Helvetica, sans-serif; text-align: center; width: 142px; padding: 3px 3px 2px; overflow: hidden;">
                        <asp:TextBox ID="txtNit" runat="server" CssClass="dxeEditArea dxeEditAreaSys" Width="193px" AutoCompleteType="Disabled"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="f4" style="font-family: Roboto; text-align: left; color: rgb(19, 27, 77); text-decoration: none; font-weight: normal; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; text-transform: none;">DPI:</td>
                    <td class="f4" style="font-family: Roboto; text-align: left; color: rgb(19, 27, 77); text-decoration: none; font-weight: normal; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; text-transform: none;">Direccion:</td>
                </tr>
                <tr>
                    <td class="f0" style="font-family: Arial, Helvetica, sans-serif; text-align: center; width: 142px; padding: 3px 3px 2px; overflow: hidden;">
                        <asp:TextBox ID="txtDPI" runat="server" CssClass="dxeEditArea dxeEditAreaSys" Width="193px" AutoCompleteType="Disabled"></asp:TextBox>
                    </td>
                    <td class="f0" style="font-family: Arial, Helvetica, sans-serif; text-align: center; width: 142px; padding: 3px 3px 2px; overflow: hidden;">
                        <asp:TextBox ID="txtDireccion" runat="server" CssClass="dxeEditArea dxeEditAreaSys" Width="193px" AutoCompleteType="Disabled"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="f4" style="font-family: Roboto; text-align: left; color: rgb(19, 27, 77); text-decoration: none; font-weight: normal; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; text-transform: none;">Zona:</td>
                    <td class="f4" style="font-family: Roboto; text-align: left; color: rgb(19, 27, 77); text-decoration: none; font-weight: normal; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; text-transform: none;">Municipio:</td>
                </tr>
                <tr>
                    <td class="f0" style="font-family: Arial, Helvetica, sans-serif; text-align: center; width: 142px; padding: 3px 3px 2px; overflow: hidden;">
                        <asp:TextBox ID="txtZona" runat="server" CssClass="dxeEditArea dxeEditAreaSys" Width="193px" AutoCompleteType="Disabled"></asp:TextBox>
                    </td>
                    <td class="f0" style="font-family: Arial, Helvetica, sans-serif; text-align: center; width: 142px; padding: 3px 3px 2px; overflow: hidden;">
                        <asp:TextBox ID="txtMunicipio" runat="server" CssClass="dxeEditArea dxeEditAreaSys" Width="193px" AutoCompleteType="Disabled"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="f4" style="font-family: Roboto; text-align: left; color: rgb(19, 27, 77); text-decoration: none; font-weight: normal; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; text-transform: none;">Ingreso:</td>
                    <td class="f4" style="font-family: Roboto; text-align: left; color: rgb(19, 27, 77); text-decoration: none; font-weight: normal; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; text-transform: none;">Status:</td>
                </tr>
                <tr>
                    <td class="f0" style="font-family: Arial, Helvetica, sans-serif; text-align: center; width: 142px; padding: 3px 3px 2px; overflow: hidden;">
                        <asp:TextBox ID="txtIngreso" runat="server" CssClass="dxeEditArea dxeEditAreaSys" Width="193px" AutoCompleteType="Disabled"></asp:TextBox>
                    </td>
                    <td class="f0" style="font-family: Arial, Helvetica, sans-serif; text-align: center; width: 142px; padding: 3px 3px 2px; overflow: hidden;">
                        <asp:TextBox ID="txtStatus" runat="server" CssClass="dxeEditArea dxeEditAreaSys" Width="193px" AutoCompleteType="Disabled"></asp:TextBox>
                    </td>
                </tr>
            </table>
            <%--"Nombre","Apellidos","Correo","TipoDeVehiculo","Linea","Marca","Telefono","Modelo","SumaAsegurada","Fecha","TipoSeguro"
     "contactar","CodigoEmpresa","ComoContactar","Paso1","Paso2","Paso3","Nit","DPI","Direccion","Zona","Municipio"
     "ingreso","status"--%>
        </div>
    </form>
    <script type="text/javascript">
    function onListPopulated() {

        var completionList = $find("AutoCompleteEx").get_completionList();
        completionList.style.width = 'auto';
    }
        </script>
</body>
</html>
