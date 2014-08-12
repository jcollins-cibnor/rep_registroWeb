<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ConsultaAniv.aspx.cs" Inherits="ConsultaAniv" %>

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
                <td style="width:160px; text-align: center;">
                    <asp:Image ID="Image1" runat="server" 
                        Height="80px" ImageUrl="~/Images/logo_38aniv.png" /></td>
                <td style="width:480px; text-align:center; font-size: 10pt; font-family: Arial; font-weight: bold;">
                    <asp:Label ID="lblTituloEvento" runat="server" Font-Bold="False" 
                        Font-Names="Verdana" Font-Size="14pt" 
                        Text="Actividades del 38 Aniversario del CIBNOR"></asp:Label>
                    <br />
                    <br />
                    <asp:Label ID="lblRegistroEnLinea" runat="server" Font-Bold="False" Font-Names="Verdana" 
                        Font-Size="10pt" Text="Consulta de Registros"></asp:Label>
                </td>
            </tr>
        </table>

        <asp:ScriptManager ID="ScriptManager1" runat="server">
        </asp:ScriptManager>

        <asp:SqlDataSource ID="SqlDSaniv" runat="server" 
            ConnectionString="<%$ ConnectionStrings:REGWEBConnectionString %>"></asp:SqlDataSource>


        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>        

            <asp:Label ID="lblVisualizar" runat="server" Font-Bold="True" 
                Font-Names="Verdana" Font-Size="12pt">Selecciona el registro que desees 
            visualizar</asp:Label>

            <asp:RadioButtonList ID="rblRegistros" runat="server" AutoPostBack="True" 
                Font-Names="Verdana" onselectedindexchanged="rblRegistros_SelectedIndexChanged" 
                RepeatDirection="Horizontal" Width="80%">
                <asp:ListItem>Equipos</asp:ListItem>
                <asp:ListItem>Individual</asp:ListItem>
                <asp:ListItem>Paseo</asp:ListItem>
                <asp:ListItem>Voleibol</asp:ListItem>
                <asp:ListItem>ATV</asp:ListItem>
                <asp:ListItem Value="Taller">Taller Fondos CONACyT</asp:ListItem>
            </asp:RadioButtonList>

            <asp:Label ID="lblTest" runat="server"></asp:Label>
            <br />

        <asp:GridView ID="GVaniv" runat="server" AutoGenerateColumns="True" 
            CellPadding="4" DataKeyNames="id" DataSourceID="SqlDSaniv" ForeColor="#333333" 
            GridLines="None" Font-Size="8pt" HorizontalAlign="Center">
            <AlternatingRowStyle BackColor="White" />
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
        <asp:Button ID="btnExportar" runat="server" onclick="btnExportar_Click" 
        Text="Exportar tabla a Excel" />
    </div>
    </form>
</body>
</html>
