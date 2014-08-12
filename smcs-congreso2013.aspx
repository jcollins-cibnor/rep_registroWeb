<%@ Page Language="C#" AutoEventWireup="true" CodeFile="smcs-congreso2013.aspx.cs" Inherits="smcs_congreso2013" Culture="es-MX" UICulture="es" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>CIBNOR - Registro en Línea</title>
    
    <meta name="msapplication-window" content="width=800;height=600"/>
    <link rel="icon" type="image/x-icon" href="images/icon_cib.ico" />
</head>
<body>
    <form id="form1" runat="server">    
    <asp:ScriptManager ID="scriptmanager1" EnablePartialRendering="true" runat="server" />
        <div align="center">    
            
                <table style="font-family: Verdana; width:500pt;">
                    <tr>
                        <td style="width:320pt;">
                        </td>
                        <td style="text-align: right;">
                            <asp:RadioButtonList ID="rblIdioma" runat="server" AutoPostBack="True" 
                                Font-Bold="False" Font-Names="Verdana" Font-Size="8pt" 
                                RepeatDirection="Horizontal" Visible="False" Width="160pt">
                                <asp:ListItem Selected="True">Español</asp:ListItem>
                                <asp:ListItem>English</asp:ListItem>
                            </asp:RadioButtonList>
                        </td>
                    </tr>
                </table>
                
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
                                Font-Size="10pt" Text="Registro en Línea"></asp:Label>
                        </td>
                        <td style="width:160px; text-align: center;">
                            <asp:Image ID="Image2" runat="server" Height="50px" 
                                ImageUrl="~/images/ciboficial.gif" />
                        </td>
                    </tr>
                </table>
                <br />

            <asp:ValidationSummary ID="valSum" runat="server" DisplayMode="SingleParagraph" 
                HeaderText="* Campos requeridos." Font-Names="Verdana" Font-Size="8pt" 
                ForeColor="Red" Width="80%" />

            <asp:Panel ID="pnlDatos" runat="server"> <%--PANEL DE DATOS--%>

            <asp:UpdatePanel ID="UpnlGeneral" runat="server">
            <ContentTemplate>
                
            <table style="border:0; width:500pt;  font-size: 8pt;">
                <tr>
                    <td colspan="3" style="text-align: center;">
                        <asp:Label ID="lblDatosPersonales" runat="server" Font-Bold="True" 
                            Font-Names="Verdana" Font-Size="9pt" Text="DATOS PERSONALES"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td colspan="3">
                        <hr width="100%" noshade="noshade" size="0" />
                    </td>
                </tr>
                <tr>
                    <td style="text-align:right; font-family: Verdana; width: 30%;">
                        <asp:Label ID="lblNombres" runat="server" Font-Bold="False" 
                            Font-Names="Verdana" Font-Size="8pt" Text="Nombre(s):"></asp:Label>
                    </td>
                    <td style="text-align:left">
                        <asp:TextBox ID="txtNombres" runat="server" 
                            Font-Size="8pt" Width="240px" MaxLength="50" ></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                            ControlToValidate="txtNombres" 
                            SetFocusOnError="True" Font-Bold="True" ForeColor="Red">*</asp:RequiredFieldValidator>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td style="text-align:right; font-family: Verdana">
                        <asp:Label ID="lblApellidos" runat="server" Font-Bold="False" 
                            Font-Names="Verdana" Font-Size="8pt" Text="Apellido(s):"></asp:Label>
                    </td>
                    <td style="text-align: left">
                        <asp:TextBox ID="txtApellidos" runat="server" Width="240px" Font-Size="8pt" 
                            MaxLength="50" />
                    </td>
                    <td> </td>
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
                <tr>
                    <td style="text-align:right; font-family: Verdana">
                        <asp:Label ID="lblCorreoConfirma" runat="server" Font-Bold="False" 
                            Font-Names="Verdana" Font-Size="8pt" Text="Confirmar correo electrónico:"></asp:Label>
                    </td>
                    <td style="text-align:left">
                        <asp:TextBox ID="txtCorreoConfirma" runat="server" 
                            MaxLength="50" Width="240px" Font-Size="8pt" ></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                            ControlToValidate="txtCorreoConfirma" SetFocusOnError="True" 
                            Font-Bold="True" ForeColor="Red">*</asp:RequiredFieldValidator>
                    </td>
                    <td style="text-align:left">
                        <asp:CompareValidator ID="valRegExCorreoConfirma" runat="server" 
                            ControlToCompare="txtCorreo" ControlToValidate="txtCorreoConfirma" 
                            Font-Names="Arial" Font-Size="8pt" ForeColor="Red" SetFocusOnError="True">Confirmar correo electrónico</asp:CompareValidator>
                    </td>
                </tr>
                <tr>
                    <td style="text-align:right; font-family: Verdana">
                        <asp:Label ID="lblTelefono" runat="server" Font-Bold="False" 
                            Font-Names="Verdana" Font-Size="8pt" Text="Teléfono:"></asp:Label>
                    </td>
                    <td style="text-align: left">
                        <asp:TextBox ID="txtTelefono" runat="server" Font-Size="8pt" 
                            MaxLength="50" />
                    </td>
                    <td>
                        </td>
                </tr>
                <tr>
                    <td style="text-align:right; font-family: Verdana">
                        <asp:Label ID="lblInstitucion" runat="server" Font-Bold="False" 
                            Font-Names="Verdana" Font-Size="8pt" Text="Institución:"></asp:Label>
                    </td>
                    <td style="text-align: left">
                        <asp:TextBox ID="txtInstitucion" runat="server" MaxLength="200" Font-Size="8pt" 
                            Width="240px" />
                    </td>
                    <td> &nbsp;</td>
                </tr>
                <tr>
                    <!-- renglon en blanco -->
                    <td colspan="3">
                        &nbsp;</td>
                </tr>
                <tr>  
                    <td style="text-align:right; font-family: Verdana" valign="top">
                        <asp:Label ID="lblTipoRegistro" runat="server" Font-Bold="False" 
                            Font-Names="Verdana" Font-Size="8pt" Text="Tipo de registro:"></asp:Label>
                    </td>
                    <td style="text-align: left">
                        <asp:RadioButtonList ID="rblTipoRegistro" runat="server" AutoPostBack="True" 
                            Font-Bold="False" Font-Names="Verdana" Font-Size="8pt" Height="26px" 
                            onselectedindexchanged="rblTipoRegistro_SelectedIndexChanged">
                            <asp:ListItem Value="Participante">Participante general</asp:ListItem>
                            <asp:ListItem Selected="True" >Ponente</asp:ListItem>
                            <asp:ListItem Value="Conferencista">Conferencista magistral</asp:ListItem>
                            <asp:ListItem Value="Comite">Comité organizador</asp:ListItem>
                        </asp:RadioButtonList>
                    </td>
                    <td>&nbsp;</td>
                </tr>
            </table>
            <br />
        <asp:Panel ID="pnlTipoRegistro" runat="server">
            <table style="border:0; width:500pt; font-size: 8pt;">
                <tr>  
                    <td colspan="2" style="font-family: Verdana; text-align: center; font-size: 9pt; font-weight: bold;"> 
                        <asp:Label ID="lblInformacionAdicional" runat="server" Font-Bold="True" 
                            Font-Names="Verdana" Font-Size="9pt" Text="DATOS DEL TRABAJO A REGISTRAR"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <!-- renglon en blanco -->
                    <td colspan="2" style="font-family: Verdana; font-weight: bold; width: 600pt;">
                        <hr noshade="noshade" size="0" width="100%" />
                    </td>
                </tr>
                <tr>
                    <td style="font-family: Verdana; text-align: center; width: 25%;" valign="middle">
                        &nbsp;</td>
                    <td style="text-align: center; font-family: Verdana; ">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td style="font-family: Verdana; width: 25%; text-align: right;" 
                        valign="top">
                        <asp:Label ID="lblTitulo" runat="server" Font-Bold="False" Font-Names="Verdana" 
                            Font-Size="8pt" Text="Titulo del trabajo:"></asp:Label>
                    </td>
                    <td style="text-align: left; font-family: Verdana; ">
                        <asp:TextBox ID="txtTitulo" runat="server" Font-Size="8pt" MaxLength="500" 
                            Width="420px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
                            ControlToValidate="txtTitulo" Font-Bold="True" ForeColor="Red" 
                            SetFocusOnError="True">*</asp:RequiredFieldValidator>
                        <br />
                        <asp:RegularExpressionValidator ID="valRegExPrograma" runat="server" 
                            ControlToValidate="txtTitulo" Font-Names="Arial" Font-Size="8pt" 
                            ForeColor="Red" SetFocusOnError="True" 
                            ValidationExpression="[\w\s\d,;.:-–_+áéíóúÁÉÍÓÚñÑ]*">No introducir caracteres especiales (&quot; / &#39; ? etc.).</asp:RegularExpressionValidator>
                    </td>
                </tr>                
                <tr>
                    <td style="text-align:right; font-family: Verdana; width: 25%;" valign="top">
                        <asp:Label ID="lblAutores" runat="server" Font-Bold="False" 
                            Font-Names="Verdana" Font-Size="8pt" Text="Autor(es):"></asp:Label>
                    </td>
                    <td style="text-align: left; font-family: Verdana; ">
                        <asp:TextBox ID="txtAutores" runat="server" Font-Size="8pt" MaxLength="500" 
                            Width="420px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" 
                            ControlToValidate="txtAutores" Font-Bold="True" ForeColor="Red" 
                            SetFocusOnError="True">*</asp:RequiredFieldValidator>
                        <br />
                        <asp:RegularExpressionValidator ID="valRegExPrograma0" runat="server" 
                            ControlToValidate="txtAutores" Font-Names="Arial" Font-Size="8pt" 
                            ForeColor="Red" SetFocusOnError="True" 
                            ValidationExpression="[\w\s\d,;.:-–_+áéíóúÁÉÍÓÚñÑ]*">No introducir caracteres especiales (&quot; / &#39; ? etc.).</asp:RegularExpressionValidator>
                    </td>
                </tr>
            </table>
            <br />
            <%--**********--%>
                <table style="border:0; width:500pt; font-size: 8pt;">
                    <tr>
                        <td style="text-align:left; font-family: Verdana; text-indent: 70px;">
                            <asp:Label ID="Label3" runat="server" Font-Bold="True" Font-Names="Verdana" 
                                Font-Size="8pt" Text="Seleccione la modalidad de presentación:"></asp:Label>
                        </td>
                    </tr>
                    <tr>  
                        <td style="text-align:left; text-indent:70px; font-family: Verdana;">
                            <asp:RadioButtonList ID="rblModalidad" runat="server" AutoPostBack="True" 
                                Font-Bold="True" Font-Names="Verdana" Font-Size="8pt" Height="26px" 
                                onselectedindexchanged="rblDivisionSimposio_SelectedIndexChanged">
                                <asp:ListItem Selected="True" Value="Oral">Oral</asp:ListItem>
                                <asp:ListItem Value="Poster">Poster</asp:ListItem>
                            </asp:RadioButtonList>
                        </td>
                    </tr>
                    <tr>
                        <td style="text-align:left; text-indent:70px; font-family: Verdana;">
                            <asp:Label ID="lblSimposiums" runat="server" Font-Bold="True" 
                                Font-Names="Verdana" Font-Size="8pt" 
                                Text="Seleccione en que sesión desea presentar su trabajo (División o Simposio)"></asp:Label>
                            <br />
                            <asp:RadioButtonList ID="rblDivisionSimposio" runat="server" 
                                AutoPostBack="True" Font-Bold="True" Font-Names="Verdana" Font-Size="8pt" 
                                Height="26px" onselectedindexchanged="rblDivisionSimposio_SelectedIndexChanged" 
                                RepeatDirection="Horizontal" Width="240pt">
                                <asp:ListItem Selected="True" Value="div">División</asp:ListItem>
                                <asp:ListItem Value="sim">Simposio</asp:ListItem>
                            </asp:RadioButtonList>
                        </td>
                    </tr>
                    <tr>
                        <td style="text-align:left; text-indent:105px; font-family: Verdana;" 
                            valign="top">
                            <asp:Panel ID="pnlDivision" runat="server">
                                <asp:RadioButtonList ID="rblDivision" runat="server" Font-Names="Arial" 
                                    Font-Size="9pt">
                                    <asp:ListItem Selected="True">I) Diagnostico, Metodologia y Evaluacion del Recurso del Suelo.</asp:ListItem>
                                    <asp:ListItem>II) Relación Suelo-Clima-Biota.</asp:ListItem>
                                    <asp:ListItem>III) Aprovechamiento del Recurso Suelo.</asp:ListItem>
                                    <asp:ListItem>IV) Educación y Asistencia Técnica.</asp:ListItem>
                                </asp:RadioButtonList>
                            </asp:Panel>
                            <asp:Panel ID="pnlSimposio" runat="server" Visible="False">
                                <asp:RadioButtonList ID="rblSimposio" runat="server" Font-Names="Arial" 
                                    Font-Size="9pt">
                                    <asp:ListItem Selected="True">1. Cambio climático y sequía</asp:ListItem>
                                    <asp:ListItem>2. Cambio de uso del suelo</asp:ListItem>
                                    <asp:ListItem>3. Gestión y manejo de cuencas</asp:ListItem>
                                    <asp:ListItem>4. Microbiología del suelo</asp:ListItem>
                                    <asp:ListItem>5. Agricultura orgánica</asp:ListItem>
                                    <asp:ListItem>6. Rol del suelo en el ciclo del carbono</asp:ListItem>
                                    <asp:ListItem>7. Labranza de conservación</asp:ListItem>
                                    <asp:ListItem>8. Manejo del agua en agricultura y ferti-irrigación</asp:ListItem>
                                    <asp:ListItem>9. Fertilidad del suelo y nutrición vegetal</asp:ListItem>
                                    <asp:ListItem>10. Contaminación del agua y suelo</asp:ListItem>
                                    <asp:ListItem>11. Salinidad y desertificación</asp:ListItem>
                                    <asp:ListItem>12. Suelo y sociedad</asp:ListItem>
                                    <asp:ListItem>13. Formación de recursos humanos y educación ambiental</asp:ListItem>
                                    <asp:ListItem>14. Simposio estudiantil</asp:ListItem>
                                </asp:RadioButtonList>
                            </asp:Panel>
                        </td>                        
                    </tr>
                </table>
                <br />
            <%--**********--%>
                <table style="border:0; width:500pt; font-size: 8pt;">
                    <tr>
                        <td style="text-align:left; font-family: Verdana;">
                            <asp:Label ID="lblComentarios" runat="server" Font-Bold="False" 
                                Font-Names="Verdana" Font-Size="8pt" Text="Comentarios:"></asp:Label>
                                <br />
                                <asp:TextBox ID="txtComentarios" runat="server" MaxLength="1000" 
                                TextMode="MultiLine" Width="100%" />
                        </td>
                    </tr>
                </table>
                <br />
                <table style="border:0; width:500pt; font-size: 8pt;">
                    <tr>
                        <td style="font-family: Verdana; font-weight: bold; font-size: 9pt; text-align: center;">
                            <asp:Label ID="lblFacturacion" runat="server" Font-Bold="True" 
                                Font-Names="Verdana" Font-Size="9pt" Text="FACTURACIÓN"></asp:Label>
                        </td>
                    </tr>                
                    <tr>
                        <!-- renglon en blanco -->
                        <td style="font-family: Verdana; font-weight: bold;">
                            <hr noshade="noshade" size="0" width="100%" />
                        </td>
                    </tr>
                </table>

            <asp:UpdatePanel ID="uplFacturacion" runat="server">
            <ContentTemplate>
            
                <table style="border:0; width:500pt; font-size: 8pt;">
                    <tr>
                        <td style="text-align:right; font-family: Verdana; width: 25%;">
                            <asp:Label ID="lblFactura" runat="server" Font-Bold="False" Font-Names="Verdana" 
                                Font-Size="8pt" Text="Requiere factura:"></asp:Label>
                        </td>
                        <td style="text-align: left; font-family: Verdana; ">
                            <asp:RadioButtonList ID="rblFactura" runat="server" AutoPostBack="True" 
                                Height="26px" onselectedindexchanged="rblFactura_SelectedIndexChanged" 
                                RepeatDirection="Horizontal" Width="120pt">
                                <asp:ListItem Selected="True">No</asp:ListItem>
                                <asp:ListItem>Si</asp:ListItem>
                            </asp:RadioButtonList>
                        </td>
                    </tr>
                    <tr>
                        <!-- renglon en blanco -->
                        <td colspan="2">
                            <asp:Panel ID="pnlFacturacion" runat="server" BorderColor="#999999" 
                                BorderStyle="Solid" BorderWidth="1pt" Visible="False">
                                <table style="border:0; width:100%; font-size: 8pt;">
                                    <tr>
                                        <td style="font-size: 9pt; font-family: Verdana; font-weight: bold; text-align:right; width: 25%;">
                                            <asp:Label ID="lblFacturaNombre" runat="server" Font-Bold="False" Font-Names="Verdana" 
                                                Font-Size="8pt" Text="Nombre:"></asp:Label>
                                        </td>
                                        <td 
                                            
                                            style="font-size: 9pt; font-family: Verdana; font-weight: bold; text-align:left;">
                                            <asp:TextBox ID="txtFacturaNombre" runat="server" Font-Names="Verdana" 
                                                Font-Size="8pt" MaxLength="200" Width="90%">--</asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                                                ControlToValidate="txtFacturaNombre" Font-Bold="True" Font-Names="Arial" 
                                                Font-Size="9pt" SetFocusOnError="True" ForeColor="Red">*</asp:RequiredFieldValidator>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td style="font-size: 9pt; font-family: Verdana; font-weight: bold; text-align:right;">
                                            <asp:Label ID="lblFacturaRFC" runat="server" Font-Bold="False" Font-Names="Verdana" 
                                                Font-Size="8pt" Text="RFC:"></asp:Label>
                                        </td>
                                        <td 
                                            
                                            style="font-size: 9pt; font-family: Verdana; font-weight: bold; text-align:left;">
                                            <asp:TextBox ID="txtFacturaRFC" runat="server" Font-Names="Verdana" 
                                                Font-Size="8pt" MaxLength="13" Width="90%">--</asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                                                ControlToValidate="txtFacturaRFC" Font-Bold="True" Font-Names="Arial" 
                                                Font-Size="9pt" SetFocusOnError="True" ForeColor="Red">*</asp:RequiredFieldValidator>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td style="font-size: 9pt; font-family: Verdana; font-weight: bold; text-align:right;">
                                            <asp:Label ID="lblFacturaDireccion" runat="server" Font-Bold="False" Font-Names="Verdana" 
                                                Font-Size="8pt" Text="Dirección:"></asp:Label>
                                        </td>
                                        <td 
                                            
                                            style="font-size: 9pt; font-family: Verdana; font-weight: bold; text-align:left;">
                                            <asp:TextBox ID="txtFacturaDireccion" runat="server" Font-Names="Verdana" 
                                                Font-Size="8pt" MaxLength="500" TextMode="MultiLine" Width="90%">--</asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                                                ControlToValidate="txtFacturaDireccion" Font-Bold="True" Font-Names="Arial" 
                                                Font-Size="9pt" SetFocusOnError="True" ForeColor="Red">*</asp:RequiredFieldValidator>
                                        </td>
                                    </tr>
                                </table>
                            </asp:Panel>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2">
                            &nbsp;</td>
                    </tr>
               </table>
<%--            Se cierra el updatePanel de Facturacion--%>
            </ContentTemplate>
            </asp:UpdatePanel>            

<%--            Se cierra el Panel de Tipo de Registro--%>
        </asp:Panel>

<%--            Se cierra el updatePanel General--%>
            </ContentTemplate>
            </asp:UpdatePanel>
                
            <asp:Button ID="btnContinuar" runat="server" 
            onclick="btnContinuar_Click" Text="Continuar" Width="150px" 
            Font-Names="Arial" Font-Size="8pt" style="height: 22px" />
                
        </asp:Panel>
        
<!-- CONFIRMACION DE REGISTRO -->
        <asp:Panel ID="pnlConfirmacion" runat="server" Visible="False"> 
            <table style="border:0; width:500pt;  font-size: 8pt;">
                <tr>
                    <td colspan="3" 
                        style="font-family: Verdana; font-weight: bold; font-size:9pt; text-align: center;">
                        <asp:Label ID="lblConfirmacionDeDatos" runat="server" Font-Bold="True" 
                            Font-Names="Verdana" Font-Size="9pt" Text="CONFIRMACIÓN DE DATOS"></asp:Label>
                        </td>
                </tr>
                <tr>
                    <td style="text-align:left;" colspan="3">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td style="text-align:left; width:50pt;">
                        &nbsp;</td>
                    <td style="text-align:left; width:400pt;">
                        <asp:Label ID="lblConfirmacion" runat="server" Font-Names="Consolas" 
                            Font-Size="8pt" Text="Label"></asp:Label>
                    </td>
                    <td style="text-align:left; width:50pt;">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td style="text-align:left;" colspan="3">
                        &nbsp;</td>
                </tr>
            </table>
            <!--  -->
        <asp:Panel ID="pnlPago" runat="server">
        
            <table style="border:0; width:500pt;  font-size: 8pt;">
                <tr>
                    <td style="text-align:center; width:400pt;">
                        <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Names="Verdana" Font-Size="9pt" 
                            Text="COMPROBACIÓN DE PAGO"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <!-- renglon en blanco -->
                    <td style="font-family: Verdana; font-weight: bold; width: 600pt;">
                        <hr noshade="noshade" size="0" width="100%" />
                    </td>
                </tr>                
                <tr>
                    <td style="text-align:center; width:400pt;">
                        <asp:Label ID="Label2" runat="server" Font-Names="Verdana" Font-Size="8pt" 
                            
                            
                            Text="Para continuar su registro favor de adjuntar su comprobante de pago en formato PDF."></asp:Label>
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
                        <asp:FileUpload ID="fuPago" runat="server" Font-Names="Arial" 
                            Font-Size="9pt" Width="360px" />
                        <asp:Button ID="btnPago" runat="server" Font-Names="Arial" Font-Size="8pt" 
                            Height="20px" Text="Adjuntar" onclick="btnPago_Click" />
                    </td> <!-- renglon en blanco -->
                </tr>
                <tr>
                    <td style="text-align:center; width:400pt;">
                        &nbsp;</td>
                </tr>

            </table>
    </asp:Panel>
            <!--  -->
            <table style="border:0; width:500pt;  font-size: 8pt;">
                <tr>
                    <td style="text-align: center">
                        <asp:Button ID="btnRegresar" runat="server" onclick="btnRegresar_Click" 
                            Text="Regresar" Width="150px" Font-Names="Arial" Font-Size="8pt" />
                        &nbsp;<asp:Button ID="btnEnviar" runat="server"  
                            Text="Enviar" Width="150px" onclick="btnEnviar_Click" Font-Names="Arial" 
                            Font-Size="8pt" Enabled="False" />
                            <br />

                        <asp:Label ID="lblStatusEnvio" runat="server" Font-Bold="True" 
                            Font-Names="Verdana" Font-Size="8pt" ForeColor="Blue" Visible="False"></asp:Label>

                        <asp:SqlDataSource ID="SqlDSsmcs2013" runat="server" 
                            ConnectionString="<%$ ConnectionStrings:REGWEBConnectionString %>" 
                            DeleteCommand="DELETE FROM [smcs2013] WHERE [id] = @original_id" 
                            InsertCommand="INSERT INTO [smcs2013] ([nombres], [apellidos], [correo], [telefono], [institucion], [tipoRegistro], [titulo], [autores], [modalidad], [tipoSesion], [divisionSimposio], [comentarios], [factura], [facturaNombre], [facturaRFC], [facturaDireccion]) VALUES (@nombres, @apellidos, @correo, @telefono, @institucion, @tipoRegistro, @titulo, @autores, @modalidad, @tipoSesion, @divisionSimposio, @comentarios, @factura, @facturaNombre, @facturaRFC, @facturaDireccion)" 
                            SelectCommand="SELECT * FROM [smcs2013]" 
                            
                            UpdateCommand="UPDATE [smcs2013] SET [nombres] = @nombres, [apellidos] = @apellidos, [correo] = @correo, [telefono] = @telefono, [institucion] = @institucion, [tipoRegistro] = @tipoRegistro, [titulo] = @titulo, [autores] = @autores, [modalidad] = @modalidad, [tipoSesion] = @tipoSesion, [divisionSimposio] = @divisionSimposio, [comentarios] = @comentarios, [factura] = @factura, [facturaNombre] = @facturaNombre, [facturaRFC] = @facturaRFC, [facturaDireccion] = @facturaDireccion WHERE [id] = @original_id" 
                            OldValuesParameterFormatString="original_{0}">
                            <DeleteParameters>
                                <asp:Parameter Name="original_id" Type="Int32" />
                            </DeleteParameters>
                            <UpdateParameters>
                                <asp:Parameter Name="nombres" Type="String" />
                                <asp:Parameter Name="apellidos" Type="String" />
                                <asp:Parameter Name="correo" Type="String" />
                                <asp:Parameter Name="telefono" Type="String" />
                                <asp:Parameter Name="institucion" Type="String" />
                                <asp:Parameter Name="tipoRegistro" Type="String" />
                                <asp:Parameter Name="titulo" Type="String" />
                                <asp:Parameter Name="autores" Type="String" />
                                <asp:Parameter Name="modalidad" Type="String" />
                                <asp:Parameter Name="tipoSesion" Type="String" />
                                <asp:Parameter Name="divisionSimposio" Type="String" />
                                <asp:Parameter Name="comentarios" Type="String" />
                                <asp:Parameter Name="factura" Type="String" />
                                <asp:Parameter Name="facturaNombre" Type="String" />
                                <asp:Parameter Name="facturaRFC" Type="String" />
                                <asp:Parameter Name="facturaDireccion" Type="String" />
                                <asp:Parameter Name="original_id" Type="Int32" />
                            </UpdateParameters>
                            <InsertParameters>
                                <asp:Parameter Name="nombres" Type="String" />
                                <asp:Parameter Name="apellidos" Type="String" />
                                <asp:Parameter Name="correo" Type="String" />
                                <asp:Parameter Name="telefono" Type="String" />
                                <asp:Parameter Name="institucion" Type="String" />
                                <asp:Parameter Name="tipoRegistro" Type="String" />
                                <asp:Parameter Name="titulo" Type="String" />
                                <asp:Parameter Name="autores" Type="String" />
                                <asp:Parameter Name="modalidad" Type="String" />
                                <asp:Parameter Name="tipoSesion" Type="String" />
                                <asp:Parameter Name="divisionSimposio" Type="String" />
                                <asp:Parameter Name="comentarios" Type="String" />
                                <asp:Parameter Name="factura" Type="String" />
                                <asp:Parameter Name="facturaNombre" Type="String" />
                                <asp:Parameter Name="facturaRFC" Type="String" />
                                <asp:Parameter Name="facturaDireccion" Type="String" />
                            </InsertParameters>
                        </asp:SqlDataSource>
                    </td>
                </tr>
            </table>
        </asp:Panel>
        
        <center>
        
            <br />
            <asp:Button ID="btnCancelar" runat="server" Text="Cancelar" 
                CausesValidation="False" Width="150px"            
                PostBackUrl="http://intranet.cibnor.mx/eplant1.php?pagID=anuncios/suelo2013/index" 
                Font-Names="Arial" Font-Size="8pt" />
            <br />
            <br />
            
            <table style="width: 800px; font-family: Verdana; font-size: 11pt;">
                <tr>
                    <td colspan="2" style="font-size:8pt; text-align:center;">
                        <asp:Label ID="Label11" runat="server" Font-Size="7pt" 
                            
                            Text="Instituto Politécnico Nacional 195, Playa Palo de Santa Rita Sur; La Paz, B.C.S. México; C.P. 23096, Tel:(52) (612) 123-8484 Fax:(52) (612) 125-3625"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td style="font-size:8pt; text-align:right; background-color:#223D63;">
                        <asp:HyperLink ID="HyperLink1" runat="server" 
                            NavigateUrl="http://www.cibnor.gob.mx/component/content/article/472" 
                            Font-Bold="False" Font-Names="Verdana" Font-Size="8pt" ForeColor="#CCFFFF" 
                            Target="_blank">Política de Privacidad</asp:HyperLink>
                        &nbsp;&nbsp;&nbsp;</td>
                    <td width="32%" height="5" bgcolor="#D8ECF3" id="footblk" align="center"></td>
                </tr>
            </table>
         
        </center>

        </div>
    
    
    
    
    
    <div>
    </div>
   
    </form>
</body>
</html>
