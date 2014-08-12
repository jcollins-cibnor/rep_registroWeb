<%@ Page Language="C#" AutoEventWireup="true" CodeFile="waterbirds2014.aspx.cs" Inherits="waterbirds2014" %>

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

    <asp:UpdatePanel ID="UpnlIdioma" runat="server">
    <ContentTemplate>

        <div align="center">    

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
                            <asp:Image ID="Image1" runat="server" 
                                Height="50px" ImageUrl="~/Images/logo_4birds.png" />
                            <asp:Image ID="Image2" runat="server" Height="50px" 
                                ImageUrl="~/Images/logo_cipamex.png" />
                        </td>
                        <td style="width:480px; text-align:center; font-size: 10pt; font-family: Arial; font-weight: bold;">
                            <asp:Label ID="lblTituloEvento" runat="server" Font-Bold="True" 
                                Font-Names="Verdana" Font-Size="10pt"
                                
                                Text="38Th Reunion Anual de la Waterbird Society y XIII Congreso para el Estudio y Conservación de las Aves en Mexico (CECAM)"></asp:Label>
                            <br />
                            <br />
                            <asp:Label ID="lblRegistroEnLinea" runat="server" Font-Bold="False" Font-Names="Verdana" 
                                Font-Size="10pt" Text="Registro en Línea"></asp:Label>
                        </td>
                        <td style="width:160px; text-align: center;">
                            <asp:Image ID="Image3" runat="server" 
                                Height="50px" ImageUrl="~/Images/ciboficial.gif" />
                            <asp:Image ID="Image4" runat="server" 
                                Height="50px" ImageUrl="~/Images/logo_birdobservatory.png" />
                        </td>
                    </tr>
                </table>
                <br />
                <asp:ValidationSummary ID="valSum" runat="server" DisplayMode="SingleParagraph" 
                    HeaderText="* Campos requeridos." Font-Names="Verdana" Font-Size="8pt" 
                    ForeColor="Red" />

        <asp:UpdatePanel ID="UpnPrincipal" runat="server">
        <ContentTemplate>
                
            <asp:Panel ID="pnlDatos" runat="server"> <%--PANEL DE DATOS--%>

            <table style="border:0; width:500pt;  font-size: 8pt;">
                <tr>
                    <td colspan="3" style="text-align: center;">
                        <asp:Label ID="lblDatosPersonales" runat="server" Font-Bold="True" 
                            Font-Names="Verdana" Font-Size="9pt" Text="DATOS PERSONALES"></asp:Label>
                        <br />
                    </td>
                </tr>
                <tr>
                    <td colspan="3">
                        <hr width="100%" noshade="noshade" size="0" />
                    </td>
                </tr>
                <tr>
                    <td style="text-align:right; font-family: Verdana">
                        <asp:Label ID="lblApellidos" runat="server" Font-Bold="False" 
                            Font-Names="Verdana" Font-Size="8pt" Text="Apellido(s):"></asp:Label>
                    </td>
                    <td style="text-align: left">
                        <asp:TextBox ID="txtApellidos" runat="server" Width="240px" Font-Size="8pt" 
                            MaxLength="50" />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                            ControlToValidate="txtApellidos" Font-Bold="True" ForeColor="Red" 
                            SetFocusOnError="True">*</asp:RequiredFieldValidator>
                    </td>
                    <td> &nbsp;</td>
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
                            SetFocusOnError="True" Font-Bold="True" ForeColor="Red">*</asp:RequiredFieldValidator>
                    </td>
                    <td></td>
                </tr>
                <tr> <!-- renglon en blanco --> 
                    <td colspan="3">&nbsp;
                        <asp:Label ID="lblNombreLeyenda" runat="server" Font-Bold="False" 
                            Font-Names="Verdana" Font-Size="8pt"                             
                            Text="Nombre que se usará para su gafete, asegúrese que esté bien escrito." 
                            Font-Italic="True"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td style="text-align:right; font-family: Verdana; width: 30%;">
                        <asp:Label ID="lblSexo" runat="server" Font-Bold="False" 
                            Font-Names="Verdana" Font-Size="8pt" Text="Sexo:"></asp:Label>
                    </td>
                    <td style="text-align:left">
                        <asp:DropDownList ID="ddlSexo" runat="server" Font-Size="8pt" Width="120px">
                            <asp:ListItem Selected="True">...</asp:ListItem>
                            <asp:ListItem>Femenino</asp:ListItem>
                            <asp:ListItem>Masculino</asp:ListItem>
                        </asp:DropDownList>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" 
                            ControlToValidate="ddlSexo" Font-Bold="True" ForeColor="Red" InitialValue="..." 
                            SetFocusOnError="True">*</asp:RequiredFieldValidator>
                    </td>
                    <td></td>
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
                            Font-Bold="True" ForeColor="Red">*</asp:RequiredFieldValidator>
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
                            SetFocusOnError="True" ForeColor="Red">*</asp:RequiredFieldValidator>
                    </td>
                    <td style="text-align: left"> 
                        <asp:CompareValidator ID="valRegExCorreoConfirma" runat="server" 
                            ControlToCompare="txtCorreo" ControlToValidate="txtCorreoConfirma" Font-Names="Arial" 
                            Font-Size="8pt" SetFocusOnError="True">Confirmar correo electrónico</asp:CompareValidator>
                    </td>
                </tr>
                <tr>
                    <td colspan="3">&nbsp;
                        <asp:Label ID="lblCorreoLeyenda" runat="server" Font-Bold="False" 
                            Font-Names="Verdana" Font-Size="8pt" 
                            
                            Text="Nos mantendremos en comunicación con usted mediante el correo electrónico, si cambia avísenos por favor." 
                            Font-Italic="True"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td style="text-align:right; font-family: Verdana">
                        <asp:Label ID="lblCelular" runat="server" Font-Bold="False" 
                            Font-Names="Verdana" Font-Size="8pt" Text="Teléfono celular:"></asp:Label>
                    </td>
                    <td style="text-align: left">
                        <asp:TextBox ID="txtCelular" runat="server" Font-Size="8pt" Width="240px" 
                            MaxLength="200" />
                    </td>
                    <td>
                        <asp:RegularExpressionValidator ID="valRegExCelular" runat="server" 
                            ControlToValidate="txtCelular" Display="Static" Font-Names="Arial" 
                            Font-Size="8pt" SetFocusOnError="True" 
                            ValidationExpression="^\+?\d{1,3}?[- .]?\(?(?:\d{2,3})\)?[- .]?\d\d\d[- .]?\d\d\d\d$">Incluir codigo de área</asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td style="text-align:right; font-family: Verdana">
                        <asp:Label ID="lblTelefono" runat="server" Font-Bold="False" 
                            Font-Names="Verdana" Font-Size="8pt" Text="Teléfono oficina:"></asp:Label>
                    </td>
                    <td style="text-align: left">
                        <asp:TextBox ID="txtTelefono" runat="server" Font-Size="8pt" Width="240px" 
                            MaxLength="200" />
                    </td>
                    <td>
                        <asp:RegularExpressionValidator ID="valRegExTelefono" runat="server" 
                            ControlToValidate="txtTelefono" Display="Static" Font-Names="Arial" 
                            Font-Size="8pt" SetFocusOnError="True" 
                            
                            
                            ValidationExpression="^\+?\d{1,3}?[- .]?\(?(?:\d{2,3})\)?[- .]?\d\d\d[- .]?\d\d\d\d$">Incluir codigo de área</asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td style="text-align:right; font-family: Verdana">
                        <asp:Label ID="lblInstitucion" runat="server" Font-Bold="False" 
                            Font-Names="Verdana" Font-Size="8pt" Text="Institución:"></asp:Label>
                    </td>
                    <td style="text-align: left">
                        <asp:TextBox ID="txtInstitucion" runat="server" Font-Size="8pt" Width="240px" 
                            MaxLength="200" />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" 
                            ControlToValidate="txtInstitucion" Font-Bold="True" ForeColor="Red" 
                            SetFocusOnError="True">*</asp:RequiredFieldValidator>
                    </td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td style="text-align:right; font-family: Verdana">
                        <asp:Label ID="lblDomicilio" runat="server" Font-Bold="False" 
                            Font-Names="Verdana" Font-Size="8pt" Text="Domicilio completo:"></asp:Label>
                    </td>
                    <td colspan="2" style="text-align: left">
                        <asp:TextBox ID="txtDomicilio" runat="server" Font-Size="8pt" Width="400px" 
                            MaxLength="200" />
                    </td>
                </tr>
                <tr> <!-- renglon en blanco --> 
                    <td colspan="3">&nbsp;</td>
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
                        <td style="text-align:right; font-family: Verdana; width: 30%;">
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
                                        <td style="font-size: 9pt; font-family: Verdana; font-weight: bold; text-align:right; width: 30%;">
                                            <asp:Label ID="lblFacturaNombre" runat="server" Font-Bold="False" Font-Names="Verdana" 
                                                Font-Size="8pt" Text="Nombre:"></asp:Label>
                                        </td>
                                        <td style="font-size: 9pt; font-family: Verdana; text-align:left;">
                                            <asp:TextBox ID="txtFacturaNombre" runat="server" Font-Names="Verdana" 
                                                Font-Size="8pt" MaxLength="200" Width="90%">--</asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                                                ControlToValidate="txtFacturaNombre" Font-Bold="True" Font-Names="Arial" 
                                                Font-Size="9pt" SetFocusOnError="True" ForeColor="Red">*</asp:RequiredFieldValidator>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td style="font-size: 9pt; font-family: Verdana; text-align:right;">
                                            <asp:Label ID="lblFacturaRFC" runat="server" Font-Bold="False" Font-Names="Verdana" 
                                                Font-Size="8pt" Text="RFC:"></asp:Label>
                                        </td>
                                        <td 
                                            
                                            style="font-size: 9pt; font-family: Verdana; text-align:left;">
                                            <asp:TextBox ID="txtFacturaRFC" runat="server" Font-Names="Verdana" 
                                                Font-Size="8pt" MaxLength="20" Width="90%">--</asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td style="font-size: 9pt; font-family: Verdana; text-align:right;">
                                            <asp:Label ID="lblFacturaDireccion" runat="server" Font-Bold="False" Font-Names="Verdana" 
                                                Font-Size="8pt" Text="Dirección:"></asp:Label>
                                        </td>
                                        <td style="font-size: 9pt; font-family: Verdana; text-align:left;">
                                            <asp:TextBox ID="txtFacturaDireccion" runat="server" Font-Names="Verdana" 
                                                Font-Size="8pt" MaxLength="500" TextMode="MultiLine" Width="90%">--</asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
                                                ControlToValidate="txtFacturaDireccion" Font-Bold="True" Font-Names="Arial" 
                                                Font-Size="9pt" SetFocusOnError="True" ForeColor="Red">*</asp:RequiredFieldValidator>
                                            <br />
                                            <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" 
                                                ControlToValidate="txtComentarios" Font-Names="Arial" Font-Size="8pt" 
                                                SetFocusOnError="True" ValidationExpression="^([\S\s]{0,500})$">Maximo de caracteres permitidos: 500</asp:RegularExpressionValidator>

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
                        <td style="text-align:right; font-family: Verdana; width: 50%;">
                            <asp:Label ID="lblCongresoLlegada" runat="server" Font-Bold="False" 
                                Font-Names="Verdana" Font-Size="8pt" 
                                Text="Tengo pensado llegar al Congreso el dia:"></asp:Label>
                        </td>
                        <td style="text-align:left">
                            <asp:DropDownList ID="ddlCongresoLlegada" runat="server" Font-Size="8pt" 
                                Width="120px">
                                <asp:ListItem Selected="True">...</asp:ListItem>
                                <asp:ListItem>Domingo</asp:ListItem>
                                <asp:ListItem>Lunes</asp:ListItem>
                                <asp:ListItem>Martes</asp:ListItem>
                                <asp:ListItem>Miércoles</asp:ListItem>
                                <asp:ListItem>Jueves</asp:ListItem>
                            </asp:DropDownList>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" 
                                ControlToValidate="ddlCongresoLlegada" Font-Bold="True" ForeColor="Red" 
                                InitialValue="..." SetFocusOnError="True">*</asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td style="text-align:right; font-family: Verdana;">
                            <asp:Label ID="lblCongresoAsistir" runat="server" Font-Bold="False" 
                                Font-Names="Verdana" Font-Size="8pt" 
                                Text="Tengo pensado en asistir al Congreso hasta el dia:"></asp:Label>
                        </td>
                        <td style="text-align:left">
                            <asp:DropDownList ID="ddlCongresoAsistir" runat="server" Font-Size="8pt" 
                                Width="120px">
                                <asp:ListItem Selected="True">...</asp:ListItem>
                                <asp:ListItem>Martes</asp:ListItem>
                                <asp:ListItem>Miércoles</asp:ListItem>
                                <asp:ListItem>Jueves</asp:ListItem>
                                <asp:ListItem>Viernes</asp:ListItem>
                                <asp:ListItem>Sabado</asp:ListItem>
                                <asp:ListItem>Domingo</asp:ListItem>
                            </asp:DropDownList>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" 
                                ControlToValidate="ddlCongresoAsistir" Font-Bold="True" ForeColor="Red" 
                                InitialValue="..." SetFocusOnError="True">*</asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2" style="text-align:left; font-family: Verdana;">
                            <asp:Label ID="lblRequerimientosEspeciales" runat="server" Font-Bold="False" 
                                Font-Names="Verdana" Font-Size="8pt" 
                                Text="Tengo los siguientes requerimientos especiales (dieta/alergias o médico/silla de ruedas):">
                            </asp:Label>                            
                            <br />
                            <asp:TextBox ID="txtRequerimientosEspeciales" runat="server" Font-Size="8pt" MaxLength="200" 
                                Width="100%" />
                        </td>                        
                    </tr>
                    <tr>
                        <td style="text-align:right; font-family: Verdana;">
                            <asp:Label ID="lblSociedades" runat="server" Font-Bold="False" 
                                Font-Names="Verdana" Font-Size="8pt" 
                                Text="Pertenece a alguna de las sociedades del Congreso:"></asp:Label>
                        </td>
                        <td style="text-align:left">
                            <asp:CheckBoxList ID="chkSociedades" runat="server" Font-Names="Verdana" 
                                Font-Size="8pt">
                                <asp:ListItem>Waterbird Society</asp:ListItem>
                                <asp:ListItem>CIPAMEX</asp:ListItem>
                            </asp:CheckBoxList>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2" style="text-align:left; font-family: Verdana;">
                            <asp:Label ID="lblNombresPersonas" runat="server" Font-Bold="False" 
                                Font-Names="Verdana" Font-Size="8pt" 
                                Text="Nombre de la persona(s) que le acompaña(n):"></asp:Label>
                                <br />
                            <asp:TextBox ID="txtNombresPersonas" runat="server" Font-Size="8pt" 
                                MaxLength="200" Width="100%" />
                                <br />
                            <asp:Label ID="lblNombresPersonasLeyenda" runat="server" Font-Bold="False" Font-Italic="True" 
                                Font-Names="Verdana" Font-Size="8pt"                                 
                                
                                Text="No asiste al Congreso, que solo vendrá a las actividades sociales. Costo $60 USD"></asp:Label>
                    </tr>
                    <tr>
                        <td style="text-align:right; font-family: Verdana;">
                            <asp:Label ID="lblCamisetas" runat="server" Font-Bold="False" 
                                Font-Names="Verdana" Font-Size="8pt" 
                                
                                Text="Deseo camiseta(s) del Congreso Waterbirds-CECAM 2014 (costo $20 USD), indique cantidad:"></asp:Label>
                        </td>
                        <td style="text-align:left">
                            <asp:TextBox ID="txtCamisetas" runat="server" Font-Size="8pt" MaxLength="50" 
                                Width="120px" />
                        </td>
                    </tr><tr>
                        <td style="text-align:right; font-family: Verdana;">
                            <asp:Label ID="lblCamisetasTallas" runat="server" Font-Bold="False" 
                                Font-Names="Verdana" Font-Size="8pt" Text="Marque las tallas por favor [S, M, L, XXL]:"></asp:Label>
                        </td>
                        <td style="text-align: left; font-family: Verdana; ">
                            <asp:TextBox ID="txtCamisetasTallas" runat="server" Font-Size="8pt" 
                                MaxLength="50" Width="120px" />
                        </td>
                    </tr>
                    <tr>
                        <td style="text-align:right; font-family: Verdana;">
                            <asp:Label ID="lblPlatillo" runat="server" Font-Bold="False" 
                                Font-Names="Verdana" Font-Size="8pt" 
                                Text="Prefiero platillo vegetariano en mi comida principal:"></asp:Label>
                        </td>
                        <td style="text-align:left">
                            <asp:DropDownList ID="ddlPlatillo" runat="server" Font-Size="8pt" 
                                Width="60px">
                                <asp:ListItem Selected="True">...</asp:ListItem>
                                <asp:ListItem>Si</asp:ListItem>
                                <asp:ListItem>No</asp:ListItem>
                            </asp:DropDownList>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" 
                                ControlToValidate="ddlPlatillo" Font-Bold="True" ForeColor="Red" 
                                InitialValue="..." SetFocusOnError="True">*</asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td style="text-align:right; font-family: Verdana;">
                            <asp:Label ID="lblSalidaCampo" runat="server" Font-Bold="False" 
                                Font-Names="Verdana" Font-Size="8pt" 
                                Text="Salidas al campo (se dará información posterior):"></asp:Label>
                        </td>
                        <td style="text-align:left">
                            <asp:DropDownList ID="ddlSalidaCampo" runat="server" Font-Size="8pt" 
                                Width="60px">
                                <asp:ListItem Selected="True">...</asp:ListItem>
                                <asp:ListItem>Si</asp:ListItem>
                                <asp:ListItem>No</asp:ListItem>
                            </asp:DropDownList>
                        </td>
                    </tr>
                    <tr>
                        <td style="text-align:right; font-family: Verdana;">
                            &nbsp;</td>
                        <td style="text-align: left; font-family: Verdana; ">
                            &nbsp;</td>
                    </tr>
                </table>
                <table style="border:0; width:500pt; font-size: 8pt;">
                    <tr>
                        <td style="text-align:right; font-family: Verdana; width: 25%;">
                            <asp:Label ID="lblComentarios" runat="server" Font-Bold="False" Font-Names="Verdana" 
                                Font-Size="8pt" Text="Comentarios:"></asp:Label>
                        </td>
                        <td style="text-align: left; font-family: Verdana; ">
                            <asp:TextBox ID="txtComentarios" runat="server" MaxLength="1000" 
                                TextMode="MultiLine" Width="90%" />
                                <br />
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                                ControlToValidate="txtComentarios" Font-Names="Arial" Font-Size="8pt" 
                                SetFocusOnError="True" ValidationExpression="^([\S\s]{0,1000})$">Maximo de caracteres permitidos: 1000</asp:RegularExpressionValidator>
                        </td>
                    </tr>
                    <tr>  
                        <!-- renglon en blanco -->
                        <td colspan="2">
                            &nbsp;</td>
                    </tr>
                </table>

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
                        <asp:Label ID="lblConfirmacion" runat="server" Font-Names="Verdana" 
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
                            <br />
                        <asp:Label ID="lblStatusEnvio" runat="server" Font-Bold="True" 
                            Font-Names="Verdana" Font-Size="8pt" ForeColor="Blue" Visible="False"></asp:Label>
                        <asp:SqlDataSource ID="SqlDSregistro" runat="server" 
                            ConnectionString="<%$ ConnectionStrings:REGWEBConnectionString %>" 
                            DeleteCommand="DELETE FROM [waterbirds2014] WHERE [id] = @original_id" 
                            InsertCommand="INSERT INTO [waterbirds2014] ([apellidos], [nombres], [sexo], [correo], [celular], [telefono], [institucion], [domicilio], [factura], [facturaNombre], [facturaRFC], [facturaDireccion], [congresoLlegada], [congresoAsistir], [requerimientosEspeciales], [Sociedades], [nombresPersonas], [camisetas], [camisetasTallas], [platillo], [salidaCampo], [comentarios]) VALUES (@apellidos, @nombres, @sexo, @correo, @celular, @telefono, @institucion, @domicilio, @factura, @facturaNombre, @facturaRFC, @facturaDireccion, @congresoLlegada, @congresoAsistir, @requerimientosEspeciales, @Sociedades, @nombresPersonas, @camisetas, @camisetasTallas, @platillo, @salidaCampo, @comentarios)" 
                            SelectCommand="SELECT * FROM [waterbirds2014]" 
                            
                            UpdateCommand="UPDATE [waterbirds2014] SET [apellidos] = @apellidos, [nombres] = @nombres, [sexo] = @sexo, [correo] = @correo, [celular] = @celular, [telefono] = @telefono, [institucion] = @institucion, [domicilio] = @domicilio, [factura] = @factura, [facturaNombre] = @facturaNombre, [facturaRFC] = @facturaRFC, [facturaDireccion] = @facturaDireccion, [congresoLlegada] = @congresoLlegada, [congresoAsistir] = @congresoAsistir, [requerimientosEspeciales] = @requerimientosEspeciales, [Sociedades] = @Sociedades, [nombresPersonas] = @nombresPersonas, [camisetas] = @camisetas, [camisetasTallas] = @camisetasTallas, [platillo] = @platillo, [salidaCampo] = @salidaCampo, [comentarios] = @comentarios WHERE [id] = @original_id" 
                            OldValuesParameterFormatString="original_{0}">
                            <DeleteParameters>
                                <asp:Parameter Name="original_id" Type="Int32" />
                            </DeleteParameters>
                            <UpdateParameters>
                                <asp:Parameter Name="apellidos" Type="String" />
                                <asp:Parameter Name="nombres" Type="String" />
                                <asp:Parameter Name="sexo" Type="String" />
                                <asp:Parameter Name="correo" Type="String" />
                                <asp:Parameter Name="celular" Type="String" />
                                <asp:Parameter Name="telefono" Type="String" />
                                <asp:Parameter Name="institucion" Type="String" />
                                <asp:Parameter Name="domicilio" Type="String" />
                                <asp:Parameter Name="factura" Type="String" />
                                <asp:Parameter Name="facturaNombre" Type="String" />
                                <asp:Parameter Name="facturaRFC" Type="String" />
                                <asp:Parameter Name="facturaDireccion" Type="String" />
                                <asp:Parameter Name="congresoLlegada" Type="String" />
                                <asp:Parameter Name="congresoAsistir" Type="String" />
                                <asp:Parameter Name="requerimientosEspeciales" Type="String" />
                                <asp:Parameter Name="Sociedades" Type="String" />
                                <asp:Parameter Name="nombresPersonas" Type="String" />
                                <asp:Parameter Name="camisetas" Type="String" />
                                <asp:Parameter Name="camisetasTallas" Type="String" />
                                <asp:Parameter Name="platillo" Type="String" />
                                <asp:Parameter Name="salidaCampo" Type="String" />
                                <asp:Parameter Name="comentarios" Type="String" />
                                <asp:Parameter Name="original_id" Type="Int32" />
                            </UpdateParameters>
                            <InsertParameters>
                                <asp:Parameter Name="apellidos" Type="String" />
                                <asp:Parameter Name="nombres" Type="String" />
                                <asp:Parameter Name="sexo" Type="String" />
                                <asp:Parameter Name="correo" Type="String" />
                                <asp:Parameter Name="celular" Type="String" />
                                <asp:Parameter Name="telefono" Type="String" />
                                <asp:Parameter Name="institucion" Type="String" />
                                <asp:Parameter Name="domicilio" Type="String" />
                                <asp:Parameter Name="factura" Type="String" />
                                <asp:Parameter Name="facturaNombre" Type="String" />
                                <asp:Parameter Name="facturaRFC" Type="String" />
                                <asp:Parameter Name="facturaDireccion" Type="String" />
                                <asp:Parameter Name="congresoLlegada" Type="String" />
                                <asp:Parameter Name="congresoAsistir" Type="String" />
                                <asp:Parameter Name="requerimientosEspeciales" Type="String" />
                                <asp:Parameter Name="Sociedades" Type="String" />
                                <asp:Parameter Name="nombresPersonas" Type="String" />
                                <asp:Parameter Name="camisetas" Type="String" />
                                <asp:Parameter Name="camisetasTallas" Type="String" />
                                <asp:Parameter Name="platillo" Type="String" />
                                <asp:Parameter Name="salidaCampo" Type="String" />
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
                PostBackUrl="http://www.cibnor.mx" 
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

    </ContentTemplate>
    </asp:UpdatePanel>
        
    
<%--    /////////////////////////--%>
    
    
    <div>
    <asp:Label ID="lblHiddenMensaje" runat="server" Font-Names="Arial" 
        Font-Size="8pt" Visible="False"></asp:Label>
    <asp:Label ID="lblHiddenSociedades" runat="server" Font-Names="Arial" 
        Font-Size="8pt" Visible="False"></asp:Label>
    <asp:Label ID="lblHiddenEstimado" runat="server" Font-Names="Arial" 
        Font-Size="8pt" Visible="False"></asp:Label>
    <asp:Label ID="lblHiddenRegistrado" runat="server" Font-Names="Arial" 
        Font-Size="8pt" Visible="False"></asp:Label>
    <asp:Label ID="lblHiddenGracias" runat="server" Font-Names="Arial" 
        Font-Size="8pt" Visible="False"></asp:Label>
    <asp:Label ID="lblHiddenComite" runat="server" Font-Names="Arial" 
        Font-Size="8pt" Visible="False"></asp:Label>
    </div>
   
    </form>
</body>
</html>
