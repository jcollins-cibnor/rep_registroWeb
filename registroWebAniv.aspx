<%@ Page Language="C#" AutoEventWireup="true" CodeFile="registroWebAniv.aspx.cs" Inherits="registroWebAniv" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Aniversario CIBNOR - Registro en Linea</title>
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
                    <asp:Image ID="Image1" runat="server" ImageUrl="~/Images/logo37aniv.png" 
                        Height="80px" /></td>
                <td style="width:480px; text-align:center; font-size: 14pt; font-family: Arial; font-weight: bold;">
                    <asp:Label ID="lblTituloEvento" runat="server" Font-Bold="True" 
                                Font-Names="Verdana" Font-Size="14pt" 
                                Text="Actividades del 37 Aniversario del CIBNOR"></asp:Label>
                    <br />
                    <br />
                    <asp:Label ID="Label9" runat="server" Font-Bold="False" 
                                Font-Names="Verdana" Font-Size="12pt" 
                                Text="Registro en Linea Individual"></asp:Label>
                </td>
                <td  style="width:160px; text-align: center;">
                    <asp:Image ID="Image2" runat="server" ImageUrl="~/Images/logo37aniv.png" 
                        Height="80px" /></td>
            </tr>
        </table>
            <asp:Panel ID="pnlDatos" runat="server">
            <asp:ValidationSummary ID="valSum" runat="server" DisplayMode="SingleParagraph" 
                HeaderText="Los campos marcados con * son requeridos:" Font-Names="Verdana" Font-Size="8pt" />
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
                    <td style="text-align:right; font-family: Verdana">
                        Nombre(s):</td>
                    <td style="text-align:left">
                        <asp:TextBox ID="txtNombres" runat="server" 
                            Font-Size="8pt" Width="240px" MaxLength="50" />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                            ControlToValidate="txtNombres" 
                            SetFocusOnError="True" Font-Bold="True">*</asp:RequiredFieldValidator>
                    </td>
                    <td>
                        </td>
                </tr>
                <tr>
                    <td style="text-align:right; font-family: Verdana">
                        Apellido(s):</td>
                    <td style="text-align: left">
                        <asp:TextBox ID="txtApellidos" runat="server" Width="240px" Font-Size="8pt" 
                            MaxLength="50" />
                    </td>
                    <td> </td>
                </tr>
                <tr>
                    <td style="text-align:right; font-family: Verdana">
                        Correo electrónico:</td>
                    <td style="text-align:left">
                        <asp:TextBox ID="txtCorreo" runat="server" 
                            MaxLength="50" Width="240px" Font-Size="8pt" />
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
                            MaxLength="50" Width="240px" />
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
                        Domicilio:</td>
                    <td style="text-align: left">
                        <asp:TextBox ID="txtDomicilio" runat="server" Font-Size="8pt" MaxLength="200" 
                            Width="240px" />
                    </td>
                    <td>
                    </td>
                </tr>
                <tr>
                    <td style="text-align:right; font-family: Verdana">
                        Institución | Empresa:</td>
                    <td style="text-align: left">
                        <asp:TextBox ID="txtInstitucion" runat="server" Font-Size="8pt" Width="240px" 
                            MaxLength="200" />
                    </td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td style="text-align:right; font-family: Verdana">                        
                        <asp:Label ID="lblSexo" runat="server" Text="Sexo:"></asp:Label>                        
                    </td>
                    <td style="text-align: left">
                        <asp:DropDownList ID="ddlSexo" runat="server" Font-Italic="False" 
                            Font-Names="Verdana" Font-Size="8pt" Width="120px" Visible="False">
                            <asp:ListItem Selected="True" Value="Hombre">Hombre</asp:ListItem>
                            <asp:ListItem Selected="False" Value="Mujer">Mujer</asp:ListItem>
                        </asp:DropDownList>
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
                    <!-- renglon en blanco -->
                    <td></td>
                </tr>
                <tr>
                    <!-- barra de separacion -->
                    <td style="font-family: Verdana; font-weight: bold; width: 600pt;">
                        <hr noshade="noshade" size="0" width="100%" />
                    </td>
                </tr>
            </table>

<%--            Inicia update panel actividades--%>
            <asp:UpdatePanel ID="upnlActividades" runat="server">
            <ContentTemplate>
            <table style="border:0; width:500pt; font-size: 8pt;">                        
                        <tr>
                            <td colspan="4"                                 
                                style="font-size: 9pt; font-family: Verdana; font-weight: bold; width: 600pt; text-align: center;">
                                <asp:Label ID="Label14" runat="server" Font-Bold="True" Font-Names="Verdana" 
                                    Font-Size="9pt" Text="ACTIVIDADES"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td colspan="4"                                 
                                style="font-size: 9pt; font-family: Verdana; font-weight: bold; width: 600pt; text-align: center;">
                                <asp:Label ID="Label15" runat="server" Font-Names="Verdana" 
                                    Font-Size="9pt" Text="Seleccione las actividades en las que participará" 
                                    Font-Bold="False"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td colspan="4" style="width: 600pt; text-align: center;">
                                <hr noshade="noshade" size="0" width="100%" />
                            </td>
                        </tr>
                        <tr>
                            <td style="text-align:left; width:25%;">
                                <asp:CheckBox ID="chkAjedrez" runat="server" Font-Bold="False" 
                                    Font-Names="Verdana" Font-Size="8pt" Text="Ajedrez" />
                            </td>
                            <td style="text-align:left; width:25%;">
                                <asp:CheckBox ID="chkCarreraAtletica" runat="server" Font-Bold="False" 
                                    Font-Names="Verdana" Font-Size="8pt" Text="Carrera Atlética" />
                            </td>
                            <td style="text-align:left; width:25%;">
                                <asp:CheckBox ID="chkLoteria" runat="server" Font-Bold="False" 
                                    Font-Names="Verdana" Font-Size="8pt" Text="Loteria" />
                            </td>
                            <td style="text-align:left; width:25%;">
                                <asp:CheckBox ID="chkPingPong" runat="server" Font-Bold="False" 
                                    Font-Names="Verdana" Font-Size="8pt" Text="Ping Pong" />
                            </td>
                        </tr>
                        <tr>
                            <td style="font-size: 9pt; font-family: Verdana; font-weight: bold; text-align:left;">
                                &nbsp;</td>
                            <td style="font-size: 9pt; font-family: Verdana; font-weight: bold; text-align:left;">
                                &nbsp;</td>
                            <td style="font-size: 9pt; font-family: Verdana; font-weight: bold; text-align:left;">
                                &nbsp;</td>
                            <td style="font-size: 9pt; font-family: Verdana; font-weight: bold; text-align:left;">
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td style="font-size: 9pt; font-family: Verdana; font-weight: bold; text-align:left;">
                                &nbsp;</td>
                            <td style="font-size: 9pt; font-family: Verdana; font-weight: bold; text-align:left;">
                                &nbsp;</td>
                            <td style="font-size: 9pt; font-family: Verdana; font-weight: bold; text-align:left;">
                                &nbsp;</td>
                            <td style="font-size: 9pt; font-family: Verdana; font-weight: bold; text-align:left;">
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td style="font-size: 9pt; font-family: Verdana; font-weight: bold; text-align:left;">
                                &nbsp;</td>
                            <td style="font-size: 9pt; font-family: Verdana; font-weight: bold; text-align:left;">
                                &nbsp;</td>
                            <td style="font-size: 9pt; font-family: Verdana; font-weight: bold; text-align:left;">
                                &nbsp;</td>
                            <td style="font-size: 9pt; font-family: Verdana; font-weight: bold; text-align:left;">
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td colspan="2" style="font-family: Verdana; font-weight: bold; width: 50%;">
                                &nbsp;</td>
                            <td colspan="2" style="font-family: Verdana; font-weight: bold; width: 50%;">
                                &nbsp;</td>
                        </tr>
                    </table>
                </ContentTemplate>
                </asp:UpdatePanel>
<%--            Termina update panel actividades--%>


                <table style="border:0; width:500pt; font-size: 8pt;">
                    <tr>  
                        <td style="font-family: Verdana; text-align: right; width: 25%;"> 
                            <asp:Label ID="Label10" runat="server" Font-Bold="False" Font-Names="Verdana" 
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
