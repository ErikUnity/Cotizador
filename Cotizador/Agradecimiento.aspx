<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Agradecimiento.aspx.cs" Inherits="Cotizador.Agradecimiento" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
      <meta name="viewport" content="width=device-width,height=device-height,initial-scale=1.0"/>
    <title></title>
    <style>
        #Panel1{
             background-size:contain;
            background-attachment: fixed; 
            Height:800px;
            Width:900px;
            background-image: url(http://testcotizador.unitypromotores.com/Cotizador/imagenes/Agradecimiento.jpg); background-attachment: fixed; background-repeat: no-repeat;
        }

        @media screen and (max-device-height: 150px){
         #Panel1{
            background-size:contain;
            Height:2600px;
            Width:1800px;
            background-attachment: fixed; 
            background-image: url(http://testcotizador.unitypromotores.com/Cotizador/imagenes/Agradecimiento.jpg); background-attachment: fixed; background-repeat: no-repeat;
        }

        body {
           zoom:200%;
        }
 }

    </style>
    </head>
<body>
    <form id="form1" runat="server">
         <asp:Panel ID="Panel1" runat="server" >
             
 
            <asp:Panel ID="Panel3" runat="server" Style="position: absolute; top: 655px; left: 271px;
                width: 216px; height: 38px;  margin-left: 0px;" ForeColor="White">
                <asp:Label ID="lblCorreo" runat="server" Font-Bold="True" Font-Names="Candara" Font-Size="X-Large" ForeColor="White" Text="Correo"></asp:Label>
            </asp:Panel>
                <asp:Panel ID="Panel2" runat="server" Style="position: absolute; top: 765px; left: 278px;
                width: 216px; height: 38px;  margin-left: 0px;" ForeColor="White">
                <asp:Label ID="lblTelefono" runat="server" Font-Bold="True" Font-Names="Candara" Font-Size="X-Large" ForeColor="White" Text="Telefono"></asp:Label>
            </asp:Panel>
         </asp:Panel>
    </form>
 
</body>
</html>
