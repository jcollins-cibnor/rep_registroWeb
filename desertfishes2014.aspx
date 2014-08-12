<%@ Page Language="C#" AutoEventWireup="true" CodeFile="desertfishes2014.aspx.cs" Inherits="desertfishes2014" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>CIBNOR - Registro en Línea</title>
    
    <meta name="msapplication-window" content="width=800;height=600"/>
    <%--    <link rel="icon" type="image/x-icon" href="images/icon_cib.ico" />--%>
</head>
<body>
    <form id="form1" runat="server">    
    <asp:ScriptManager ID="scriptmanager1" EnablePartialRendering="true" runat="server" />
        <div align="center">    
            
                <table style="font-family: Verdana; width:500pt;">
                    <tr>
                        <td style="width:120px; text-align: center;">
                            <asp:Image ID="Image1" runat="server" 
                                Height="65px" ImageUrl="~/Images/logo_desertfishes_reunion.png" /></td>
                        <td style="width:260px; text-align:center;">
                            <asp:Image ID="Image2" runat="server" Height="60px" 
                                ImageUrl="~/Images/logo_desertfishes_council.png" />
                        </td>
                        <td style="width:120px; text-align:center;">
                            <asp:Image ID="Image3" runat="server" Height="50px" 
                                ImageUrl="~/Images/ciboficial.gif" />
                        </td>
                    </tr>
                    <tr>
                        <td colspan="3" style="text-align:center">
                            <asp:Label ID="lblRegistroEnLinea" runat="server" Font-Bold="True" Font-Names="Verdana" 
                                Font-Size="10pt" Text="Registro en Línea"></asp:Label>
                        </td>
                    </tr>
                </table>
                <br />

            <asp:ValidationSummary ID="valSum" runat="server" DisplayMode="SingleParagraph" 
                HeaderText="* Campos requeridos." Font-Names="Verdana" Font-Size="8pt" 
                ForeColor="Red" />
                
            <asp:Panel ID="pnlDatos" runat="server"> <%--PANEL DE DATOS--%>
            <table style="border:0; width:500pt; font-size: 8pt;">
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
                        <asp:Label ID="lblDireccion" runat="server" Font-Bold="False" 
                            Font-Names="Verdana" Font-Size="8pt" Text="Dirección:"></asp:Label>
                    </td>
                    <td style="text-align: left">
                        <asp:TextBox ID="txtDireccion" runat="server" MaxLength="200" Font-Size="8pt" 
                            Width="240px" />
                    </td>
                    <td> &nbsp;</td>
                </tr>
                <tr>
                    <td style="text-align:right; font-family: Verdana">
                        <asp:Label ID="lblCodigo" runat="server" Font-Bold="False" 
                            Font-Names="Verdana" Font-Size="8pt" Text="Codigo postal:"></asp:Label>
                    </td>
                    <td style="text-align: left">
                        <asp:TextBox ID="txtCodigo" runat="server" MaxLength="50" Font-Size="8pt" 
                            Width="120px" />
                    </td>
                    <td> &nbsp;</td>
                </tr>
                <tr>
                    <td style="text-align:right; font-family: Verdana">
                        <asp:Label ID="lblCiudad" runat="server" Font-Bold="False" 
                            Font-Names="Verdana" Font-Size="8pt" Text="Ciudad:"></asp:Label>
                    </td>
                    <td style="text-align: left">
                        <asp:TextBox ID="txtCiudad" runat="server" MaxLength="50" Font-Size="8pt" 
                            Width="120px" />
                    </td>
                    <td> &nbsp;</td>
                </tr>
                                <tr>
                    <td style="text-align:right; font-family: Verdana">
                        <asp:Label ID="lblEstado" runat="server" Font-Bold="False" 
                            Font-Names="Verdana" Font-Size="8pt" Text="Estado:"></asp:Label>
                    </td>
                    <td style="text-align: left">
                        <asp:TextBox ID="txtEstado" runat="server" MaxLength="50" Font-Size="8pt" 
                            Width="120px" />
                    </td>
                    <td> &nbsp;</td>
                </tr>
                <tr>
                    <td style="text-align:right; font-family: Verdana">
                        <asp:Label ID="lblPais" runat="server" Font-Bold="False" 
                            Font-Names="Verdana" Font-Size="8pt" Text="País:"></asp:Label>
                    </td>
                    <td style="text-align: left">
                        <asp:TextBox ID="txtPais" runat="server" MaxLength="50" Font-Size="8pt" 
                            Width="120px" />
                    </td>
                    <td> &nbsp;</td>
                </tr>
                <tr>
                    <td style="text-align:right; font-family: Verdana">
                        <asp:Label ID="lblRegistro" runat="server" Font-Bold="False" Font-Names="Verdana" 
                            Font-Size="8pt" Text="Tipo de registro:"></asp:Label>
                    </td>
                    <td style="text-align: left">
                        <asp:DropDownList ID="ddlRegistro" runat="server" Font-Italic="True" 
                            Font-Names="Verdana" Font-Size="8pt" Width="240px">
                            <asp:ListItem Selected="True" Value="--">Seleccione una opción...</asp:ListItem>
                            <asp:ListItem>Investigador nacional</asp:ListItem>
                            <asp:ListItem>Estudiante nacional</asp:ListItem>
                            <asp:ListItem>Investigador EEUU</asp:ListItem>
                            <asp:ListItem>Estudiante EEUU</asp:ListItem>
                        </asp:DropDownList>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                            ControlToValidate="ddlRegistro" Font-Bold="True" ForeColor="Red" 
                            InitialValue="--" SetFocusOnError="True">*</asp:RequiredFieldValidator>
                    </td>
                    <td> &nbsp;</td>
                </tr>
                <tr>
                    <td style="text-align:right; font-family: Verdana">
                        <asp:Label ID="lblTalla" runat="server" Font-Bold="False" Font-Names="Verdana" 
                            Font-Size="8pt" Text="Talla de camiseta:" Visible="False"></asp:Label>
                    </td>
                    <td style="text-align: left">
                        <asp:DropDownList ID="ddlTalla" runat="server" Font-Italic="True" 
                            Font-Names="Verdana" Font-Size="8pt" Width="125px" Visible="False">
                            <asp:ListItem Selected="True" Value="--">Seleccione una...</asp:ListItem>
                            <asp:ListItem>XXG</asp:ListItem>
                            <asp:ListItem>XG</asp:ListItem>
                            <asp:ListItem>G</asp:ListItem>
                            <asp:ListItem>M</asp:ListItem>
                            <asp:ListItem>CH</asp:ListItem>
                        </asp:DropDownList>
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
            <table style="border: 0; width: 500pt; font-size: 9pt; font-family: Verdana;">
                <tr>
                    <td colspan="2" style="text-align: center;">
                        <asp:Label ID="Label3" runat="server" Font-Names="Verdana" Font-Size="8pt" 
                            Text="En caso de que se hospede en un hotel diferente a la sede, favor de indicarlo."></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td style="text-align: right; width: 25%;">
                        <asp:Label ID="lblHotel" runat="server" Font-Names="Verdana" Font-Size="8pt"
                            Text="Hotel:"></asp:Label>
                    </td>
                    <td style="text-align: left;">
                        <asp:TextBox ID="txtHotel" runat="server" Font-Bold="False" 
                            Font-Names="Verdana" Font-Size="8pt" MaxLength="50" 
                            Width="180pt">Barcelo (sede)</asp:TextBox>
                            <br />
                    </td>
                </tr>
            </table>
            <%--**********--%>
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
                                                Font-Size="8pt" MaxLength="20" Width="90%">--</asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
                                                ControlToValidate="txtFacturaRFC" Font-Bold="True" Font-Names="Arial" 
                                                Font-Size="9pt" SetFocusOnError="True" ForeColor="Red">*</asp:RequiredFieldValidator>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td style="font-size: 9pt; font-family: Verdana; font-weight: bold; text-align:right;">
                                            <asp:Label ID="lblFacturaDireccion" runat="server" Font-Bold="False" Font-Names="Verdana" 
                                                Font-Size="8pt" Text="Dirección:"></asp:Label>
                                        </td>
                                        <td style="font-size: 9pt; font-family: Verdana; text-align:left;">
                                            <asp:TextBox ID="txtFacturaDireccion" runat="server" Font-Names="Verdana" 
                                                Font-Size="8pt" MaxLength="500" TextMode="MultiLine" Width="90%">--</asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                                                ControlToValidate="txtFacturaDireccion" Font-Bold="True" Font-Names="Arial" 
                                                Font-Size="9pt" SetFocusOnError="True" ForeColor="Red">*</asp:RequiredFieldValidator>
                                                <br />
                                            <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
                                                ControlToValidate="txtFacturaDireccion" Font-Names="Arial" Font-Size="8pt" 
                                                SetFocusOnError="True" ValidationExpression="^([\S\s]{0,1000})$">Maximo de caracteres permitidos: 500</asp:RegularExpressionValidator>

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
            <table style="border:0; width:500pt; font-size: 8pt;">
                <tr>
                    <td style="text-align:left; font-family: Verdana; ">
                        <asp:Label ID="lblComentarios" runat="server" Font-Bold="False" Font-Names="Verdana" 
                            Font-Size="8pt" Text="Comentarios adicionales:"></asp:Label>
                        <br />
                        <asp:TextBox ID="txtComentarios" runat="server" MaxLength="1000" 
                            TextMode="MultiLine" Width="100%"></asp:TextBox>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                            ControlToValidate="txtComentarios" Font-Names="Arial" Font-Size="8pt" 
                            SetFocusOnError="True" ValidationExpression="^([\S\s]{0,1000})$">Maximo de caracteres permitidos: 1000</asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <!-- renglon en blanco -->
                    <td>
                        &nbsp;</td>
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
                            <br />
                        <asp:Label ID="lblStatus" runat="server" Font-Bold="True" 
                            Font-Names="Verdana" Font-Size="8pt" ForeColor="Blue"></asp:Label>

                        <asp:SqlDataSource ID="SqlDSregistro" runat="server" 
                            ConnectionString="<%$ ConnectionStrings:REGWEBConnectionString %>" 
                            DeleteCommand="DELETE FROM [CongresoCPI2013] WHERE [id] = @original_id" 
                            InsertCommand="INSERT INTO [CongresoCPI2013] ([nombres], [apellidos], [correo], [telefono], [institucion], [salidaciudad1], [salidalinea1], [salidavuelo1], [salidafecha1], [salidahora1], [salidaciudad2], [salidalinea2], [salidavuelo2], [salidafecha2], [salidahora2], [regresociudad1], [regresolinea1], [regresovuelo1], [regresofecha1], [regresohora1], [regresociudad2], [regresolinea2], [regresovuelo2], [regresofecha2], [regresohora2], [hotel], [coctel], [cena], [familia], [familiacantidad], [familiaedades], [comentarios]) VALUES (@nombres, @apellidos, @correo, @telefono, @institucion, @salidaciudad1, @salidalinea1, @salidavuelo1, @salidafecha1, @salidahora1, @salidaciudad2, @salidalinea2, @salidavuelo2, @salidafecha2, @salidahora2, @regresociudad1, @regresolinea1, @regresovuelo1, @regresofecha1, @regresohora1, @regresociudad2, @regresolinea2, @regresovuelo2, @regresofecha2, @regresohora2, @hotel, @coctel, @cena, @familia, @familiacantidad, @familiaedades, @comentarios)" 
                            SelectCommand="SELECT * FROM [CongresoCPI2013]" 
                            
                            UpdateCommand="UPDATE [CongresoCPI2013] SET [nombres] = @nombres, [apellidos] = @apellidos, [correo] = @correo, [telefono] = @telefono, [institucion] = @institucion, [salidaciudad1] = @salidaciudad1, [salidalinea1] = @salidalinea1, [salidavuelo1] = @salidavuelo1, [salidafecha1] = @salidafecha1, [salidahora1] = @salidahora1, [salidaciudad2] = @salidaciudad2, [salidalinea2] = @salidalinea2, [salidavuelo2] = @salidavuelo2, [salidafecha2] = @salidafecha2, [salidahora2] = @salidahora2, [regresociudad1] = @regresociudad1, [regresolinea1] = @regresolinea1, [regresovuelo1] = @regresovuelo1, [regresofecha1] = @regresofecha1, [regresohora1] = @regresohora1, [regresociudad2] = @regresociudad2, [regresolinea2] = @regresolinea2, [regresovuelo2] = @regresovuelo2, [regresofecha2] = @regresofecha2, [regresohora2] = @regresohora2, [hotel] = @hotel, [coctel] = @coctel, [cena] = @cena, [familia] = @familia, [familiacantidad] = @familiacantidad, [familiaedades] = @familiaedades, [comentarios] = @comentarios WHERE [id] = @original_id" 
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
                                <asp:Parameter Name="hotel" Type="String" />
                                <asp:Parameter Name="coctel" Type="String" />
                                <asp:Parameter Name="cena" Type="String" />
                                <asp:Parameter Name="familia" Type="String" />
                                <asp:Parameter Name="familiacantidad" Type="String" />
                                <asp:Parameter Name="familiaedades" Type="String" />
                                <asp:Parameter Name="comentarios" Type="String" />
                                <asp:Parameter Name="original_id" Type="Int32" />
                            </UpdateParameters>
                            <InsertParameters>
                                <asp:Parameter Name="nombres" Type="String" />
                                <asp:Parameter Name="apellidos" Type="String" />
                                <asp:Parameter Name="correo" Type="String" />
                                <asp:Parameter Name="telefono" Type="String" />
                                <asp:Parameter Name="institucion" Type="String" />
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
                                <asp:Parameter Name="hotel" Type="String" />
                                <asp:Parameter Name="coctel" Type="String" />
                                <asp:Parameter Name="cena" Type="String" />
                                <asp:Parameter Name="familia" Type="String" />
                                <asp:Parameter Name="familiacantidad" Type="String" />
                                <asp:Parameter Name="familiaedades" Type="String" />
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
                PostBackUrl="http://intranet.cibnor.mx/eplant1.php?pagID=anuncios/desertfishes2014/index" 
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
