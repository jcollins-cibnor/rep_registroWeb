<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ErrorIdentificado.aspx.cs" Inherits="ErrorIdentificado" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>CIBNOR</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <br />
        <table width="80%" align="center">
            <tr>
                <td style="text-align:left;">
                    <asp:Image ID="Image1" runat="server" Height="50px" 
                        ImageUrl="~/images/cibreg.png" />
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>
                    <hr width="100%" noshade="noshade" size="0" />
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Names="Verdana" 
                        Font-Size="24px" Text="Ups!"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label3" runat="server" Font-Bold="False" Font-Names="Verdana" Font-Size="12px"                         
                        Text = "El servidor ha encontrado un error temporal y no puede completar su solicitud. Por favor, vuelva a intentarlo en unos minutos. Esto es importante para nosotros y lo resolveremos lo mas pronto posible."></asp:Label>                                
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>
                    <hr width="100%" noshade="noshade" size="0" />
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
            </tr>
        </table>    
    </div>
    </form>
</body>
</html>
