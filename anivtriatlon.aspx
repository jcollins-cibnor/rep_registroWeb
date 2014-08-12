<%@ Page Language="C#" AutoEventWireup="true" CodeFile="anivtriatlon.aspx.cs" Inherits="anivtriatlon" %>

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
                                Font-Names="Verdana" Font-Size="12pt" 
                                Text="Registro en Linea - 1er. Triatlón conmemorativo"></asp:Label>
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
<%--            Inicia update panel actividades--%>
            <asp:UpdatePanel ID="upnlActividades" runat="server">
            <ContentTemplate>
<hr style="visibility:hidden;"/>
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
                        <asp:TextBox ID="txtEdad" runat="server" Font-Size="8pt" MaxLength="2" 
                            Width="40px" />
                    </td>
                    <td>
                    </td>
                </tr>
                <tr>
                    <td style="text-align:right; font-family: Verdana">
                        Categoria:</td>
                    <td style="text-align: left">
                        <asp:DropDownList ID="ddlCategoria" runat="server" Font-Italic="False" 
                            Font-Names="Verdana" Font-Size="8pt" Width="120pt" AutoPostBack="True" 
                            onselectedindexchanged="ddlCategoria_SelectedIndexChanged">
                            <asp:ListItem Selected="True" Value="--">Seleccione una...</asp:ListItem>
                            <asp:ListItem Selected="False">Infantil</asp:ListItem>
                            <asp:ListItem Selected="False">Individual</asp:ListItem>
                            <asp:ListItem Selected="False">Relevo</asp:ListItem>
                            <asp:ListItem Selected="False">Relevo mixto</asp:ListItem>
                        </asp:DropDownList>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                            ControlToValidate="ddlCategoria" Font-Bold="True" InitialValue="--" 
                            SetFocusOnError="True" ForeColor="Red">*</asp:RequiredFieldValidator>
                    </td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td style="text-align:right; font-family: Verdana">                        
                        <asp:Label ID="lblModalidad" runat="server" Font-Bold="False" 
                            Font-Names="Verdana" Font-Size="8pt" Text="Modalidad:" Visible="False"></asp:Label>
                    </td>
                    <td style="text-align: left">
                        <asp:DropDownList ID="ddlModalidad" runat="server" Font-Italic="False" 
                            Font-Names="Verdana" Font-Size="8pt" Width="120pt" Visible="False">
                            <asp:ListItem Selected="True" Value="--">Seleccione una...</asp:ListItem>
                            <asp:ListItem Selected="False">Mini sprint</asp:ListItem>
                            <asp:ListItem Selected="False">Sprint</asp:ListItem>
                            <asp:ListItem Selected="False">Olimpico</asp:ListItem>
                        </asp:DropDownList>
                        <asp:RequiredFieldValidator ID="rfvModalidad" runat="server" 
                            ControlToValidate="ddlModalidad" Enabled="False" Font-Bold="True" 
                            ForeColor="Red" InitialValue="--" SetFocusOnError="True">*</asp:RequiredFieldValidator>
                    </td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td style="text-align:right; font-family: Verdana">
                        <asp:Label ID="Label1" runat="server" Font-Bold="False" Font-Names="Verdana" 
                            Font-Size="8pt" Text="Rama:"></asp:Label>
                    </td>
                    <td style="text-align: left">
                        <asp:DropDownList ID="ddlRama" runat="server" 
                            Font-Italic="False" Font-Names="Verdana" Font-Size="8pt" 
                            onselectedindexchanged="ddlCategoria_SelectedIndexChanged" Width="120pt">
                            <asp:ListItem Selected="True">Varonil</asp:ListItem>
                            <asp:ListItem Selected="False">Femenil</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td style="text-align:right; font-family: Verdana">
                        <asp:Label ID="lblClub" runat="server" Font-Bold="False" Font-Names="Verdana" 
                            Font-Size="8pt" Text="Nombre del club:"></asp:Label>
                    </td>
                    <td style="text-align: left">
                        <asp:TextBox ID="txtNombreClub" runat="server" Font-Size="8pt" MaxLength="50" 
                            Width="240px" />
                    </td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td style="text-align:right; font-family: Verdana">
                        <asp:Label ID="lblTipoSangre" runat="server" Font-Bold="False" 
                            Font-Names="Verdana" Font-Size="8pt" Text="Tipo de sangre:"></asp:Label>
                    </td>
                    <td style="text-align: left">
                        <asp:DropDownList ID="ddlTipoSangre" runat="server" 
                            Font-Italic="False" Font-Names="Verdana" Font-Size="8pt" 
                            onselectedindexchanged="ddlCategoria_SelectedIndexChanged" Width="60pt">
                            <asp:ListItem Selected="True">A+</asp:ListItem>
                            <asp:ListItem Selected="False">A-</asp:ListItem>
                            <asp:ListItem Selected="False">B+</asp:ListItem>
                            <asp:ListItem Selected="False">B-</asp:ListItem>
                            <asp:ListItem Selected="False">AB+</asp:ListItem>
                            <asp:ListItem Selected="False">AB-</asp:ListItem>
                            <asp:ListItem Selected="False">O+</asp:ListItem>
                            <asp:ListItem Selected="False">O-</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                    <td>
                        &nbsp;</td>
                </tr>
            </table>
                </ContentTemplate>
                </asp:UpdatePanel>
<%--            Termina update panel actividades--%>

<hr style="visibility:hidden;"/>
                <table style="border:0; width:500pt; font-size: 8pt;">
                    <tr>
                        <td colspan="2" style="width: 600pt; text-align: center;">
                            <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Names="Verdana" 
                                Font-Size="9pt" Text="INFORMACION ADICIONAL"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2" style="width: 600pt; text-align: center;">
                            <hr noshade="noshade" size="0" width="100%" />
                        </td>
                    </tr>
                    <tr>  
                        <td style="font-family: Verdana; text-align: right; width: 25%;"> 
                            <asp:Label ID="lblAcompanantes" runat="server" Font-Bold="False" 
                                Font-Names="Verdana" Font-Size="8pt" Text="Acompañantes a la cena:"></asp:Label>
                        </td>
                        <td style="text-align: left; font-family: Verdana; ">
                            <asp:DropDownList ID="ddlAcompanantes" runat="server" 
                                Font-Italic="False" Font-Names="Verdana" Font-Size="8pt" 
                                onselectedindexchanged="ddlCategoria_SelectedIndexChanged" Width="40pt">
                                <asp:ListItem Selected="True">0</asp:ListItem>
                                <asp:ListItem Selected="False">1</asp:ListItem>
                                <asp:ListItem Selected="False">2</asp:ListItem>
                                <asp:ListItem Selected="False">3</asp:ListItem>
                                <asp:ListItem Selected="False">4</asp:ListItem>
                                <asp:ListItem Selected="False">5</asp:ListItem>
                                <asp:ListItem Selected="False">6</asp:ListItem>
                            </asp:DropDownList>
                        </td>
                    </tr>
                    <tr>
                        <td style="font-family: Verdana; text-align: right; width: 25%;">
                            <asp:Label ID="Label10" runat="server" Font-Bold="False" Font-Names="Verdana" 
                                Font-Size="8pt" Text="Comentarios:"></asp:Label>
                        </td>
                        <td style="text-align: left; font-family: Verdana; ">
                            <asp:TextBox ID="txtComentarios" runat="server" MaxLength="4000" 
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
                            DeleteCommand="DELETE FROM [Anivtriatlon] WHERE [id] = @original_id" 
                            InsertCommand="INSERT INTO [Anivtriatlon] ([nombres], [apellidos], [correo], [edad], [categoria], [modalidad], [rama], [nombreclub], [tiposangre], [acompanantes], [comentarios]) VALUES (@nombres, @apellidos, @correo, @edad, @categoria, @modalidad, @rama, @nombreclub, @tiposangre, @acompanantes, @comentarios)" 
                            SelectCommand="SELECT * FROM [Anivtriatlon]" 
                            
                            UpdateCommand="UPDATE [Anivtriatlon] SET [nombres] = @nombres, [apellidos] = @apellidos, [correo] = @correo, [edad] = @edad, [categoria] = @categoria, [modalidad] = @modalidad, [rama] = @rama, [nombreclub] = @nombreclub, [tiposangre] = @tiposangre, [acompanantes] = @acompanantes, [comentarios] = @comentarios WHERE [id] = @original_id" 
                            OldValuesParameterFormatString="original_{0}">
                            <DeleteParameters>
                                <asp:Parameter Name="original_id" Type="Int32" />
                            </DeleteParameters>
                            <UpdateParameters>
                                <asp:Parameter Name="nombres" Type="String" />
                                <asp:Parameter Name="apellidos" Type="String" />
                                <asp:Parameter Name="correo" Type="String" />
                                <asp:Parameter Name="edad" Type="String" />
                                <asp:Parameter Name="categoria" Type="String" />
                                <asp:Parameter Name="modalidad" Type="String" />
                                <asp:Parameter Name="rama" Type="String" />
                                <asp:Parameter Name="nombreclub" Type="String" />
                                <asp:Parameter Name="tiposangre" Type="String" />
                                <asp:Parameter Name="acompanantes" Type="String" />
                                <asp:Parameter Name="comentarios" Type="String" />
                                <asp:Parameter Name="original_id" Type="Int32" />
                            </UpdateParameters>
                            <InsertParameters>
                                <asp:Parameter Name="nombres" Type="String" />
                                <asp:Parameter Name="apellidos" Type="String" />
                                <asp:Parameter Name="correo" Type="String" />
                                <asp:Parameter Name="edad" Type="String" />
                                <asp:Parameter Name="categoria" Type="String" />
                                <asp:Parameter Name="modalidad" Type="String" />
                                <asp:Parameter Name="rama" Type="String" />
                                <asp:Parameter Name="nombreclub" Type="String" />
                                <asp:Parameter Name="tiposangre" Type="String" />
                                <asp:Parameter Name="acompanantes" Type="String" />
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
