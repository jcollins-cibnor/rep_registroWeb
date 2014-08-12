<%@ Page Language="C#" AutoEventWireup="true" CodeFile="EditarRegistros.aspx.cs" Inherits="EditarRegistros" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>    
        <asp:ScriptManager ID="ScriptManager1" runat="server">
        </asp:ScriptManager>

        <asp:DropDownList ID="ddlEventos" runat="server" AutoPostBack="True" 
            onselectedindexchanged="ddlEventos_SelectedIndexChanged">
            <asp:ListItem Value="0">Seleccionar una opcion...</asp:ListItem>
            <asp:ListItem>anivequipos</asp:ListItem>            
            <asp:ListItem>anivpesca</asp:ListItem>            
            <asp:ListItem>registroWeb</asp:ListItem>
            <asp:ListItem>oxidativestress2012</asp:ListItem>
        </asp:DropDownList>

        <asp:SqlDataSource ID="SqlDSRegistros" runat="server" 
            ConnectionString="<%$ ConnectionStrings:REGWEBConnectionString %>" 
            
            ProviderName="<%$ ConnectionStrings:REGWEBConnectionString.ProviderName %>">
        </asp:SqlDataSource>

        <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
    </div>
    <div style=" text-align:center;">
        <asp:UpdatePanel ID="upnlRegistros" runat="server">
        <ContentTemplate>

        <table style="border:0; width:500pt; font-size: 8pt;">
            <tr>
                <td style=" width:100%;">
                    <asp:GridView ID="grvRegistros"  runat="server" 
                        DataSourceID="SqlDSRegistros" BackColor="White" BorderColor="#3366CC" 
                        BorderStyle="None" BorderWidth="1px" CellPadding="4" 
                        onselectedindexchanged="grvRegistros_SelectedIndexChanged">
                        <RowStyle BackColor="White" ForeColor="#003399" Font-Names="Arial" 
                            Font-Size="9pt" />
                        <Columns>
                            <asp:CommandField ShowSelectButton="True" />
                        </Columns>
                        <FooterStyle BackColor="#99CCCC" ForeColor="#003399" />
                        <PagerStyle BackColor="#99CCCC" ForeColor="#003399" HorizontalAlign="Left" />
                        <SelectedRowStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
                        <HeaderStyle BackColor="White" Font-Bold="True" ForeColor="Black" 
                            Font-Names="Arial" Font-Size="9pt" />
                    </asp:GridView>
                    <asp:SqlDataSource ID="SqlDSRegistrosEditar" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:REGWEBConnectionString %>" 
                        ProviderName="<%$ ConnectionStrings:REGWEBConnectionString.ProviderName %>">
                    </asp:SqlDataSource>
                    <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateEditButton="True" 
                        DataSourceID="SqlDSRegistrosEditar" DefaultMode="Edit" Height="50px" 
                        Width="125px">
                    </asp:DetailsView>
                </td>
            </tr>
        </table>

        </ContentTemplate>
        </asp:UpdatePanel>
    </div>


    <br />
    <br />
    QUEDA PENDIENTE PARA CUANDO TENGA MAS TIEMPO...<br />
    </form>
</body>
</html>
