<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Formulario1.aspx.cs" Inherits="Cotizador.Forumlario1" %>

 
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <script src="js/jquery.min.js"></script>
     <script src="js/jquery.js"></script>
    <title></title>
    <style type="text/css">
        .dxeEditAreaSys {
        }

        .auto-style1 {
            height: 33px;
        }

        body {
            margin: 0;
        }
        .letra {
              font-family: Arial, Helvetica, sans-serif; font-size: 13px; text-align: center; 
        }
       
        .letraTitulo {
              font-family: Arial, Helvetica, sans-serif; font-size: 13px; text-align: center; font-weight:bold;
        }
        .outer-container {
            position: absolute;
            display: table;
            width: 100%;
            height: 100%;
            background: #fff;
        }

        .inner-container {
            display: table-cell;
            vertical-align: middle;
            text-align: center;
        }

        .centered-content {
            display: inline-block;
            background: #fff;
            padding: 20px;
            border: 1px solid #000;
        }

        .btn {
            background: #3498db;
            background-image: -webkit-linear-gradient(top, #3498db, #2980b9);
            background-image: -moz-linear-gradient(top, #3498db, #2980b9);
            background-image: -ms-linear-gradient(top, #3498db, #2980b9);
            background-image: -o-linear-gradient(top, #3498db, #2980b9);
            background-image: linear-gradient(to bottom, #3498db, #2980b9);
            color: #ffffff;
            /*-webkit-border-radius: 28;
  -moz-border-radius: 28;
  border-radius: 28px;*/
            /*font-family: Arial;
  font-size: 15px;
  padding: 10px 20px 10px 20px;
  text-decoration: none;*/
        }

            .btn:hover {
                background: #3cb0fd;
                background-image: -webkit-linear-gradient(top, #3cb0fd, #3498db);
                background-image: -moz-linear-gradient(top, #3cb0fd, #3498db);
                background-image: -ms-linear-gradient(top, #3cb0fd, #3498db);
                background-image: -o-linear-gradient(top, #3cb0fd, #3498db);
                background-image: linear-gradient(to bottom, #3cb0fd, #3498db);
                color: blue;
                /*text-decoration: none;*/
            }

        .auto-style2 {
            width: 14px;
            height: 14px;
        }

        #Page_Control {
            height: 577px;
        }

        .auto-style5 {
            width: 252px;
        }


        .cal {
            position: relative;
            padding: 4px;
            font-weight: bold;
            background: #bebfc0;
            background: rgba(0, 0, 0, 0.1);
            border-radius: 5px;
            display: inline-block;
            vertical-align: baseline;
            zoom: 1;
            *display: inline;
            *vertical-align: auto;
            -webkit-box-shadow: inset 0 1px 1px rgba(0, 0, 0, 0.2), 0 1px rgba(255, 255, 255, 0.4);
            box-shadow: inset 0 1px 1px rgba(0, 0, 0, 0.2), 0 1px rgba(255, 255, 255, 0.4);
        }

            .cal:before {
                content: '';
                position: absolute;
                bottom: 3px;
                left: 4px;
                right: 4px;
                height: 6px;
                background: #d9d9d9;
                border: 1px solid #909090;
                border-radius: 4px;
                -webkit-box-shadow: 0 1px 2px rgba(0, 0, 0, 0.2);
                box-shadow: 0 1px 2px rgba(0, 0, 0, 0.2);
            }

            .cal a {
                text-decoration: none;
            }

            .cal tr:first-child td {
                border-top: 0;
            }

            .cal td:first-child {
                border-left: 0;
            }

            .cal tr:first-child a {
                border-top: 0;
                margin-top: 0;
            }

            .cal tr:last-child a {
                border-bottom: 0;
                margin-bottom: 0;
            }

            .cal td:first-child a {
                border-left: 0;
                margin-left: 0;
            }

            .cal td:last-child a {
                border-right: 0;
                margin-right: 0;
            }

            .cal tr:last-child td:first-child a {
                border-radius: 0 0 0 3px;
            }

            .cal tr:last-child td:last-child a {
                border-radius: 0 0 3px 0;
            }

        .cal-table {
            position: relative;
            margin: 0 0 1px;
            border-collapse: separate;
            border-left: 1px solid #979797;
            border-right: 1px solid #979797;
            border-bottom: 1px solid #bbb;
            border-radius: 0 0 3px 3px;
            -webkit-box-shadow: 1px 0 rgba(0, 0, 0, 0.1), -1px 0 rgba(0, 0, 0, 0.1);
            box-shadow: 1px 0 rgba(0, 0, 0, 0.1), -1px 0 rgba(0, 0, 0, 0.1);
        }

        .cal-caption {
            width: 100%;
            padding-bottom: 1px;
            line-height: 32px;
            color: white;
            text-align: center;
            text-shadow: 0 -1px rgba(0, 0, 0, 0.3);
            background: #629c2e;
            border-radius: 3px 3px 0 0;
            background-image: -webkit-linear-gradient(top, #89c84d, #629c2e 75%, #548d20);
            background-image: -moz-linear-gradient(top, #89c84d, #629c2e 75%, #548d20);
            background-image: -o-linear-gradient(top, #89c84d, #629c2e 75%, #548d20);
            background-image: linear-gradient(to bottom, #89c84d, #629c2e 75%, #548d20);
            -webkit-box-shadow: inset 0 0 0 1px rgba(0, 0, 0, 0.2), inset 0 1px rgba(0, 0, 0, 0.1), inset 0 2px rgba(255, 255, 255, 0.25), 0 1px 3px rgba(0, 0, 0, 0.4);
            box-shadow: inset 0 0 0 1px rgba(0, 0, 0, 0.2), inset 0 1px rgba(0, 0, 0, 0.1), inset 0 2px rgba(255, 255, 255, 0.25), 0 1px 3px rgba(0, 0, 0, 0.4);
        }

            .cal-caption a {
                line-height: 30px;
                padding: 0 10px;
                font-size: 20px;
                font-weight: normal;
                color: white;
            }

            .cal-caption .prev {
                float: left;
            }

            .cal-caption .next {
                float: right;
            }

        .cal-body td {
            width: 30px;
            font-size: 11px;
            border-top: 1px solid #eaeaea;
            border-left: 1px solid #eaeaea;
            border-color: black;
        }

        .cal-body a {
            display: block;
            position: relative;
            line-height: 28px;
            color: #555;
            text-align: center;
            background: white;
        }

            .cal-body a:hover {
                background: #fafafa;
            }

        .cal-off a {
            color: #ccc;
            font-weight: normal;
        }

        .cal-today a {
            color: green;
            background: #f5f5f5;
            background-image: -webkit-linear-gradient(top, whitesmoke, white 70%);
            background-image: -moz-linear-gradient(top, whitesmoke, white 70%);
            background-image: -o-linear-gradient(top, whitesmoke, white 70%);
            background-image: linear-gradient(to bottom, whitesmoke, white 70%);
        }

        .cal-selected a, .cal-body a:active {
            margin: -1px;
            color: #b2494d;
            background: #fff5f6;
            border: 1px solid #e7d4d4;
        }

        .cal-check a {
            color: #f79901;
            overflow: hidden;
        }

            .cal-check a:before {
                content: '';
                position: absolute;
                top: -6px;
                right: -6px;
                width: 12px;
                height: 12px;
                background: #ffb83b;
                background-image: -webkit-linear-gradient(top, #ffb83b, #ff6c00);
                background-image: -moz-linear-gradient(top, #ffb83b, #ff6c00);
                background-image: -o-linear-gradient(top, #ffb83b, #ff6c00);
                background-image: linear-gradient(to bottom, #ffb83b, #ff6c00);
                -webkit-transform: rotate(-45deg);
                -moz-transform: rotate(-45deg);
                -ms-transform: rotate(-45deg);
                -o-transform: rotate(-45deg);
                transform: rotate(-45deg);
            }
        .auto-style6 {
            height: 19px;
        }
        .auto-style7 {
            height: 39px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server" class="outer-container" >
    <div class="inner-container">
    <table  class="centered-content"><tr><td> 
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
                                                                            <td class="justified_roboto" style="font-family: Roboto; font-size: 12px; text-align: left; color: rgb(19, 27, 77); text-decoration: none; font-weight: normal; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; text-transform: none;">Nombre:</td>
                                                                        </tr>
                                                                        <tr>
                                                                            <td style="font-family: Arial, Helvetica, sans-serif; font-size: 12px; text-align: center;">
                                                                                <table id="ASPxPageControl1_ASPxPageControl2_TxtPrimerNombre_ET" cellpadding="0" cellspacing="0" class="dxeErrorFrame" errorframe="errorFrame" style="border-collapse: collapse; visibility: hidden;">
                                                                                    <tr>
                                                                                        <td class="dxeControlsCell" style="font-family: Arial, Helvetica, sans-serif; font-size: 12px; text-align: center; visibility: visible; vertical-align: middle;">
                                                                                            <table id="ASPxPageControl1_ASPxPageControl2_TxtPrimerNombre" cellpadding="0" cellspacing="0" class="dxeTextBoxSys dxeTextBox just_morado" style="border-collapse: collapse; border: 1px solid rgb(159, 159, 159); cursor: default; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); font-family: Arial, Helvetica, sans-serif; text-align: left; color: rgb(19, 27, 77); font-size: 12px; text-decoration: none; font-weight: normal; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; text-transform: none; margin-bottom: 0px; width: 150px; background-color: white;">
                                                                                                <tr>
                                                                                                    <td class="dxic" style="font-family: Arial, Helvetica, sans-serif; font-size: 0px; text-align: center; width: 142px; padding: 3px 3px 2px; overflow: hidden; ">
                                                                                                        <asp:TextBox ID="txtNombre" runat="server" CssClass="dxeEditArea dxeEditAreaSys" Width="193px"></asp:TextBox>  
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
                                                                            <td class="justified_roboto" style="font-family: Roboto; font-size: 12px; text-align: left; color: rgb(19, 27, 77); text-decoration: none; font-weight: normal; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; text-transform: none;">Fecha de Nacimiento:</td>
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
                                                                            <td class="justified_roboto" style="font-family: Roboto; font-size: 12px; text-align: left; color: rgb(19, 27, 77); text-decoration: none; font-weight: normal; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; text-transform: none;">Email:</td>
                                                                        </tr>
                                                                        <tr>
                                                                            <td style="font-family: Arial, Helvetica, sans-serif; font-size: 12px; text-align: center;" class="auto-style1">
                                                                                <table id="ASPxPageControl1_ASPxPageControl2_TxtPrimerApellido_ET" cellpadding="0" cellspacing="0" class="dxeErrorFrame" errorframe="errorFrame" style="border-collapse: collapse; visibility: hidden;">
                                                                                    <tr>
                                                                                        <td class="dxeControlsCell" style="font-family: Arial, Helvetica, sans-serif; font-size: 12px; text-align: center; visibility: visible; vertical-align: middle;">
                                                                                            <table id="ASPxPageControl1_ASPxPageControl2_TxtPrimerApellido" cellpadding="0" cellspacing="0" class="dxeTextBoxSys dxeTextBox just_morado" style="border-collapse: collapse; border: 1px solid rgb(159, 159, 159); cursor: default; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); font-family: Arial, Helvetica, sans-serif; text-align: left; color: rgb(19, 27, 77); font-size: 12px; text-decoration: none; font-weight: normal; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; text-transform: none; margin-bottom: 0px; width: 150px; background-color: white;">
                                                                                                <tr>
                                                                                                    <td class="dxic" style="font-family: Arial, Helvetica, sans-serif; font-size: 0px; text-align: center; width: 142px; padding: 3px 3px 2px; overflow: hidden;">
                                                                                                    <asp:TextBox ID="txtCorreo" runat="server" CssClass="dxeEditArea dxeEditAreaSys" Width="193px"></asp:TextBox>  
                                                                                                         </td><td>&nbsp;&nbsp;<img alt="" class="auto-style2" src="imagenes/Error.png" id="errCorreo" style="visibility: hidden" /></td>
                                                                                                
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
                                                                            <td class="justified_roboto" style="font-family: Roboto; font-size: 12px; text-align: left; color: rgb(19, 27, 77); text-decoration: none; font-weight: normal; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; text-transform: none;">Telefono:</td>
                                                                        </tr>
                                                                        <tr>
                                                                            <td style="font-family: Arial, Helvetica, sans-serif; font-size: 12px; text-align: left; float:left;">
                                                                                <table id="ASPxPageControl1_ASPxPageControl2_txtcorreo_ET" cellpadding="0" cellspacing="0" errorframe="errorFrame" style="border-collapse: collapse;">
                                                                                    <tr>
                                                                                        <td id="ASPxPageControl1_ASPxPageControl2_txtcorreo_CC" style="font-family: Arial, Helvetica, sans-serif; font-size: 12px; text-align: center;">
                                                                                            <table id="ASPxPageControl1_ASPxPageControl2_txtcorreo" cellpadding="0" cellspacing="0" class="dxeTextBoxSys dxeTextBox just_morado" style="border-collapse: collapse; border: 1px solid rgb(159, 159, 159); cursor: default; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); font-family: Arial, Helvetica, sans-serif; text-align: left; color: rgb(19, 27, 77); font-size: 12px; text-decoration: none; font-weight: normal; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; text-transform: none; margin-bottom: 0px; width: 150px; background-color: white;">
                                                                                                <tr>
                                                                                                    <td class="dxic" style="font-family: Arial, Helvetica, sans-serif; font-size: 0px; text-align: center; width: 142px; padding: 3px 3px 2px; overflow: hidden;">
                                                                                                    <asp:TextBox ID="txtTelefono" runat="server" CssClass="dxeEditArea dxeEditAreaSys"  onkeypress="return isNumberKey(event)" Width="193px" MaxLength="8"></asp:TextBox> 
                                                                                                         </td><td>&nbsp;&nbsp;<img alt="" class="auto-style2" src="imagenes/Error.png" id="errTelefono" style="visibility: hidden" /></td>
                                                                                                    </td>
                                                                                                </tr>
                                                                                            </table>
                                                                                        </td>
                                                                                    </tr>
                                                                                </table>
                                                                            </td>
                                                                        </tr>
                                                                    
                                                                        <tr>
                                                                            <td class="justified_roboto" style="font-family: Roboto; font-size: 12px; text-align: left; color: rgb(19, 27, 77); text-decoration: none; font-weight: normal; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; text-transform: none;">Tipo de Vehiculo:</td>
                                                                        </tr>
                                                                        <tr>
                                                                            <td style="font-family: Arial, Helvetica, sans-serif; font-size: 12px; text-align: left; float:left;">
                                                                                <table id="ASPxPageControl1_ASPxPageControl2_sexo" cellpadding="0" cellspacing="0" class="dxeRadioButtonList auto-style18" style="border: 1px solid rgb(159, 159, 159); font-style: normal; font-variant: normal; font-weight: normal; font-stretch: normal; font-size: 12px; line-height: normal; font-family: Tahoma, Geneva, sans-serif; cursor: default; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); width: auto; height: 15px; border-collapse: separate;">
                                                                                    <tr>
                                                                                        <td class="dxe" style="font-family: Arial, text-align:"left" Helvetica, sans-serif; font-size: 12px; text-align: center; padding: 0px;">
                                                                                            <asp:DropDownList ID="cmbTipoVehiculo" runat="server" Width="215px"></asp:DropDownList>
                                                                                        </td>
                                                                                    </tr>
                                                                                </table>
                                                                            </td>
                                                                        </tr>
                                                                                                                                                <tr>
                                                                            <td class="justified_roboto" style="font-family: Roboto; font-size: 12px; text-align: left; color: rgb(19, 27, 77); text-decoration: none; font-weight: normal; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; text-transform: none;">Marca:</td>
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
                                                                            <td class="justified_roboto" style="font-family: Roboto; font-size: 12px; text-align: left; color: rgb(19, 27, 77); text-decoration: none; font-weight: normal; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; text-transform: none;">Linea:</td>
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
                                                                            <td class="justified_roboto" style="font-family: Roboto; font-size: 12px; text-align: left; color: rgb(19, 27, 77); text-decoration: none; font-weight: normal; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; text-transform: none;">Modelo:</td>
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
                                                                            <td class="justified_roboto" style="font-family: Roboto; font-size: 12px; text-align: left; color: rgb(19, 27, 77); text-decoration: none; font-weight: normal; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; text-transform: none;">
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
                                                                                            <table id="ASPxPageControl1_ASPxPageControl2_txtcorreo" cellpadding="0" cellspacing="0" class="dxeTextBoxSys dxeTextBox just_morado" style="border-collapse: collapse; border: 1px solid rgb(159, 159, 159); cursor: default; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); font-family: Arial, Helvetica, sans-serif; text-align: left; color: rgb(19, 27, 77); font-size: 12px; text-decoration: none; font-weight: normal; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; text-transform: none; margin-bottom: 0px; width: 150px; background-color: white;">
                                                                                                <tr>
                                                                                                    <td class="dxic" style="font-family: Arial, Helvetica, sans-serif; font-size: 0px; text-align: center; width: 142px; padding: 3px 3px 2px; overflow: hidden;">
                                                                                                    <asp:TextBox ID="txtValorMercado" runat="server" CssClass="dxeEditArea dxeEditAreaSys" Width="193px" onkeypress="return isNumberKey(event)"></asp:TextBox> 
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
                                                                                    <td class="justified_roboto" style="font-family: Roboto; font-size: 12px; text-align: left; color: rgb(19, 27, 77); text-decoration: none; font-weight: normal; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; text-transform: none;">
                                                                                        <asp:CheckBox ID="CheckBox1" runat="server" Text="Robo parcial" CssClass="letra" />
                                                                             </td>
                                                                        </tr>
         <tr>
                                                                                    <td class="justified_roboto" style="font-family: Roboto; font-size: 12px; text-align: left; color: rgb(19, 27, 77); text-decoration: none; font-weight: normal; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; text-transform: none;">
                                                                                        <asp:CheckBox ID="CheckBox2" runat="server" Text="Menores. Coberturas desde 16  años" CssClass="letra" />
                                                                             </td>
                                                                        </tr>
         <tr>
                                                                                    <td class="justified_roboto" style="font-family: Roboto; font-size: 12px; text-align: left; color: rgb(19, 27, 77); text-decoration: none; font-weight: normal; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; text-transform: none;">
                                                                                        <asp:CheckBox ID="CheckBox3" runat="server" Text="Menores. Coberturas desde  18 años" CssClass="letra" />   
                                                                             </td>
                                                                        </tr>
         <tr>
                                                                                    <td class="justified_roboto" style="font-family: Roboto; font-size: 12px; text-align: left; color: rgb(19, 27, 77); text-decoration: none; font-weight: normal; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; text-transform: none;">
                                                                                        <asp:CheckBox ID="CheckBox4" runat="server" Text="Exceso de RC.   (ID 5)." CssClass="letra" />
                                                                             </td>
                                                                        </tr>
                 <tr>
                                                                                    <td class="justified_roboto" style="font-family: Roboto; font-size: 12px; text-align: left; color: rgb(19, 27, 77); text-decoration: none; font-weight: normal; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; text-transform: none;">
                                                                                        <a  class="letraTitulo">En qué horario desea ser contactado?</a>
                                                                                       
                                                                                    </td>
                                                                        </tr>
                         <tr>
                                                                                    <td class="justified_roboto" style="font-family: Roboto; font-size: 12px; text-align: left; color: rgb(19, 27, 77); text-decoration: none; font-weight: normal; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; text-transform: none;">
                                                                                        <asp:TextBox ID="txtHora" runat="server"></asp:TextBox>
                                                                                    &nbsp;&nbsp;<img alt="" class="auto-style2" src="imagenes/Error.png" id="errHora" style="visibility: hidden" /></td>
                                                                        </tr>
                                                                        <tr>
                                                                            <td style="font-family: Arial, Helvetica, sans-serif; font-size: 12px; text-align: center;" class="auto-style7"><span id="ASPxPageControl1_ASPxPageControl2_ASPxLabel2" class="dxeBase" style="font-style: normal; font-variant: normal; font-weight: normal; font-stretch: normal; font-size: 12px; line-height: normal; font-family: Tahoma, Geneva, sans-serif;">
                                                                                <table id="ASPxPageControl1_ASPxPageControl2_BtnSiguiente" cellpadding="0" cellspacing="0" style="height: 35px; width: 103px; border-collapse: separate;">
                                                                                    <tr>
                                                                                       <td style="text-align:center"> <asp:Button ID="Button1" runat="server" Text="Cotizar"  BackColor="White" BorderColor="#336699"  BorderStyle="Solid" BorderWidth="1px" Height="100%" Width="100%" OnClick="Button1_Click" CssClass="btn" />         </td>
                                                                                     
                                                                                    </tr>
                                                                                </table>
                                                                                                                                                                        </span></td>
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
            EsconderMonto();
 

        });

        function EsconderMonto() {
            document.getElementById("Monto").style.display = "none";
            document.getElementById("Monto1").style.display = "none";
            document.getElementById("Monto").style.visibility = "hidden";
            document.getElementById("Monto1").style.visibility = "hidden";

            document.getElementById("rdSeguroCompleto").checked = false;
            focument.getElementById("rdResponsabilidadCivil").checked = true;
            ApagarFocoRd();

        }
        function MostrarMonto() {
            document.getElementById("Monto").style.display = "inline";
            document.getElementById("Monto1").style.display = "inline";
            document.getElementById("Monto").style.visibility = "visible";
            document.getElementById("Monto1").style.visibility = "visible";
            document.getElementById("rdSeguroCompleto").checked = true;
            document.getElementById("rdResponsabilidadCivil").checked = false;
            ApagarFocoRd();
        }
        function ApagarFocoRd(){
            document.getElementById("errDañosATerceros").style.visibility = "hidden";
            document.getElementById("errResponsabilidadCivil").style.visibility = "hidden";
        }
        function LlenarFecha() {
            var ver = document.getElementById("nacimiento").value;
            alert(ver);
            $("#HiddenField1").val(ver);
        }
    </script>
</body>
</html>
