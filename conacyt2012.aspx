<%@ Page Language="C#" AutoEventWireup="true" CodeFile="conacyt2012.aspx.cs" Inherits="conacyt2012" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
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
                <td style="width:160px;">
                    <asp:Image ID="Image1" runat="server" ImageUrl="~/Images/ciboficial.gif" 
                        Height="60px" /></td>
                <td style="width:480px; text-align:center;">
                    <asp:Label ID="Label9" runat="server" Font-Bold="True" 
                            Text="Consejo Consultivo Conacyt" Font-Size="14pt"></asp:Label>
                    <br />
                        <asp:Label ID="lblRegistroEnLinea" runat="server" Font-Bold="False" 
                            Text="Registro en linea" Font-Size="11pt"></asp:Label>
                    </td>
                <td  style="width:160px; text-align: center;">
                    <asp:Image ID="Image2" runat="server" ImageUrl="~/images/conacyt_logo3d.gif" 
                        Height="60px" /></td>
            </tr>
        </table>
            <asp:Panel ID="pnlDatos" runat="server">
            <asp:ValidationSummary ID="valSum" runat="server" DisplayMode="SingleParagraph" 
                HeaderText="Los campos marcados con * son requeridos:" Font-Names="Verdana" Font-Size="8pt" />
<hr style="visibility:hidden;"/> <!-- renglon en blanco --> 
            <table style="border:0; width:500pt;  font-size: 8pt;">
                <tr>
                    <td colspan="3" 
                        style="font-size: 9pt; font-family: Verdana; font-weight: bold; text-align: center;">
                        DATOS PERSONALES</td>
                </tr>
                <tr>
                    <td colspan="3" style="font-family: Verdana; font-weight: bold;">
                        <hr width="100%" noshade="noshade" size="0" />
                    </td>
                </tr>
                <tr>
                    <td colspan="3" style="font-family: Verdana; font-weight: bold;">
                        <hr style="visibility:hidden;" width="100%" noshade="noshade" size="0" />
                    </td>
                </tr>
                <tr>
                    <td style="text-align:right; font-family: Verdana; width:150pt;">
                        Nombre(s):</td>
                    <td style="text-align:left">
                        <asp:TextBox ID="txtNombres" runat="server" 
                            Font-Size="8pt" Width="180pt" MaxLength="50" />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                            ControlToValidate="txtNombres" 
                            SetFocusOnError="True" Font-Bold="True">*</asp:RequiredFieldValidator>
                    </td>
                    <td> </td>
                </tr>
                <tr>
                    <td style="text-align:right; font-family: Verdana">
                        Apellido(s):</td>
                    <td style="text-align: left">
                        <asp:TextBox ID="txtApellidos" runat="server" Width="180pt" Font-Size="8pt" 
                            MaxLength="50" />
                    </td>
                    <td> </td>
                </tr>
                <tr>
                    <td style="text-align:right; font-family: Verdana">
                        Correo electrónico:</td>
                    <td style="text-align:left">
                        <asp:TextBox ID="txtCorreo" runat="server" 
                            MaxLength="50" Width="180pt" Font-Size="8pt" />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                            ControlToValidate="txtCorreo" 
                            SetFocusOnError="True" Font-Bold="True">
                              *</asp:RequiredFieldValidator>
                    </td>
                    <td style="text-align:left">
                        <asp:RegularExpressionValidator ID="valRegExCorreo" runat="server" 
                            ControlToValidate="txtCorreo" Display="Static" Font-Names="Arial" Font-Size="8pt"                             
                            
                            ValidationExpression="^([\w-\.]+)@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.)|(([\w-]+\.)+))([a-zA-Z]{2,4}|[0-9]{1,3})(\]?)$">Formato: correo@servidor.dominio
                        </asp:RegularExpressionValidator>
                    </td>
                </tr>
                <!-- renglon en blanco -->
                <tr>
                    <td style="text-align:right; font-family: Verdana">
                        Confirmar correo electrónico:</td>
                    <td style="text-align: left">
                        <asp:TextBox ID="txtCorreoConfirma" runat="server" Font-Size="8pt" 
                            MaxLength="50" Width="180pt" />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                            ControlToValidate="txtCorreoConfirma" Font-Bold="True" 
                            SetFocusOnError="True">
                              *</asp:RequiredFieldValidator>
                    </td>
                    <td style="text-align: left"> 
                        <asp:CompareValidator ID="CompareValidator3" runat="server" 
                            ControlToCompare="txtCorreo" ControlToValidate="txtCorreoConfirma" Font-Names="Arial" 
                            Font-Size="8pt" SetFocusOnError="True">Confirmar correo electrónico.</asp:CompareValidator>
                    </td>
                </tr>
                <tr>
                    <td style="text-align:right; font-family: Verdana">
                        Teléfono:</td>
                    <td style="text-align: left">
                        <asp:TextBox ID="txtTelefono" runat="server" MaxLength="50" Font-Size="8pt" 
                            Width="90pt" />
                    </td>
                    <td> </td>
                </tr>
                <tr>
                    <td style="text-align:right; font-family: Verdana">
                        Fax:</td>
                    <td style="text-align: left">
                        <asp:TextBox ID="txtFax" runat="server" MaxLength="50" Font-Size="8pt" 
                            Width="90pt" />
                    </td>
                    <td> </td>
                </tr>
                <tr>
                    <td style="text-align:right; font-family: Verdana">
                        <asp:Label ID="Label16" runat="server" Font-Bold="False" Font-Names="Verdana" 
                            Font-Size="8pt" Text="Institución:"></asp:Label>
                    </td>
                    <td style="text-align: left">
                        <asp:TextBox ID="txtInstitucion" runat="server" Font-Size="8pt" Width="180pt" 
                            MaxLength="200" />
                    </td>
                    <td>
                        &nbsp;</td>
                </tr>
            </table>
<hr style="visibility:hidden;"/>
<hr style="visibility:hidden;"/> <!-- renglon en blanco --> 
            <table style="border:0; width:500pt; font-size: 8pt;">                        
                <tr>
                    <td colspan="4"                                 
                        style="font-size: 9pt; font-family: Verdana; font-weight: bold; text-align: center;">
                        <asp:Label ID="Label14" runat="server" Font-Bold="True" Font-Names="Verdana" 
                            Font-Size="9pt" Text="ITINERARIO DE VUELO"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td colspan="4" style="font-size: 9pt; text-align: center;">                             
                        <hr noshade="noshade" size="0" width="100%" />                             
                    </td>
                </tr>
                <tr>
                    <td colspan="3" style="font-family: Verdana; font-weight: bold;">
                        <hr style="visibility:hidden;" width="100%" noshade="noshade" size="0" />
                    </td>
                </tr>
                <tr>
                    <td colspan="2" style="font-size: 9pt; width: 50%; text-align: center;">
                        <asp:Label ID="Label13" runat="server" Font-Bold="True" Font-Names="Verdana" 
                            Font-Size="9pt" Text="LLEGADA"></asp:Label>
                    </td>
                    <td colspan="2" style="font-size: 9pt; width: 50%; text-align: center;">
                        <asp:Label ID="Label12" runat="server" Font-Bold="True" Font-Names="Verdana" 
                            Font-Size="9pt" Text="SALIDA"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td style="font-size: 9pt; font-family: Verdana; font-weight: bold; text-align:right;">
                        <asp:Label ID="Label1" runat="server" Font-Bold="False" Font-Names="Verdana" 
                            Font-Size="8pt" Text="Aerolinea:"></asp:Label>
                    </td>
                    <td style="font-size: 9pt; font-family: Verdana; font-weight: bold; text-align:left;">
                        <asp:TextBox ID="txtLlegadaLinea" runat="server" Font-Names="Verdana" 
                            Font-Size="8pt" MaxLength="50" Width="130pt"></asp:TextBox>
                    </td>
                    <td style="font-size: 9pt; font-family: Verdana; font-weight: bold; text-align:right;">
                        <asp:Label ID="Label5" runat="server" Font-Bold="False" Font-Names="Verdana" 
                            Font-Size="8pt" Text="Aerolinea:"></asp:Label>
                    </td>
                    <td style="font-size: 9pt; font-family: Verdana; font-weight: bold; text-align:left;">
                        <asp:TextBox ID="txtSalidaLinea" runat="server" Font-Names="Verdana" 
                            Font-Size="8pt" MaxLength="50" Width="130pt"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td style="font-size: 9pt; font-family: Verdana; font-weight: bold; text-align:right;">
                        <asp:Label ID="Label2" runat="server" Font-Bold="False" Font-Names="Verdana" 
                            Font-Size="8pt" Text="No. de vuelo:"></asp:Label>
                    </td>
                    <td style="font-size: 9pt; font-family: Verdana; font-weight: bold; text-align:left;">
                        <asp:TextBox ID="txtLlegadaVuelo" runat="server" Font-Names="Verdana" 
                            Font-Size="8pt" MaxLength="50" Width="130pt"></asp:TextBox>
                    </td>
                    <td style="font-size: 9pt; font-family: Verdana; font-weight: bold; text-align:right;">
                        <asp:Label ID="Label6" runat="server" Font-Bold="False" Font-Names="Verdana" 
                            Font-Size="8pt" Text="No. de vuelo:"></asp:Label>
                    </td>
                    <td style="font-size: 9pt; font-family: Verdana; font-weight: bold; text-align:left;">
                        <asp:TextBox ID="txtSalidaVuelo" runat="server" Font-Names="Verdana" 
                            Font-Size="8pt" MaxLength="50" Width="130pt"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td style="font-size: 9pt; font-family: Verdana; font-weight: bold; text-align:right;">
                        <asp:Label ID="Label3" runat="server" Font-Bold="False" Font-Names="Verdana" 
                            Font-Size="8pt" Text="Fecha:"></asp:Label>
                    </td>
                    <td style="font-size: 9pt; font-family: Verdana; font-weight: bold; text-align:left;">
                        <asp:TextBox ID="txtLlegadaFecha" runat="server" Font-Names="Verdana" 
                            Font-Size="8pt" MaxLength="50" Width="130pt"></asp:TextBox>
                    </td>
                    <td style="font-size: 9pt; font-family: Verdana; font-weight: bold; text-align:right;">
                        <asp:Label ID="Label7" runat="server" Font-Bold="False" Font-Names="Verdana" 
                            Font-Size="8pt" Text="Fecha:"></asp:Label>
                    </td>
                    <td style="font-size: 9pt; font-family: Verdana; font-weight: bold; text-align:left;">
                        <asp:TextBox ID="txtSalidaFecha" runat="server" Font-Names="Verdana" 
                            Font-Size="8pt" MaxLength="50" Width="130pt"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td style="font-size: 9pt; font-family: Verdana; font-weight: bold; text-align:right;">
                        <asp:Label ID="Label4" runat="server" Font-Bold="False" Font-Names="Verdana" 
                            Font-Size="8pt" Text="Hora:"></asp:Label>
                    </td>
                    <td style="font-size: 9pt; font-family: Verdana; font-weight: bold; text-align:left;">
                        <asp:TextBox ID="txtLlegadaHora" runat="server" Font-Names="Verdana" 
                            Font-Size="8pt" MaxLength="50" Width="130pt"></asp:TextBox>
                    </td>
                    <td style="font-size: 9pt; font-family: Verdana; font-weight: bold; text-align:right;">
                        <asp:Label ID="Label8" runat="server" Font-Bold="False" Font-Names="Verdana" 
                            Font-Size="8pt" Text="Hora:"></asp:Label>
                    </td>
                    <td style="font-size: 9pt; font-family: Verdana; font-weight: bold; text-align:left;">
                        <asp:TextBox ID="txtSalidaHora" runat="server" Font-Names="Verdana" 
                            Font-Size="8pt" MaxLength="50" Width="130pt"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td colspan="4" style="font-family: Verdana; font-weight: bold;">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td colspan="4" style="font-family: Verdana; font-weight: bold;">
                        <asp:Label ID="Label17" runat="server" Font-Bold="False" Font-Names="Verdana" Font-Size="8pt" 
                                    
                            Text="Nota: Un operador los transportara del aeropuerto al hotel a su hora de llegada; así mismo el operador pasara por usted dos horas antes de su horario de salida, para su transportación al aeropuerto."></asp:Label>
                    </td>
                </tr>
            </table>
<hr style="visibility:hidden;"/>
<hr style="visibility:hidden;"/> <!-- renglon en blanco -->
            <table style="border:0; width:500pt; font-size: 8pt;">
                <tr>
                    <td colspan="3" style="font-size: 9pt; font-family: Verdana; font-weight: bold; text-align: center;">
                        HOSPEDAJE</td>
                </tr>
                <tr>
                    <td colspan="3">
                        <hr noshade="noshade" size="0"/></td>
                </tr>
                <tr>
                    <td colspan="3" style="font-family: Verdana; font-weight: bold;">
                        <hr style="visibility:hidden;" noshade="noshade" size="0" /></td>
                </tr>
                <tr>
                    <td style="text-align:right; font-family: Verdana; width: 50pt;">
                        &nbsp;<asp:Label ID="lblEspecificarInstitucion0" runat="server" 
                            Text="Hotel:" Font-Bold="True"></asp:Label>
                    </td>
                    <td style="text-align: left; font-family: Verdana; width: 240pt;">
                        <asp:TextBox ID="txtHotel" runat="server" Font-Size="8pt" Width="180pt" 
                            MaxLength="200" >Costa Baja Resort &amp; SPA</asp:TextBox>
                    </td>
                    <td style="text-align: left; font-family: Verdana; width:auto;">
                    </td>
                </tr>
                <tr>
                    <td colspan="3" style="text-align:center; font-family: Verdana;">
                        <asp:Label ID="lblEspecificarInstitucion1" runat="server" 
                            Text="Si desea cambiar el hotel sede, por favor sustituya el nombre en la casilla."></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td></td>
                    <td style="text-align:left; font-family: Verdana;">
                        <p><strong>RESERVACIONES DIRECTAMENTE EN HOTEL</strong></p>
                        <p><strong>Tarifas especiales de hospedaje otorgadas al CIBNOR para el grupo:</strong></p>
                        <ul>
                          <li>Golf View: $1,200.00 más 11% de IVA y 15% de Servicio. Tarifa Incluye 1 Desayuno Buffet en Restaurante Mosaic.</li>
                          <li>Marina View: $1,400.00 más 11% de IVA y 15% de Servicio. Tarifa Incluye 1 Desayuno Buffet en Restaurante Mosaic.</li>
                          <li>Sea View: $1,600.00 más 11% de IVA y 15% de Servicio. Tarifa Incluye 1 Desayuno Buffet en Restaurante Mosaic.</li>
                          <li>Junior Suite: $2,200.00 más 11% de IVA y 15% de Servicio. Tarifa Incluye 1 Desayuno Buffet en Restaurante Mosaic.</li>
                          <li>S&uacute;per Suite: $3,200.00 más 11% de IVA y 15% de Servicio. Tarifa Incluye 1 Desayuno Buffet en Restaurante Mosaic.</li>
                        </ul>
                        <p style="color:Navy; font-weight:bold;">
                        Costabaja Resort & Spa<br />
                        Tel: +52(612) 123 6016 y 17<br />
                        information@costabajaresort.com<br />
                        México: 01- 800-012-3444<br />
                        USA :1-877-392-5525
                        </p>
                    </td>
                    <td style="text-align:right; font-family: Verdana; width: 50pt;">
                        &nbsp;
                    </td>
                </tr>
            </table>
<hr style="visibility:hidden;"/>
<hr style="visibility:hidden;"/>
            <table style="border:0; width:500pt; font-size: 8pt;">
                <tr>
                    <td colspan="5" style="font-size: 9pt; text-align: center;">
                        <asp:Label ID="Label15" runat="server" Font-Bold="True" Font-Names="Verdana" 
                            Font-Size="9pt" Text="INFORMACIÓN ADICIONAL"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td colspan="5" style="font-size: 9pt; text-align: center;">                             
                        <hr noshade="noshade" size="0" width="100%" />                             
                    </td>
                </tr>
                <tr>
                    <td style="font-family: Verdana; text-align: right; width: 50pt;"> 
                    </td>
                    <td style="font-family: Verdana; text-align: right; width: 100pt;"> 
                    </td>
                    <td style="font-family: Verdana; text-align: right; width: 200pt;"> 
                    </td>
                    <td style="font-family: Verdana; text-align: right; width: 100pt;"> 
                    </td>
                    <td style="font-family: Verdana; text-align: right; width: 50pt;"> 
                    </td>
                </tr>
                <tr>
                    <td style="text-align: left; font-family: Verdana; width:50pt; ">
                    </td>
                    <td colspan="3" style="text-align: left; font-family: Verdana; width:400pt; ">
                        <p style="color:Navy;">
                        <strong>ACTIVIDAD EXTRAMURO: Octubre 26 "Isla del Espíritu Santo" en B.C.S.</strong> <br />
                        <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="http://islasgc.conanp.gob.mx/BCS/BCS.html" Target="_blank">
                        http://islasgc.conanp.gob.mx/BCS/BCS.html </asp:HyperLink> <br />
                        Horario: 9 a 16 hrs. aproximadamente<br />
                        Cooperación por participante: $700.00
                        </p>
                    </td>
                    <td style="text-align: left; font-family: Verdana; width:50pt; "></td>
                </tr>
                <tr>  
                    <td colspan="2" style="font-family: Verdana; text-align: right; width: 150pt;"> 
                        <asp:Label ID="lblEspecificarInstitucion" runat="server" 
                            Text="Actividad extramuros:" Font-Bold="True"></asp:Label>
                    </td>
                    <td colspan="3" style="text-align: left; font-family: Verdana; width:350pt; ">
                        <asp:DropDownList ID="ddlExtramuros" runat="server" Font-Italic="False" 
                            Font-Names="Verdana" Font-Size="8pt" Width="60pt">
                            <asp:ListItem Selected="True" Value="No">No</asp:ListItem>
                            <asp:ListItem Selected="False" Value="Si">Si</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>  
                    <td colspan="2" style="font-family: Verdana; text-align: right; width: 150pt;"> 
                        <asp:Label ID="Label10" runat="server" 
                            Text="Participantes confirmados:" Font-Bold="False"></asp:Label>
                    </td>
                    <td colspan="3" style="text-align: left; font-family: Verdana; width:350pt; ">
                        <asp:TextBox ID="txtExtramurosParticipantes" runat="server" Font-Size="8pt" 
                            MaxLength="200" Width="20pt">1</asp:TextBox>
                    </td>
                </tr>
<%--                <tr>  
                    <td style="font-family: Verdana; text-align: right;"> 
                        <asp:Label ID="Label10" runat="server" Font-Bold="False" Font-Names="Verdana" 
                            Font-Size="8pt" Text="Comentarios:"></asp:Label>
                    </td>
                    <td  colspan="4" style="text-align: left; font-family: Verdana; ">
                        <asp:TextBox ID="txtComentarios" runat="server" MaxLength="5000" 
                            TextMode="MultiLine" Width="90%" />
                    </td>
                </tr>--%>
            </table>
<hr style="visibility:hidden;"/>
<hr style="visibility:hidden;"/>
            
                <asp:Button ID="btnContinuar" runat="server" 
                    onclick="btnContinuar_Click" Text="Continuar" Width="150px" 
                    Font-Names="Arial" Font-Size="8pt" />
                <br />
        </asp:Panel>
            
        </div>
        <!-- REGISTRO -->
        <asp:Panel ID="pnlConfirmacion" runat="server" Visible="False">
            <table style="border:0; width:600; font-size: 8pt">
                <tr>
                    <td colspan="3" style="font-family: Verdana; font-weight: bold; font-size:9pt;">
                        CONFIRMACIÓN DE DATOS<br />
                        </td>
                </tr>
                <tr>
                    <td style="text-align:left; " colspan="3">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td style="text-align:right; font-family: Verdana">
                        &nbsp;</td>
                    <td style="text-align:left">
                        <asp:Label ID="lblConfirmacion" runat="server" Font-Names="Consolas" 
                            Font-Size="8pt" Text="Label"></asp:Label>
                    </td>
                    <td style="text-align:left">
                        &nbsp;</td>
                </tr>
                <!-- renglon en blanco -->
                <tr>
                    <td colspan="3" style="text-align: left">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td colspan="3" style="text-align:center;">
                        <asp:Button ID="btnRegresar" runat="server" onclick="btnRegresar_Click" 
                            Text="Regresar" Width="150px" Font-Names="Arial" Font-Size="8pt" />
                        &nbsp;<asp:Button ID="btnEnviar" runat="server"  
                            Text="Enviar" Width="150px" onclick="btnEnviar_Click" Font-Names="Arial" 
                            Font-Size="8pt" />
                        <asp:SqlDataSource ID="SqlDSregistroWeb" runat="server" 
                            ConnectionString="<%$ ConnectionStrings:REGWEBConnectionString %>" 
                            DeleteCommand="DELETE FROM [RegistroWeb] WHERE [id] = @original_id" 
                            InsertCommand="INSERT INTO [RegistroWeb] ([tituloEvento], [nombres], [apellidos], [correo], [domicilio], [ciudad], [estado], [pais], [cp], [telefono], [fax], [institucion], [extramuros], [llegalinea], [llegavuelo], [llegafecha], [llegahora], [salelinea], [salevuelo], [salefecha], [salehora], [hotel], [comentarios]) VALUES (@tituloEvento, @nombres, @apellidos, @correo, @domicilio, @ciudad, @estado, @pais, @cp, @telefono, @fax, @institucion, @extramuros, @llegalinea, @llegavuelo, @llegafecha, @llegahora, @salelinea, @salevuelo, @salefecha, @salehora, @hotel, @comentarios)" 
                            SelectCommand="SELECT * FROM [RegistroWeb]" 
                            
                            UpdateCommand="UPDATE [RegistroWeb] SET [tituloEvento] = @tituloEvento, [nombres] = @nombres, [apellidos] = @apellidos, [correo] = @correo, [domicilio] = @domicilio, [ciudad] = @ciudad, [estado] = @estado, [pais] = @pais, [cp] = @cp, [telefono] = @telefono, [fax] = @fax, [institucion] = @institucion, [extramuros] = @extramuros, [llegalinea] = @llegalinea, [llegavuelo] = @llegavuelo, [llegafecha] = @llegafecha, [llegahora] = @llegahora, [salelinea] = @salelinea, [salevuelo] = @salevuelo, [salefecha] = @salefecha, [salehora] = @salehora, [hotel] = @hotel, [comentarios] = @comentarios WHERE [id] = @original_id" 
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
                        Text="Mar Bermejo No. 195, Col. Playa Palo de Santa Rita; Apdo. Postal 128; La Paz, BCS, 23090, México; Tel:(52) (612) 123-8484 Fax:(52) (612) 125-3625"></asp:Label>
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
    </div>
   
    </form>
</body>
</html>
