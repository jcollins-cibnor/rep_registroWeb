<%@ Page Language="C#" AutoEventWireup="true" CodeFile="administradores2014.aspx.cs" Inherits="administradores2014" %>

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
                                Height="60px" ImageUrl="~/Images/logo_mexicoPresidencia.png" /></td>
                        <td style="width:260px; text-align:center;">
                            <asp:Image ID="Image2" runat="server" Height="60px" 
                                ImageUrl="~/Images/logo_administradores2014.png" />
                        </td>
                        <td style="width:120px; text-align:center;">
                            <asp:Image ID="Image3" runat="server" Height="60px" 
                                ImageUrl="~/Images/logo_conacyt.jpg" />
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
                        <asp:Label ID="lblInstitucion" runat="server" Font-Bold="False" 
                            Font-Names="Verdana" Font-Size="8pt" Text="Institución:"></asp:Label>
                    </td>
                    <td style="text-align: left">
                        <asp:TextBox ID="txtInstitucion" runat="server" Font-Size="8pt" 
                            MaxLength="50" Width="240px" />
                    </td>
                    <td>&nbsp;</td>
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
            <table style="border: 0; width: 500pt; font-size: 9pt; font-family: Verdana;">
                <tr>
                    <td colspan="2" style="text-align: left;">
                        <asp:Label ID="lblTalleres" runat="server" Font-Bold="True" Font-Names="Verdana" 
                            Font-Size="8pt" Text="Talleres en donde participo:"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td style="text-align: right; width: 15%;">
                        &nbsp;</td>
                    <td style="text-align: left;">
                            <asp:CheckBoxList ID="chkTalleres" runat="server" Font-Names="Verdana"
                                Font-Size="8pt">
                                <asp:ListItem>Programación y Presupuestación (Administrador, financiero y Humanos)</asp:ListItem>
                                <asp:ListItem>Carteras de Inversión (Administrador, responsable(s) de Carteras de Inversión)</asp:ListItem>
                                <asp:ListItem>Servicios Personales (Administrador, humanos y financiero opcionalmente)</asp:ListItem>
                            </asp:CheckBoxList>
                            <br />
                    </td>
                </tr>
            </table>
            <%--**********--%>            
            <table style="border:0; width:500pt; font-size: 8pt;">
                <tr>
                        <td colspan="2" style="text-align: left;">
                            <asp:Label ID="lblHotel" runat="server" Font-Bold="True" Font-Names="Verdana" 
                                Font-Size="8pt" Text="Hotel donde me hospedo:"></asp:Label>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                                ControlToValidate="rblHotel">*</asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td style="text-align:right; font-family: Verdana; width: 15%;">
                        &nbsp;</td>
                    <td style="text-align: left; font-family: Verdana; ">
                        <asp:RadioButtonList ID="rblHotel" runat="server" AutoPostBack="True" 
                            Height="26px" Width="120pt" Font-Names="Verdana" Font-Size="8pt" 
                            onselectedindexchanged="rblHotel_SelectedIndexChanged">
                            <asp:ListItem Selected="True">Araiza Inn Palmira</asp:ListItem>
                            <asp:ListItem>Marina Palmira</asp:ListItem>
                            <asp:ListItem>Otro</asp:ListItem>
                        </asp:RadioButtonList>
                        <asp:TextBox ID="txtHotel" runat="server" Font-Bold="False" 
                            Font-Names="Verdana" Font-Size="8pt" MaxLength="50" 
                            Width="180pt" Enabled="False"></asp:TextBox>
                        <br />
                    </td>
                </tr>
                <!-- renglon en blanco -->
                <tr>
                    <td colspan="2">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td colspan="2" style="text-align:center;">
                        <asp:Label ID="lblComentarios0" runat="server" Font-Bold="True" 
                            Font-Names="Verdana" Font-Size="8pt" 
                            
                            Text="Si requieren desarrollar algún tema especifico, favor de ponerlo en comentarios."></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td colspan="2">
                        &nbsp;</td>
                </tr>
            </table>
            <%--**********--%>                            
            <table style="border:0; width:500pt; font-size: 8pt;">
                <tr>
                    <td style="text-align:left; font-family: Verdana; ">
                        <asp:Label ID="lblComentarios" runat="server" Font-Bold="False" Font-Names="Verdana" 
                            Font-Size="8pt" Text="Comentarios adicionales:"></asp:Label>
                        <br />
                        <asp:TextBox ID="txtComentarios" runat="server" MaxLength="5000" 
                            TextMode="MultiLine" Width="100%"></asp:TextBox>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                            ControlToValidate="txtComentarios" Font-Names="Arial" Font-Size="8pt" 
                            SetFocusOnError="True" ValidationExpression="^([\S\s]{0,5000})$">Maximo de caracteres permitidos: 5000</asp:RegularExpressionValidator>
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

            <asp:Label ID="lblStatusExiste" runat="server" Font-Bold="True" 
                Font-Names="Verdana" Font-Size="8pt" ForeColor="Blue"></asp:Label>
            <br />
            <br />
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
            
            <table style="border:0; width:500pt;  font-size: 8pt;">
                <tr>
                    <td style="text-align: center">
                        <asp:Button ID="btnRegresar" runat="server" onclick="btnRegresar_Click" 
                            Text="Regresar" Width="150px" Font-Names="Arial" Font-Size="8pt" />
                        &nbsp;<asp:Button ID="btnEnviar" runat="server"  
                            Text="Enviar" Width="150px" onclick="btnEnviar_Click" Font-Names="Arial" 
                            Font-Size="8pt" />
                            <br />
                            <br />
                        <asp:Label ID="lblStatus" runat="server" Font-Bold="True" 
                            Font-Names="Verdana" Font-Size="8pt" ForeColor="Blue"></asp:Label>

                        <asp:SqlDataSource ID="SqlDSregistro" runat="server" 
                            ConnectionString="<%$ ConnectionStrings:REGWEBConnectionString %>" 
                            DeleteCommand="DELETE FROM [administradores2014] WHERE [id] = @original_id" 
                            InsertCommand="INSERT INTO [administradores2014] ([nombres], [apellidos], [correo], [institucion], [talleres], [hotel], [comentarios], [registrovalido], [registrofecha]) VALUES (@nombres, @apellidos, @correo, @institucion, @talleres, @hotel, @comentarios, @registrovalido, @registrofecha)" 
                            SelectCommand="SELECT * FROM [administradores2014]" 
                            
                            UpdateCommand="UPDATE [administradores2014] SET [nombres] = @nombres, [apellidos] = @apellidos, [correo] = @correo, [institucion] = @institucion, [talleres] = @talleres, [hotel] = @hotel, [comentarios] = @comentarios, [registrovalido] = @registrovalido, [registrofecha] = @registrofecha WHERE [id] = @original_id" 
                            OldValuesParameterFormatString="original_{0}">
                            <DeleteParameters>
                                <asp:Parameter Name="original_id" Type="Int32" />
                            </DeleteParameters>
                            <UpdateParameters>
                                <asp:Parameter Name="nombres" Type="String" />
                                <asp:Parameter Name="apellidos" Type="String" />
                                <asp:Parameter Name="correo" Type="String" />
                                <asp:Parameter Name="institucion" Type="String" />
                                <asp:Parameter Name="talleres" Type="String" />
                                <asp:Parameter Name="hotel" Type="String" />
                                <asp:Parameter Name="comentarios" Type="String" />
                                <asp:Parameter Name="registrovalido" Type="String" />
                                <asp:Parameter Name="registrofecha" Type="DateTime" />
                                <asp:Parameter Name="original_id" Type="Int32" />
                            </UpdateParameters>
                            <InsertParameters>
                                <asp:Parameter Name="nombres" Type="String" />
                                <asp:Parameter Name="apellidos" Type="String" />
                                <asp:Parameter Name="correo" Type="String" />
                                <asp:Parameter Name="institucion" Type="String" />
                                <asp:Parameter Name="talleres" Type="String" />
                                <asp:Parameter Name="hotel" Type="String" />
                                <asp:Parameter Name="comentarios" Type="String" />
                                <asp:Parameter Name="registrovalido" Type="String" />
                                <asp:Parameter Name="registrofecha" Type="DateTime" />
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
    <asp:Label ID="lblHiddenHotel" runat="server" Font-Names="Arial" 
        Font-Size="8pt" Visible="False"></asp:Label>
    <asp:Label ID="lblHiddenTalleres" runat="server" Font-Names="Arial" 
        Font-Size="8pt" Visible="False"></asp:Label>
    </div>
   
    </form>
</body>
</html>
