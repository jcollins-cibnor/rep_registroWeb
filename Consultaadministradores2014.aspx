<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Consultaadministradores2014.aspx.cs" Inherits="Consultaadministradores2014" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>Administradores CPIs 2014 - Consulta de registros</title>
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
                    <asp:Image ID="Image4" runat="server" 
                        Height="65px" ImageUrl="~/Images/logo_mexicoPresidencia.png" /></td>
                <td style="width:40%; text-align:center;">
                    <asp:Image ID="Image5" runat="server" Height="65px" 
                        ImageUrl="~/Images/logo_administradores2014.png" />
                </td>
                <td style="width:30%; text-align:center;">
                    <asp:Image ID="Image6" runat="server" Height="65px" 
                        ImageUrl="~/Images/logo_conacyt.jpg" />
                </td>
            </tr>
            <tr>
                <td colspan="3" style="text-align:center">
                    <asp:Label ID="lblTituloEvento" runat="server" Font-Bold="True" 
                        Font-Names="Verdana" Font-Size="10pt"></asp:Label>
                    <br />
                    <asp:Label ID="lblRegistroEnLinea" runat="server" Font-Bold="False" Font-Names="Verdana" 
                        Font-Size="10pt" Text="Consulta de Registros"></asp:Label>
                </td>
            </tr>
        </table>

        <asp:ScriptManager ID="ScriptManager1" runat="server">
        </asp:ScriptManager>

        <asp:SqlDataSource ID="SqlDSregistros" runat="server" 
            ConnectionString="<%$ ConnectionStrings:REGWEBConnectionString %>" 
            SelectCommand="SELECT * FROM [administradores2014] ORDER BY [apellidos]"></asp:SqlDataSource>


        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>        

            <asp:Label ID="lblTest" runat="server"></asp:Label>
            <br />

        <asp:GridView ID="GVregistros" runat="server" AutoGenerateColumns="False" 
            CellPadding="4" DataKeyNames="id" DataSourceID="SqlDSregistros" ForeColor="#333333" 
            GridLines="None" Font-Size="8pt" HorizontalAlign="Center" 
            AllowSorting="True" PageSize="30">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:BoundField DataField="id" HeaderText="id" InsertVisible="False" 
                    ReadOnly="True" SortExpression="id" Visible="False" />
                <asp:BoundField DataField="nombres" HeaderText="Nombre(s)" 
                    SortExpression="nombres" />
                <asp:BoundField DataField="apellidos" HeaderText="Apellido(s)" 
                    SortExpression="apellidos" />
                <asp:BoundField DataField="correo" HeaderText="Correo" 
                    SortExpression="correo" />
                <asp:BoundField DataField="institucion" HeaderText="Institucion" 
                    SortExpression="institucion" />
                <asp:BoundField DataField="talleres" HeaderText="Talleres a participar" 
                    SortExpression="talleres" />
                <asp:BoundField DataField="hotel" HeaderText="Hotel" 
                    SortExpression="hotel" />
                <asp:BoundField DataField="comentarios" HeaderText="Comentarios" 
                    SortExpression="comentarios" />
                <asp:BoundField DataField="registrovalido" HeaderText="registrovalido" 
                    SortExpression="registrovalido" Visible="False" />
                <asp:BoundField DataField="registrofecha" HeaderText="registrofecha" 
                    SortExpression="registrofecha" Visible="False" />
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
        <%--<asp:Button ID="btnExportar" runat="server" onclick="btnExportar_Click" 
        Text="Exportar tabla a Excel" />--%>
        <asp:Button ID="btnExportar" runat="server" onclick="btnExportar_Click" 
        Text="Exportar a Excel" style="height: 26px" />
    </div>
    </form>
</body>
</html>
