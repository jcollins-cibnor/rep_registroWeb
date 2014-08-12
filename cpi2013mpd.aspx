<%@ Page Language="C#" AutoEventWireup="true" CodeFile="cpi2013mpd.aspx.cs" Inherits="cpi2013mpd" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>CPI - Registro en Línea</title>
    
    <meta name="msapplication-window" content="width=800;height=600"/>
    <%--    <link rel="icon" type="image/x-icon" href="images/icon_cib.ico" />--%>
</head>
<body>
    <form id="form1" runat="server">    
    <asp:ScriptManager ID="scriptmanager1" EnablePartialRendering="true" runat="server" />
        <div align="center">    
            
                <table style="font-family: Verdana; width:500pt;">
                    <tr>
                        <td style="width:30%; text-align: center;">
                            <asp:Image ID="Image1" runat="server" 
                                Height="65px" ImageUrl="~/Images/logo_GobRepublicaFull.png" /></td>
                        <td style="width:40%; text-align:center;">
                            <asp:Image ID="Image2" runat="server" Height="60px" 
                                ImageUrl="~/Images/logo_cpi2013.png" />
                        </td>
                        <td style="width:30%; text-align:center;">
                            <asp:Image ID="Image3" runat="server" Height="65px" 
                                ImageUrl="~/Images/logo_conacytFull.png" />
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
                    <td colspan="3" align=center>
                    <asp:Label ID="Label4" runat="server" Font-Bold="True" Font-Names="Verdana" Font-Size="9pt" 
                        Text="NOTA IMPORTANTE:" ForeColor="Red"></asp:Label>
                    <p style=" text-align:center; font-family:Verdana; width:100%; font-size:8pt; color:Red;">
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
                </tr>
                <tr>
                    <td colspan="3" align=left>
                    <asp:Label ID="lblNotaImportante" runat="server" Font-Names="Verdana" 
                            Font-Size="8pt" ForeColor="Blue"
                        Text="Estimados Participantes con Modalidad de Pago Directo, <br/>
                        Agradecemos su interés en participar en la I Reunión Nacional de Centros Públicos de Investigación 
                        a celebrarse en el mes de diciembre, que tendrá como sede el Hotel Fiesta Americana Condesa en Cancún, Quintana Roo, México.<br/><br/>

                        Sobre el hospedaje, pueden hacer sus reservas es el Hotel Melia Paradisus, 
                        donde respetan la misma tarifa All Inclusive del hotel sede:<br/><br/>
 
                        Habitación sencilla: $2,050.00<br/>
                        Habitación doble: $2,800.00<br/><br/>
 
                        - Sin costo para niños menores de 4 años.<br/>
                        - $845.00 por menor de 5 a 12 años compartiendo habitación familiar.<br/>
                        - Los niños mayores a 13 años se consideran adultos.<br/><br/>
 
                        Tarifas cotizadas en moneda nacional, costo por persona, y por noche.<br/><br/>
 
                        Contacto Hotel Paradisus:<br/>
                        Srita. Aurea Roman al correo: aurea.roman@melia-america.com<br/>
                        Teléfono: 998 8811100<br/><br/>
 
                        Para los participantes que tienen diferente presupuesto se tienen las siguientes opciones:<br/><br/>
 
                        Hotel  Grand Oasis Cancún 5*:<br/><br/>
 
                        Habitación sencilla $1,945.00<br/>
                        Habitación doble $2,558.00<br/>
                        Habitación triple $3,224.00<br/><br/><br/>
 
 
                        Hotel Oasis Cancún 4*:<br/><br/>
 
                        Habitación estándar.<br/>
                        Habitación sencilla $1,657.00<br/>
                        Habitación doble $2,224.00<br/>
                        Habitación triple $2,769.00<br/><br/>
 
                        Cabe comentar que los participantes con modalidad de pago directo hospedándose en otro hotel, deberán de cubrir un DAY PASS, 
                        este será cubierto por el Comité Organizador y posteriormente se solicitará el reembolso directamente a su Director de Administración, 
                        para lo cual ustedes no requeren hacer ningún trámite al respecto.<br/><br/>
 
                        Les informamos sobre el procedimiento para el acceso a las instalaciones del Hotel Fiesta Americana Condesa:<br/><br/>
 
                        Registrarse en la recepción del Hotel Fiesta Americana Condesa diariamente, para que les sea instalado un brazalete dejando 
                        una identificación y al finalizar el tiempo de estar en el Hotel sede deberá recoger su identificación, con la finalidad de que 
                        el hotel haga el cálculo de las horas de su estancia en el hotel.<br/><br/>
 
                        Esto les da derecho tener acceso al Centro de Convenciones con servicio de café continuo, instalaciones, 
                        alimentos y bebidas en sus diferentes restaurantes.<br />" 
                        ></asp:Label>
                    </td>
                </tr>
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
                        <asp:Label ID="lblTalla" runat="server" Font-Bold="False" Font-Names="Verdana" 
                            Font-Size="8pt" Text="Talla de camiseta tipo polo:" Visible="False"></asp:Label>
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
            <table style="border:0; width:500pt; font-size: 8pt;">                        
                <tr>                     
                    <td colspan="2" style="font-size: 9pt; text-align: center;">
                        <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Names="Verdana" 
                            Font-Size="9pt" Text="PARTICIPACION EN EJES TEMÁTICOS"></asp:Label>
                        <br />
                        <asp:Label ID="Label3" runat="server" Font-Bold="True" Font-Names="Verdana" 
                            Font-Size="9pt" Text="Establecida por el Director de su institución"></asp:Label>                        
                    </td>
                </tr>
                <tr>
                    <td style="text-align:left; font-size: 9pt;" colspan="2">
                        <asp:Label ID="lblEje" runat="server" Font-Bold="False" Font-Names="Verdana" 
                            Font-Size="8pt" Text="Seleccionar una opción:"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td style="text-align: right; font-family: Verdana; width: 60pt;">
                        &nbsp;
                    </td>
                    <td style="text-align: left; font-family: Verdana; ">
                        <asp:RadioButtonList ID="rblEje" runat="server" AutoPostBack="True" 
                            Font-Names="Verdana" Font-Size="8pt" Height="26px" 
                            onselectedindexchanged="rblFamilia_SelectedIndexChanged">
                            <asp:ListItem Selected="True">Alimentación</asp:ListItem>
                            <asp:ListItem>Salud</asp:ListItem>
                            <asp:ListItem>Manufactura avanzada</asp:ListItem>
                            <asp:ListItem>Energías renovables</asp:ListItem>
                            <asp:ListItem>Sustentabilidad y adaptación al cambio</asp:ListItem>
                            <asp:ListItem>Diseño, Desarrollo y aplicación de TIC´s</asp:ListItem>
                            <asp:ListItem>Políticas Públicas para el Desarrollo de México</asp:ListItem>
                        </asp:RadioButtonList>
                    </td>
                </tr>           
                <tr>
                    <!-- renglon en blanco -->
                    <td colspan="2">
                        <hr noshade="noshade" size="0" width="100%" />
                    </td>
                </tr>

                <tr>                     
                    <td style="text-align:right; font-family: Verdana;">
                        &nbsp;</td>
                    <td style="text-align: left; font-family: Verdana; ">
                        &nbsp;</td>
                </tr>
            </table>

            <table style="border: 0; width: 500pt; font-size: 9pt; font-family: Verdana;">
                <tr>
                    <td colspan="6" style="text-align: center;">
                        <asp:Label ID="Label9" runat="server" Font-Bold="True" Font-Names="Verdana" Font-Size="9pt"
                            Text="ITINERARIO DE VUELO"></asp:Label>
                        <br />
                        <asp:Label ID="Label26" runat="server" Font-Bold="False" Font-Names="Verdana" 
                            Font-Size="9pt" 
                            Text="Si su transportacion es terrestre, favor de indicar NA (no aplica) en los campos obligatorios"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td colspan="6">&nbsp;
                    </td>
                </tr>
                <tr>
                    <td colspan="6" style="width: 50%; text-align: left;">
                        <asp:Label ID="Label10" runat="server" Font-Bold="True" Font-Names="Verdana" Font-Size="9pt"
                            Text="Vuelo de salida (llegada a Cancún)"></asp:Label>
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
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" 
                            ControlToValidate="txtSalidaAerolinea1" Font-Bold="True" ForeColor="Red" 
                            SetFocusOnError="True">*</asp:RequiredFieldValidator>
                        <br />
                        <asp:TextBox ID="txtSalidaAerolinea1" runat="server" Font-Names="Verdana" 
                            Font-Size="8pt" MaxLength="50"
                            Width="80pt"></asp:TextBox>
                    </td>
                    <td style="text-align: left; vertical-align: middle;">
                        <asp:Label ID="lblSalidaNoVuelo1" runat="server" Font-Bold="False" 
                            Font-Names="Verdana" Font-Size="8pt"
                            Text="No. de Vuelo: "></asp:Label>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" 
                            ControlToValidate="txtSalidaNoVuelo1" Font-Bold="True" ForeColor="Red" 
                            SetFocusOnError="True">*</asp:RequiredFieldValidator>
                        <br />
                        <asp:TextBox ID="txtSalidaNoVuelo1" runat="server" Font-Names="Verdana" 
                            Font-Size="8pt" MaxLength="50"
                            Width="80pt"></asp:TextBox>
                    </td>
                    <td style="text-align: left; vertical-align: middle;">
                        <asp:Label ID="lblSalidaFecha1" runat="server" Font-Bold="False" 
                            Font-Names="Verdana" Font-Size="8pt"
                            Text="Fecha: "></asp:Label>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" 
                            ControlToValidate="txtSalidaFecha1" Font-Bold="True" ForeColor="Red" 
                            SetFocusOnError="True">*</asp:RequiredFieldValidator>
                        <br />
                        <asp:TextBox ID="txtSalidaFecha1" runat="server" Font-Names="Verdana" 
                            Font-Size="8pt" MaxLength="50"
                            Width="80pt"></asp:TextBox>
                    </td>
                    <td style="text-align: left; vertical-align: middle;">
                        <asp:Label ID="lblSalidaHora1" runat="server" Font-Bold="False" 
                            Font-Names="Verdana" Font-Size="8pt"
                            Text="Hora de salida: "></asp:Label>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator13" runat="server" 
                            ControlToValidate="txtSalidaHora1" Font-Bold="True" ForeColor="Red" 
                            SetFocusOnError="True">*</asp:RequiredFieldValidator>
                        <br />
                        <asp:TextBox ID="txtSalidaHora1" runat="server" Font-Names="Verdana" 
                            Font-Size="8pt" MaxLength="50"
                            Width="80pt"></asp:TextBox>
                    </td>
                    <td style="text-align: left; vertical-align: middle;">
                        <asp:Label ID="lblSalidaHoraLlegada1" runat="server" Font-Bold="False" 
                            Font-Names="Verdana" Font-Size="8pt"
                            Text="Hora de llegada: "></asp:Label>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator14" runat="server" 
                            ControlToValidate="txtSalidaHoraLlegada1" Font-Bold="True" ForeColor="Red" 
                            SetFocusOnError="True">*</asp:RequiredFieldValidator>
                        <br />
                        <asp:TextBox ID="txtSalidaHoraLlegada1" runat="server" Font-Names="Verdana" 
                            Font-Size="8pt" MaxLength="50"
                            Width="80pt"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td style="text-align: left; vertical-align: middle;">
                        <asp:Label ID="lblSalidaCiudad2" runat="server" Font-Bold="False" 
                            Font-Names="Verdana" Font-Size="8pt"
                            Text="Con conexion en: " Visible="False"></asp:Label>
                        <br />
                        <asp:TextBox ID="txtSalidaCiudad2" runat="server" Font-Names="Verdana" 
                            Font-Size="8pt" MaxLength="50"
                            Width="80pt" Visible="False">--</asp:TextBox>
                    </td>                                
                    <td style="text-align: left; vertical-align: middle;">
                        <asp:Label ID="lblSalidaAerolinea2" runat="server" Font-Bold="False" 
                            Font-Names="Verdana" Font-Size="8pt"
                            Text="Aerolinea: " Visible="False"></asp:Label>
                        <br />
                        <asp:TextBox ID="txtSalidaAerolinea2" runat="server" Font-Names="Verdana" 
                            Font-Size="8pt" MaxLength="50"
                            Width="80pt" Visible="False">--</asp:TextBox>
                    </td>
                    <td style="text-align: left; vertical-align: middle;">
                        <asp:Label ID="lblSalidaNoVuelo2" runat="server" Font-Bold="False" 
                            Font-Names="Verdana" Font-Size="8pt"
                            Text="No. de Vuelo: " Visible="False"></asp:Label>
                        <br />
                        <asp:TextBox ID="txtSalidaNoVuelo2" runat="server" Font-Names="Verdana" 
                            Font-Size="8pt" MaxLength="50"
                            Width="80pt" Visible="False">--</asp:TextBox>
                    </td>
                    <td style="text-align: left; vertical-align: middle;">
                        <asp:Label ID="lblSalidaFecha2" runat="server" Font-Bold="False" 
                            Font-Names="Verdana" Font-Size="8pt"
                            Text="Fecha: " Visible="False"></asp:Label>
                        <br />
                        <asp:TextBox ID="txtSalidaFecha2" runat="server" Font-Names="Verdana" 
                            Font-Size="8pt" MaxLength="50"
                            Width="80pt" Visible="False">--</asp:TextBox>
                    </td>
                    <td style="text-align: left; vertical-align: middle;">
                        <asp:Label ID="lblSalidaHora2" runat="server" Font-Bold="False" 
                            Font-Names="Verdana" Font-Size="8pt"
                            Text="Hora de salida: " Visible="False"></asp:Label>
                        <br />
                        <asp:TextBox ID="txtSalidaHora2" runat="server" Font-Names="Verdana" 
                            Font-Size="8pt" MaxLength="50"
                            Width="80pt" Visible="False">--</asp:TextBox>
                    </td>
                    <td style="text-align: left; vertical-align: middle;">
                        <asp:Label ID="lblSalidaHoraLlegada2" runat="server" Font-Bold="False" 
                            Font-Names="Verdana" Font-Size="8pt"
                            Text="Hora de llegada: " Visible="False"></asp:Label>
                        <br />
                        <asp:TextBox ID="txtSalidaHoraLlegada2" runat="server" Font-Names="Verdana" 
                            Font-Size="8pt" MaxLength="50"
                            Width="80pt" Visible="False">--</asp:TextBox>
                    </td>
                </tr>
                <tr> <!-- renglon en blanco -->
                    <td colspan="6">&nbsp;</td>
                </tr>
                <tr>
                    <td style="text-align: left; width: 50%;" colspan="6">
                        <asp:Label ID="Label25" runat="server" Font-Bold="True" 
                            Font-Names="Verdana" Font-Size="9pt"
                            Text="Vuelo de regreso (salida de Cancún)"></asp:Label>
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
                            Font-Names="Verdana" Font-Size="8pt" Text="Hora de salida: "></asp:Label>
                        <br />
                        <asp:TextBox ID="txtRegresoHora1" runat="server" Font-Names="Verdana" 
                            Font-Size="8pt" MaxLength="50" Width="80pt"></asp:TextBox>
                    </td>
                    <td style="text-align: left; vertical-align: middle;">
                        <asp:Label ID="lblRegresoHoraLlegada1" runat="server" Font-Bold="False" 
                            Font-Names="Verdana" Font-Size="8pt" Text="Hora de llegada: "></asp:Label>
                        <br />
                        <asp:TextBox ID="txtRegresoHoraLlegada1" runat="server" Font-Names="Verdana" 
                            Font-Size="8pt" MaxLength="50" Width="80pt"></asp:TextBox>
                    </td>
                </tr>
                <tr> 
                    <td style="text-align: left; vertical-align: middle;">
                        <asp:Label ID="lblRegresoCiudad2" runat="server" Font-Bold="False" 
                            Font-Names="Verdana" Font-Size="8pt" Text="Con conexion en: " 
                            Visible="False"></asp:Label>
                        <br />
                        <asp:TextBox ID="txtRegresoCiudad2" runat="server" Font-Names="Verdana" 
                            Font-Size="8pt" MaxLength="50" Width="80pt" Visible="False">--</asp:TextBox>
                    </td>
                    <td style="text-align: left; vertical-align: middle;">
                        <asp:Label ID="lblRegresoAerolinea2" runat="server" Font-Bold="False" 
                            Font-Names="Verdana" Font-Size="8pt" Text="Aerolinea: " Visible="False"></asp:Label>
                        <br />
                        <asp:TextBox ID="txtRegresoAerolinea2" runat="server" Font-Names="Verdana" 
                            Font-Size="8pt" MaxLength="50" Width="80pt" Visible="False">--</asp:TextBox>
                    </td>
                    <td style="text-align: left; vertical-align: middle;">
                        <asp:Label ID="lblRegresoNoVuelo2" runat="server" Font-Bold="False" 
                            Font-Names="Verdana" Font-Size="8pt" Text="No. de Vuelo: " Visible="False"></asp:Label>
                        <br />
                        <asp:TextBox ID="txtRegresoNoVuelo2" runat="server" Font-Names="Verdana" 
                            Font-Size="8pt" MaxLength="50" Width="80pt" Visible="False">--</asp:TextBox>
                    </td>
                    <td style="text-align: left; vertical-align: middle;">
                        <asp:Label ID="lblRegresoFecha2" runat="server" Font-Bold="False" 
                            Font-Names="Verdana" Font-Size="8pt" Text="Fecha: " Visible="False"></asp:Label>
                        <br />
                        <asp:TextBox ID="txtRegresoFecha2" runat="server" Font-Names="Verdana" 
                            Font-Size="8pt" MaxLength="50" Width="80pt" Visible="False">--</asp:TextBox>
                    </td>
                    <td style="text-align: left; vertical-align: middle;">
                        <asp:Label ID="lblRegresoHora2" runat="server" Font-Bold="False" 
                            Font-Names="Verdana" Font-Size="8pt" Text="Hora de salida: " 
                            Visible="False"></asp:Label>
                        <br />
                        <asp:TextBox ID="txtRegresoHora2" runat="server" Font-Names="Verdana" 
                            Font-Size="8pt" MaxLength="50" Width="80pt" Visible="False">--</asp:TextBox>
                    </td>
                    <td style="text-align: left; vertical-align: middle;">
                        <asp:Label ID="lblRegresoHoraLlegada2" runat="server" Font-Bold="False" 
                            Font-Names="Verdana" Font-Size="8pt" Text="Hora de llegada: " 
                            Visible="False"></asp:Label>
                        <br />
                        <asp:TextBox ID="txtRegresoHoraLlegada2" runat="server" Font-Names="Verdana" 
                            Font-Size="8pt" MaxLength="50" Width="80pt" Visible="False">--</asp:TextBox>
                    </td>

                </tr>
                <tr>
                    <!-- divisor -->
                    <td colspan="6">
                        <hr noshade="noshade" size="0" width="100%" />
                    </td>
                </tr>
                <tr> <!-- renglon en blanco -->
                    <td colspan="6">&nbsp;</td>
                </tr>
            </table>
            <table style="border: 0; width: 500pt; font-size: 9pt; font-family: Verdana;">
                <tr>
                    <td colspan="2" style="text-align: center;">
                        <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Names="Verdana" Font-Size="9pt"
                            Text="HOSPEDAJE"></asp:Label>
                    </td>
                </tr>

                <tr> 
                    <td style="text-align: right; width: 25%;">
                        &nbsp;<asp:Label ID="Label16" runat="server" Font-Names="Verdana" Font-Size="8pt" 
                            Text="Hotel:"></asp:Label>
                    </td>
                    <td style="text-align: left;">
                        <asp:TextBox ID="txtHotel" runat="server" Font-Bold="False" Font-Names="Verdana" 
                            Font-Size="8pt" MaxLength="200" ReadOnly="True" Width="180pt">Melia Paradisus</asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td colspan="2">
                    <p style=" text-align:left; font-family:Verdana; width:100%; font-size:8pt;">
                            El Comité Organizador tienen un bloqueo de habitaciones en el Hotel Fiesta 
                            Americana Condesa, conforme se vaya registrando tiene asegurado su espacio, 
                            la segunda opción es el Hotel Melia Paradisus, donde se hospedaran los 
                            participantes con pago directo con la misma tarifa grupal del evento o aquellos 
                            que por la disponibilidad del hotel ya no alcance habitación en el hotel sede. 
                            Se lo informaremos en cuanto se llene la ocupación del bloqueo comprometido en el Hotel sede.
                    </td>
                </tr>
            </table>
            <%--**********--%>
                <asp:UpdatePanel ID="uplFamilia" runat="server">
            <ContentTemplate>
                <table style="border:0; width:500pt; font-size: 8pt;">
                    <tr>
                        <td style="text-align:right; font-family: Verdana; width: 25%;">
                            <asp:Label ID="lblFamilia" runat="server" Font-Bold="False" 
                                Font-Names="Verdana" Font-Size="8pt" Text="Viaja con acompañante:"></asp:Label>
                        </td>
                        <td style="text-align: left; font-family: Verdana; ">
                            <asp:RadioButtonList ID="rblFamilia" runat="server" AutoPostBack="True" 
                                Height="26px" RepeatDirection="Horizontal" Width="120pt" 
                                onselectedindexchanged="rblFamilia_SelectedIndexChanged">
                                <asp:ListItem Selected="True">No</asp:ListItem>
                                <asp:ListItem>Si</asp:ListItem>
                            </asp:RadioButtonList>
                        </td>
                    </tr>
                    <tr>
                        <!-- renglon en blanco -->
                        <td colspan="2">
                            <asp:Panel ID="pnlFamilia" runat="server" BorderColor="#999999" 
                                BorderStyle="Solid" BorderWidth="1pt" Visible="False">
                                <table style="border:0; width:100%; font-size: 8pt;">
                                    <tr>
                                        <td style="font-size: 9pt; font-family: Verdana; font-weight: bold; text-align:right; width: 25%;">
                                            <asp:Label ID="lblFamiliaCantidad" runat="server" Font-Bold="False" 
                                                Font-Names="Verdana" Font-Size="8pt" Text="Cantidad:"></asp:Label>
                                        </td>
                                        <td style="font-size: 9pt; font-family: Verdana; font-weight: bold; text-align:left;">
                                            <asp:TextBox ID="txtFamiliaCantidad" runat="server" Font-Names="Verdana" 
                                                Font-Size="8pt" MaxLength="2" Width="60pt">--</asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" 
                                                ControlToValidate="txtFamiliaCantidad" Font-Bold="True" Font-Names="Arial" 
                                                Font-Size="9pt" ForeColor="Red" SetFocusOnError="True">*</asp:RequiredFieldValidator>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td style="font-size: 9pt; font-family: Verdana; font-weight: bold; text-align:right;">
                                            <asp:Label ID="lblFamiliaEdades" runat="server" Font-Bold="False" 
                                                Font-Names="Verdana" Font-Size="8pt" Text="Especificar edades:"></asp:Label>
                                        </td>
                                        <td style="font-size: 9pt; font-family: Verdana; font-weight: bold; text-align:left;">
                                            <asp:TextBox ID="txtFamiliaEdades" runat="server" Font-Names="Verdana" 
                                                Font-Size="8pt" MaxLength="50" Width="120pt">--</asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" 
                                                ControlToValidate="txtFamiliaEdades" Font-Bold="True" Font-Names="Arial" 
                                                Font-Size="9pt" ForeColor="Red" SetFocusOnError="True">*</asp:RequiredFieldValidator>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td colspan="2" style="font-size: 9pt; font-family: Verdana; text-align:left;">
                                            <p style=" text-align:left; font-family:Verdana; font-size:8pt; width:100%;">
                                                <strong>NOTA IMPORTANTE:</strong>
                                                <br />
                                                En caso de venir con compañia el participante debera pagar la diferencia de 
                                                tarifa de acuerdo a lo siguiente:
                                                <br /><br />
                                                * Adulto compartiendo habitación doble, diferencia $750.00 pesos por noche.
                                                <br />
                                                * Niños hasta 4 años sin costo.
                                                <br />
                                                * De 5 a 12 años por noche compartiendo habitación con familiar $845.00, por menor.
                                                <br />
                                                * Niños mayores de 13 años se consideran como adultos.
                                            </p>                                                    
                                        </td>
                                    </tr>
                                </table>
                            </asp:Panel>
                        </td>
                    </tr>
                    <tr>
                        <!-- divisor -->
                        <td colspan="2">
                            <hr noshade="noshade" size="0" width="100%" />
                        </td>
                    </tr>
                    <tr> <!-- renglon en blanco -->
                        <td colspan="2">&nbsp;</td>
                    </tr>
                </table>
                <%-- Se cierra el updatePanel uplFamilia --%>
            </ContentTemplate>
            </asp:UpdatePanel>
            <table style="border:0; width:500pt; font-size: 8pt;">
                <tr>
                    <td colspan="2" style="font-size: 9pt; text-align: center;">
                        <asp:Label ID="Label15" runat="server" Font-Bold="True" Font-Names="Verdana" 
                            Font-Size="9pt" Text="PARTICIPACION EN EVENTOS SOCIALES"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td style="text-align:right; font-family: Verdana; width:30%;">
                        <asp:Label ID="lblCoctel" runat="server" Font-Bold="False" Font-Names="Verdana" 
                            Font-Size="8pt" Text="Asistire al coctel de bienvenida:"></asp:Label>
                    </td>
                    <td style="text-align: left; font-family: Verdana; ">
                        <asp:RadioButtonList ID="rblCoctel" runat="server" AutoPostBack="True" 
                            Height="26px" onselectedindexchanged="rblFamilia_SelectedIndexChanged" 
                            RepeatDirection="Horizontal" Width="120pt">
                            <asp:ListItem Selected="True">No</asp:ListItem>
                            <asp:ListItem>Si</asp:ListItem>
                        </asp:RadioButtonList>
                    </td>
                </tr>
                <tr>
                    <td style="text-align:right; font-family: Verdana;">
                        <asp:Label ID="lblCena" runat="server" Font-Bold="False" Font-Names="Verdana" 
                            Font-Size="8pt" Text="Asistire a la cena de clausura:"></asp:Label>
                    </td>
                    <td style="text-align: left; font-family: Verdana; ">
                        <asp:RadioButtonList ID="rblCena" runat="server" AutoPostBack="True" 
                            Height="26px" onselectedindexchanged="rblFamilia_SelectedIndexChanged" 
                            RepeatDirection="Horizontal" Width="120pt">
                            <asp:ListItem Selected="True">No</asp:ListItem>
                            <asp:ListItem>Si</asp:ListItem>
                        </asp:RadioButtonList>
                    </td>
                </tr>
                <tr>
                    <!-- renglon en blanco -->
                    <td colspan="2">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td colspan="2" style="text-align:left; font-family: Verdana;">
                        <asp:Label ID="lblComentarios" runat="server" Font-Bold="False" 
                            Font-Names="Verdana" Font-Size="8pt" Text="Comentarios adicionales:"></asp:Label>
                        <br />
                        <asp:TextBox ID="txtComentarios" runat="server" MaxLength="1000" 
                            TextMode="MultiLine" Width="100%" >--</asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <!-- renglon en blanco -->
                    <td>&nbsp;</td>
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

                        <asp:SqlDataSource ID="SqlDScongresocpi2013" runat="server" 
                            ConnectionString="<%$ ConnectionStrings:REGWEBConnectionString %>" 
                            DeleteCommand="DELETE FROM [CPI2013mpd] WHERE [id] = @original_id" 
                            InsertCommand="INSERT INTO [CPI2013mpd] ([nombres], [apellidos], [correo], [telefono], [institucion], [talla], [eje], [salidaciudad1], [salidalinea1], [salidavuelo1], [salidafecha1], [salidahora1], [salidaciudad2], [salidalinea2], [salidavuelo2], [salidafecha2], [salidahora2], [regresociudad1], [regresolinea1], [regresovuelo1], [regresofecha1], [regresohora1], [regresociudad2], [regresolinea2], [regresovuelo2], [regresofecha2], [regresohora2], [hotel], [coctel], [cena], [familia], [familiacantidad], [familiaedades], [comentarios]) VALUES (@nombres, @apellidos, @correo, @telefono, @institucion, @talla, @eje, @salidaciudad1, @salidalinea1, @salidavuelo1, @salidafecha1, @salidahora1, @salidaciudad2, @salidalinea2, @salidavuelo2, @salidafecha2, @salidahora2, @regresociudad1, @regresolinea1, @regresovuelo1, @regresofecha1, @regresohora1, @regresociudad2, @regresolinea2, @regresovuelo2, @regresofecha2, @regresohora2, @hotel, @coctel, @cena, @familia, @familiacantidad, @familiaedades, @comentarios)" 
                            SelectCommand="SELECT * FROM [CPI2013mpd]" 
                            
                            UpdateCommand="UPDATE [CPI2013mpd] SET [nombres] = @nombres, [apellidos] = @apellidos, [correo] = @correo, [telefono] = @telefono, [institucion] = @institucion, [talla] = @talla, [eje] = @eje, [salidaciudad1] = @salidaciudad1, [salidalinea1] = @salidalinea1, [salidavuelo1] = @salidavuelo1, [salidafecha1] = @salidafecha1, [salidahora1] = @salidahora1, [salidaciudad2] = @salidaciudad2, [salidalinea2] = @salidalinea2, [salidavuelo2] = @salidavuelo2, [salidafecha2] = @salidafecha2, [salidahora2] = @salidahora2, [regresociudad1] = @regresociudad1, [regresolinea1] = @regresolinea1, [regresovuelo1] = @regresovuelo1, [regresofecha1] = @regresofecha1, [regresohora1] = @regresohora1, [regresociudad2] = @regresociudad2, [regresolinea2] = @regresolinea2, [regresovuelo2] = @regresovuelo2, [regresofecha2] = @regresofecha2, [regresohora2] = @regresohora2, [hotel] = @hotel, [coctel] = @coctel, [cena] = @cena, [familia] = @familia, [familiacantidad] = @familiacantidad, [familiaedades] = @familiaedades, [comentarios] = @comentarios WHERE [id] = @original_id" 
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
                                <asp:Parameter Name="talla" Type="String" />
                                <asp:Parameter Name="eje" Type="String" />
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
                                <asp:Parameter Name="talla" Type="String" />
                                <asp:Parameter Name="eje" Type="String" />
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
