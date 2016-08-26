<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Formulario1.aspx.cs" Inherits="Cotizador.Formulario1" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>

 
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <script src="js/jquery.min.js"></script>
    <script src="js/jquery.js"></script>
    <link rel="stylesheet" type="text/css" href="css/Formulario1.css"/>
    <title>Cotizador Unity Promotores</title>

    <style type="text/css">
        .auto-style8 {
            width: 13px;
        }
        .auto-style9 {
            height: 24px;
        }
        .auto-style10 {
            width: 200px;
        }
    </style>

</head>
<body>
    <form id="form1" runat="server" class="outer-container" >
    <div class="inner-container">
    <table  class="centered-content"><tr><td class="auto-style10"> 
                                  <table aria-multiline="True"  >
                                    <tr>
                                        <td class="auto-style5" style="font-family: Arial, Helvetica, sans-serif; font-size: 12px; text-align: center; "><span id="TxtTitulo" class="dxeBase Titulo_morado" style="font-style: normal; font-variant: normal; font-weight: normal; font-stretch: normal; font-size: 21px; line-height: normal; font-family: Arial, Helvetica, sans-serif; text-align: left; color: rgb(19, 27, 77); letter-spacing: 3px; text-decoration: none; text-transform: none;">DATOS A COTIZAR</span></td>
                                    </tr>
                                    <tr>
                                        <td style="font-family: Arial, Helvetica, sans-serif; font-size: 12px; text-align: center;" class="auto-style5"><span id="TxtTipoPoliza" class="dxeBase" style="font-style: normal; font-variant: normal; font-weight: normal; font-stretch: normal; font-size: small; line-height: normal; font-family: Tahoma, Geneva, sans-serif; color: rgb(21, 27, 79); width: 262px; display: inline-block;">Solo se cotizan pólizas para vehículos particulares</span></td>
                                    </tr>
                                                                            <asp:ScriptManager ID="ScriptManager1" runat="server">
                                                            </asp:ScriptManager>
                                </table>
                    
                                                                <div id="Page_Control2"   >
                                                                    <table class="auto-style18" style="width: auto; height:100%;">
                                                                        <tr>
                                                                            <td class="justified_roboto" style="font-family: Roboto; font-size: 15px; text-align: left; color: rgb(19, 27, 77); text-decoration: none; font-weight: normal; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; text-transform: none;">Nombre:</td>
                                                                        </tr>
                                                                        <tr>
                                                                            <td style="font-family: Arial, Helvetica, sans-serif; font-size: 12px; text-align: center;">
                                                                                <table id="ASPxPageControl1_ASPxPageControl2_TxtPrimerNombre_ET" cellpadding="0" cellspacing="0" class="dxeErrorFrame" errorframe="errorFrame" style="border-collapse: collapse; visibility: hidden;">
                                                                                    <tr>
                                                                                        <td class="dxeControlsCell" style="font-family: Arial, Helvetica, sans-serif; font-size: 12px; text-align: center; visibility: visible; vertical-align: middle;">
                                                                                            <table id="ASPxPageControl1_ASPxPageControl2_TxtPrimerNombre" cellpadding="0" cellspacing="0" class="dxeTextBoxSys dxeTextBox just_morado" style="border-collapse: collapse; border: 1px solid rgb(159, 159, 159); cursor: default; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); font-family: Arial, Helvetica, sans-serif; text-align: left; color: rgb(19, 27, 77); font-size: 12px; text-decoration: none; font-weight: normal; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; text-transform: none; margin-bottom: 0px; width: 150px; background-color: white;">
                                                                                                <tr>
                                                                                                    <td class="dxic" style="font-family: Arial, Helvetica, sans-serif; font-size: 0px; text-align: center; width: 142px; padding: 3px 3px 2px; overflow: hidden; ">
                                                                                                        <asp:TextBox ID="txtNombre" runat="server" CssClass="dxeEditArea dxeEditAreaSys" Width="193px"   AutoCompleteType="Disabled"></asp:TextBox>  
                                                                                                       </td><td>&nbsp;&nbsp;<img alt="" class="auto-style2" src="imagenes/Error.png" id="errNombre" style="visibility: hidden" /></td>
                                                                                                </tr>
                                                                                            </table>
                                                                                        </td>
                                                                                        <td id="ASPxPageControl1_ASPxPageControl2_TxtPrimerNombre_EC" class="dxeErrorCell" style="font-family: Tahoma, Geneva, sans-serif; font-size: 12px; text-align: center; font-style: normal; font-variant: normal; font-weight: normal; font-stretch: normal; line-height: normal; color: red; padding-left: 4px; padding-right: 5px; vertical-align: middle;">
                                                                                            <table cellpadding="0" cellspacing="0" style="width: 33px; border-collapse: collapse;">
                                                                                                <tr>
                                                                                                    <td style="font-family: Tahoma, Geneva, sans-serif; font-size: 12px; text-align: center; font-style: normal; font-variant: normal; font-weight: normal; font-stretch: normal; line-height: normal; color: red; padding-right: 5px;">
                                                                                                        <img id="ASPxPageControl1_ASPxPageControl2_TxtPrimerNombre_EI" alt="" class="dxEditors_edtError" src="https://www.ducruet.com/appnewcot/DXR.axd?r=1_10-Sf1P9" style="border-width: 0px; display: block; margin: auto; width: 14px; height: 14px; background-image: url(''); background-color: transparent; background-position: -170px 0px; background-repeat: no-repeat;" /></td>
                                                                                                    <td id="ASPxPageControl1_ASPxPageControl2_TxtPrimerNombre_ETC" style="font-family: Tahoma, Geneva, sans-serif; font-size: 12px; text-align: center; font-style: normal; font-variant: normal; font-weight: normal; font-stretch: normal; line-height: normal; color: red; width: 14px; white-space: nowrap;"></td>
                                                                                                </tr>
                                                                                            </table>
                                                                                        </td>
                                                                                    </tr>
                                                                                </table>
                                                                            </td>
                                                                        </tr>
                                                                                                                                                   <tr>
                                                                            <td class="justified_roboto" style="font-family: Roboto; font-size: 15px; text-align: left; color: rgb(19, 27, 77); text-decoration: none; font-weight: normal; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; text-transform: none;">Fecha de Nacimiento:</td>
                                                                        </tr>
                                                                        <tr>
                                                                            <td style="font-family: Arial, Helvetica, sans-serif; font-size: 12px; text-align: left; float:left;">
                                                                                <table id="ASPxPageControl1_ASPxPageControl2_txtcorreo_ET" cellpadding="0" cellspacing="0" errorframe="errorFrame" style="border-collapse: collapse;">
                                                                                    <tr>
                                                                                        <td id="ASPxPageControl1_ASPxPageControl2_txtcorreo_CC" style="font-family: Arial, Helvetica, sans-serif; font-size: 12px; text-align: center;">
                                                                                            <table id="ASPxPageControl1_ASPxPageControl2_txtcorreo" cellpadding="0" cellspacing="0" class="dxeTextBoxSys dxeTextBox just_morado" style="border-collapse: collapse; border: 1px solid rgb(159, 159, 159); cursor: default; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); font-family: Arial, Helvetica, sans-serif; text-align: left; color: rgb(19, 27, 77); font-size: 12px; text-decoration: none; font-weight: normal; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; text-transform: none; margin-bottom: 0px; width: 150px; background-color: white;">
                                                                                                <tr>
                                                                                                    <td class="dxic" style="font-family: Arial, Helvetica, sans-serif; font-size: 0px; text-align: center; width: 142px; padding: 3px 3px 2px; overflow: hidden;">
                                                                                                        <asp:HiddenField ID="HiddenField1" runat="server" />
                                                                                                        <input id="nacimiento" type="date" onchange="LlenarFecha()" />
                                                                                                         </td><td>&nbsp;&nbsp;<img alt="" class="auto-style2" src="imagenes/Error.png" id="errFecha" style="visibility: hidden" /></td>
                                                                                                    </td>
                                                                                                </tr>
                                                                                            </table>
                                                                                        </td>
                                                                                    </tr>
                                                                                </table>
                                                                            </td>
                                                                        </tr> 
                                                                        <tr>
                                                                            <td class="justified_roboto" style="font-family: Roboto; font-size: 15px; text-align: left; color: rgb(19, 27, 77); text-decoration: none; font-weight: normal; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; text-transform: none;">Email:</td>
                                                                        </tr>
                                                                        <tr>
                                                                            <td style="font-family: Arial, Helvetica, sans-serif; font-size: 12px; text-align: center;" class="auto-style1">
                                                                                <table id="ASPxPageControl1_ASPxPageControl2_TxtPrimerApellido_ET" cellpadding="0" cellspacing="0" class="dxeErrorFrame" errorframe="errorFrame" style="border-collapse: collapse; visibility: hidden;">
                                                                                    <tr>
                                                                                        <td class="dxeControlsCell" style="font-family: Arial, Helvetica, sans-serif; font-size: 12px; text-align: center; visibility: visible; vertical-align: middle;">
                                                                                            <table id="ASPxPageControl1_ASPxPageControl2_TxtPrimerApellido" cellpadding="0" cellspacing="0" class="dxeTextBoxSys dxeTextBox just_morado" style="border-collapse: collapse; border: 1px solid rgb(159, 159, 159); cursor: default; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); font-family: Arial, Helvetica, sans-serif; text-align: left; color: rgb(19, 27, 77); font-size: 12px; text-decoration: none; font-weight: normal; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; text-transform: none; margin-bottom: 0px; width: 150px; background-color: white;">
                                                                                                <tr>
                                                                                                    <td class="dxic" style="font-family: Arial, Helvetica, sans-serif; font-size: 0px; text-align: center; width: 142px; padding: 3px 3px 2px; overflow: hidden;">
                                                                                                    <asp:TextBox ID="txtCorreo" runat="server" CssClass="dxeEditArea dxeEditAreaSys" Width="193px" AutoCompleteType="Disabled"></asp:TextBox>  
                                                                                                         </td><td class="auto-style8">&nbsp;&nbsp;<img alt="" class="auto-style2" src="imagenes/Error.png" id="errCorreo" style="visibility: hidden" /></td>
                                                                                                
                                                                                                </tr>
                                                                                            </table>
                                                                                        </td>
                                                                                        <td id="ASPxPageControl1_ASPxPageControl2_TxtPrimerApellido_EC" class="dxeErrorCell" style="font-family: Tahoma, Geneva, sans-serif; font-size: 12px; text-align: center; font-style: normal; font-variant: normal; font-weight: normal; font-stretch: normal; line-height: normal; color: red; padding-left: 4px; padding-right: 5px; vertical-align: middle;">
                                                                                            <table cellpadding="0" cellspacing="0" style="width: 33px; border-collapse: collapse;">
                                                                                                <tr>
                                                                                                    <td style="font-family: Tahoma, Geneva, sans-serif; font-size: 12px; text-align: center; font-style: normal; font-variant: normal; font-weight: normal; font-stretch: normal; line-height: normal; color: red; padding-right: 5px;">
                                                                                                        <img id="ASPxPageControl1_ASPxPageControl2_TxtPrimerApellido_EI" alt="" class="dxEditors_edtError" src="https://www.ducruet.com/appnewcot/DXR.axd?r=1_10-Sf1P9" style="border-width: 0px; display: block; margin: auto; width: 14px; height: 14px; background-image: url(''); background-color: transparent; background-position: -170px 0px; background-repeat: no-repeat;" /></td>
                                                                                                    <td id="ASPxPageControl1_ASPxPageControl2_TxtPrimerApellido_ETC" style="font-family: Tahoma, Geneva, sans-serif; font-size: 12px; text-align: center; font-style: normal; font-variant: normal; font-weight: normal; font-stretch: normal; line-height: normal; color: red; width: 14px; white-space: nowrap;"></td>
                                                                                                </tr>
                                                                                            </table>
                                                                                        </td>
                                                                                    </tr>
                                                                                </table>
                                                                            </td>
                                                                        </tr>
                                                                                                                                                       <tr>
                                                                            <td class="justified_roboto" style="font-family: Roboto; font-size: 15px; text-align: left; color: rgb(19, 27, 77); text-decoration: none; font-weight: normal; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; text-transform: none;">Telefono:</td>
                                                                        </tr>
                                                                        <tr>
                                                                            <td style="font-family: Arial, Helvetica, sans-serif; font-size: 12px; text-align: left; float:left;">
                                                                                <table id="ASPxPageControl1_ASPxPageControl2_TxtPrimerApellido" cellpadding="0" cellspacing="0" class="dxeTextBoxSys dxeTextBox just_morado" style="border-collapse: collapse; border: 1px solid rgb(159, 159, 159); cursor: default; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); font-family: Arial, Helvetica, sans-serif; text-align: left; color: rgb(19, 27, 77); font-size: 12px; text-decoration: none; font-weight: normal; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; text-transform: none; margin-bottom: 0px; width: 150px; background-color: white;">
                                                                                    <tr>
                                                                                        <td class="dxic" style="font-family: Arial, Helvetica, sans-serif; font-size: 0px; text-align: center; width: 142px; padding: 3px 3px 2px; overflow: hidden;">
                                                                                                     <asp:TextBox ID="txtTelefono" runat="server" CssClass="dxeEditArea dxeEditAreaSys"  onkeypress="return isNumberKey(event)" Width="193px" MaxLength="8" AutoCompleteType="Disabled"></asp:TextBox> 
                                                                                                         </td><td>&nbsp;&nbsp;<img alt="" class="auto-style2" src="imagenes/Error.png" id="errTelefono" style="visibility: hidden" /></td>

                                                                                        </td>
                                                                                    </tr>
                                                                                </table>
                                                                            </td>
                                                                        </tr>
                                                                    
                                                                        <tr>
                                                                            <td class="justified_roboto" style="font-family: Roboto; font-size: 15px; text-align: left; color: rgb(19, 27, 77); text-decoration: none; font-weight: normal; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; text-transform: none;">Tipo de Vehiculo:</td>
                                                                        </tr>
                                                                        <tr>
                                                                            <td style="font-family: Arial, Helvetica, sans-serif; font-size: 12px; text-align: left; float:left;">
                                                                                              <asp:DropDownList ID="cmbTipoVehiculo" runat="server" Width="215px"></asp:DropDownList>

                                                                            </td>
                                                                        </tr>
                                                                       <tr>
                                                                            <td class="justified_roboto" style="font-family: Roboto; font-size: 15px; text-align: left; color: rgb(19, 27, 77); text-decoration: none; font-weight: normal; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; text-transform: none;"><a>Marca:</a></td>
                                                                        </tr>
                                                                        <tr>
                                                                            <td style="font-family: Arial, Helvetica, sans-serif; font-size: 12px; text-align: left; float:left;">
                                                                                <table id="ASPxPageControl1_ASPxPageControl2_sexo" cellpadding="0" cellspacing="0" class="dxeRadioButtonList auto-style18" style="border: 1px solid rgb(159, 159, 159); font-style: normal; font-variant: normal; font-weight: normal; font-stretch: normal; font-size: 12px; line-height: normal; font-family: Tahoma, Geneva, sans-serif; cursor: default; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); width: auto; height: 15px; border-collapse: separate;">
                                                                                    <tr>
                                                                                        <td class="dxe" style="font-family: Arial, text-align:"left" Helvetica, sans-serif; font-size: 12px; text-align: center; padding: 0px;">
                                                                                            <asp:DropDownList ID="cmbMarca" runat="server" Width="215px"></asp:DropDownList>
                                                                                        </td>
                                                                                    </tr>
                                                                                </table>
                                                                            </td>
                                                                        </tr>
                                                                                                                                                <tr>
                                                                            <td class="justified_roboto" style="font-family: Roboto; font-size: 15px; text-align: left; color: rgb(19, 27, 77); text-decoration: none; font-weight: normal; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; text-transform: none;">Linea:</td>
                                                                        </tr>
                                                                        <tr>
                                                                            <td style="font-family: Arial, Helvetica, sans-serif; font-size: 12px; text-align: left; float:left;">
                                                                                <table id="ASPxPageControl1_ASPxPageControl2_sexo" cellpadding="0" cellspacing="0" class="dxeRadioButtonList auto-style18" style="border: 1px solid rgb(159, 159, 159); font-style: normal; font-variant: normal; font-weight: normal; font-stretch: normal; font-size: 12px; line-height: normal; font-family: Tahoma, Geneva, sans-serif; cursor: default; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); width: auto; height: 15px; border-collapse: separate;">
                                                                                    <tr>
                                                                                        <td class="dxe" style="font-family: Arial, text-align:"left" Helvetica, sans-serif; font-size: 12px; text-align: center; padding: 0px;">
                                                                                            <asp:DropDownList ID="cmbLinea" runat="server" Width="215px"></asp:DropDownList>
                                                                                        </td>
                                                                                    </tr>
                                                                                </table>
                                                                            </td>
                                                                        </tr>
                                                                                                                                                <tr>
                                                                            <td class="justified_roboto" style="font-family: Roboto; font-size: 15px; text-align: left; color: rgb(19, 27, 77); text-decoration: none; font-weight: normal; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; text-transform: none;">Modelo:</td>
                                                                        </tr>
                                                                        <tr>
                                                                            <td style="font-family: Arial, Helvetica, sans-serif; font-size: 12px; text-align: left; float:left;">
                                                                                <table id="ASPxPageControl1_ASPxPageControl2_sexo" cellpadding="0" cellspacing="0" class="dxeRadioButtonList auto-style18" style="border: 1px solid rgb(159, 159, 159); font-style: normal; font-variant: normal; font-weight: normal; font-stretch: normal; font-size: 12px; line-height: normal; font-family: Tahoma, Geneva, sans-serif; cursor: default; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); width: auto; height: 15px; border-collapse: separate;">
                                                                                    <tr>
                                                                                        <td class="dxe" style="font-family: Arial, text-align:"left" Helvetica, sans-serif; font-size: 12px; text-align: center; padding: 0px;">
                                                                                            <asp:DropDownList ID="cmbModelo" runat="server" Width="215px"></asp:DropDownList>
                                                                                        </td>
                                                                                    </tr>
                                                                                </table>
                                                                            </td>
                                                                        </tr>
                                                                                                                                                      <tr>
                                                                            <td class="auto-style14" style="font-family: Arial, Helvetica, sans-serif; font-size: 12px; text-align: left; float:left; height: 24px;">

                                                                                      <table><tr><td><asp:RadioButton ID="rdSeguroCompleto" runat="server"  Text="Seguro Completo" ClientIDMode="Static" onclick="MostrarMonto()" CssClass="letra" /></td>
                                                                                          <td><img class="auto-style2" id="errDañosATerceros" src="imagenes/Error.png"  style="visibility: hidden"/></td>
                                                                                          </tr></table>

                                                                            </td>
                                                                        </tr> 
                                                                        <tr>
                                                                            <td class="auto-style14" style="font-family: Arial, Helvetica, sans-serif; font-size: 12px; text-align: left; float:left; height: 24px;">
 
                                                                                     <table><tr><td>
                                                                                           <asp:RadioButton ID="rdResponsabilidadCivil" runat="server"  Text="Responsabilidad Civil" ClientIDMode="Static" onclick="EsconderMonto()" CssClass="letra"  />
                                                                                                <td><img class="auto-style2" id="errResponsabilidadCivil" src="imagenes/Error.png" style="visibility: hidden" /></td>
                                                                                          </tr></table>
 
                                                                            </td>
                                                                        </tr>
                                                                         <tr>
                                                                            <td class="justified_roboto" style="font-family: Roboto; font-size: 15px; text-align: left; color: rgb(19, 27, 77); text-decoration: none; font-weight: normal; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; text-transform: none;">
                                                                               <asp:UpdatePanel ID="UpdatePanel3" runat="server">
                                                                                    <ContentTemplate>
                                                                                   <a id="Monto1">Valor del Mercado:</a>
                                                                                  </ContentTemplate>
                                                                                </asp:UpdatePanel>

                                                                            </td>
                                                                        </tr>
       
                                                                        <tr >
                                                                            <td style="font-family: Arial, Helvetica, sans-serif; font-size: 12px; text-align: left; float:left;">
                                                                               <asp:UpdatePanel ID="UpdatePanel4" runat="server">
                                                                                    <ContentTemplate>
                                                                                 <div id="Monto">
                                                                                  <table id="ASPxPageControl1_ASPxPageControl2_txtcorreo_ET" cellpadding="0" cellspacing="0" errorframe="errorFrame" style="border-collapse: collapse;">
                                                                                    <tr>
                                                                                        <td id="ASPxPageControl1_ASPxPageControl2_txtcorreo_CC" style="font-family: Arial, Helvetica, sans-serif; font-size: 12px; text-align: center;">
                                                                                            <table id="ASPxPageControl1_ASPxPageControl2_TxtPrimerApellido" cellpadding="0" cellspacing="0" class="dxeTextBoxSys dxeTextBox just_morado" style="border-collapse: collapse; border: 1px solid rgb(159, 159, 159); cursor: default; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); font-family: Arial, Helvetica, sans-serif; text-align: left; color: rgb(19, 27, 77); font-size: 12px; text-decoration: none; font-weight: normal; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; text-transform: none; margin-bottom: 0px; width: 150px; background-color: white;">
                                                                                                <tr>
                                                                                                    <td class="dxic" style="font-family: Arial, Helvetica, sans-serif; font-size: 0px; text-align: center; width: 142px; padding: 3px 3px 2px; overflow: hidden;">
                                                                                                    <asp:TextBox ID="txtValorMercado" runat="server" CssClass="dxeEditArea dxeEditAreaSys" Width="193px" onkeypress="return isNumberKey(event)" AutoCompleteType="Disabled"></asp:TextBox> 
                                                                                                </td><td>&nbsp;&nbsp;<img alt="" class="auto-style2" src="imagenes/Error.png" id="errMontoAsegurado" style="visibility: hidden" /></td>
                                                                                                </tr>
                                                                                            </table>
                                                                                        </td>
                                                                                    </tr>
                                                                                  </table>
                                                                                </div>
                                                                                     </ContentTemplate>
                                                                                </asp:UpdatePanel>
                                                                            </td>
                                                                        </tr> 
                                                                         <tr>
                                                                            <td class="auto-style6" style="font-family: Roboto; font-size: 12px; text-align: left; color: rgb(19, 27, 77); text-decoration: none; font-weight: normal; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; text-transform: none;">
                                                                                   <a class="letraTitulo">Coberturas Adicionales:</a> 
                                                                             </td>
                                                                        </tr>
                                                                              <tr>
                                                                               <td class="auto-style9" style="font-family: Roboto; font-size: 15px; text-align: left; color: rgb(19, 27, 77); text-decoration: none; font-weight: normal; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; text-transform: none;">
                                                                                        <asp:CheckBox ID="chkRoboParcial" runat="server" Text="Robo parcial" CssClass="letra" AutoPostBack="True" OnCheckedChanged="chkRoboParcial_CheckedChanged"  />
                                                                                  &nbsp; <asp:ImageButton ID="ImageButton3" runat="server" 
                                                                             ImageUrl="~/imagenes/SignoInterrogacion1.png" ToolTip="Mas informacion" 
                                                                             OnClientClick="javascript:return false;" Height="15px" Width="15px" />
                                                                                        <asp:BalloonPopupExtender ID="ImageButton3_BalloonPopupExtender" runat="server" BalloonPopupControlID="Panel4" BalloonSize="Medium" CustomCssUrl="" DisplayOnClick="False" DisplayOnMouseOver="True" DynamicServicePath="" Enabled="True" ExtenderControlID="" TargetControlID="ImageButton3">
                                                                                        </asp:BalloonPopupExtender>
                                                                             <asp:BalloonPopupExtender ID="BalloonPopupExtender1" runat="server" BalloonPopupControlID="Panel3" CustomCssUrl="" DynamicServicePath="" Enabled="True" ExtenderControlID="" TargetControlID="ImageButton2" BalloonSize="Medium" DisplayOnClick="False" DisplayOnMouseOver="True">
                                                                             </asp:BalloonPopupExtender>

                                                                             </td>
                                                                        </tr>
                                                                                 <tr>
                                                                            <td class="justified_roboto" style="font-family: Roboto; font-size: 15px; text-align: left; color: rgb(19, 27, 77); text-decoration: none; font-weight: normal; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; text-transform: none;">
                                                                               <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                                                                                    <ContentTemplate>
                                                                                   <a id="Robo1">Valor Estimado:</a>
                                                                                  </ContentTemplate>
                                                                                </asp:UpdatePanel>

                                                                            </td>
                                                                        </tr>
       
                                                                        <tr >
                                                                            <td style="font-family: Arial, Helvetica, sans-serif; font-size: 12px; text-align: left; float:left;">
                                                                               <asp:UpdatePanel ID="UpdatePanel2" runat="server">
                                                                                    <ContentTemplate>
                                                                                 <div id="Robo2">
                                                                                  <table id="ASPxPageControl1_ASPxPageControl2_txtcorreo_ET" cellpadding="0" cellspacing="0" errorframe="errorFrame" style="border-collapse: collapse;">
                                                                                    <tr>
                                                                                        <td id="ASPxPageControl1_ASPxPageControl2_txtcorreo_CC" style="font-family: Arial, Helvetica, sans-serif; font-size: 12px; text-align: center;">
                                                                                            <table id="ASPxPageControl1_ASPxPageControl2_TxtPrimerApellido" cellpadding="0" cellspacing="0" class="dxeTextBoxSys dxeTextBox just_morado" style="border-collapse: collapse; border: 1px solid rgb(159, 159, 159); cursor: default; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); font-family: Arial, Helvetica, sans-serif; text-align: left; color: rgb(19, 27, 77); font-size: 12px; text-decoration: none; font-weight: normal; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; text-transform: none; margin-bottom: 0px; width: 150px; background-color: white;">
                                                                                                <tr>
                                                                                                    <td class="dxic" style="font-family: Arial, Helvetica, sans-serif; font-size: 0px; text-align: center; width: 142px; padding: 3px 3px 2px; overflow: hidden;">
                                                                                                    <asp:TextBox ID="txtValorEstimadoRoboParcial" runat="server" CssClass="dxeEditArea dxeEditAreaSys" Width="193px" onkeypress="return isNumberKey(event)" AutoCompleteType="Disabled"></asp:TextBox> 
                                                                                                </td><td>&nbsp;&nbsp;<img alt="" class="auto-style2" src="imagenes/Error.png" id="errRoboParcial" style="visibility: hidden" /></td>
                                                                                                </tr>
                                                                                            </table>
                                                                                        </td>
                                                                                    </tr>
                                                                                  </table>
                                                                                </div>
                                                                                     </ContentTemplate>
                                                                                </asp:UpdatePanel>
                                                                            </td>
                                                                        </tr> 
         <tr>
                                                                                    <td class="justified_roboto" style="font-family: Roboto; font-size: 15px; text-align: left; color: rgb(19, 27, 77); text-decoration: none; font-weight: normal; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; text-transform: none;">
                                                                                        <asp:CheckBox ID="chkMenores16" runat="server" Text="Menores. Coberturas desde 16  años" CssClass="letra" />
                                                                            &nbsp; <asp:ImageButton ID="btnAyudaTipoServicio" runat="server" 
                                                                             ImageUrl="~/imagenes/SignoInterrogacion1.png" ToolTip="Mas informacion" 
                                                                             OnClientClick="javascript:return false;" Height="15px" Width="15px" />
                                                                             <asp:BalloonPopupExtender ID="btnAyudaTipoServicio_BalloonPopupExtender" 
                                                                              runat="server" BalloonPopupControlID="Panel1" 
                                                                              BalloonSize="Medium"
                                                                              DisplayOnClick="False" DisplayOnMouseOver="True" DynamicServicePath="" 
                                                                              Enabled="True" ExtenderControlID="" ScrollBars="None"
                                                                              TargetControlID="btnAyudaTipoServicio" >
                                                                             </asp:BalloonPopupExtender>
                                                                                    </td>
                                                                        </tr>
         <tr>
                                                                                    <td class="justified_roboto" style="font-family: Roboto; font-size: 15px; text-align: left; color: rgb(19, 27, 77); text-decoration: none; font-weight: normal; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; text-transform: none;">
                                                                                        <asp:CheckBox ID="chkMenores18" runat="server" Text="Menores. Coberturas desde 18 años" CssClass="letra" />
                                                                            &nbsp; <asp:ImageButton ID="ImageButton1" runat="server" 
                                                                             ImageUrl="~/imagenes/SignoInterrogacion1.png" ToolTip="Mas informacion" 
                                                                             OnClientClick="javascript:return false;" Height="15px" Width="15px" />
                                                                                        <asp:BalloonPopupExtender ID="ImageButton1_BalloonPopupExtender" runat="server" CustomCssUrl="" DynamicServicePath="" Enabled="True" ExtenderControlID="" TargetControlID="ImageButton1" BalloonPopupControlID="Panel2" DisplayOnClick="False" DisplayOnMouseOver="True" BalloonSize="Medium">
                                                                                        </asp:BalloonPopupExtender>
 
                                                                             </td>
                                                                        </tr>
         <tr>
                                                                                    <td class="auto-style9" style="font-family: Roboto; font-size: 15px; text-align: left; color: rgb(19, 27, 77); text-decoration: none; font-weight: normal; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; text-transform: none;">
                                                                                        <asp:CheckBox ID="chkExcesoRC" runat="server" Text="Exceso de RC.   (ID 5)." CssClass="letra" />
                                                                                        &nbsp;<asp:ImageButton ID="ImageButton2" runat="server" 
                                                                             ImageUrl="~/imagenes/SignoInterrogacion1.png" ToolTip="Mas informacion" 
                                                                             OnClientClick="javascript:return false;" Height="15px" Width="15px" />
                                                                                        <asp:BalloonPopupExtender ID="ImageButton2_BalloonPopupExtender" runat="server" BalloonPopupControlID="Panel3" CustomCssUrl="" DynamicServicePath="" Enabled="True" ExtenderControlID="" TargetControlID="ImageButton2">
                                                                                        </asp:BalloonPopupExtender>
                                                                             </td>
                                                                        </tr>
                 <tr>
                                                                                    <td class="justified_roboto" style="font-family: Roboto; font-size: 15px; text-align: left; color: rgb(19, 27, 77); text-decoration: none; font-weight: normal; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; text-transform: none;">
                                                                                        <a  class="letraTitulo">En qué horario desea ser contactado?
                                                                                       
                                                                                    </td>
                                                                        </tr>
                         <tr>
                                                                                    <td class="justified_roboto" style="font-family: Roboto; font-size: 15px; text-align: left; color: rgb(19, 27, 77); text-decoration: none; font-weight: normal; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; text-transform: none;">
                                                                                        <asp:TextBox ID="txtHora" runat="server" AutoCompleteType="Disabled"></asp:TextBox>
                                                                                    &nbsp;&nbsp;<img alt="" class="auto-style2" src="imagenes/Error.png" id="errHora" style="visibility: hidden" /></td>
                                                                        </tr>
                                                                        <tr>
                                                                            <td style="font-family: Arial, Helvetica, sans-serif; font-size: 16px; text-align: center;" class="auto-style7"><span id="ASPxPageControl1_ASPxPageControl2_ASPxLabel2" class="dxeBase" style="font-style: normal; font-variant: normal; font-weight: normal; font-stretch: normal; font-size: 12px; line-height: normal; font-family: Tahoma, Geneva, sans-serif;">
                                                                                <table id="ASPxPageControl1_ASPxPageControl2_BtnSiguiente" cellpadding="0" cellspacing="0" style="height: 35px; width: 103px; border-collapse: separate;">
                                                                                    <tr>
                                                                                       <td style="text-align:center"> 
 
                                                                                                    
                                                                                                   <asp:Button ID="Button1" runat="server" BackColor="White" BorderColor="#336699" BorderStyle="Solid" BorderWidth="1px" CssClass="btn" Height="100%" OnClick="Button1_Click" Text="Cotizar" Width="100%"  />
                                                                                             
 
                                                                                        </td>
                                                                                     
                                                                                    </tr>
                                                                                </table>
                                                                           </td>
                                                                        </tr>
                                                                        <tr>
                                                                            <td style="font-family: Arial, Helvetica, sans-serif; font-size: 12px; text-align: center;">
                                                                                
                                                                            </td>
                                                                        </tr>
                                                                    </table>
                                                                    <div style="float:left; text-align:left;">
                                                                        <asp:Label ID="lblMsg" runat="server" Text="." ForeColor="Red"></asp:Label>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                            
                                                        </div>
                                                        <b class="dx-clear" style="display: block; clear: both; height: 0px; width: 0px; font-size: 0px; line-height: 0; overflow: hidden; visibility: hidden;"></b>
                                  <asp:Panel ID="Panel1" runat="server" Width="263px">
                                      Brinda cobertura a cualquier persona que conduzca el vehículo desde los 16 años, siempre que tengan su licencia de conducir vigente.<asp:Panel ID="Panel2" runat="server">
                                          (siempre que NO sean colaboradores): Brinda cobertura a cualquier persona que conduzca el vehículo desde los 16 años, siempre que tengan su licencia de conducir vigente.<asp:Panel ID="Panel3" runat="server">
                                              Ampliación del monto de cobertura de la sección II de la póliza (Seguro de Responsabilidad Civil ante Terceras personas) para tener una mejor protección.
                                              <asp:Panel ID="Panel4" runat="server">
                                                  Ampara el robo del “equipo especial” instalado dentro de la cabina del vehículo; robo de radio o bocinas, dvd, u otros equipos de audio o video. No ampara piezas mecánicas, externas o equipos portátiles o propiedad personal.</asp:Panel>
                                          </asp:Panel>
                                      </asp:Panel>
                                  </asp:Panel>
        </td></tr></table>

                                   
                                    


    
 
 

    </form>

    <script type="text/javascript">
        function isNumberKey(evt) {
            var charCode = (evt.which) ? evt.which : event.keyCode
            if (charCode != 46 && charCode > 31
              && (charCode < 48 || charCode > 57))
                return false;

            return true;
        }

        $(document).ready(function () {

            var Completo = document.getElementById("rdSeguroCompleto").checked;
            var Civil = document.getElementById("rdResponsabilidadCivil").checked;

           
                if (Completo == true && Civil == false) {
                  
                    document.getElementById("Monto").style.display = "inline";
                    document.getElementById("Monto1").style.display = "inline";
                    document.getElementById("Monto").style.visibility = "visible";
                    document.getElementById("Monto1").style.visibility = "visible";
                }

                if (Completo == false && Civil == false) {
               
                    document.getElementById("Monto").style.display = "none";
                    document.getElementById("Monto1").style.display = "none";
                    document.getElementById("Monto").style.visibility = "hidden";
                    document.getElementById("Monto1").style.visibility = "hidden";
                }

                if (Completo == false && Civil == true) {
         
                    document.getElementById("Monto").style.display = "none";
                    document.getElementById("Monto1").style.display = "none";
                    document.getElementById("Monto").style.visibility = "hidden";
                    document.getElementById("Monto1").style.visibility = "hidden";
                }
  
                ProcesarRobo();

        });


        function EsconderMonto() {
            document.getElementById("Monto").style.display = "none";
            document.getElementById("Monto1").style.display = "none";
            document.getElementById("Monto").style.visibility = "hidden";
            document.getElementById("Monto1").style.visibility = "hidden";

            document.getElementById("rdSeguroCompleto").checked = false;
            document.getElementById("rdResponsabilidadCivil").checked = true;
            ApagarFocoRd();
       
        }
        function MostrarMonto() {
            document.getElementById("Monto").style.display = "inline";
            document.getElementById("Monto1").style.display = "inline";
            document.getElementById("Monto").style.visibility = "visible";
            document.getElementById("Monto1").style.visibility = "visible";
            document.getElementById("rdSeguroCompleto").checked = true;
            document.getElementById("rdResponsabilidadCivil").checked = false;
            ApagarFocoRd();;
        
        }

        function ProcesarRobo() {
            if (document.getElementById("chkRoboParcial").checked == true)
            {
                document.getElementById("Robo1").style.display = "inline";
                document.getElementById("Robo2").style.display = "inline";
                document.getElementById("Robo1").style.visibility = "visible";
                document.getElementById("Robo2").style.visibility = "visible";
            } else {
                document.getElementById("Robo1").style.display = "none";
                document.getElementById("Robo2").style.display = "none";
                document.getElementById("Robo1").style.visibility = "hidden";
                document.getElementById("Robo2").style.visibility = "hidden";
            }

        }
        function ApagarFocoRd() {
            document.getElementById("errDañosATerceros").style.visibility = "hidden";
            document.getElementById("errResponsabilidadCivil").style.visibility = "hidden";
        }
        function LlenarFecha() {
            var ver = document.getElementById("nacimiento").value;
            $("#HiddenField1").val(ver);
        }
 
    </script>
</body>
</html>
