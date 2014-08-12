<%@ Page Language="C#" AutoEventWireup="true" CodeFile="constanciasAdministradores2014.aspx.cs" Inherits="constanciasAdministradores2014" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>Administradores2014 - Descarga de constancias</title>
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
                <td style="width:160px; text-align: center;">
                    <asp:Image ID="Image1" runat="server" 
                        Height="65px" ImageUrl="~/Images/logo_mexicoPresidencia.png" /></td>
                <td style="width:480px; text-align:center; font-size: 10pt; font-family: Arial; font-weight: bold;">
                    
                    <asp:Image ID="Image5" runat="server" Height="65px" 
                        ImageUrl="~/Images/logo_administradores2014.png" />
                    
                </td>
                <td style="width:160px; text-align: center;">
                    <asp:Image ID="Image6" runat="server" Height="65px" 
                        ImageUrl="~/Images/logo_conacyt.jpg" />
                </td>
            </tr>
            <tr>
                <td style="width:160px; text-align: center;">
                    &nbsp;</td>
                <td style="width:480px; text-align:center; font-size: 10pt; font-family: Arial; font-weight: bold;">
                    <asp:Label ID="lblTituloEvento" runat="server" Font-Bold="True" 
                        Font-Names="Verdana" Font-Size="10pt"></asp:Label>
                    <br />
                    <br />
                    <asp:Label ID="lblRegistroEnLinea" runat="server" Font-Bold="False" Font-Names="Verdana" 
                        Font-Size="10pt" Text="Descarga de constancias de participación"></asp:Label>
                </td>
                <td style="width:160px; text-align: center;">
                    &nbsp;</td>
            </tr>
        </table>

        <asp:ScriptManager ID="ScriptManager1" runat="server">
        </asp:ScriptManager>

        <asp:SqlDataSource ID="SqlDSconstancias" runat="server" 
            ConnectionString="<%$ ConnectionStrings:REGWEBConnectionString %>" 
            
            
            SelectCommand="SELECT * FROM [administradores2014constancias] ORDER BY [apellidos]"></asp:SqlDataSource>


        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>        
<%--            <table style="border:0; width:500pt;  font-size: 8pt;">
                <tr>
                    <td colspan="2" style="text-align:left;">
                        <p style=" font-size:10pt; font-weight:bold; font:Verdana;">
                            1. Selecciona el registro al cual le vas a subir su constancia.<br />
                            2. Presiona el boton "Examinar" y busca el archivo en tu equipo.<br />
                            3. Presiona "Subir contancia" para cargarlo en el servidor, si ya existia un archivo este se sobreescribira.
                        </p>
                    </td>
                </tr>
                <tr>
                    <td style="text-align:center; width:400pt;">
                        &nbsp;
                        <asp:Label ID="lblStatusArchivo" runat="server" Font-Names="Verdana" 
                            Font-Size="8pt" Visible="False" Font-Bold="True" ForeColor="Blue"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td style="text-align: center">
                        <asp:FileUpload ID="fuConstancia" runat="server" Font-Names="Arial" 
                            Font-Size="9pt" Width="360px" />
                        <asp:Button ID="btnConstancia" runat="server" Font-Names="Arial" Font-Size="8pt" 
                            Height="20px" Text="Subir constancia" />
                    </td>
                </tr>
            </table>
--%>
            <asp:Label ID="lblTest" runat="server"></asp:Label>
            <br />

        <asp:GridView ID="GVconstancias" runat="server" AutoGenerateColumns="False" 
            CellPadding="4" DataKeyNames="id" DataSourceID="SqlDSconstancias" ForeColor="#333333" 
            GridLines="None" Font-Size="8pt" HorizontalAlign="Center" AllowSorting="True" 
                onselectedindexchanged="GVconstancias_SelectedIndexChanged" Width="500pt">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:CommandField SelectText="Mostrar" ShowSelectButton="True" />
                <asp:BoundField DataField="id" HeaderText="id" InsertVisible="False" 
                    ReadOnly="True" SortExpression="id" Visible="False" />
                <asp:BoundField DataField="nombres" HeaderText="NOMBRE(S)" 
                    SortExpression="nombres" />
                <asp:BoundField DataField="apellidos" HeaderText="APELLIDO(S)" 
                    SortExpression="apellidos" />
                <asp:BoundField DataField="nombrearchivo" HeaderText="NOMBRE DE LA CONSTANCIA" 
                    SortExpression="nombrearchivo" >
                <ItemStyle HorizontalAlign="Center" />
                </asp:BoundField>
            </Columns>
            <EditRowStyle BackColor="#2461BF" />
            <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#EFF3FB" />
            <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
        </asp:GridView>

        </ContentTemplate>
        </asp:UpdatePanel>
    
    </div>
    <div>
    </div>
    </form>
</body>
</html>
