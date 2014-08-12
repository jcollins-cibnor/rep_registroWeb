<%@ Page Language="C#" AutoEventWireup="true" CodeFile="microscopia2012.aspx.cs" Inherits="microscopia2012" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>CIBNOR - Registro en linea</title>
</head>
<body>
    <form id="form1" runat="server">

    <asp:ScriptManager ID="scriptmanager1" EnablePartialRendering="true" runat="server" />

    <div>
    <center>
    <div align="center">
        
        <table style="width: 600pt; font-family: Verdana; font-size: 11pt;">
            <tr>
                <td style="width:20%">
                    <asp:Image ID="Image1" runat="server" ImageUrl="~/Images/logo_microscopia2012.png" 
                        Height="80px" />
                </td>
                <td style="text-align:center">
                    <asp:Label ID="lblTituloEvento" runat="server" Font-Bold="True" 
                               Font-Names="Verdana" Font-Size="11pt" 
                               Text="Curso Basico de Microscopia Electronica de Barrido"></asp:Label>
                    <br />
                    <br />
                    <asp:Label ID="Label1" runat="server" Font-Bold="False" 
                               Font-Names="Verdana" Font-Size="11pt" 
                               Text="Registro en Línea"></asp:Label>
    
                </td>
                <td  style="width:20%">
                    <asp:Image ID="Image2" runat="server" ImageUrl="~/images/ciboficial.gif" 
                        Height="70px" />
                </td>
            </tr>
        </table>
        <br />
            <asp:ValidationSummary ID="valSum" runat="server" DisplayMode="SingleParagraph" 
                HeaderText="Los campos marcados con * son requeridos" Font-Names="Verdana" 
                Font-Size="9pt" ForeColor="Red" ShowMessageBox="True" 
            ShowSummary="False" />

        <asp:Panel ID="pnlDatos" runat="server">
            <table style="border:0; width:600pt">
                <tr>
                    <td colspan="3" style="font-size: 9pt; font-family: Verdana; font-weight: bold; width: 600pt; text-align:center;">
                        INFORMACIÓN GENERAL</td>
                </tr>
                <tr>
                    <td colspan="3" style="font-size: 9pt; font-family: Verdana; font-weight: bold; width: 600pt;">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td style="text-align:right; font-size: 9pt; font-family: Verdana; width:160pt;">
                        Nombre(s):</td>
                    <td style="text-align:left">
                        <asp:TextBox ID="txtNombres" runat="server" AutoCompleteType="Disabled" Width="240px" />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                            ControlToValidate="txtNombres" 
                            SetFocusOnError="True" ForeColor="Red">*</asp:RequiredFieldValidator>
                    </td>
                    <td> </td>
                </tr>
                <tr>
                    <td style="text-align:right; font-size: 9pt; font-family: Verdana">
                        Apellido(s):</td>
                    <td style="text-align: left">
                        <asp:TextBox ID="txtApellidos" runat="server" Width="240px" />
                    </td>
                    <td> </td>
                </tr>
                <tr>
                    <td style="text-align:right; font-size: 9pt; font-family: Verdana">
                        Correo electrónico:</td>
                    <td style="text-align:left">
                        <asp:TextBox ID="txtCorreo" runat="server" AutoCompleteType="Disabled" MaxLength="60" Width="240px" />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                            ControlToValidate="txtCorreo" 
                            SetFocusOnError="True" ForeColor="Red">
                             *</asp:RequiredFieldValidator>
                    </td>
                    <td style="text-align:left">
                        <asp:RegularExpressionValidator ID="valRegExCorreo" runat="server" ControlToValidate="txtCorreo" Display="Static" 
                            ErrorMessage="Correo electrónico. " Font-Names="Arial" Font-Size="9pt" 
                            ValidationExpression="^([\w-\.]+)@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.)|(([\w-]+\.)+))([a-zA-Z]{2,4}|[0-9]{1,3})(\]?)$">
                            Debe de ser en la forma: correo@servidor.dominio
                        </asp:RegularExpressionValidator>
                    </td>
                </tr>
                <!-- renglon en blanco -->
                <tr>
                    <td style="text-align:right; font-size: 9pt; font-family: Verdana">
                        Escolaridad:</td>
                    <td style="text-align: left">
                        <asp:DropDownList ID="ddlEscolaridad" runat="server" Width="240px" 
                            Font-Italic="True" Font-Names="Verdana" Font-Size="9pt">
                            <asp:ListItem Value="No">Seleccione una opción... </asp:ListItem>
                            <asp:ListItem>Preparatoria</asp:ListItem>
                            <asp:ListItem>Licenciatura</asp:ListItem>
                            <asp:ListItem>Maestria</asp:ListItem>
                            <asp:ListItem>Doctorado</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                    <td> &nbsp;</td>
                </tr>
                <tr>
                    <td style="text-align:right; font-size: 9pt; font-family: Verdana">
                        Institución o empresa:</td>
                    <td style="text-align: left">
                        <asp:TextBox ID="txtInstitucion" runat="server" Width="240px" />
                    </td>
                    <td>
                    </td>
                </tr>
                <tr>
                    <td style="text-align:right; font-size: 9pt; font-family: Verdana">
                        Domicilio:</td>
                    <td style="text-align: left">
                        <asp:TextBox ID="txtDomicilio" runat="server" Width="240px" />
                    </td>
                    <td> </td>
                </tr>
                <tr>
                    <td style="text-align:right; font-size: 9pt; font-family: Verdana">
                        Ciudad:</td>
                    <td style="text-align: left">
                        <asp:TextBox ID="txtCiudad" runat="server" Width="240px" />
                    </td>
                    <td> </td>
                </tr>
                <tr>
                    <td style="text-align:right; font-size: 9pt; font-family: Verdana">
                        Estado:</td>
                    <td style="text-align: left">
                        <asp:TextBox ID="txtEstado" runat="server" Width="240px" />
                    </td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td style="text-align:right; font-size: 9pt; font-family: Verdana">
                        País:</td>
                    <td style="text-align: left">
                        <asp:TextBox ID="txtPais" runat="server" Width="240px" >México</asp:TextBox>
                    </td>
                    <td> </td>
                </tr>
                <tr>
                    <td style="text-align:right; font-size: 9pt; font-family: Verdana">
                        Codigo postal:</td>
                    <td style="text-align:left">
                        <asp:TextBox ID="txtCP" runat="server" MaxLength="5" Width="60px" />
                    </td>
                    <td> </td>
                </tr>
                <tr>
                    <td style="text-align:right; font-size: 9pt; font-family: Verdana">
                        Teléfono:</td>
                    <td style="text-align: left">
                        <asp:TextBox ID="txtTelefono" runat="server" MaxLength="20" />
                    </td>
                    <td> </td>
                </tr>
                <tr>
                    <td style="text-align:right; font-size: 9pt; font-family: Verdana">
                        Fax:</td>
                    <td style="text-align: left">
                        <asp:TextBox ID="txtFax" runat="server" MaxLength="20" />
                    </td>
                    <td> </td>
                </tr>
                <tr>
                    <td colspan="3">
                        <hr noshade="noshade" size="1" width="100%" />
                    </td>
                </tr> 
                <tr> <!-- renglon en blanco --> 
                    <td colspan="3">
                        &nbsp;</td>
                </tr>
            </table>
            <table style="border:0; width:600pt">
                <tr>
                    <td colspan="2" 
                        style="font-size: 9pt; font-family: Verdana; font-weight: bold; width: 600pt; text-align:center;">
                        PARTICIPANTES FORANEOS</td>
                </tr>
                <tr>
                    <td colspan="2" 
                        style="font-size: 9pt; font-family: Verdana; font-weight: bold; width: 600pt;">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td style="text-align: right; font-size: 9pt; font-family: Verdana">
                        &nbsp;Hotel donde se hospeda:</td>
                    <td style="text-align: left; font-size: 9pt; font-family: Verdana">
                        <asp:TextBox ID="txtHotel" runat="server" Width="360px" />
                    </td>
                </tr>
                <tr>
                    <td colspan="2">
                        <hr noshade="noshade" size="1" width="100%" />
                    </td>
                </tr>
                <tr>
                    <td colspan="2">
                        &nbsp;
                    </td>
                </tr>
            </table>
            <table style="border:0; width:600pt">
                <tr>
                    <td style="text-align: center; font-size: 9pt; font-family: Verdana">
                        &nbsp;Observaciones y/o comentarios adicionales:<br />
                        <asp:TextBox ID="txtObservaciones" runat="server" TextMode="MultiLine" 
                            Width="580pt" />
                    </td>
                </tr>
                <tr>
                    <td>
                        &nbsp;
                    </td>
                </tr>
            </table>
            
            <asp:Button ID="btnContinuar" runat="server" 
                onclick="btnContinuar_Click" Text="Continuar" Width="200px" />
            <br />
        </asp:Panel>
        </div>
        <!-- REGISTRO -->
        <asp:Panel ID="pnlConfirmacion" runat="server" Visible="False">
            <table style="border:0; width:600">
                <tr>
                    <td colspan="3" 
                        style="font-size: 9pt; font-family: Verdana; font-weight: bold;">
                        CONFIRMACIÓN DE DATOS<br />
                        </td>
                </tr>
                <tr>
                    <td style="text-align:left; " colspan="3">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td style="text-align:right; font-size: 9pt; font-family: Verdana">
                        &nbsp;</td>
                    <td style="text-align:left">
                        <asp:Label ID="lblConfirmacion" runat="server" Font-Names="Verdana" 
                            Font-Size="9pt" Text="Label"></asp:Label>
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
                    <td colspan="3">
                        <asp:Button ID="btnRegresar" runat="server" onclick="btnRegresar_Click" 
                            Text="Regresar" Width="200px" />
                        &nbsp;<asp:Button ID="btnEnviar" runat="server"  
                            Text="Enviar" Width="200px" onclick="btnEnviar_Click" />
                        <asp:SqlDataSource ID="SqlDSmicroscopia2012" runat="server" 
                            ConnectionString="<%$ ConnectionStrings:REGWEBConnectionString %>" 
                            DeleteCommand="DELETE FROM [Microscopia2012] WHERE [id] = @original_id" 
                            InsertCommand="INSERT INTO [Microscopia2012] ([nombres], [apellidos], [correo], [escolaridad], [institucion], [domicilio], [ciudad], [estado], [pais], [cp], [telefono], [fax], [hotel], [observaciones]) VALUES (@nombres, @apellidos, @correo, @escolaridad, @institucion, @domicilio, @ciudad, @estado, @pais, @cp, @telefono, @fax, @hotel, @observaciones)" 
                            SelectCommand="SELECT * FROM [Microscopia2012]" 
                            
                            UpdateCommand="UPDATE [Microscopia2012] SET [nombres] = @nombres, [apellidos] = @apellidos, [correo] = @correo, [escolaridad] = @escolaridad, [institucion] = @institucion, [domicilio] = @domicilio, [ciudad] = @ciudad, [estado] = @estado, [pais] = @pais, [cp] = @cp, [telefono] = @telefono, [fax] = @fax, [hotel] = @hotel, [observaciones] = @observaciones WHERE [id] = @original_id" 
                            OldValuesParameterFormatString="original_{0}">
                            <DeleteParameters>
                                <asp:Parameter Name="original_id" Type="Int32" />
                            </DeleteParameters>
                            <UpdateParameters>
                                <asp:Parameter Name="nombres" Type="String" />
                                <asp:Parameter Name="apellidos" Type="String" />
                                <asp:Parameter Name="correo" Type="String" />
                                <asp:Parameter Name="escolaridad" Type="String" />
                                <asp:Parameter Name="institucion" Type="String" />
                                <asp:Parameter Name="domicilio" Type="String" />
                                <asp:Parameter Name="ciudad" Type="String" />
                                <asp:Parameter Name="estado" Type="String" />
                                <asp:Parameter Name="pais" Type="String" />
                                <asp:Parameter Name="cp" Type="String" />
                                <asp:Parameter Name="telefono" Type="String" />
                                <asp:Parameter Name="fax" Type="String" />
                                <asp:Parameter Name="hotel" Type="String" />
                                <asp:Parameter Name="observaciones" Type="String" />
                                <asp:Parameter Name="original_id" Type="Int32" />
                            </UpdateParameters>
                            <InsertParameters>
                                <asp:Parameter Name="nombres" Type="String" />
                                <asp:Parameter Name="apellidos" Type="String" />
                                <asp:Parameter Name="correo" Type="String" />
                                <asp:Parameter Name="escolaridad" Type="String" />
                                <asp:Parameter Name="institucion" Type="String" />
                                <asp:Parameter Name="domicilio" Type="String" />
                                <asp:Parameter Name="ciudad" Type="String" />
                                <asp:Parameter Name="estado" Type="String" />
                                <asp:Parameter Name="pais" Type="String" />
                                <asp:Parameter Name="cp" Type="String" />
                                <asp:Parameter Name="telefono" Type="String" />
                                <asp:Parameter Name="fax" Type="String" />
                                <asp:Parameter Name="hotel" Type="String" />
                                <asp:Parameter Name="observaciones" Type="String" />
                            </InsertParameters>
                        </asp:SqlDataSource>
                        <asp:Label ID="lbl1" runat="server"></asp:Label>
                    </td>
                </tr>
            </table>
        </asp:Panel>
        <br />
        <asp:Button ID="btnCancelar" runat="server" Text="Cancelar" 
            CausesValidation="False" Width="200px" 
            PostBackUrl="http://www.cibnor.gob.mx/inicio-eventos" />
        <br />
        <br />
        
        <table width="80%">
            <tr>
                <td colspan="2" style="font-size:8pt; text-align:center; font-family:Verdana;">
                    &nbsp;
                </td>
            </tr>
            <tr>
                <td style="font-size:8pt; text-align:right; background-color:#223D63; font-family:Verdana;">
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
