<%@ Page Language="C#" AutoEventWireup="true" CodeFile="registroWeb.aspx.cs" Inherits="registroWeb" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>CIBNOR - Registro en Línea</title>
</head>
<body>
    <form id="form1" runat="server">
    <asp:ScriptManager ID="scriptmanager1" EnablePartialRendering="true" runat="server" />
    <div>
        <center>
            <div align="center">
                <table style="font-family: Verdana; font-size: 11pt;">
                    <tr>
                        <td style="width: 160px;">
                            <asp:Image ID="Image1" runat="server" ImageUrl="~/images/cibreg.png" Height="50px" />
                        </td>
                        <td style="width: 480px; text-align: center; font-size: 14pt; font-family: Arial;
                            font-weight: bold;">
                            Registro en Línea
                        </td>
                        <td style="width: 160px; text-align: center;">
                            <asp:Image ID="Image2" runat="server" ImageUrl="~/images/conacyt_logo3d.gif" Height="50px" />
                        </td>
                    </tr>
                </table>
                <asp:Panel ID="pnlDatos" runat="server">
                    <asp:ValidationSummary ID="valSum" runat="server" DisplayMode="SingleParagraph" HeaderText="Los campos marcados con * son requeridos:"
                        Font-Names="Verdana" Font-Size="8pt" ForeColor="Red" />
                    <table style="border: 0; width: 800px; font-size: 8pt;">
                        <tr>
                            <td colspan="3" style="font-size: 9pt; font-family: Verdana; font-weight: bold; text-align: center;">
                                DATOS PERSONALES
                            </td>
                        </tr>
                        <tr>
                            <td colspan="3" style="font-family: Verdana; font-weight: bold;">
                                <hr width="100%" noshade="noshade" size="0" />
                            </td>
                        </tr>
                        <tr>
                            <td style="text-align: right; font-family: Verdana; width: 12%;">
                                <asp:Label ID="lblEspecificarInstitucion1" runat="server" Font-Bold="True" Text="Título del evento:"></asp:Label>
                            </td>
                            <td colspan="2" style="text-align: left; width: 40%;">
                                <asp:DropDownList ID="ddlTituloEvento" runat="server" Font-Size="8pt" Width="540px"
                                    Height="24px">
                                    <asp:ListItem Selected="True">Seleccionar...</asp:ListItem>
                                    <asp:ListItem>3er. Taller de Áreas Naturales Protegidas de Redes Temáticas CONACyT - 18 al 21 de Septiembre</asp:ListItem>
                                </asp:DropDownList>
                                <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToValidate="ddlTituloEvento"
                                    Operator="NotEqual" ValueToCompare="Seleccionar..." SetFocusOnError="True" ForeColor="Red">*</asp:CompareValidator>
                            </td>
                        </tr>
                        <tr>
                            <td style="text-align: right; font-family: Verdana">
                                Nombre(s):
                            </td>
                            <td style="text-align: left">
                                <asp:TextBox ID="txtNombres" runat="server" Font-Size="8pt" Width="240px" MaxLength="50" />
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtNombres"
                                    SetFocusOnError="True" Font-Bold="True" ForeColor="Red">*</asp:RequiredFieldValidator>
                            </td>
                            <td>
                            </td>
                        </tr>
                        <tr>
                            <td style="text-align: right; font-family: Verdana">
                                Apellido(s):
                            </td>
                            <td style="text-align: left">
                                <asp:TextBox ID="txtApellidos" runat="server" Width="240px" Font-Size="8pt" MaxLength="50" />
                            </td>
                            <td>
                            </td>
                        </tr>
                        <tr>
                            <td style="text-align: right; font-family: Verdana">
                                Correo electrónico:
                            </td>
                            <td style="text-align: left">
                                <asp:TextBox ID="txtCorreo" runat="server" MaxLength="50" Width="240px" Font-Size="8pt" />
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtCorreo"
                                    SetFocusOnError="True" Font-Bold="True" ForeColor="Red">
                              *</asp:RequiredFieldValidator>
                            </td>
                            <td style="text-align: left">
                                <asp:RegularExpressionValidator ID="valRegExCorreo" runat="server" ControlToValidate="txtCorreo"
                                    Display="Static" Font-Names="Arial" Font-Size="8pt" 
                                    ValidationExpression="^([\w-\.]+)@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.)|(([\w-]+\.)+))([a-zA-Z]{2,4}|[0-9]{1,3})(\]?)$" 
                                    ForeColor="Red">Formato: correo@servidor.dominio
                                </asp:RegularExpressionValidator>
                            </td>
                        </tr>
                        <!-- renglon en blanco -->
                        <tr>
                            <td style="text-align: right; font-family: Verdana">
                                Confirmar correo electrónico:
                            </td>
                            <td style="text-align: left">
                                <asp:TextBox ID="txtCorreoConfirma" runat="server" Font-Size="8pt" MaxLength="50"
                                    Width="240px" />
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtCorreoConfirma"
                                    Font-Bold="True" SetFocusOnError="True" ForeColor="Red">
                              *</asp:RequiredFieldValidator>
                            </td>
                            <td style="text-align: left">
                                <asp:CompareValidator ID="CompareValidator3" runat="server" ControlToCompare="txtCorreo"
                                    ControlToValidate="txtCorreoConfirma" Font-Names="Arial" Font-Size="8pt" 
                                    SetFocusOnError="True" ForeColor="Red">Confirmar correo electrónico.</asp:CompareValidator>
                            </td>
                        </tr>
                        <tr>
                            <td style="text-align: right; font-family: Verdana">
                                Domicilio:
                            </td>
                            <td style="text-align: left">
                                <asp:TextBox ID="txtDomicilio" runat="server" Font-Size="8pt" MaxLength="200" Width="240px" />
                            </td>
                            <td>
                            </td>
                        </tr>
                        <tr>
                            <td style="text-align: right; font-family: Verdana">
                                Ciudad:
                            </td>
                            <td style="text-align: left">
                                <asp:TextBox ID="txtCiudad" runat="server" Width="240px" Font-Size="8pt" MaxLength="50" />
                            </td>
                            <td>
                            </td>
                        </tr>
                        <tr>
                            <td style="text-align: right; font-family: Verdana">
                                Estado:
                            </td>
                            <td style="text-align: left">
                                <asp:TextBox ID="txtEstado" runat="server" Width="240px" Font-Size="8pt" MaxLength="50" />
                            </td>
                            <td>
                                &nbsp;
                            </td>
                        </tr>
                        <tr>
                            <td style="text-align: right; font-family: Verdana">
                                País:
                            </td>
                            <td style="text-align: left">
                                <asp:TextBox ID="txtPais" runat="server" Width="240px" Font-Size="8pt" MaxLength="50"></asp:TextBox>
                            </td>
                            <td>
                            </td>
                        </tr>
                        <tr>
                            <td style="text-align: right; font-family: Verdana">
                                Codigo postal:
                            </td>
                            <td style="text-align: left">
                                <asp:TextBox ID="txtCP" runat="server" MaxLength="50" Width="60px" Font-Size="8pt" />
                            </td>
                            <td>
                            </td>
                        </tr>
                        <tr>
                            <td style="text-align: right; font-family: Verdana">
                                Teléfono:
                            </td>
                            <td style="text-align: left">
                                <asp:TextBox ID="txtTelefono" runat="server" MaxLength="50" Font-Size="8pt" />
                            </td>
                            <td>
                            </td>
                        </tr>
                        <tr>
                            <td style="text-align: right; font-family: Verdana">
                                Fax:
                            </td>
                            <td style="text-align: left">
                                <asp:TextBox ID="txtFax" runat="server" MaxLength="50" Font-Size="8pt" />
                            </td>
                            <td>
                            </td>
                        </tr>
                        <tr>
                            <td style="text-align: right; font-family: Verdana">
                                Institución | Empresa:
                            </td>
                            <td style="text-align: left">
                                <asp:TextBox ID="txtInstitucion" runat="server" Font-Size="8pt" Width="240px" MaxLength="200" />
                            </td>
                            <td>
                                &nbsp;
                            </td>
                        </tr>
                        <tr>
                            <!-- renglon en blanco -->
                            <td colspan="3">
                                &nbsp;
                            </td>
                        </tr>
                    </table>
                    <table style="border: 0; width: 800px; font-size: 8pt;">
                        <tr>
                            <td style="font-size: 9pt; font-family: Verdana; font-weight: bold; width: 600pt;
                                text-align: center;">
                                INFORMACIÓN ADICIONAL
                            </td>
                        </tr>
                        <tr>
                            <!-- renglon en blanco -->
                            <td style="font-family: Verdana; font-weight: bold; width: 600pt;">
                                <hr noshade="noshade" size="0" width="100%" />
                            </td>
                        </tr>
                    </table>
                    <asp:Panel ID="pnlItinerario" runat="server">
                        <table style="border: 0; width: 800px; font-size: 9pt; font-family: Verdana;">
                            <tr>
                                <td colspan="5" style="text-align: center;">
                                    <asp:Label ID="Label14" runat="server" Font-Bold="True" Font-Names="Verdana" Font-Size="9pt"
                                        Text="ITINERARIO DE VUELO"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td colspan="5" style="width: 50%; text-align: left;">
                                    <asp:Label ID="Label13" runat="server" Font-Bold="True" Font-Names="Verdana" Font-Size="9pt"
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
                            <tr> <!-- renglon en blanco -->
                                <td colspan="5">&nbsp;</td>
                            </tr>
                            <tr>
                                <td colspan="5" style="width: 50%; text-align: left;">
                                    <asp:Label ID="Label25" runat="server" Font-Bold="True" Font-Names="Verdana" Font-Size="9pt"
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
                                        Font-Size="8pt" MaxLength="50"
                                        Width="80pt"></asp:TextBox>
                                </td>                                
                                <td style="text-align: left; vertical-align: middle;">
                                    <asp:Label ID="lblRegresoAerolinea1" runat="server" Font-Bold="False" 
                                        Font-Names="Verdana" Font-Size="8pt"
                                        Text="Aerolinea: "></asp:Label>
                                    <br />
                                    <asp:TextBox ID="txtRegresoAerolinea1" runat="server" Font-Names="Verdana" 
                                        Font-Size="8pt" MaxLength="50"
                                        Width="80pt"></asp:TextBox>
                                </td>
                                <td style="text-align: left; vertical-align: middle;">
                                    <asp:Label ID="lblRegresoNoVuelo1" runat="server" Font-Bold="False" 
                                        Font-Names="Verdana" Font-Size="8pt"
                                        Text="No. de Vuelo: "></asp:Label>
                                    <br />
                                    <asp:TextBox ID="txtRegresoNoVuelo1" runat="server" Font-Names="Verdana" 
                                        Font-Size="8pt" MaxLength="50"
                                        Width="80pt"></asp:TextBox>
                                </td>
                                <td style="text-align: left; vertical-align: middle;">
                                    <asp:Label ID="lblRegresoFecha1" runat="server" Font-Bold="False" 
                                        Font-Names="Verdana" Font-Size="8pt"
                                        Text="Fecha: "></asp:Label>
                                    <br />
                                    <asp:TextBox ID="txtRegresoFecha1" runat="server" Font-Names="Verdana" 
                                        Font-Size="8pt" MaxLength="50"
                                        Width="80pt"></asp:TextBox>
                                </td>
                                <td style="text-align: left; vertical-align: middle;">
                                    <asp:Label ID="lblRegresoHora1" runat="server" Font-Bold="False" 
                                        Font-Names="Verdana" Font-Size="8pt"
                                        Text="Hora: "></asp:Label>
                                    <br />
                                    <asp:TextBox ID="txtRegresoHora1" runat="server" Font-Names="Verdana" 
                                        Font-Size="8pt" MaxLength="50"
                                        Width="80pt"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td style="text-align: left; vertical-align: middle;">
                                    <asp:Label ID="lblRegresoCiudad2" runat="server" Font-Bold="False" 
                                        Font-Names="Verdana" Font-Size="8pt"
                                        Text="Con conexion en: "></asp:Label>
                                    <br />
                                    <asp:TextBox ID="txtRegresoCiudad2" runat="server" Font-Names="Verdana" 
                                        Font-Size="8pt" MaxLength="50"
                                        Width="80pt"></asp:TextBox>
                                </td>                                
                                <td style="text-align: left; vertical-align: middle;">
                                    <asp:Label ID="lblRegresoAerolinea2" runat="server" Font-Bold="False" 
                                        Font-Names="Verdana" Font-Size="8pt"
                                        Text="Aerolinea: "></asp:Label>
                                    <br />
                                    <asp:TextBox ID="txtRegresoAerolinea2" runat="server" Font-Names="Verdana" 
                                        Font-Size="8pt" MaxLength="50"
                                        Width="80pt"></asp:TextBox>
                                </td>
                                <td style="text-align: left; vertical-align: middle;">
                                    <asp:Label ID="lblRegresoNoVuelo2" runat="server" Font-Bold="False" 
                                        Font-Names="Verdana" Font-Size="8pt"
                                        Text="No. de Vuelo: "></asp:Label>
                                    <br />
                                    <asp:TextBox ID="txtRegresoNoVuelo2" runat="server" Font-Names="Verdana" 
                                        Font-Size="8pt" MaxLength="50"
                                        Width="80pt"></asp:TextBox>
                                </td>
                                <td style="text-align: left; vertical-align: middle;">
                                    <asp:Label ID="lblRegresoFecha2" runat="server" Font-Bold="False" 
                                        Font-Names="Verdana" Font-Size="8pt"
                                        Text="Fecha: "></asp:Label>
                                    <br />
                                    <asp:TextBox ID="txtRegresoFecha2" runat="server" Font-Names="Verdana" 
                                        Font-Size="8pt" MaxLength="50"
                                        Width="80pt"></asp:TextBox>
                                </td>
                                <td style="text-align: left; vertical-align: middle;">
                                    <asp:Label ID="lblRegresoHora2" runat="server" Font-Bold="False" 
                                        Font-Names="Verdana" Font-Size="8pt"
                                        Text="Hora: "></asp:Label>
                                    <br />
                                    <asp:TextBox ID="txtRegresoHora2" runat="server" Font-Names="Verdana" 
                                        Font-Size="8pt" MaxLength="50"
                                        Width="80pt"></asp:TextBox>
                                </td>
                            </tr>
                            <tr> <!-- renglon en blanco -->
                                <td colspan="5">&nbsp;</td>
                            </tr>
                            <tr>
                                <td colspan="2" style="text-align: right;">
                                    &nbsp;<asp:Label ID="lblHotel" runat="server" Text="Hotel donde se hospeda:" 
                                        Font-Names="Verdana" Font-Size="8pt"></asp:Label>
                                </td>
                                <td colspan="3" style="text-align: left;">
                                    <asp:TextBox ID="txtHotel" runat="server" Font-Size="8pt" Width="180pt" MaxLength="200"
                                        ReadOnly="True" Font-Names="Verdana" Font-Bold="True">Holiday Inn</asp:TextBox>
                                </td>
                            </tr>
                            <tr> <!-- renglon en blanco -->
                                <td colspan="5">&nbsp;</td>
                            </tr>
                        </table>
                    </asp:Panel>
                    <table style="border: 0; width: 800px; font-size: 8pt;">
                        <tr>
                            <td style="font-family: Verdana; text-align: right; width: 25%;">
                                <asp:Label ID="Label10" runat="server" Font-Bold="False" Font-Names="Verdana" Font-Size="8pt"
                                    Text="Comentarios:"></asp:Label>
                            </td>
                            <td style="text-align: left; font-family: Verdana;">
                                <asp:TextBox ID="txtComentarios" runat="server" MaxLength="5000" TextMode="MultiLine"
                                    Width="90%" />
                            </td>
                        </tr>
                        <tr>
                            <!-- renglon en blanco -->
                            <td colspan="2">
                                &nbsp;
                            </td>
                        </tr>
                    </table>
                    <asp:Button ID="btnContinuar" runat="server" OnClick="btnContinuar_Click" Text="Continuar"
                        Width="150px" Font-Names="Arial" Font-Size="8pt" />
                    <br />
                </asp:Panel>
            </div>
            <!-- REGISTRO -->
            <asp:Panel ID="pnlConfirmacion" runat="server" Visible="False">
                <table style="border: 0; width: 600; font-size: 8pt">
                    <tr>
                        <td colspan="3" style="font-family: Verdana; font-weight: bold; font-size: 9pt;">
                            CONFIRMACIÓN DE DATOS<br />
                        </td>
                    </tr>
                    <tr>
                        <td style="text-align: left;" colspan="3">
                            &nbsp;
                        </td>
                    </tr>
                    <tr>
                        <td style="text-align: right; font-family: Verdana">
                            &nbsp;
                        </td>
                        <td style="text-align: left">
                            <asp:Label ID="lblConfirmacion" runat="server" Font-Names="Consolas" Font-Size="8pt"
                                Text="Label"></asp:Label>
                        </td>
                        <td style="text-align: left">
                            &nbsp;
                        </td>
                    </tr>
                    <!-- renglon en blanco -->
                    <tr>
                        <td colspan="3" style="text-align: left">
                            &nbsp;
                        </td>
                    </tr>
                    <tr>
                        <td colspan="3" style="text-align: center;">
                            <asp:Button ID="btnRegresar" runat="server" OnClick="btnRegresar_Click" Text="Regresar"
                                Width="150px" Font-Names="Arial" Font-Size="8pt" />
                            &nbsp;<asp:Button ID="btnEnviar" runat="server" Text="Enviar" Width="150px" OnClick="btnEnviar_Click"
                                Font-Names="Arial" Font-Size="8pt" />
                            <asp:SqlDataSource ID="SqlDSregistroWeb" runat="server" ConnectionString="<%$ ConnectionStrings:REGWEBConnectionString %>"
                                DeleteCommand="DELETE FROM [RegistroWeb] WHERE [id] = @original_id" InsertCommand="INSERT INTO [RegistroWeb] ([tituloEvento], [nombres], [apellidos], [correo], [domicilio], [ciudad], [estado], [pais], [cp], [telefono], [fax], [institucion], [extramuros], [llegalinea], [llegavuelo], [llegafecha], [llegahora], [salelinea], [salevuelo], [salefecha], [salehora], [hotel], [comentarios]) VALUES (@tituloEvento, @nombres, @apellidos, @correo, @domicilio, @ciudad, @estado, @pais, @cp, @telefono, @fax, @institucion, @extramuros, @llegalinea, @llegavuelo, @llegafecha, @llegahora, @salelinea, @salevuelo, @salefecha, @salehora, @hotel, @comentarios)"
                                SelectCommand="SELECT * FROM [RegistroWeb]" UpdateCommand="UPDATE [RegistroWeb] SET [tituloEvento] = @tituloEvento, [nombres] = @nombres, [apellidos] = @apellidos, [correo] = @correo, [domicilio] = @domicilio, [ciudad] = @ciudad, [estado] = @estado, [pais] = @pais, [cp] = @cp, [telefono] = @telefono, [fax] = @fax, [institucion] = @institucion, [extramuros] = @extramuros, [llegalinea] = @llegalinea, [llegavuelo] = @llegavuelo, [llegafecha] = @llegafecha, [llegahora] = @llegahora, [salelinea] = @salelinea, [salevuelo] = @salevuelo, [salefecha] = @salefecha, [salehora] = @salehora, [hotel] = @hotel, [comentarios] = @comentarios WHERE [id] = @original_id"
                                OldValuesParameterFormatString="original_{0}">
                                <DeleteParameters>
                                    <asp:Parameter Name="original_id" Type="Int32" />
                                </DeleteParameters>
                                <UpdateParameters>
                                    <asp:Parameter Name="tituloEvento" Type="String" />
                                    <asp:Parameter Name="nombres" Type="String" />
                                    <asp:Parameter Name="apellidos" Type="String" />
                                    <asp:Parameter Name="correo" Type="String" />
                                    <asp:Parameter Name="domicilio" Type="String" />
                                    <asp:Parameter Name="ciudad" Type="String" />
                                    <asp:Parameter Name="estado" Type="String" />
                                    <asp:Parameter Name="pais" Type="String" />
                                    <asp:Parameter Name="cp" Type="String" />
                                    <asp:Parameter Name="telefono" Type="String" />
                                    <asp:Parameter Name="fax" Type="String" />
                                    <asp:Parameter Name="institucion" Type="String" />
                                    <asp:Parameter Name="extramuros" Type="String" />
                                    <asp:Parameter Name="llegalinea" Type="String" />
                                    <asp:Parameter Name="llegavuelo" Type="String" />
                                    <asp:Parameter Name="llegafecha" Type="String" />
                                    <asp:Parameter Name="llegahora" Type="String" />
                                    <asp:Parameter Name="salelinea" Type="String" />
                                    <asp:Parameter Name="salevuelo" Type="String" />
                                    <asp:Parameter Name="salefecha" Type="String" />
                                    <asp:Parameter Name="salehora" Type="String" />
                                    <asp:Parameter Name="hotel" Type="String" />
                                    <asp:Parameter Name="comentarios" Type="String" />
                                    <asp:Parameter Name="original_id" Type="Int32" />
                                </UpdateParameters>
                                <InsertParameters>
                                    <asp:Parameter Name="tituloEvento" Type="String" />
                                    <asp:Parameter Name="nombres" Type="String" />
                                    <asp:Parameter Name="apellidos" Type="String" />
                                    <asp:Parameter Name="correo" Type="String" />
                                    <asp:Parameter Name="domicilio" Type="String" />
                                    <asp:Parameter Name="ciudad" Type="String" />
                                    <asp:Parameter Name="estado" Type="String" />
                                    <asp:Parameter Name="pais" Type="String" />
                                    <asp:Parameter Name="cp" Type="String" />
                                    <asp:Parameter Name="telefono" Type="String" />
                                    <asp:Parameter Name="fax" Type="String" />
                                    <asp:Parameter Name="institucion" Type="String" />
                                    <asp:Parameter Name="extramuros" Type="String" />
                                    <asp:Parameter Name="llegalinea" Type="String" />
                                    <asp:Parameter Name="llegavuelo" Type="String" />
                                    <asp:Parameter Name="llegafecha" Type="String" />
                                    <asp:Parameter Name="llegahora" Type="String" />
                                    <asp:Parameter Name="salelinea" Type="String" />
                                    <asp:Parameter Name="salevuelo" Type="String" />
                                    <asp:Parameter Name="salefecha" Type="String" />
                                    <asp:Parameter Name="salehora" Type="String" />
                                    <asp:Parameter Name="hotel" Type="String" />
                                    <asp:Parameter Name="comentarios" Type="String" />
                                </InsertParameters>
                            </asp:SqlDataSource>
                        </td>
                    </tr>
                </table>
            </asp:Panel>
            <br />
            <asp:Button ID="btnCancelar" runat="server" Text="Cancelar" CausesValidation="False"
                Width="150px" PostBackUrl="http://www.cibnor.mx" Font-Names="Arial" Font-Size="8pt" />
            <br />
            <br />
            <table style="width: 800px; font-family: Verdana; font-size: 11pt;">
                <tr>
                    <td colspan="2" style="font-size: 8pt; text-align: center;">
                        <asp:Label ID="Label11" runat="server" Font-Size="7pt" Text="Instituto Politécnico Nacional 195, Playa Palo de Santa Rita Sur; La Paz, B.C.S. México; C.P. 23096, Tel:(52) (612) 123-8484 Fax:(52) (612) 125-3625"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td style="font-size: 8pt; text-align: right; background-color: #223D63;">
                        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="http://intranet.cibnor.mx/eplant1.php?pagID=politicaspmdp"
                            Font-Bold="True" Font-Names="Verdana" Font-Size="8pt" ForeColor="#CCFFFF" Target="_blank">Política de Privacidad</asp:HyperLink>
                        &nbsp;&nbsp;&nbsp;
                    </td>
                    <td width="32%" height="5" bgcolor="#D8ECF3" id="footblk" align="center">
                    </td>
                </tr>
            </table>
        </center>
    </div>
    </form>
</body>
</html>
