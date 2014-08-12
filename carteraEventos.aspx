<%@ Page Language="C#" AutoEventWireup="true" CodeFile="carteraEventos.aspx.cs" Inherits="carteraEventos" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
     <form id="form1" runat="server">
    <div>    
        <br />            
        <table style="width:90%;" align="center">            
            <tr align="center">
                <td>
                    <br />
                    <asp:Image ID="Image3" runat="server" Height="50px" 
                        ImageUrl="~/images/microscopia.png" Visible="False" />
                </td>
                <td>
                    <asp:HyperLink ID="HyperLink2" runat="server" Font-Names="Verdana" 
                        Font-Size="8pt" 
                        
                        
                        NavigateUrl="http://intranet.cibnor.mx/eplant1.php?pagID=anuncios/microscopia2011/index" 
                        Target="_top" Visible="False">CURSO BÁSICO DE MICROSCOPÍA ELECTRÓNICA DE BARRIDO - 4ª Edición</asp:HyperLink>
                </td>
                <td>
                    <asp:Label ID="Label4" runat="server" Font-Names="Verdana" Font-Size="8pt" 
                        Text="31 de Octubre al 04 de Noviembre" Font-Bold="True" Visible="False"></asp:Label>
                </td>
                <td>
                    <asp:HyperLink ID="hplTitulo1" runat="server" Font-Names="Verdana" 
                        Font-Size="8pt"                         
                        
                        NavigateUrl="http://intranet.cibnor.mx/eplant1.php?pagID=anuncios/microscopia2011/costos" 
                        Target="_top" Visible="False">COSTOS Y FORMAS DE PAGO</asp:HyperLink>
                </td>
            </tr>

            <tr align="center">
                <td>
                    <br />
                    <asp:Image ID="Image2" runat="server" Height="50px" 
                        ImageUrl="~/images/logo_stress.png" />
                </td>
                <td>
                    <asp:HyperLink ID="HyperLink1" runat="server" Font-Names="Verdana" 
                        Font-Size="8pt"                         
                        
                        NavigateUrl="http://intranet.cibnor.mx/eplant1.php?pagID=anuncios/estres2012/index" 
                        Target="_top">First International Conference on Oxidative Stress in Aquatic 
                    Ecosystems</asp:HyperLink>
                </td>
                <td>
                    <asp:Label ID="Label3" runat="server" Font-Names="Verdana" Font-Size="8pt" 
                        Text="20 al 24 de Noviembre del 2012" Font-Bold="True"></asp:Label>
                </td>
                <td>
                    <asp:HyperLink ID="HyperLink3" runat="server" Font-Names="Verdana" 
                        Font-Size="8pt"                         
                        
                        NavigateUrl="http://intranet.cibnor.mx/eplant1.php?pagID=anuncios/estres2012/index" 
                        Target="_top">COSTOS Y FORMAS DE PAGO</asp:HyperLink>
                </td>
            </tr>

            <tr align="center">
                <td colspan="4";>
                    <asp:Label ID="Label1" runat="server" Font-Names="Verdana" Font-Size="8pt" 
                        Text="Actualmente no hay eventos programados" Font-Bold="True" 
                        Visible="False"></asp:Label>
                </td>
            </tr>

            <tr align="center">
                <td colspan="4";>
                    <asp:Label ID="Label5" runat="server" Font-Names="Verdana" Font-Size="8pt" 
                        Text="Última actualización: Diciembre del 2011" Font-Bold="True"></asp:Label>
                </td>
            </tr>
        </table>
        <br />
    </div>
    </form>
</body>
</html>
