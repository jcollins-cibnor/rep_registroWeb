<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ConsultaGeneral.aspx.cs" Inherits="ConsultaGeneral" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Consulta General de Registros</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:DropDownList ID="ddlEventos" runat="server" AutoPostBack="True" 
            onselectedindexchanged="ddlEventos_SelectedIndexChanged">
            <asp:ListItem Value="0">Seleccionar una opcion...</asp:ListItem>
            <asp:ListItem>pace2014</asp:ListItem>
            <asp:ListItem>microscopia2014</asp:ListItem>
<%--            <asp:ListItem>registroWeb</asp:ListItem>
            <asp:ListItem>consultivo</asp:ListItem>
            <asp:ListItem>statistical2013</asp:ListItem>--%>
            <asp:ListItem>microalgas2014</asp:ListItem>
<%--            <asp:ListItem>pesquerias2013</asp:ListItem>
            <asp:ListItem>smcs-congreso2013</asp:ListItem>
            <asp:ListItem>secuencias2013</asp:ListItem>
            <asp:ListItem>cpi2013</asp:ListItem>
            <asp:ListItem>cpi2013mpd</asp:ListItem>--%>
            <asp:ListItem>cari2014</asp:ListItem>
            <asp:ListItem>filogeografia2014</asp:ListItem>
            <asp:ListItem>posgrado2014</asp:ListItem>
            <asp:ListItem>expociencias2014</asp:ListItem>
            <asp:ListItem>ogmforo2014</asp:ListItem>
            <asp:ListItem>ott2014</asp:ListItem>
            <asp:ListItem>desertfishes2014</asp:ListItem>
            <asp:ListItem>administradores2014</asp:ListItem>
            <asp:ListItem>cultivos2014</asp:ListItem>
        </asp:DropDownList>

    &nbsp;
        <asp:Button ID="btnExportar" runat="server" onclick="btnExportar_Click" 
            Text="Exportar a Excel" Enabled="False" />
        <br />
    
    </div>

    <asp:GridView ID="grvConsulta" runat="server" 
        DataSourceID="SqlDSgeneral" BackColor="White" BorderColor="#3366CC" 
        BorderStyle="None" BorderWidth="1px" CellPadding="4">
        <RowStyle BackColor="White" ForeColor="#003399" Font-Names="Arial" 
            Font-Size="9pt" />
        <FooterStyle BackColor="#99CCCC" ForeColor="#003399" />
        <PagerStyle BackColor="#99CCCC" ForeColor="#003399" HorizontalAlign="Left" />
        <SelectedRowStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
        <HeaderStyle BackColor="White" Font-Bold="True" ForeColor="Black" 
            Font-Names="Arial" Font-Size="9pt" />
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDSgeneral" runat="server" 
        ConnectionString="<%$ ConnectionStrings:REGWEBConnectionString %>"        
        ProviderName="<%$ ConnectionStrings:REGWEBConnectionString.ProviderName %>">        
    </asp:SqlDataSource>

    <br />
    <br />
    <br />
    </form>
</body>
</html>
