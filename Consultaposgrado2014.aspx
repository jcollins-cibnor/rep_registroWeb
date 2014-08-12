<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Consultaposgrado2014.aspx.cs" Inherits="Consultaposgrado2014" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
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
                <td style="width:30%; text-align: center;">
                    <asp:Image ID="Image4" runat="server" 
                        Height="65px" ImageUrl="~/Images/ciboficial.gif" /></td>
                <td style="width:40%; text-align:center;">
                    <asp:Image ID="Image5" runat="server" Height="65px" 
                        ImageUrl="~/Images/logo_cicimar.jpg" />
                </td>
                <td style="width:30%; text-align:center;">
                    <asp:Image ID="Image6" runat="server" Height="65px" 
                        ImageUrl="~/Images/logo_uabcs.jpg" />
                </td>
            </tr>
            <tr>
                <td colspan="3" style="text-align:center">
                    <asp:Label ID="lblTituloEvento" runat="server" Font-Bold="True" 
                        Font-Names="Verdana" Font-Size="10pt" 
                        Text="XIV Semana del Posgrado en Baja California Sur"></asp:Label>
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
            SelectCommand="SELECT * FROM [Posgrado2014] ORDER BY [institucion]"></asp:SqlDataSource>


        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>        

            <asp:Label ID="lblTest" runat="server"></asp:Label>
            <br />

        <asp:GridView ID="GVregistros" runat="server" AutoGenerateColumns="False" 
            CellPadding="4" DataKeyNames="id" DataSourceID="SqlDSregistros" ForeColor="#333333" 
            GridLines="None" Font-Size="8pt" HorizontalAlign="Center" 
            AllowSorting="True" onselectedindexchanged="GVregistros_SelectedIndexChanged" 
                PageSize="30">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:BoundField DataField="id" HeaderText="id" InsertVisible="False" 
                    ReadOnly="True" SortExpression="id" Visible="False" />
                <asp:CommandField SelectText="Ver Resumen" ShowSelectButton="True" />
                <asp:BoundField DataField="nombre" HeaderText="NOMBRE COMPLETO" 
                    SortExpression="nombre" />
                <asp:BoundField DataField="correo" HeaderText="CORREO" 
                    SortExpression="correo" />
                <asp:BoundField DataField="programa" HeaderText="PROGRAMA" 
                    SortExpression="programa" />
                <asp:BoundField DataField="institucion" HeaderText="INSTITUCION" 
                    SortExpression="institucion" />
                <asp:BoundField DataField="nivel" HeaderText="NIVEL" 
                    SortExpression="nivel" />
                <asp:BoundField DataField="modalidad" HeaderText="MODALIDAD" 
                    SortExpression="modalidad" />
                <asp:BoundField DataField="periodo" HeaderText="PERIODO" 
                    SortExpression="periodo" />
                <asp:BoundField DataField="titulo" HeaderText="TITULO DEL TRABAJO" 
                    SortExpression="titulo" />
                <asp:BoundField DataField="area" HeaderText="AREA" 
                    SortExpression="area" />
                <asp:BoundField DataField="fecharegistro" HeaderText="fecharegistro" 
                    SortExpression="fecharegistro" Visible="False" />
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
        Text="Exportar a Excel" />
    </div>
    </form>
</body>
</html>
