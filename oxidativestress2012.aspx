<%@ Page Language="C#" AutoEventWireup="true" CodeFile="oxidativestress2012.aspx.cs" Inherits="oxidativestress2012" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>CIBNOR - Registro en Línea</title>
    
    <meta name="msapplication-window" content="width=800;height=600"/>
    <link rel="icon" type="image/x-icon" href="images/icon_cib.ico" />
</head>
<body>
    <form id="form1" runat="server">    
    <asp:ScriptManager ID="scriptmanager1" EnablePartialRendering="true" runat="server" />
        <div align="center">    
            <asp:UpdatePanel ID="UpnlIdioma" runat="server">
            <ContentTemplate>
            
                <table style="font-family: Verdana; width:500pt;">
                    <tr>
                        <td style="width:320pt;">
                        </td>
                        <td style="text-align: right;">
                            <asp:RadioButtonList ID="rblIdioma" runat="server" AutoPostBack="True" 
                                Font-Bold="False" RepeatDirection="Horizontal" Width="160pt" 
                                Font-Names="Verdana" Font-Size="8pt" 
                                onselectedindexchanged="rblIdioma_SelectedIndexChanged">
                                <asp:ListItem Selected="True">Español</asp:ListItem>
                                <asp:ListItem>English</asp:ListItem>
                            </asp:RadioButtonList>
                        </td>
                    </tr>
                </table>
                
                <table style="font-family: Verdana; width:500pt;">
                    <tr>
                        <td style="width:160px; text-align: center;">
                            <asp:Image ID="Image1" runat="server" ImageUrl="~/images/logo_stress.png" 
                                Height="50px" /></td>
                        <td style="width:480px; text-align:center; font-size: 10pt; font-family: Arial; font-weight: bold;">
                            <asp:Label ID="lblTituloEvento" runat="server" Font-Bold="True" 
                                Font-Names="Verdana" Font-Size="10pt" 
                                
                                
                                Text="Primer Congreso Internacional del Estrés Oxidativo en Ecosistemas Acuáticos"></asp:Label>
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
                    HeaderText="* Campos requeridos." Font-Names="Verdana" Font-Size="8pt" />

                
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
                            Font-Size="8pt" Width="240px" MaxLength="50" />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                            ControlToValidate="txtNombres" 
                            SetFocusOnError="True" Font-Bold="True">*</asp:RequiredFieldValidator>
                    </td>
                    <td></td>
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
                    <td> &nbsp;</td>
                </tr>
                <tr>
                    <td style="text-align:right; font-family: Verdana">
                        <asp:Label ID="lblCorreo" runat="server" Font-Bold="False" Font-Names="Verdana" 
                            Font-Size="8pt" Text="Correo electrónico:"></asp:Label>
                    </td>
                    <td style="text-align:left">
                        <asp:TextBox ID="txtCorreo" runat="server" 
                            MaxLength="50" Width="240px" Font-Size="8pt" />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                            ControlToValidate="txtCorreo" SetFocusOnError="True" 
                            Font-Bold="True">*</asp:RequiredFieldValidator>
                    </td>
                    <td style="text-align:left">
                        <asp:RegularExpressionValidator ID="valRegExCorreo" runat="server" 
                            ControlToValidate="txtCorreo" Display="Static" Font-Names="Arial" Font-Size="8pt"                             
                            ValidationExpression="^([\w-\.]+)@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.)|(([\w-]+\.)+))([a-zA-Z]{2,4}|[0-9]{1,3})(\]?)$">Formato: correo@servidor.dominio</asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td style="text-align:right; font-family: Verdana">
                        <asp:Label ID="lblCorreoConfirma" runat="server" Font-Bold="False" 
                            Font-Names="Verdana" Font-Size="8pt" Text="Confirmar correo electrónico:"></asp:Label>
                    </td>
                    <td style="text-align: left">
                        <asp:TextBox ID="txtCorreoConfirma" runat="server" Font-Size="8pt" 
                            MaxLength="50" Width="240px" />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                            ControlToValidate="txtCorreoConfirma" Font-Bold="True" 
                            SetFocusOnError="True">*</asp:RequiredFieldValidator>
                    </td>
                    <td style="text-align: left"> 
                        <asp:CompareValidator ID="valRegExCorreoConfirma" runat="server" 
                            ControlToCompare="txtCorreo" ControlToValidate="txtCorreoConfirma" Font-Names="Arial" 
                            Font-Size="8pt" SetFocusOnError="True">Confirmar correo electrónico</asp:CompareValidator>
                    </td>
                </tr>
                <tr>
                    <td style="text-align:right; font-family: Verdana">
                        <asp:Label ID="lblDomicilio" runat="server" Font-Bold="False" 
                            Font-Names="Verdana" Font-Size="8pt" Text="Domicilio:"></asp:Label>
                    </td>
                    <td style="text-align: left">
                        <asp:TextBox ID="txtDomicilio" runat="server" Font-Size="8pt" MaxLength="200" 
                            Width="240px" />
                    </td>
                    <td> &nbsp;</td>
                </tr>
                <tr>
                    <td style="text-align:right; font-family: Verdana">
                        <asp:Label ID="lblCiudad" runat="server" Font-Bold="False" Font-Names="Verdana" 
                            Font-Size="8pt" Text="Ciudad:"></asp:Label>
                    </td>
                    <td style="text-align: left">
                        <asp:TextBox ID="txtCiudad" runat="server" Width="240px" Font-Size="8pt" 
                            MaxLength="50" />
                    </td>
                    <td> </td>
                </tr>
                <tr>
                    <td style="text-align:right; font-family: Verdana">
                        <asp:Label ID="lblEstado" runat="server" Font-Bold="False" Font-Names="Verdana" 
                            Font-Size="8pt" Text="Estado:"></asp:Label>
                    </td>
                    <td style="text-align: left">
                        <asp:TextBox ID="txtEstado" runat="server" Width="240px" Font-Size="8pt" 
                            MaxLength="50" />
                    </td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td style="text-align:right; font-family: Verdana">
                        <asp:Label ID="lblPais" runat="server" Font-Bold="False" Font-Names="Verdana" 
                            Font-Size="8pt" Text="País:"></asp:Label>
                    </td>
                    <td style="text-align: left">
                        <asp:TextBox ID="txtPais" runat="server" Width="240px" Font-Size="8pt" 
                            MaxLength="50" ></asp:TextBox>
                    </td>
                    <td> </td>
                </tr>
                <tr>
                    <td style="text-align:right; font-family: Verdana">
                        <asp:Label ID="lblCP" runat="server" Font-Bold="False" Font-Names="Verdana" 
                            Font-Size="8pt" Text="Código postal:"></asp:Label>
                    </td>
                    <td style="text-align:left">
                        <asp:TextBox ID="txtCP" runat="server" MaxLength="50" Width="60px" 
                            Font-Size="8pt" />
                    </td>
                    <td> </td>
                </tr>
                <tr>
                    <td style="text-align:right; font-family: Verdana">
                        <asp:Label ID="lblTelefono" runat="server" Font-Bold="False" 
                            Font-Names="Verdana" Font-Size="8pt" Text="Teléfono:"></asp:Label>
                    </td>
                    <td style="text-align: left">
                        <asp:TextBox ID="txtTelefono" runat="server" MaxLength="50" Font-Size="8pt" />
                    </td>
                    <td> </td>
                </tr>
                <tr>
                    <td style="text-align:right; font-family: Verdana">
                        <asp:Label ID="lblFax" runat="server" Font-Bold="False" Font-Names="Verdana" 
                            Font-Size="8pt" Text="Fax:"></asp:Label>
                    </td>
                    <td style="text-align: left">
                        <asp:TextBox ID="txtFax" runat="server" MaxLength="50" Font-Size="8pt" />
                    </td>
                    <td> </td>
                </tr>
                <tr>
                    <td style="text-align:right; font-family: Verdana">
                        <asp:Label ID="lblInstitucion" runat="server" Font-Bold="False" 
                            Font-Names="Verdana" Font-Size="8pt" Text="Institución:"></asp:Label>
                    </td>
                    <td style="text-align: left">
                        <asp:TextBox ID="txtInstitucion" runat="server" Font-Size="8pt" Width="240px" 
                            MaxLength="200" />
                    </td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr> <!-- renglon en blanco --> 
                    <td colspan="3">&nbsp;</td>
                </tr>
            </table>

            <table style="border:0; width:500pt; font-size: 8pt;">
                <tr>
                    <td style="font-size: 9pt; font-family: Verdana; font-weight: bold; text-align: center;">
                        <asp:Label ID="lblInformacionAdicional" runat="server" Font-Bold="True" 
                            Font-Names="Verdana" Font-Size="9pt" Text="INFORMACIÓN ADICIONAL"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <!-- renglon en blanco -->
                    <td style="font-family: Verdana; font-weight: bold; width: 600pt;">
                        <hr noshade="noshade" size="0" width="100%" />
                    </td>
                </tr>                
            </table>
            <%--**********--%>
                <table style="border:0; width:500pt; font-size: 8pt;">
                    <tr>  
                        <td style="font-family: Verdana; text-align: right; width: 25%;" 
                            valign="middle"> 
                            <asp:Label ID="lblEstudiante" runat="server" Font-Bold="False" 
                                Font-Names="Verdana" Font-Size="8pt" Text="Estudiante:"></asp:Label>
                        </td>
                        <td style="text-align: left; font-family: Verdana; ">
                            <asp:RadioButtonList ID="rblEstudiante" runat="server" AutoPostBack="False" 
                                Font-Bold="False" Font-Names="Verdana" Font-Size="8pt" 
                                RepeatDirection="Horizontal" Width="120pt">
                                <asp:ListItem Selected="True">No</asp:ListItem>
                                <asp:ListItem>Si</asp:ListItem>
                            </asp:RadioButtonList>
                            <asp:Label ID="lblEstudianteInfo" runat="server" Font-Bold="False" 
                                Font-Names="Verdana" Font-Size="8pt" 
                                Text="En caso de ser estudiante, deberá enviar una copia escaneada de su credencial vigente para tener derecho al descuento respectivo."></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td style="text-align:right; font-family: Verdana; width: 25%;" valign="middle">
                            &nbsp;</td>
                        <td style="text-align: left; font-family: Verdana; ">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td style="text-align:right; font-family: Verdana; width: 25%;" valign="middle">
                            <asp:Label ID="lblBeca" runat="server" Font-Bold="False" Font-Names="Verdana" 
                                Font-Size="8pt" Text="Beca:"></asp:Label>
                        </td>
                        <td style="text-align: left; font-family: Verdana; ">
                            <asp:RadioButtonList ID="rblBeca" runat="server" AutoPostBack="False" 
                                Font-Bold="False" Font-Names="Verdana" Font-Size="8pt" 
                                RepeatDirection="Horizontal" Width="120pt">
                                <asp:ListItem Selected="True">No</asp:ListItem>
                                <asp:ListItem>Si</asp:ListItem>
                            </asp:RadioButtonList>
                            <asp:Label ID="lblBecaInfo" runat="server" Font-Bold="True" 
                                Font-Names="Verdana" Font-Size="8pt" 
                                Text="Solamente se considerarán las solicitudes de estudiantes con credencial vigente que sometan un resumen."></asp:Label>
                            <br />
                        </td>
                    </tr>
                    <tr>
                        <td style="text-align:right; font-family: Verdana; width: 25%;">
                            &nbsp;</td>
                        <td style="text-align: left; font-family: Verdana; ">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td style="text-align:right; font-family: Verdana; width: 25%;">
                            <asp:Label ID="lblCena" runat="server" Font-Bold="False" Font-Names="Verdana" 
                                Font-Size="8pt" Text="Cena de clausura para acompañantes:"></asp:Label>
                        </td>
                        <td style="text-align: left; font-family: Verdana; ">
                            <asp:RadioButtonList ID="rblCena" runat="server" AutoPostBack="False" 
                                Font-Bold="False" Font-Names="Verdana" Font-Size="8pt" 
                                RepeatDirection="Horizontal" Width="120pt">
                                <asp:ListItem Selected="True">No</asp:ListItem>
                                <asp:ListItem>Si</asp:ListItem>
                            </asp:RadioButtonList>
                            <asp:Label ID="lblCenaInfo" runat="server" Font-Bold="False" 
                                Font-Names="Verdana" Font-Size="8pt" 
                                Text="Incluir el costo adicional con el pago de su registro al congreso."></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td style="text-align:right; font-family: Verdana; width: 25%;">
                            &nbsp;</td>
                        <td style="text-align: left; font-family: Verdana; ">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td style="text-align:right; font-family: Verdana; width: 25%;">
                            <asp:Label ID="lblComentarios" runat="server" Font-Bold="False" Font-Names="Verdana" 
                                Font-Size="8pt" Text="Comentarios:"></asp:Label>
                        </td>
                        <td style="text-align: left; font-family: Verdana; ">
                            <asp:TextBox ID="txtComentarios" runat="server" MaxLength="5000" 
                                TextMode="MultiLine" Width="90%" />
                        </td>
                    </tr>
                    <tr>  
                        <!-- renglon en blanco -->
                        <td colspan="2">
                            &nbsp;</td>
                    </tr>
                </table>

            <table style="border:0; width:500pt; font-size: 8pt;">
                <tr>
                    <td style="font-size: 9pt; font-family: Verdana; font-weight: bold; text-align: center;">
                        <asp:Label ID="lblFacturacion" runat="server" Font-Bold="True" Font-Names="Verdana" 
                            Font-Size="9pt" Text="FACTURACIÓN"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <!-- renglon en blanco -->
                    <td style="font-family: Verdana; font-weight: bold; width: 600pt;">
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
                                                Font-Size="8pt" MaxLength="100" Width="90%">--</asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                                                ControlToValidate="txtFacturaNombre" Font-Bold="True" Font-Names="Arial" 
                                                Font-Size="9pt" SetFocusOnError="True">*</asp:RequiredFieldValidator>
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
                                                Font-Size="9pt" SetFocusOnError="True">*</asp:RequiredFieldValidator>
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
                                                Font-Size="9pt" SetFocusOnError="True">*</asp:RequiredFieldValidator>
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
            
            </ContentTemplate>
            </asp:UpdatePanel>            
            
                <asp:Button ID="btnContinuar" runat="server" 
                    onclick="btnContinuar_Click" Text="Continuar" Width="150px" 
                    Font-Names="Arial" Font-Size="8pt" />
                <br />
            </asp:Panel>
                
        <asp:Panel ID="pnlConfirmacion" runat="server" Visible="False"> <!-- CONFIRMACION DE REGISTRO -->
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
                    <td colspan="3" style="text-align: left">
                        &nbsp;</td> <!-- renglon en blanco -->
                </tr>
                <tr>
                    <td colspan="3" style="text-align: center">
                        <asp:Button ID="btnRegresar" runat="server" onclick="btnRegresar_Click" 
                            Text="Regresar" Width="150px" Font-Names="Arial" Font-Size="8pt" />
                        &nbsp;<asp:Button ID="btnEnviar" runat="server"  
                            Text="Enviar" Width="150px" onclick="btnEnviar_Click" Font-Names="Arial" 
                            Font-Size="8pt" />
                        <asp:SqlDataSource ID="SqlDSoxidativestress2012" runat="server" 
                            ConnectionString="<%$ ConnectionStrings:REGWEBConnectionString %>" 
                            DeleteCommand="DELETE FROM [Oxidativestress2012] WHERE [id] = @original_id" 
                            InsertCommand="INSERT INTO [Oxidativestress2012] ([nombres], [apellidos], [correo], [domicilio], [ciudad], [estado], [pais], [cp], [telefono], [fax], [institucion], [estudiante], [beca], [cena], [comentarios], [factura], [facturaNombre], [facturaRFC], [facturaDireccion]) VALUES (@nombres, @apellidos, @correo, @domicilio, @ciudad, @estado, @pais, @cp, @telefono, @fax, @institucion, @estudiante, @beca, @cena, @comentarios, @factura, @facturaNombre, @facturaRFC, @facturaDireccion)" 
                            SelectCommand="SELECT * FROM [Oxidativestress2012]" 
                            
                            UpdateCommand="UPDATE [Oxidativestress2012] SET [nombres] = @nombres, [apellidos] = @apellidos, [correo] = @correo, [domicilio] = @domicilio, [ciudad] = @ciudad, [estado] = @estado, [pais] = @pais, [cp] = @cp, [telefono] = @telefono, [fax] = @fax, [institucion] = @institucion, [estudiante] = @estudiante, [beca] = @beca, [cena] = @cena, [comentarios] = @comentarios, [factura] = @factura, [facturaNombre] = @facturaNombre, [facturaRFC] = @facturaRFC, [facturaDireccion] = @facturaDireccion WHERE [id] = @original_id" 
                            OldValuesParameterFormatString="original_{0}">
                            <DeleteParameters>
                                <asp:Parameter Name="original_id" Type="Int32" />
                            </DeleteParameters>
                            <UpdateParameters>
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
                                <asp:Parameter Name="estudiante" Type="String" />
                                <asp:Parameter Name="beca" Type="String" />
                                <asp:Parameter Name="cena" Type="String" />
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
                                <asp:Parameter Name="domicilio" Type="String" />
                                <asp:Parameter Name="ciudad" Type="String" />
                                <asp:Parameter Name="estado" Type="String" />
                                <asp:Parameter Name="pais" Type="String" />
                                <asp:Parameter Name="cp" Type="String" />
                                <asp:Parameter Name="telefono" Type="String" />
                                <asp:Parameter Name="fax" Type="String" />
                                <asp:Parameter Name="institucion" Type="String" />
                                <asp:Parameter Name="estudiante" Type="String" />
                                <asp:Parameter Name="beca" Type="String" />
                                <asp:Parameter Name="cena" Type="String" />
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
                PostBackUrl="http://intranet.cibnor.mx/eplant1.php?pagID=anuncios/estres2012/index" 
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
                            NavigateUrl="http://intranet.cibnor.mx/eplant1.php?pagID=politicaspmdp" 
                            Font-Bold="True" Font-Names="Verdana" Font-Size="8pt" ForeColor="#CCFFFF" 
                            Target="_blank">Política de Privacidad</asp:HyperLink>
                        &nbsp;&nbsp;&nbsp;</td>
                    <td width="32%" height="5" bgcolor="#D8ECF3" id="footblk" align="center"></td>
                </tr>
            </table>

          
        </center>
                            
            </ContentTemplate>
            </asp:UpdatePanel>

        </div>
    
    
    
    
    
    <div>
    </div>
   
    </form>
</body>
</html>
