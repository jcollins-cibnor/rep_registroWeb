<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ott2014.aspx.cs" Inherits="ott2014" %>

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
                        <td style="width:150px; text-align: center;">
                            <asp:Image ID="Image1" runat="server" 
                                Height="60px" ImageUrl="~/Images/conacyt_logo3d.gif" /></td>
                        <td style="text-align:center; font-size: 10pt; font-family: Arial; font-weight: bold;">
                            <asp:Label ID="lblTituloEvento" runat="server" Font-Bold="True" 
                                Font-Names="Verdana" Font-Size="10pt" 
                                Text="Academia de Transferencia y Comercialización de Tecnología para las Américas"></asp:Label>
                            <br />
                            <br />
                            <asp:Label ID="lblRegistroEnLinea" runat="server" Font-Bold="False" Font-Names="Verdana" 
                                Font-Size="10pt" Text="Registro en Línea"></asp:Label>
                        </td>
                        <td style="width:150px; text-align: center;">
                            <asp:Image ID="Image2" runat="server" Height="60px" 
                                ImageUrl="~/Images/ciboficial.gif" />
                        </td>
                    </tr>
                </table>
                <br />

            <asp:ValidationSummary ID="valSum" runat="server" DisplayMode="SingleParagraph" 
                HeaderText="* Campos requeridos." Font-Names="Verdana" Font-Size="8pt" 
                ForeColor="Red" />
                
            <asp:Panel ID="pnlDatos" runat="server"> <%--PANEL DE DATOS--%>
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
                            MaxLength="50" Width="120px" />
                    </td>
                    <td>&nbsp;</td>
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
                    <td style="text-align:right; font-family: Verdana">
                        <asp:Label ID="lblPatrocinio" runat="server" Font-Bold="False" 
                            Font-Names="Verdana" Font-Size="8pt" Text="Participante patrocinado por:"></asp:Label>
                    </td>
                    <td style="text-align: left">
                        <asp:RadioButtonList ID="rblPatrocinio" runat="server" 
                            Height="26px" RepeatDirection="Horizontal" Width="120pt" Font-Names="Verdana" 
                            Font-Size="8pt">
                            <asp:ListItem Selected="True">OEA</asp:ListItem>
                            <asp:ListItem>CIBNOR</asp:ListItem>
                        </asp:RadioButtonList>
                    </td>
                    <td> &nbsp;</td>
                </tr>
                <tr>                     <!-- renglon en blanco -->
                    <td colspan="3"> &nbsp;</td>
                </tr>
            </table>
            <table style="border:0; width:500pt; font-size: 8pt;">
                <tr>  
                    <td style="font-family: Verdana; text-align: center; font-size: 9pt; font-weight: bold;"> 
                        <asp:Label ID="lblInformacionAdicional" runat="server" Font-Bold="True" 
                            Font-Names="Verdana" Font-Size="9pt" Text="INFORMACION ADICIONAL"></asp:Label>
                    </td>
                </tr>
                <tr> <!-- renglon con divisor "hr" -->
                    <td style="font-family: Verdana; font-weight: bold; width: 100%;">
                        <hr noshade="noshade" size="0" width="100%" />
                    </td>
                </tr>
            </table>

        <asp:UpdatePanel ID="uplAdicional" runat="server">
        <ContentTemplate>            

            <%--**********--%>
                <asp:Panel ID="pnlItinerario" runat="server">
                    <table style="border: 0; width: 500pt; font-size: 9pt; font-family: Verdana;">
                        <tr>
                            <td colspan="5" style="text-align: center;">
                                <asp:Label ID="Label9" runat="server" Font-Bold="True" Font-Names="Verdana" Font-Size="9pt"
                                    Text="ITINERARIO DE VUELO"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td colspan="5" style="width: 50%; text-align: left;">
                                <asp:Label ID="Label10" runat="server" Font-Bold="True" Font-Names="Verdana" Font-Size="9pt"
                                    Text="Vuelo de salida"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td style="text-align: left; vertical-align: middle;">
                                <asp:Label ID="lblSalidaCiudad1" runat="server" Font-Bold="False" 
                                    Font-Names="Verdana" Font-Size="8pt"
                                    Text="Ciudad de salida: "></asp:Label>
                                <br />
                                <asp:TextBox ID="txtSalidaCiudad1" runat="server" Font-Names="Verdana" 
                                    Font-Size="8pt" MaxLength="50"
                                    Width="80pt"></asp:TextBox>
                            </td>                                
                            <td style="text-align: left; vertical-align: middle;">
                                <asp:Label ID="lblSalidaAerolinea1" runat="server" Font-Bold="False" 
                                    Font-Names="Verdana" Font-Size="8pt"
                                    Text="Aerolinea: "></asp:Label>
                                <br />
                                <asp:TextBox ID="txtSalidaAerolinea1" runat="server" Font-Names="Verdana" 
                                    Font-Size="8pt" MaxLength="50"
                                    Width="80pt"></asp:TextBox>
                            </td>
                            <td style="text-align: left; vertical-align: middle;">
                                <asp:Label ID="lblSalidaNoVuelo1" runat="server" Font-Bold="False" 
                                    Font-Names="Verdana" Font-Size="8pt"
                                    Text="No. de Vuelo: "></asp:Label>
                                <br />
                                <asp:TextBox ID="txtSalidaNoVuelo1" runat="server" Font-Names="Verdana" 
                                    Font-Size="8pt" MaxLength="50"
                                    Width="80pt"></asp:TextBox>
                            </td>
                            <td style="text-align: left; vertical-align: middle;">
                                <asp:Label ID="lblSalidaFecha1" runat="server" Font-Bold="False" 
                                    Font-Names="Verdana" Font-Size="8pt"
                                    Text="Fecha: "></asp:Label>
                                <br />
                                <asp:TextBox ID="txtSalidaFecha1" runat="server" Font-Names="Verdana" 
                                    Font-Size="8pt" MaxLength="50"
                                    Width="80pt"></asp:TextBox>
                            </td>
                            <td style="text-align: left; vertical-align: middle;">
                                <asp:Label ID="lblSalidaHora1" runat="server" Font-Bold="False" 
                                    Font-Names="Verdana" Font-Size="8pt"
                                    Text="Hora: "></asp:Label>
                                <br />
                                <asp:TextBox ID="txtSalidaHora1" runat="server" Font-Names="Verdana" 
                                    Font-Size="8pt" MaxLength="50"
                                    Width="80pt"></asp:TextBox>
                            </td>
                        </tr>                        
                        <tr>
                            <td style="text-align: left; vertical-align: middle;">
                                <asp:Label ID="lblSalidaCiudad2" runat="server" Font-Bold="False" 
                                    Font-Names="Verdana" Font-Size="8pt"
                                    Text="Con conexion en: "></asp:Label>
                                <br />
                                <asp:TextBox ID="txtSalidaCiudad2" runat="server" Font-Names="Verdana" 
                                    Font-Size="8pt" MaxLength="50"
                                    Width="80pt"></asp:TextBox>
                            </td>                                
                            <td style="text-align: left; vertical-align: middle;">
                                <asp:Label ID="lblSalidaAerolinea2" runat="server" Font-Bold="False" 
                                    Font-Names="Verdana" Font-Size="8pt"
                                    Text="Aerolinea: "></asp:Label>
                                <br />
                                <asp:TextBox ID="txtSalidaAerolinea2" runat="server" Font-Names="Verdana" 
                                    Font-Size="8pt" MaxLength="50"
                                    Width="80pt"></asp:TextBox>
                            </td>
                            <td style="text-align: left; vertical-align: middle;">
                                <asp:Label ID="lblSalidaNoVuelo2" runat="server" Font-Bold="False" 
                                    Font-Names="Verdana" Font-Size="8pt"
                                    Text="No. de Vuelo: "></asp:Label>
                                <br />
                                <asp:TextBox ID="txtSalidaNoVuelo2" runat="server" Font-Names="Verdana" 
                                    Font-Size="8pt" MaxLength="50"
                                    Width="80pt"></asp:TextBox>
                            </td>
                            <td style="text-align: left; vertical-align: middle;">
                                <asp:Label ID="lblSalidaFecha2" runat="server" Font-Bold="False" 
                                    Font-Names="Verdana" Font-Size="8pt"
                                    Text="Fecha: "></asp:Label>
                                <br />
                                <asp:TextBox ID="txtSalidaFecha2" runat="server" Font-Names="Verdana" 
                                    Font-Size="8pt" MaxLength="50"
                                    Width="80pt"></asp:TextBox>
                            </td>
                            <td style="text-align: left; vertical-align: middle;">
                                <asp:Label ID="lblSalidaHora2" runat="server" Font-Bold="False" 
                                    Font-Names="Verdana" Font-Size="8pt"
                                    Text="Hora: "></asp:Label>
                                <br />
                                <asp:TextBox ID="txtSalidaHora2" runat="server" Font-Names="Verdana" 
                                    Font-Size="8pt" MaxLength="50"
                                    Width="80pt"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td style="text-align: left; vertical-align: middle;">
                                <asp:Label ID="lblSalidaCiudad3" runat="server" Font-Bold="False" 
                                    Font-Names="Verdana" Font-Size="8pt"
                                    Text="2da conexion en: "></asp:Label>
                                <br />
                                <asp:TextBox ID="txtSalidaCiudad3" runat="server" Font-Names="Verdana" 
                                    Font-Size="8pt" MaxLength="50"
                                    Width="80pt"></asp:TextBox>
                            </td>                                
                            <td style="text-align: left; vertical-align: middle;">
                                <asp:Label ID="lblSalidaAerolinea3" runat="server" Font-Bold="False" 
                                    Font-Names="Verdana" Font-Size="8pt"
                                    Text="Aerolinea: "></asp:Label>
                                <br />
                                <asp:TextBox ID="txtSalidaAerolinea3" runat="server" Font-Names="Verdana" 
                                    Font-Size="8pt" MaxLength="50"
                                    Width="80pt"></asp:TextBox>
                            </td>
                            <td style="text-align: left; vertical-align: middle;">
                                <asp:Label ID="lblSalidaNoVuelo3" runat="server" Font-Bold="False" 
                                    Font-Names="Verdana" Font-Size="8pt"
                                    Text="No. de Vuelo: "></asp:Label>
                                <br />
                                <asp:TextBox ID="txtSalidaNoVuelo3" runat="server" Font-Names="Verdana" 
                                    Font-Size="8pt" MaxLength="50"
                                    Width="80pt"></asp:TextBox>
                            </td>
                            <td style="text-align: left; vertical-align: middle;">
                                <asp:Label ID="lblSalidaFecha3" runat="server" Font-Bold="False" 
                                    Font-Names="Verdana" Font-Size="8pt"
                                    Text="Fecha: "></asp:Label>
                                <br />
                                <asp:TextBox ID="txtSalidaFecha3" runat="server" Font-Names="Verdana" 
                                    Font-Size="8pt" MaxLength="50"
                                    Width="80pt"></asp:TextBox>
                            </td>
                            <td style="text-align: left; vertical-align: middle;">
                                <asp:Label ID="lblSalidaHora3" runat="server" Font-Bold="False" 
                                    Font-Names="Verdana" Font-Size="8pt"
                                    Text="Hora: "></asp:Label>
                                <br />
                                <asp:TextBox ID="txtSalidaHora3" runat="server" Font-Names="Verdana" 
                                    Font-Size="8pt" MaxLength="50"
                                    Width="80pt"></asp:TextBox>
                            </td>
                        </tr>
                        <tr> <!-- renglon en blanco -->
                            <td colspan="5">&nbsp;</td>
                        </tr>
                        <tr>
                            <td style="text-align: left; width: 50%;" colspan="5">
                                <asp:Label ID="Label25" runat="server" Font-Bold="True" 
                                    Font-Names="Verdana" Font-Size="9pt"
                                    Text="Vuelo de regreso"></asp:Label>
                            </td>                                
                        </tr>
                        <tr>
                            <td style="text-align: left; vertical-align: middle;">
                                <asp:Label ID="lblRegresoCiudad1" runat="server" Font-Bold="False" 
                                    Font-Names="Verdana" Font-Size="8pt"
                                    Text="Ciudad de salida: "></asp:Label>
                                <br />
                                <asp:TextBox ID="txtRegresoCiudad1" runat="server" Font-Names="Verdana" 
                                    Font-Size="8pt" MaxLength="50" Width="80pt"></asp:TextBox>
                            </td>
                            <td style="text-align: left; vertical-align: middle;">
                                <asp:Label ID="lblRegresoAerolinea1" runat="server" Font-Bold="False" 
                                    Font-Names="Verdana" Font-Size="8pt" Text="Aerolinea: "></asp:Label>
                                <br />
                                <asp:TextBox ID="txtRegresoAerolinea1" runat="server" Font-Names="Verdana" 
                                    Font-Size="8pt" MaxLength="50" Width="80pt"></asp:TextBox>
                            </td>
                            <td style="text-align: left; vertical-align: middle;">
                                <asp:Label ID="lblRegresoNoVuelo1" runat="server" Font-Bold="False" 
                                    Font-Names="Verdana" Font-Size="8pt" Text="No. de Vuelo: "></asp:Label>
                                <br />
                                <asp:TextBox ID="txtRegresoNoVuelo1" runat="server" Font-Names="Verdana" 
                                    Font-Size="8pt" MaxLength="50" Width="80pt"></asp:TextBox>
                            </td>
                            <td style="text-align: left; vertical-align: middle;">
                                <asp:Label ID="lblRegresoFecha1" runat="server" Font-Bold="False" 
                                    Font-Names="Verdana" Font-Size="8pt" Text="Fecha: "></asp:Label>
                                <br />
                                <asp:TextBox ID="txtRegresoFecha1" runat="server" Font-Names="Verdana" 
                                    Font-Size="8pt" MaxLength="50" Width="80pt"></asp:TextBox>
                            </td>
                            <td style="text-align: left; vertical-align: middle;">
                                <asp:Label ID="lblRegresoHora1" runat="server" Font-Bold="False" 
                                    Font-Names="Verdana" Font-Size="8pt" Text="Hora: "></asp:Label>
                                <br />
                                <asp:TextBox ID="txtRegresoHora1" runat="server" Font-Names="Verdana" 
                                    Font-Size="8pt" MaxLength="50" Width="80pt"></asp:TextBox>
                            </td>
                        </tr>
                        <tr> 
                            <td style="text-align: left; vertical-align: middle;">
                                <asp:Label ID="lblRegresoCiudad2" runat="server" Font-Bold="False" 
                                    Font-Names="Verdana" Font-Size="8pt" Text="Con conexion en: "></asp:Label>
                                <br />
                                <asp:TextBox ID="txtRegresoCiudad2" runat="server" Font-Names="Verdana" 
                                    Font-Size="8pt" MaxLength="50" Width="80pt"></asp:TextBox>
                            </td>
                            <td style="text-align: left; vertical-align: middle;">
                                <asp:Label ID="lblRegresoAerolinea2" runat="server" Font-Bold="False" 
                                    Font-Names="Verdana" Font-Size="8pt" Text="Aerolinea: "></asp:Label>
                                <br />
                                <asp:TextBox ID="txtRegresoAerolinea2" runat="server" Font-Names="Verdana" 
                                    Font-Size="8pt" MaxLength="50" Width="80pt"></asp:TextBox>
                            </td>
                            <td style="text-align: left; vertical-align: middle;">
                                <asp:Label ID="lblRegresoNoVuelo2" runat="server" Font-Bold="False" 
                                    Font-Names="Verdana" Font-Size="8pt" Text="No. de Vuelo: "></asp:Label>
                                <br />
                                <asp:TextBox ID="txtRegresoNoVuelo2" runat="server" Font-Names="Verdana" 
                                    Font-Size="8pt" MaxLength="50" Width="80pt"></asp:TextBox>
                            </td>
                            <td style="text-align: left; vertical-align: middle;">
                                <asp:Label ID="lblRegresoFecha2" runat="server" Font-Bold="False" 
                                    Font-Names="Verdana" Font-Size="8pt" Text="Fecha: "></asp:Label>
                                <br />
                                <asp:TextBox ID="txtRegresoFecha2" runat="server" Font-Names="Verdana" 
                                    Font-Size="8pt" MaxLength="50" Width="80pt"></asp:TextBox>
                            </td>
                            <td style="text-align: left; vertical-align: middle;">
                                <asp:Label ID="lblRegresoHora2" runat="server" Font-Bold="False" 
                                    Font-Names="Verdana" Font-Size="8pt" Text="Hora: "></asp:Label>
                                <br />
                                <asp:TextBox ID="txtRegresoHora2" runat="server" Font-Names="Verdana" 
                                    Font-Size="8pt" MaxLength="50" Width="80pt"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td style="text-align: left; vertical-align: middle;">
                                <asp:Label ID="lblRegresoCiudad3" runat="server" Font-Bold="False" 
                                    Font-Names="Verdana" Font-Size="8pt"
                                    Text="2da conexion en: "></asp:Label>
                                <br />
                                <asp:TextBox ID="txtRegresoCiudad3" runat="server" Font-Names="Verdana" 
                                    Font-Size="8pt" MaxLength="50"
                                    Width="80pt"></asp:TextBox>
                            </td>                                
                            <td style="text-align: left; vertical-align: middle;">
                                <asp:Label ID="lblRegresoAerolinea3" runat="server" Font-Bold="False" 
                                    Font-Names="Verdana" Font-Size="8pt"
                                    Text="Aerolinea: "></asp:Label>
                                <br />
                                <asp:TextBox ID="txtRegresoAerolinea3" runat="server" Font-Names="Verdana" 
                                    Font-Size="8pt" MaxLength="50"
                                    Width="80pt"></asp:TextBox>
                            </td>
                            <td style="text-align: left; vertical-align: middle;">
                                <asp:Label ID="lblRegresoNoVuelo3" runat="server" Font-Bold="False" 
                                    Font-Names="Verdana" Font-Size="8pt"
                                    Text="No. de Vuelo: "></asp:Label>
                                <br />
                                <asp:TextBox ID="txtRegresoNoVuelo3" runat="server" Font-Names="Verdana" 
                                    Font-Size="8pt" MaxLength="50"
                                    Width="80pt"></asp:TextBox>
                            </td>
                            <td style="text-align: left; vertical-align: middle;">
                                <asp:Label ID="lblRegresoFecha3" runat="server" Font-Bold="False" 
                                    Font-Names="Verdana" Font-Size="8pt"
                                    Text="Fecha: "></asp:Label>
                                <br />
                                <asp:TextBox ID="txtRegresoFecha3" runat="server" Font-Names="Verdana" 
                                    Font-Size="8pt" MaxLength="50"
                                    Width="80pt"></asp:TextBox>
                            </td>
                            <td style="text-align: left; vertical-align: middle;">
                                <asp:Label ID="lblRegresoHora3" runat="server" Font-Bold="False" 
                                    Font-Names="Verdana" Font-Size="8pt"
                                    Text="Hora: "></asp:Label>
                                <br />
                                <asp:TextBox ID="txtRegresoHora3" runat="server" Font-Names="Verdana" 
                                    Font-Size="8pt" MaxLength="50"
                                    Width="80pt"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <!-- renglon en blanco -->
                            <td colspan="5">
                            </td>
                        </tr>
<%--                        <tr>
                            <td colspan="5">
                                &nbsp;
                                <p style=" text-align:left; font-family:Verdana; width:100%; font-size:8pt;">
                                    El participante directamente deberá solicitar a la Agencia de Viajes Perla la 
                                    reserva de su boleto de avión, ellos nos solicitaran la autorización, para 
                                    proceder a expedir el mismo.
                                    <br />
                                    <br />
                                    Haga su reserva antes de registrarse, para que sus datos de vuelos sean los 
                                    correctos.
                                    <br />
                                    <br />
                                    Teléfono de Viajes Perla 612 12 28666 o al lada sin costo 01 800 00PERLA y 
                                    correo electrónico: viajesperla@prodigy.net.mx</p>
                            </td>
                        </tr>--%>
                        <tr>
                            <!-- renglon en blanco -->
                            <td colspan="5">
                            </td>
                        </tr>
                        <tr> 
                            <td colspan="2" style="text-align: right;">
                                &nbsp;<asp:Label ID="Label16" runat="server" Font-Names="Verdana" Font-Size="8pt" 
                                    Text="Hotel donde se hospeda:"></asp:Label>
                            </td>
                            <td colspan="3" style="text-align: left;">
                                <asp:TextBox ID="txtHotel" runat="server" Font-Bold="True" Font-Names="Verdana" 
                                    Font-Size="8pt" MaxLength="200" Width="180pt">Hotel Marina</asp:TextBox>
                            </td>
                        </tr>
                        <tr> <!-- renglon en blanco -->
                            <td colspan="5">&nbsp;</td>
                        </tr>
                    </table>
                </asp:Panel>
            <%--**********--%>
            <asp:UpdatePanel ID="uplContacto" runat="server">
                    <ContentTemplate>
                        <table style="border:0; width:500pt; font-size: 8pt;">
                            <tr>
                                <td style="text-align:right; font-family: Verdana; width: 25%;">
                                    <asp:Label ID="lblAlergico" runat="server" Font-Bold="False" 
                                        Font-Names="Verdana" Font-Size="8pt" Text="Es alérgico a algo:"></asp:Label>
                                </td>
                                <td style="text-align: left; font-family: Verdana; ">
                                    <asp:RadioButtonList ID="rblAlergico" runat="server" 
                                        Height="26px" RepeatDirection="Horizontal" Width="120pt">
                                        <asp:ListItem Selected="True">No</asp:ListItem>
                                        <asp:ListItem>Si</asp:ListItem>
                                    </asp:RadioButtonList>
                                </td>
                            </tr>
                            <tr>
                                <td style="text-align:right; font-family: Verdana; width: 25%;">
                                    <asp:Label ID="lblEspecifique" runat="server" Font-Bold="False" 
                                        Font-Names="Verdana" Font-Size="8pt" Text="Especifique:"></asp:Label>
                                </td>
                                <td style="text-align: left; font-family: Verdana; ">
                                    <asp:TextBox ID="txtEspecifique" runat="server" Font-Names="Verdana" 
                                        Font-Size="8pt" MaxLength="100" Width="360px"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td style="text-align:right; font-family: Verdana; width: 25%;">
                                    <asp:Label ID="lblMedicamento" runat="server" Font-Bold="False" 
                                        Font-Names="Verdana" Font-Size="8pt" Text="Toma algún medicamento:"></asp:Label>
                                </td>
                                <td style="text-align: left; font-family: Verdana; ">
                                    <asp:RadioButtonList ID="rblMedicamento" runat="server" 
                                        Height="26px" RepeatDirection="Horizontal" Width="120pt">
                                        <asp:ListItem Selected="True">No</asp:ListItem>
                                        <asp:ListItem>Si</asp:ListItem>
                                    </asp:RadioButtonList>
                                </td>
                            </tr>
                            <tr>
                                <!-- renglon en blanco -->
                                <td colspan="2">
                                    <asp:Panel ID="pnlContacto" runat="server" BorderColor="#999999" 
                                        BorderStyle="Solid" BorderWidth="1pt">
                                        <table style="border:0; width:100%; font-size: 8pt;">
                                            <tr>
                                                <td colspan="2" style="font-size: 9pt; font-family: Verdana; text-align:left;">
                                                    <p style=" text-align:center; font-family:Verdana; font-size:8pt; width:100%;">
                                                        <strong>IMPORTANTE. En caso de cualquier eventualidad por favor contactar a:</strong>
                                                        <br />
                                                        Si es el caso, favor de indicar &quot;No aplica&quot; en ambos recuadros
                                                    </p>                                                    
                                                </td>
                                            </tr>
                                            <tr>
                                                <td style="font-size: 9pt; font-family: Verdana; font-weight: bold; text-align:right; width: 25%;">
                                                    <asp:Label ID="lblContactoNombre" runat="server" Font-Bold="False" 
                                                        Font-Names="Verdana" Font-Size="8pt" Text="Nombre completo:"></asp:Label>
                                                </td>
                                                <td style="font-size: 9pt; font-family: Verdana; font-weight: bold; text-align:left;">
                                                    <asp:TextBox ID="txtContactoNombre" runat="server" Font-Names="Verdana" 
                                                        Font-Size="8pt" MaxLength="100" Width="360px"></asp:TextBox>
                                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" 
                                                        ControlToValidate="txtContactoNombre" Font-Bold="True" Font-Names="Arial" 
                                                        Font-Size="9pt" ForeColor="Red" SetFocusOnError="True">*</asp:RequiredFieldValidator>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td style="font-size: 9pt; font-family: Verdana; font-weight: bold; text-align:right;">
                                                    <asp:Label ID="lblContactoTelefono" runat="server" Font-Bold="False" 
                                                        Font-Names="Verdana" Font-Size="8pt" Text="Telefono:"></asp:Label>
                                                </td>
                                                <td style="font-size: 9pt; font-family: Verdana; font-weight: bold; text-align:left;">
                                                    <asp:TextBox ID="txtContactoTelefono" runat="server" Font-Names="Verdana" 
                                                        Font-Size="8pt" MaxLength="50" Width="120px"></asp:TextBox>
                                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" 
                                                        ControlToValidate="txtContactoTelefono" Font-Bold="True" Font-Names="Arial" 
                                                        Font-Size="9pt" ForeColor="Red" SetFocusOnError="True">*</asp:RequiredFieldValidator>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td colspan="2";>&nbsp;</td> <%---- Renglon en blanco ----%>
                                            </tr>                                            
                                        </table>
                                    </asp:Panel>
                                </td>
                            </tr>
                            <tr>
                                <td colspan="2">&nbsp;</td>
                            </tr>
                        </table>
                        <%--            Se cierra el updatePanel --%>
                    </ContentTemplate>
            </asp:UpdatePanel>
            <table style="border:0; width:500pt; font-size: 8pt;">
                <tr>
                    <td style="text-align:left; font-family: Verdana;">
                        <asp:Label ID="lblComentarios" runat="server" Font-Bold="False" 
                            Font-Names="Verdana" Font-Size="8pt" Text="Comentarios adicionales:"></asp:Label>
                        <br />
                        <asp:TextBox ID="txtComentarios" runat="server" MaxLength="500" 
                            TextMode="MultiLine" Width="100%" ></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <!-- renglon en blanco -->
                    <td>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                            ControlToValidate="txtComentarios" Font-Names="Arial" Font-Size="8pt" 
                            SetFocusOnError="True" ValidationExpression="^([\S\s]{0,500})$">Maximo de caracteres permitidos: 500</asp:RegularExpressionValidator>
                    </td>
                </tr>
            </table>

<%--            Se cierra el updatePanel uplAdicional--%>
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
<%--        <asp:Panel ID="pnlPago" runat="server">
        
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
    </asp:Panel>--%>
            <!--  -->
            <table style="border:0; width:500pt;  font-size: 8pt;">
                <tr>
                    <td style="text-align: center">
                        <asp:Button ID="btnRegresar" runat="server" onclick="btnRegresar_Click" 
                            Text="Regresar" Width="150px" Font-Names="Arial" Font-Size="8pt" />
                        &nbsp;<asp:Button ID="btnEnviar" runat="server"  
                            Text="Enviar" Width="150px" onclick="btnEnviar_Click" Font-Names="Arial" 
                            Font-Size="8pt" />
                            <br />

                        <asp:Label ID="lblStatus" runat="server" Font-Bold="True" 
                            Font-Names="Verdana" Font-Size="8pt" ForeColor="Blue" Visible="False"></asp:Label>

                        <asp:SqlDataSource ID="SqlDSott2014" runat="server" 
                            ConnectionString="<%$ ConnectionStrings:REGWEBConnectionString %>" 
                            DeleteCommand="DELETE FROM [OTT2014] WHERE [id] = @original_id" 
                            InsertCommand="INSERT INTO [OTT2014] ([nombres], [apellidos], [correo], [telefono], [institucion], [patrocinio], [salidaciudad1], [salidalinea1], [salidavuelo1], [salidafecha1], [salidahora1], [salidaciudad2], [salidalinea2], [salidavuelo2], [salidafecha2], [salidahora2], [salidaciudad3], [salidalinea3], [salidavuelo3], [salidafecha3], [salidahora3], [regresociudad1], [regresolinea1], [regresovuelo1], [regresofecha1], [regresohora1], [regresociudad2], [regresolinea2], [regresovuelo2], [regresofecha2], [regresohora2], [regresociudad3], [regresolinea3], [regresovuelo3], [regresofecha3], [regresohora3], [hotel], [alergico], [especifique], [medicamento], [contactonombre], [contactotelefono], [comentarios]) VALUES (@nombres, @apellidos, @correo, @telefono, @institucion, @patrocinio, @salidaciudad1, @salidalinea1, @salidavuelo1, @salidafecha1, @salidahora1, @salidaciudad2, @salidalinea2, @salidavuelo2, @salidafecha2, @salidahora2, @salidaciudad3, @salidalinea3, @salidavuelo3, @salidafecha3, @salidahora3, @regresociudad1, @regresolinea1, @regresovuelo1, @regresofecha1, @regresohora1, @regresociudad2, @regresolinea2, @regresovuelo2, @regresofecha2, @regresohora2, @regresociudad3, @regresolinea3, @regresovuelo3, @regresofecha3, @regresohora3, @hotel, @alergico, @especifique, @medicamento, @contactonombre, @contactotelefono, @comentarios)" 
                            SelectCommand="SELECT * FROM [OTT2014]" 
                            
                            UpdateCommand="UPDATE [OTT2014] SET [nombres] = @nombres, [apellidos] = @apellidos, [correo] = @correo, [telefono] = @telefono, [institucion] = @institucion, [patrocinio] = @patrocinio, [salidaciudad1] = @salidaciudad1, [salidalinea1] = @salidalinea1, [salidavuelo1] = @salidavuelo1, [salidafecha1] = @salidafecha1, [salidahora1] = @salidahora1, [salidaciudad2] = @salidaciudad2, [salidalinea2] = @salidalinea2, [salidavuelo2] = @salidavuelo2, [salidafecha2] = @salidafecha2, [salidahora2] = @salidahora2, [salidaciudad3] = @salidaciudad3, [salidalinea3] = @salidalinea3, [salidavuelo3] = @salidavuelo3, [salidafecha3] = @salidafecha3, [salidahora3] = @salidahora3, [regresociudad1] = @regresociudad1, [regresolinea1] = @regresolinea1, [regresovuelo1] = @regresovuelo1, [regresofecha1] = @regresofecha1, [regresohora1] = @regresohora1, [regresociudad2] = @regresociudad2, [regresolinea2] = @regresolinea2, [regresovuelo2] = @regresovuelo2, [regresofecha2] = @regresofecha2, [regresohora2] = @regresohora2, [regresociudad3] = @regresociudad3, [regresolinea3] = @regresolinea3, [regresovuelo3] = @regresovuelo3, [regresofecha3] = @regresofecha3, [regresohora3] = @regresohora3, [hotel] = @hotel, [alergico] = @alergico, [especifique] = @especifique, [medicamento] = @medicamento, [contactonombre] = @contactonombre, [contactotelefono] = @contactotelefono, [comentarios] = @comentarios WHERE [id] = @original_id" 
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
                                <asp:Parameter Name="patrocinio" Type="String" />
                                <asp:Parameter Name="salidaciudad1" Type="String" />
                                <asp:Parameter Name="salidalinea1" Type="String" />
                                <asp:Parameter Name="salidavuelo1" Type="String" />
                                <asp:Parameter Name="salidafecha1" Type="String" />
                                <asp:Parameter Name="salidahora1" Type="String" />
                                <asp:Parameter Name="salidaciudad2" Type="String" />
                                <asp:Parameter Name="salidalinea2" Type="String" />
                                <asp:Parameter Name="salidavuelo2" Type="String" />
                                <asp:Parameter Name="salidafecha2" Type="String" />
                                <asp:Parameter Name="salidahora2" Type="String" />
                                <asp:Parameter Name="salidaciudad3" Type="String" />
                                <asp:Parameter Name="salidalinea3" Type="String" />
                                <asp:Parameter Name="salidavuelo3" Type="String" />
                                <asp:Parameter Name="salidafecha3" Type="String" />
                                <asp:Parameter Name="salidahora3" Type="String" />
                                <asp:Parameter Name="regresociudad1" Type="String" />
                                <asp:Parameter Name="regresolinea1" Type="String" />
                                <asp:Parameter Name="regresovuelo1" Type="String" />
                                <asp:Parameter Name="regresofecha1" Type="String" />
                                <asp:Parameter Name="regresohora1" Type="String" />
                                <asp:Parameter Name="regresociudad2" Type="String" />
                                <asp:Parameter Name="regresolinea2" Type="String" />
                                <asp:Parameter Name="regresovuelo2" Type="String" />
                                <asp:Parameter Name="regresofecha2" Type="String" />
                                <asp:Parameter Name="regresohora2" Type="String" />
                                <asp:Parameter Name="regresociudad3" Type="String" />
                                <asp:Parameter Name="regresolinea3" Type="String" />
                                <asp:Parameter Name="regresovuelo3" Type="String" />
                                <asp:Parameter Name="regresofecha3" Type="String" />
                                <asp:Parameter Name="regresohora3" Type="String" />
                                <asp:Parameter Name="hotel" Type="String" />
                                <asp:Parameter Name="alergico" Type="String" />
                                <asp:Parameter Name="especifique" Type="String" />
                                <asp:Parameter Name="medicamento" Type="String" />
                                <asp:Parameter Name="contactonombre" Type="String" />
                                <asp:Parameter Name="contactotelefono" Type="String" />
                                <asp:Parameter Name="comentarios" Type="String" />
                                <asp:Parameter Name="original_id" Type="Int32" />
                            </UpdateParameters>
                            <InsertParameters>
                                <asp:Parameter Name="nombres" Type="String" />
                                <asp:Parameter Name="apellidos" Type="String" />
                                <asp:Parameter Name="correo" Type="String" />
                                <asp:Parameter Name="telefono" Type="String" />
                                <asp:Parameter Name="institucion" Type="String" />
                                <asp:Parameter Name="patrocinio" Type="String" />
                                <asp:Parameter Name="salidaciudad1" Type="String" />
                                <asp:Parameter Name="salidalinea1" Type="String" />
                                <asp:Parameter Name="salidavuelo1" Type="String" />
                                <asp:Parameter Name="salidafecha1" Type="String" />
                                <asp:Parameter Name="salidahora1" Type="String" />
                                <asp:Parameter Name="salidaciudad2" Type="String" />
                                <asp:Parameter Name="salidalinea2" Type="String" />
                                <asp:Parameter Name="salidavuelo2" Type="String" />
                                <asp:Parameter Name="salidafecha2" Type="String" />
                                <asp:Parameter Name="salidahora2" Type="String" />
                                <asp:Parameter Name="salidaciudad3" Type="String" />
                                <asp:Parameter Name="salidalinea3" Type="String" />
                                <asp:Parameter Name="salidavuelo3" Type="String" />
                                <asp:Parameter Name="salidafecha3" Type="String" />
                                <asp:Parameter Name="salidahora3" Type="String" />
                                <asp:Parameter Name="regresociudad1" Type="String" />
                                <asp:Parameter Name="regresolinea1" Type="String" />
                                <asp:Parameter Name="regresovuelo1" Type="String" />
                                <asp:Parameter Name="regresofecha1" Type="String" />
                                <asp:Parameter Name="regresohora1" Type="String" />
                                <asp:Parameter Name="regresociudad2" Type="String" />
                                <asp:Parameter Name="regresolinea2" Type="String" />
                                <asp:Parameter Name="regresovuelo2" Type="String" />
                                <asp:Parameter Name="regresofecha2" Type="String" />
                                <asp:Parameter Name="regresohora2" Type="String" />
                                <asp:Parameter Name="regresociudad3" Type="String" />
                                <asp:Parameter Name="regresolinea3" Type="String" />
                                <asp:Parameter Name="regresovuelo3" Type="String" />
                                <asp:Parameter Name="regresofecha3" Type="String" />
                                <asp:Parameter Name="regresohora3" Type="String" />
                                <asp:Parameter Name="hotel" Type="String" />
                                <asp:Parameter Name="alergico" Type="String" />
                                <asp:Parameter Name="especifique" Type="String" />
                                <asp:Parameter Name="medicamento" Type="String" />
                                <asp:Parameter Name="contactonombre" Type="String" />
                                <asp:Parameter Name="contactotelefono" Type="String" />
                                <asp:Parameter Name="comentarios" Type="String" />
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
    <asp:Label ID="lblHiddenMensaje" runat="server" Font-Names="Arial" 
        Font-Size="8pt" Visible="False"></asp:Label>
    </div>
   
    </form>
</body>
</html>
