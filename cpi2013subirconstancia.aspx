<%@ Page Language="C#" AutoEventWireup="true" CodeFile="cpi2013subirconstancia.aspx.cs" Inherits="cpi2013subirconstancia" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>Reunion CPIs | Subir constancias</title>
    <%--    <script type="text/javascript" language="JavaScript">
            function abrirVentana(popup) {
                open(popup, null, "Height=600, Width=720, Top=50, Left=100, scrollbars=yes, toolbar=no, location=no, directories=no, menubar=no, status=no");
            } 
    </script>
--%>
</head>
<body>
    <form id="form1" runat="server">
    <div align="center">
    
        <table style="font-family: Verdana; width:500pt;">
            <tr>
                <td style="width:30%; text-align: center;">
                    <asp:Image ID="Image1" runat="server" 
                        Height="65px" ImageUrl="~/Images/logo_GobRepublicaFull.png" /></td>
                <td style="width:40%; text-align:center;">
                    <asp:Image ID="Image2" runat="server" Height="60px" 
                        ImageUrl="~/Images/logo_cpi2013.png" />
                </td>
                <td style="width:30%; text-align:center;">
                    <asp:Image ID="Image3" runat="server" Height="65px" 
                        ImageUrl="~/Images/logo_conacytFull.png" />
                </td>
            </tr>
        </table>

        <asp:ScriptManager ID="ScriptManager1" runat="server">
        </asp:ScriptManager>

        <asp:SqlDataSource ID="SqlDScpi2013" runat="server" 
            ConnectionString="<%$ ConnectionStrings:REGWEBConnectionString %>" 
            SelectCommand="SELECT * FROM [cpi2013]"></asp:SqlDataSource>

        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>
            <asp:Label ID="lblTest" runat="server" Font-Bold="True" Font-Names="Verdana" 
                Font-Size="8pt" ForeColor="Blue"></asp:Label>

            <asp:Panel ID="pnlPago" runat="server">

            <table style="border:0; width:500pt;">
                <tr>
                    <td colspan="3" style="text-align:center;">
                        <asp:Label ID="lblRegistroEnLinea" runat="server" Font-Bold="True" Font-Names="Verdana" 
                            Font-Size="10pt" Text="Instrucciones para subir una constancia"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td colspan="3" style="text-align:left;">
                        <p style="font-size:8pt; font-family:Verdana;">
                            1. Teclear el correo electronico del participante.<br />
                            2. Clic en "Examinar" y busca el archivo en el equipo.<br />
                            3. Presionar "Adjuntar" para cargarlo en el servidor.<br />
                            -- Si ya existe un archivo relacionado con el correo indicado, este se sobreescribira.<br />
                            4. Presionar "Enviar por correo electronico". Listo.
                        </p>
                    </td>
                </tr>
                <tr>
                    <td style="text-align:right; font-family: Verdana">
                        <asp:Label ID="lblCorreo" runat="server" Font-Bold="False" Font-Names="Verdana" 
                            Font-Size="8pt" Text="Correo electrónico:"></asp:Label>
                    </td>
                    <td style="text-align: left">
                        <asp:TextBox ID="txtCorreo" runat="server" Font-Size="8pt" 
                            MaxLength="50" Width="240px" ></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                            ControlToValidate="txtCorreo" Font-Bold="True" 
                            SetFocusOnError="True" ForeColor="Red">*</asp:RequiredFieldValidator>
                    </td>
                    <td style="text-align: left"> 
                        <asp:RegularExpressionValidator ID="valRegExCorreo" runat="server" 
                            ControlToValidate="txtCorreo" Display="Static" Font-Names="Arial" 
                            Font-Size="8pt" ForeColor="Red" SetFocusOnError="True" 
                            ValidationExpression="^([\w-\.]+)@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.)|(([\w-]+\.)+))([a-zA-Z]{2,4}|[0-9]{1,3})(\]?)$">Formato: correo@servidor.dominio</asp:RegularExpressionValidator>
                    </td>
                </tr>
            </table>

            </asp:Panel>

        </ContentTemplate>
        </asp:UpdatePanel>
    
    <table style="border:0; width:500pt;">
        <tr>
            <td style="text-align:center;">
                &nbsp;
                <asp:Label ID="lblStatusArchivo" runat="server" Font-Names="Verdana" 
                    Font-Size="8pt" Font-Bold="True" ForeColor="Blue"></asp:Label>
            </td>
        </tr>
        <tr>
            <td style="text-align: center">
                <asp:FileUpload ID="fuConstancia" runat="server" Font-Names="Arial" 
                    Font-Size="8pt" Width="360px" />
                <asp:Button ID="btnAdjuntarConstancia" runat="server" Font-Names="Arial" Font-Size="8pt" 
                    Height="20px" Text="Adjuntar" onclick="btnAdjuntarConstancia_Click" />
            </td>
        </tr>
        <tr>
            <td>
                <hr noshade="noshade" size="0" width="100%" /> <!-- divisor -->
            </td>
        </tr>
        <tr>
            <td>
                <asp:Button ID="btnEnviar" runat="server" Text="Enviar por correo electronico" 
                    Font-Bold="True" Font-Names="Arial" Font-Size="8pt" onclick="btnEnviar_Click" />
            </td>
        </tr>
    </table>

    </div>
    </form>
</body>
</html>
