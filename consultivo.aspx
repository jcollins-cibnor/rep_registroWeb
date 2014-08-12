<%@ Page Language="C#" AutoEventWireup="true" CodeFile="consultivo.aspx.cs" Inherits="consultivo" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>CIBNOR, Registro en Línea - Consejo Consultivo</title>
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
                            Text="1era Sesión del Consejo Consultivo" Font-Size="14pt"></asp:Label>
                    <br />
                    <asp:Label ID="Label19" runat="server" Font-Bold="True" 
                            Text="Centros Públicos de Investigación CONACyT" Font-Size="12pt"></asp:Label>
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
                HeaderText="Los campos marcados con * son requeridos:" Font-Names="Verdana" 
                    Font-Size="8pt" ForeColor="Red" />
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
                            SetFocusOnError="True" Font-Bold="True" ForeColor="Red">*</asp:RequiredFieldValidator>
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
                            SetFocusOnError="True" Font-Bold="True" ForeColor="Red">
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
                            SetFocusOnError="True" ForeColor="Red">
                              *</asp:RequiredFieldValidator>
                    </td>
                    <td style="text-align: left"> 
                        <asp:CompareValidator ID="CompareValidator3" runat="server" 
                            ControlToCompare="txtCorreo" ControlToValidate="txtCorreoConfirma" Font-Names="Arial" 
                            Font-Size="8pt" SetFocusOnError="True">Confirmar correo electrónico</asp:CompareValidator>
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
                    <td colspan="4" style="font-family: Verdana; font-weight: bold;">
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
<hr style="visibility:hidden;"/> <!-- renglon en blanco -->
            <table style="border:0; width:500pt; font-size: 8pt;">
                <tr>
                    <td colspan="3" style="font-size: 9pt; font-family: Verdana; font-weight: bold; text-align: center;">
                        <asp:Label ID="Label18" runat="server" Font-Bold="True" Font-Names="Verdana" 
                            Font-Size="9pt" Text="INFORMACION ADICIONAL"></asp:Label>
                    </td>
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
                    <td style="text-align:right; font-family: Verdana; width: 150pt;">
                        &nbsp;<asp:Label ID="lblEspecificarHotel" runat="server" 
                            Text="Hotel:"></asp:Label>
                    </td>
                    <td style="text-align: left; font-family: Verdana;">
                        <asp:TextBox ID="txtHotel" runat="server" Font-Size="8pt" Width="180pt" 
                            MaxLength="200" >Marina</asp:TextBox>
                            <br />
                    </td>
                    <td style="text-align: left; font-family: Verdana; width:auto;">
                        <asp:Label ID="lblEspecificarInstitucion4" runat="server" 
                            Text="Si desea cambiar el hotel sede, sustituya el nombre en la casilla."></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td style="text-align:right; font-family: Verdana; width: 150pt;">
                        &nbsp;<asp:Label ID="Label10" runat="server" 
                            Text="Interes en la actividad extramuros:"></asp:Label>
                    </td>
                    <td style="text-align: left; font-family: Verdana;">
                        <asp:DropDownList ID="ddlExtramuros" runat="server" Font-Italic="False" 
                            Font-Names="Verdana" Font-Size="8pt" Width="60px">
                            <asp:ListItem Selected="True" Value="No">No</asp:ListItem>
                            <asp:ListItem Selected="False" Value="Si">Si</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                    <td style="text-align: left; font-family: Verdana; width:auto;">
                    </td>
                </tr>
                <tr>
                    <td style="text-align:right; font-family: Verdana; width: 150pt;">
                        &nbsp;<asp:Label ID="Label15" runat="server" 
                            Text="Comentarios:"></asp:Label>
                    </td>
                    <td style="text-align: left; font-family: Verdana;">
                        <asp:TextBox ID="txtComentarios" runat="server" MaxLength="500" 
                            TextMode="MultiLine" Width="100%" Font-Size="8pt" />
                    </td>
                    <td style="text-align: left; font-family: Verdana; width:auto;">
                    </td>
                </tr>
            </table>
<hr style="visibility:hidden;"/> <!-- renglon en blanco -->
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
                        <asp:SqlDataSource ID="SqlDSconsultivo" runat="server" 
                            ConnectionString="<%$ ConnectionStrings:REGWEBConnectionString %>" 
                            DeleteCommand="DELETE FROM [Consultivo] WHERE [id] = @original_id" 
                            InsertCommand="INSERT INTO [Consultivo] ([nombres], [apellidos], [correo], [telefono], [institucion], [llegalinea], [llegavuelo], [llegafecha], [llegahora], [salelinea], [salevuelo], [salefecha], [salehora], [hotel]) VALUES (@nombres, @apellidos, @correo, @telefono, @institucion, @llegalinea, @llegavuelo, @llegafecha, @llegahora, @salelinea, @salevuelo, @salefecha, @salehora, @hotel)" 
                            SelectCommand="SELECT * FROM [Consultivo]" 
                            
                            UpdateCommand="UPDATE [Consultivo] SET [nombres] = @nombres, [apellidos] = @apellidos, [correo] = @correo, [telefono] = @telefono, [institucion] = @institucion, [llegalinea] = @llegalinea, [llegavuelo] = @llegavuelo, [llegafecha] = @llegafecha, [llegahora] = @llegahora, [salelinea] = @salelinea, [salevuelo] = @salevuelo, [salefecha] = @salefecha, [salehora] = @salehora, [hotel] = @hotel WHERE [id] = @original_id" 
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
                                <asp:Parameter Name="llegalinea" Type="String" />
                                <asp:Parameter Name="llegavuelo" Type="String" />
                                <asp:Parameter Name="llegafecha" Type="String" />
                                <asp:Parameter Name="llegahora" Type="String" />
                                <asp:Parameter Name="salelinea" Type="String" />
                                <asp:Parameter Name="salevuelo" Type="String" />
                                <asp:Parameter Name="salefecha" Type="String" />
                                <asp:Parameter Name="salehora" Type="String" />
                                <asp:Parameter Name="hotel" Type="String" />
                                <asp:Parameter Name="original_id" Type="Int32" />
                            </UpdateParameters>
                            <InsertParameters>
                                <asp:Parameter Name="nombres" Type="String" />
                                <asp:Parameter Name="apellidos" Type="String" />
                                <asp:Parameter Name="correo" Type="String" />
                                <asp:Parameter Name="telefono" Type="String" />
                                <asp:Parameter Name="institucion" Type="String" />
                                <asp:Parameter Name="llegalinea" Type="String" />
                                <asp:Parameter Name="llegavuelo" Type="String" />
                                <asp:Parameter Name="llegafecha" Type="String" />
                                <asp:Parameter Name="llegahora" Type="String" />
                                <asp:Parameter Name="salelinea" Type="String" />
                                <asp:Parameter Name="salevuelo" Type="String" />
                                <asp:Parameter Name="salefecha" Type="String" />
                                <asp:Parameter Name="salehora" Type="String" />
                                <asp:Parameter Name="hotel" Type="String" />
                            </InsertParameters>
                        </asp:SqlDataSource>
                    </td>
                </tr>
            </table>
        </asp:Panel>
        <br />
        <asp:Button ID="btnCancelar" runat="server" Text="Cancelar" 
            CausesValidation="False" Width="150px"            
            PostBackUrl="http://intranet.cibnor.mx/eplant1.php?pagID=anuncios/cccpi2013/index" 
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
    </div>
   
    </form>
</body>
</html>
