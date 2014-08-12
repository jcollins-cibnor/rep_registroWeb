<%@ Page Language="C#" AutoEventWireup="true" CodeFile="anivpesca.aspx.cs" Inherits="anivpesca" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
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
                    <asp:Label ID="lblTituloRegistro" runat="server" Font-Bold="False" 
                                Font-Names="Verdana" Font-Size="11pt" 
                                Text="Registro en Linea - 5to. Encuentro Pesca Deportiva"></asp:Label>
                </td>
                <td  style="width:160px; text-align: center;">
                    <asp:Image ID="Image2" runat="server" ImageUrl="~/Images/logo37aniv.png" 
                        Height="80px" /></td>
            </tr>
        </table>
            <asp:Panel ID="pnlDatos" runat="server">
            <asp:ValidationSummary ID="valSum" runat="server" DisplayMode="SingleParagraph" 
                HeaderText="Los campos marcados con * son requeridos. " Font-Names="Verdana" 
                    Font-Size="8pt" ForeColor="Red" />
<hr style="visibility:hidden;"/>
            <table style="border:0; width:500pt;  font-size: 8pt;">
                <tr>
                    <td colspan="3" 
                        style="font-size: 9pt; font-family: Verdana; font-weight: bold; text-align: center;">
                        DATOS PERSONALES CAPITÁN</td>
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
                            SetFocusOnError="True" Font-Bold="True" ForeColor="Red">*</asp:RequiredFieldValidator>
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
                            MaxLength="50" Width="240px" />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                            ControlToValidate="txtCorreoConfirma" Font-Bold="True" 
                            SetFocusOnError="True" ForeColor="Red">
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
                        Edad:</td>
                    <td style="text-align: left">
                        <asp:TextBox ID="txtEdad" runat="server" Font-Size="8pt" MaxLength="200" 
                            Width="40pt" />
                    </td>
                    <td>
                    </td>
                </tr>
                <tr>
                    <td style="text-align:right; font-family: Verdana">
                        Nombre de la embarcación:</td>
                    <td style="text-align: left">
                        <asp:TextBox ID="txtEmbarcacion" runat="server" Font-Size="8pt" Width="240px" 
                            MaxLength="200" />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                            ControlToValidate="txtEmbarcacion" Font-Bold="True" ForeColor="Red" 
                            SetFocusOnError="True">*</asp:RequiredFieldValidator>
                    </td>
                    <td>
                        &nbsp;</td>
                </tr>
            </table>
<hr style="visibility:hidden;"/>
            <table style="border:0; width:500pt; font-size: 8pt;">                        
                        <tr>
                            <td colspan="4"                                 
                                style="font-size: 9pt; font-family: Verdana; font-weight: bold; width: 600pt; text-align: center;">
                                <asp:Label ID="Label14" runat="server" Font-Bold="True" Font-Names="Verdana" 
                                    Font-Size="9pt" Text="TRIPULACIÓN"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td colspan="4"
                                style="font-size: 9pt; font-family: Verdana; font-weight: bold; width: 50%; text-align: center;">
                                <hr noshade="noshade" size="0" width="100%" />
                            </td>
                        </tr>
                        <tr>
                            <td colspan="4"                                 
                                style="font-size: 9pt; font-family: Verdana; font-weight: bold; width: 600pt; text-align: center;">
                                <asp:Label ID="Label15" runat="server" Font-Names="Verdana" 
                                    Font-Size="8pt" Text="Indique el nombre completo " 
                                    Font-Bold="False" Font-Italic="True"></asp:Label>
                                <asp:Label ID="Label1" runat="server" Font-Names="Verdana" 
                                    Font-Size="8pt" Text="[nombre(s) y apellido(s)] " 
                                    Font-Bold="True" Font-Italic="True"></asp:Label>
                                <asp:Label ID="Label2" runat="server" Font-Names="Verdana" 
                                    Font-Size="8pt" Text="y edad del resto de la tripulación" 
                                    Font-Bold="False" Font-Italic="True"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td style="font-size: 9pt; font-family: Verdana; font-weight: bold; text-align:left;">
                                &nbsp;</td>
                            <td colspan="2" style="font-size: 9pt; font-family: Verdana; font-weight: bold; text-align:center;">
                                &nbsp;</td>
                            <td style="font-size: 9pt; font-family: Verdana; font-weight: bold; text-align:center;">
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td style="font-size: 9pt; font-family: Verdana; text-align:center; width:90pt;">
                                <asp:Label ID="Label17" runat="server" Font-Bold="True" Font-Names="Verdana" 
                                    Font-Size="9pt" Text="Tripulante 1"></asp:Label>
                            </td>
                            <td colspan="2" style="font-size: 9pt; font-family: Verdana; text-align:left; width:280pt;">
                                <asp:Label ID="Label16" runat="server" Font-Bold="False" Font-Names="Verdana" 
                                    Font-Size="8pt" Text="Nombre completo: "></asp:Label>
                                <asp:TextBox ID="txtNombreT1" runat="server" Font-Size="8pt" MaxLength="100" 
                                    Width="240px" />
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                                    ControlToValidate="txtNombreT1" 
                                    ErrorMessage="Minimo dos participantes por embarcación." Font-Bold="False" 
                                    ForeColor="Red" SetFocusOnError="True">*</asp:RequiredFieldValidator>
                            </td>
                            <td style="font-size: 9pt; font-family: Verdana; font-weight: bold; text-align:left; width:80pt;">
                                <asp:Label ID="Label18" runat="server" Font-Bold="False" Font-Names="Verdana" 
                                    Font-Size="8pt" Text="Edad: "></asp:Label>
                                <asp:TextBox ID="txtEdadT1" runat="server" Font-Size="8pt" MaxLength="2" 
                                    Width="40pt" />
                            </td>
                        </tr>
                        <tr>
                            <td style="font-size: 9pt; font-family: Verdana; text-align:center; width:90pt;">
                                <asp:Label ID="Label3" runat="server" Font-Bold="True" Font-Names="Verdana" 
                                    Font-Size="9pt" Text="Tripulante 2"></asp:Label>
                            </td>
                            <td colspan="2" style="font-size: 9pt; font-family: Verdana; text-align:left; width:280pt;">
                                <asp:Label ID="Label4" runat="server" Font-Bold="False" Font-Names="Verdana" 
                                    Font-Size="8pt" Text="Nombre completo: "></asp:Label>
                                <asp:TextBox ID="txtNombreT2" runat="server" Font-Size="8pt" MaxLength="100" 
                                    Width="240px" />
                            </td>
                            <td style="font-size: 9pt; font-family: Verdana; font-weight: bold; text-align:left; width:80pt;">
                                <asp:Label ID="Label5" runat="server" Font-Bold="False" Font-Names="Verdana" 
                                    Font-Size="8pt" Text="Edad: "></asp:Label>
                                <asp:TextBox ID="txtEdadT2" runat="server" Font-Size="8pt" MaxLength="2" 
                                    Width="40pt" />
                            </td>
                        </tr>
                        <tr>
                            <td style="font-size: 9pt; font-family: Verdana; text-align:center; width:90pt;">
                                <asp:Label ID="Label6" runat="server" Font-Bold="True" Font-Names="Verdana" 
                                    Font-Size="9pt" Text="Tripulante 3"></asp:Label>
                            </td>
                            <td colspan="2" style="font-size: 9pt; font-family: Verdana; text-align:left; width:280pt;">
                                <asp:Label ID="Label7" runat="server" Font-Bold="False" Font-Names="Verdana" 
                                    Font-Size="8pt" Text="Nombre completo: "></asp:Label>
                                <asp:TextBox ID="txtNombreT3" runat="server" Font-Size="8pt" MaxLength="100" 
                                    Width="240px" />
                            </td>
                            <td style="font-size: 9pt; font-family: Verdana; font-weight: bold; text-align:left; width:80pt;">
                                <asp:Label ID="Label8" runat="server" Font-Bold="False" Font-Names="Verdana" 
                                    Font-Size="8pt" Text="Edad: "></asp:Label>
                                <asp:TextBox ID="txtEdadT3" runat="server" Font-Size="8pt" MaxLength="2" 
                                    Width="40pt" />
                            </td>
                        </tr>
                        <tr>
                            <td style="font-size: 9pt; font-family: Verdana; text-align:center; width:90pt;">
                                <asp:Label ID="Label12" runat="server" Font-Bold="True" Font-Names="Verdana" 
                                    Font-Size="9pt" Text="Tripulante 4"></asp:Label>
                            </td>
                            <td colspan="2" style="font-size: 9pt; font-family: Verdana; text-align:left; width:280pt;">
                                <asp:Label ID="Label13" runat="server" Font-Bold="False" Font-Names="Verdana" 
                                    Font-Size="8pt" Text="Nombre completo: "></asp:Label>
                                <asp:TextBox ID="txtNombreT4" runat="server" Font-Size="8pt" MaxLength="100" 
                                    Width="240px" />
                            </td>
                            <td style="font-size: 9pt; font-family: Verdana; font-weight: bold; text-align:left; width:80pt;">
                                <asp:Label ID="Label19" runat="server" Font-Bold="False" Font-Names="Verdana" 
                                    Font-Size="8pt" Text="Edad: "></asp:Label>
                                <asp:TextBox ID="txtEdadT4" runat="server" Font-Size="8pt" MaxLength="2" 
                                    Width="40pt" />
                            </td>
                        </tr>
                    </table>

<hr style="visibility:hidden;"/>
                <table style="border:0; width:500pt; font-size: 8pt;">
                    <tr>
                        <td colspan="2" style="font-size: 9pt; text-align: center;">
                            <asp:Label ID="Label20" runat="server" Font-Bold="True" Font-Names="Verdana" 
                                Font-Size="9pt" Text="INFORMACIÓN ADICIONAL"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2" style="font-size: 9pt; text-align: center;">
                            <hr noshade="noshade" size="0" width="100%" />
                        </td>
                    </tr>
                    <tr>  
                        <td style="font-family: Verdana; text-align: right; width:100pt"> 
                            <asp:Label ID="Label10" runat="server" Font-Bold="False" Font-Names="Verdana" 
                                Font-Size="8pt" Text="Comentarios:"></asp:Label>
                        </td>
                        <td style="text-align: left; font-family: Verdana; ">
                            <asp:TextBox ID="txtComentarios" runat="server" MaxLength="4000" 
                                TextMode="MultiLine" Width="90%" />
                        </td>
                    </tr>
                </table>
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
                            DeleteCommand="DELETE FROM [Anivpesca] WHERE [id] = @original_id" 
                            InsertCommand="INSERT INTO [Anivpesca] ([nombres], [apellidos], [correo], [edad], [embarcacion], [nombret1], [edadt1], [nombret2], [edadt2], [nombret3], [edadt3], [nombret4], [edadt4], [comentarios]) VALUES (@nombres, @apellidos, @correo, @edad, @embarcacion, @nombret1, @edadt1, @nombret2, @edadt2, @nombret3, @edadt3, @nombret4, @edadt4, @comentarios)" 
                            SelectCommand="SELECT * FROM [Anivpesca]" 
                            
                            UpdateCommand="UPDATE [Anivpesca] SET [nombres] = @nombres, [apellidos] = @apellidos, [correo] = @correo, [edad] = @edad, [embarcacion] = @embarcacion, [nombret1] = @nombret1, [edadt1] = @edadt1, [nombret2] = @nombret2, [edadt2] = @edadt2, [nombret3] = @nombret3, [edadt3] = @edadt3, [nombret4] = @nombret4, [edadt4] = @edadt4, [comentarios] = @comentarios WHERE [id] = @original_id" 
                            OldValuesParameterFormatString="original_{0}">
                            <DeleteParameters>
                                <asp:Parameter Name="original_id" Type="Int32" />
                            </DeleteParameters>
                            <UpdateParameters>
                                <asp:Parameter Name="nombres" Type="String" />
                                <asp:Parameter Name="apellidos" Type="String" />
                                <asp:Parameter Name="correo" Type="String" />
                                <asp:Parameter Name="edad" Type="String" />
                                <asp:Parameter Name="embarcacion" Type="String" />
                                <asp:Parameter Name="nombret1" Type="String" />
                                <asp:Parameter Name="edadt1" Type="String" />
                                <asp:Parameter Name="nombret2" Type="String" />
                                <asp:Parameter Name="edadt2" Type="String" />
                                <asp:Parameter Name="nombret3" Type="String" />
                                <asp:Parameter Name="edadt3" Type="String" />
                                <asp:Parameter Name="nombret4" Type="String" />
                                <asp:Parameter Name="edadt4" Type="String" />
                                <asp:Parameter Name="comentarios" Type="String" />
                                <asp:Parameter Name="original_id" Type="Int32" />
                            </UpdateParameters>
                            <InsertParameters>
                                <asp:Parameter Name="nombres" Type="String" />
                                <asp:Parameter Name="apellidos" Type="String" />
                                <asp:Parameter Name="correo" Type="String" />
                                <asp:Parameter Name="edad" Type="String" />
                                <asp:Parameter Name="embarcacion" Type="String" />
                                <asp:Parameter Name="nombret1" Type="String" />
                                <asp:Parameter Name="edadt1" Type="String" />
                                <asp:Parameter Name="nombret2" Type="String" />
                                <asp:Parameter Name="edadt2" Type="String" />
                                <asp:Parameter Name="nombret3" Type="String" />
                                <asp:Parameter Name="edadt3" Type="String" />
                                <asp:Parameter Name="nombret4" Type="String" />
                                <asp:Parameter Name="edadt4" Type="String" />
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
                    &nbsp;</td>
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
