<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ConsultaSMCS.aspx.cs" Inherits="ConsultaSMCS" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Congreso SMCS - Consulta de registros</title>
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
                        Height="70px" ImageUrl="~/Images/logo_SMCS.png" /></td>
                <td style="width:480px; text-align:center; font-size: 10pt; font-family: Arial; font-weight: bold;">
                    <asp:Label ID="lblTituloEvento" runat="server" Font-Bold="True" 
                        Font-Names="Verdana" Font-Size="10pt" 
                        Text="Congreso de la Sociedad Mexicana de la Ciencia del Suelo"></asp:Label>
                    <br />
                    <br />
                    <asp:Label ID="lblRegistroEnLinea" runat="server" Font-Bold="False" Font-Names="Verdana" 
                        Font-Size="10pt" Text="Consulta de Registros"></asp:Label>
                </td>
                <td style="width:160px; text-align: center;">
                    <asp:Image ID="Image2" runat="server" Height="50px" 
                        ImageUrl="~/images/ciboficial.gif" />
                </td>
            </tr>
        </table>

        <asp:ScriptManager ID="ScriptManager1" runat="server">
        </asp:ScriptManager>

        <asp:SqlDataSource ID="SqlDSsmcs" runat="server" 
            ConnectionString="<%$ ConnectionStrings:REGWEBConnectionString %>" 
            SelectCommand="SELECT * FROM [smcs2013]"></asp:SqlDataSource>


        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>        

            <asp:Label ID="lblTest" runat="server"></asp:Label>
            <br />

        <asp:GridView ID="GVsmcs" runat="server" AutoGenerateColumns="False" 
            CellPadding="4" DataKeyNames="id" DataSourceID="SqlDSsmcs" ForeColor="#333333" 
            GridLines="None" Font-Size="8pt" HorizontalAlign="Center" AllowPaging="True" 
                onselectedindexchanged="GVsmcs_SelectedIndexChanged" AllowSorting="True">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:CommandField ShowSelectButton="True" SelectText="Ver comprobante" />
                <asp:BoundField DataField="id" HeaderText="id" InsertVisible="False" 
                    ReadOnly="True" SortExpression="id" Visible="False" />
                <asp:BoundField DataField="nombres" HeaderText="Nombre(s)" 
                    SortExpression="nombres" />
                <asp:BoundField DataField="apellidos" HeaderText="Apellido(s)" 
                    SortExpression="apellidos" />
                <asp:BoundField DataField="correo" HeaderText="Correo" 
                    SortExpression="correo" />
                <asp:BoundField DataField="telefono" HeaderText="Telefono" 
                    SortExpression="telefono" />
                <asp:BoundField DataField="institucion" HeaderText="Institucion" 
                    SortExpression="institucion" />
                <asp:BoundField DataField="tipoRegistro" HeaderText="Tipo de registro" 
                    SortExpression="tipoRegistro" />
                <asp:BoundField DataField="titulo" HeaderText="Titulo del trabajo" 
                    SortExpression="titulo" />
                <asp:BoundField DataField="autores" HeaderText="Autores" 
                    SortExpression="autores" Visible="False" />
                <asp:BoundField DataField="modalidad" HeaderText="Modalidad" 
                    SortExpression="modalidad" />
                <asp:BoundField DataField="tipoSesion" HeaderText="Sesion" 
                    SortExpression="tipoSesion" />
                <asp:BoundField DataField="divisionSimposio" HeaderText="Opcion" 
                    SortExpression="divisionSimposio" />
                <asp:BoundField DataField="comentarios" HeaderText="Comentarios adicionales" 
                    SortExpression="comentarios" />
                <asp:BoundField DataField="factura" HeaderText="Factura" 
                    SortExpression="factura" />
                <asp:BoundField DataField="facturaNombre" HeaderText="Nombre a facturar" 
                    SortExpression="facturaNombre" />
                <asp:BoundField DataField="facturaRFC" HeaderText="RFC" 
                    SortExpression="facturaRFC" />
                <asp:BoundField DataField="facturaDireccion" HeaderText="Domicilo fiscal" 
                    SortExpression="facturaDireccion" />
            </Columns>
            <EditRowStyle BackColor="#2461BF" />
            <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#EFF3FB" />
            <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
<%--            <SortedAscendingCellStyle BackColor="#F5F7FB" />--%>
<%--            <SortedAscendingHeaderStyle BackColor="#6D95E1" />
            <SortedDescendingCellStyle BackColor="#E9EBEF" />
            <SortedDescendingHeaderStyle BackColor="#4870BE" />--%>
        </asp:GridView>

            <asp:Button ID="btnMostrar" runat="server" onclick="btnMostrar_Click" 
                Text="Mostrar comprobante" Visible="False" />

        </ContentTemplate>
        </asp:UpdatePanel>
    
    </div>
    <div>
        <asp:Button ID="btnExportar" runat="server" onclick="btnExportar_Click" 
        Text="Exportar tabla a Excel" />
    </div>
    </form>
</body>
</html>
