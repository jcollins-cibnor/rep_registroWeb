<%@ Page Language="C#" AutoEventWireup="true" CodeFile="RegistroOk.aspx.cs" Inherits="RegistroOk" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>CIBNOR - Registro en Línea</title>
    <style type="text/css">
        .style1
        {
            height: 23px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div align="center">
    
    <div align="center">    
        <table style="font-family: Verdana; font-size: 11pt; width:650pt;">
            <tr>
                <td style="width:30%; text-align:center;">
                    <asp:Image ID="imgLogo1" runat="server" Height="60px" />&nbsp;<asp:Image 
                        ID="imgLogo2" runat="server" Height="50px" Visible="False" /></td>
                <td style="width:40%; text-align:center; font-size: 10pt; font-family: Arial; font-weight: bold;">
                    <asp:Image ID="imgLogoCentral" runat="server" Height="60px" Visible="False" 
                            ImageUrl="~/Images/logo_cpi2013.png" />
                    <br />
                    <asp:Label ID="lblTituloEvento" runat="server" Text="Titulo del Evento" 
                            Font-Names="Verdana" Font-Size="10pt"></asp:Label>
                </td>
                <td  style="width:30%; text-align:center;">
                    <asp:Image ID="imgLogo3" runat="server" ImageUrl="~/images/ciboficial.gif" 
                        Height="60px" />
                    <asp:Image ID="imgLogo4" runat="server" Height="40px" Visible="False" />&nbsp;</td>
            </tr>
        </table>
        <br />
    </div>
    
        <table style="width: 80%; font-family: Verdana; font-size: 11pt;">
            <tr>
                <td style="width:10%" class="style1">
                    </td>
                <td style="text-align:center" class="style1">
    
                    <br />
                    <br />
    
                    <br />
                </td>
                <td  style="width:10%" class="style1">
                    </td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
                <td style="text-align:center">
        Gracias por su interes en nuestro evento.<br />
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
                <td style="text-align:center">
                    <br />
                    Su solicitud de registro fue enviada al Comité Organizador.<br />
        Una copia del mismo ha sido enviada al correo electrónico registrado.<br />
                    <br />
                    Si desea regresar a la pagina del evento, presione el boton &quot;Ok&quot;.<br />
                    En caso contrario, solamente cierre esta ventana.<br />
                    <br />
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
                <td style="text-align:center">
                        <hr noshade="noshade" size="1" width="100%" />
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
                <td style="text-align:center">
                    Thank you for your interest in our event.<br />
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
                <td style="text-align:center">
                    <br />
                    Your registration application was sent to the Organizing Committee.<br />
                    A copy of this application has also been sent to the registered electonic mail.<br />
                    <br />
                    If you wish to go back to the home page of the event, click on &quot;Ok&quot;.<br />
                    If not, only close this window.<br />
                    <br />
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
                <td style="text-align:center">
                    <br />
                    <asp:Button ID="btnAceptar" runat="server" Text="Ok" Width="100px" />
                </td>
                <td>
                    &nbsp;</td>
            </tr>
        </table>
        <br />
        <br />
        <br />
        <br />
        <br />
        </div>
    </form>
</body>
</html>
