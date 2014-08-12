<%@ Page Language="C#" AutoEventWireup="true" CodeFile="anivequipos.aspx.cs" Inherits="anivequipos" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    
    <asp:ScriptManager ID="scriptmanager1" EnablePartialRendering="true" runat="server" />

    <div>
    <center>
    <div align="center">
        
        <table style="font-family: Verdana; font-size: 11pt; width:500pt;">
            <tr>
                <td style="width:160px;">
                    <asp:Image ID="Image1" runat="server" ImageUrl="~/Images/logo_38aniv.png" 
                        Height="80px" /></td>
                <td style="width:480px; text-align:center; font-size: 14pt; font-family: Arial; font-weight: bold;">
                    <asp:Label ID="lblTituloEvento" runat="server" Font-Bold="False" 
                                Font-Names="Verdana" Font-Size="14pt" 
                                Text="Actividades del 38 Aniversario del CIBNOR"></asp:Label>
                    <br />
                    <br />
                    <asp:Label ID="lblTituloRegistro" runat="server" Font-Bold="False" 
                                Font-Names="Verdana" Font-Size="11pt" 
                                Text="Registro en Linea por Equipos"></asp:Label>
                </td>
            </tr>
        </table>
            <asp:Panel ID="pnlDatos" runat="server">
            <asp:ValidationSummary ID="valSum" runat="server" DisplayMode="SingleParagraph" 
                HeaderText="* Campos requeridos. " Font-Names="Verdana" 
                    Font-Size="8pt" ForeColor="Red" />
<hr style="visibility:hidden;"/>
            <table style="border:0; width:500pt;  font-size: 8pt;">
                <tr>
                    <td colspan="3" 
                        style="font-size: 9pt; font-family: Verdana; font-weight: bold; text-align: center;">
                        DATOS PERSONALES DEL CAPITÁN</td>
                </tr>
                <tr>
                    <td colspan="3" style="font-family: Verdana; font-weight: bold;">
                        <hr width="100%" noshade="noshade" size="0" />
                    </td>
                </tr>
                <tr>
                    <td style="text-align:right; font-family: Verdana; width:140pt;">
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
                        Telefono de contacto:</td>
                    <td style="text-align: left">
                        <asp:TextBox ID="txtTelefono" runat="server" Font-Size="8pt" MaxLength="200" 
                            Width="120px" />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
                            ControlToValidate="txtTelefono" Font-Bold="True" ForeColor="Red" 
                            SetFocusOnError="True">
                              *</asp:RequiredFieldValidator>
                    </td>
                    <td>
                    </td>
                </tr>
                <tr>
                    <td style="text-align:right; font-family: Verdana">
                        Nombre del equipo:</td>
                    <td style="text-align: left">
                        <asp:TextBox ID="txtNombreEquipo" runat="server" Font-Size="8pt" MaxLength="50" 
                            Width="240px" />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                            ControlToValidate="txtNombreEquipo" Font-Bold="True" ForeColor="Red" 
                            SetFocusOnError="True">*</asp:RequiredFieldValidator>
                    </td>
                    <td>
                        &nbsp;</td>
                </tr>
            </table>
<hr style="visibility:hidden;"/>
            <asp:UpdatePanel ID="uplDisciplina" runat="server">
            <ContentTemplate>

            <table style="border:0; width:500pt;  font-size: 8pt;">
                <tr>
                    <td style="text-align:right; font-family: Verdana; width:140pt;">
                        Disciplina:</td>
                    <td style="text-align: left">
                        <asp:DropDownList ID="ddlDisciplina" runat="server" Font-Italic="True" 
                            Width="180pt" AutoPostBack="True" 
                            onselectedindexchanged="ddlDisciplina_SelectedIndexChanged">
                            <asp:ListItem Selected="True" Value="--">Seleccione una...</asp:ListItem>
                            <asp:ListItem>Basquetbol femenil</asp:ListItem>
                            <asp:ListItem>Basquetbol varonil</asp:ListItem>
                            <asp:ListItem>Futbol de salón</asp:ListItem>
                            <asp:ListItem>Boliche</asp:ListItem>
                            <asp:ListItem>Dominó</asp:ListItem>
                            <asp:ListItem>Rally</asp:ListItem>
                            <asp:ListItem>Relevos</asp:ListItem>
                            <asp:ListItem>Touchito</asp:ListItem>
                            <asp:ListItem>Softbol</asp:ListItem>
                            <asp:ListItem>Voleibol playero</asp:ListItem>
                        </asp:DropDownList>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                            ControlToValidate="ddlDisciplina" Font-Bold="True" ForeColor="Red" 
                            InitialValue="--" SetFocusOnError="True">*</asp:RequiredFieldValidator>
                    </td>
                </tr>
            </table>
            <table style="border:0; width:500pt;  font-size: 8pt;">
                <tr>
                    <td style="text-align:left; font-family: Verdana">
                        <asp:Panel ID="pnlVoleibol" runat="server" BorderColor="#999999" 
                                BorderStyle="Solid" BorderWidth="1pt" Visible="False">
                            <table style="border:0; width:100%; font-size: 8pt;">
                                <tr>
                                    <td style="text-align:right; font-family: Verdana; width:90pt;">
                                        Color de camiseta:</td>
                                    <td style="text-align: left">
                                        <asp:DropDownList ID="ddlColorCamiseta" runat="server" AutoPostBack="True" 
                                            Font-Italic="False" Width="180pt" DataSourceID="SqlDScolorcamiseta" 
                                            DataTextField="color" DataValueField="selected" 
                                            onselectedindexchanged="ddlColorCamiseta_SelectedIndexChanged">
                                        </asp:DropDownList>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" 
                                            ControlToValidate="txtValidaColor" Font-Bold="True" ForeColor="Red" 
                                            SetFocusOnError="True">*</asp:RequiredFieldValidator>
                                        <asp:Label ID="lblColorStatus" runat="server" ForeColor="Red"></asp:Label>
                                        <asp:TextBox ID="txtValidaColor" runat="server" BorderStyle="None" 
                                            ReadOnly="True" Width="80pt"></asp:TextBox>
                                    </td>
                                </tr>                            
                            </table>
                            <asp:SqlDataSource ID="SqlDScolorcamiseta" runat="server" 
                                ConnectionString="<%$ ConnectionStrings:REGWEBConnectionString %>" 
                                DeleteCommand="DELETE FROM [AnivColorCamiseta] WHERE [color] = @color" 
                                InsertCommand="INSERT INTO [AnivColorCamiseta] ([color], [selected]) VALUES (@color, @selected)" 
                                SelectCommand="SELECT * FROM [AnivColorCamiseta]" 
                                UpdateCommand="UPDATE [AnivColorCamiseta] SET [selected] = @selected WHERE [color] = @color">
                                <DeleteParameters>
                                    <asp:Parameter Name="color" Type="String" />
                                </DeleteParameters>
                                <InsertParameters>
                                    <asp:Parameter Name="color" Type="String" />
                                    <asp:Parameter Name="selected" Type="String" />
                                </InsertParameters>
                                <UpdateParameters>
                                    <asp:Parameter Name="selected" Type="String" />
                                    <asp:Parameter Name="color" Type="String" />
                                </UpdateParameters>
                            </asp:SqlDataSource>
                        </asp:Panel>
                    </td>
                </tr>
            </table>

            </ContentTemplate>
            </asp:UpdatePanel>
<hr style="visibility:hidden;"/>
            <table style="border:0; width:500pt; font-size: 8pt;">                        
                        <tr>
                            <td style="width: 500pt; text-align: center;">
                                <asp:Label ID="Label14" runat="server" Font-Bold="True" Font-Names="Verdana" 
                                    Font-Size="9pt" Text="INTEGRANTES DEL EQUIPO"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td style="width: 500pt; text-align: center;">
                                <hr noshade="noshade" size="0" width="100%" />
                            </td>
                        </tr>
                        <tr>
                            <td style="width: 500pt; text-align: center;">
                                <asp:Label ID="Label15" runat="server" Font-Names="Verdana" 
                                    Font-Size="8pt" Text="Indique el nombre completo " 
                                    Font-Bold="False" Font-Italic="True"></asp:Label>
                                <asp:Label ID="Label1" runat="server" Font-Names="Verdana" 
                                    Font-Size="8pt" Text="[nombre(s) y apellido(s)] " 
                                    Font-Bold="True" Font-Italic="True"></asp:Label>
                                <asp:Label ID="Label2" runat="server" Font-Names="Verdana" 
                                    Font-Size="8pt" Text="del resto de los integrantes" 
                                    Font-Bold="False" Font-Italic="True"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td style="width: 500pt; text-align: center;">
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td style="text-align:center;">
                                <asp:Label ID="Label16" runat="server" Font-Bold="True" Font-Names="Verdana" 
                                    Font-Size="8pt" Text="Nombre completo"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td style="text-align:center;">
                                <asp:TextBox ID="txtNombreI1" runat="server" Font-Size="8pt" MaxLength="100" 
                                    Width="360px" />
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                                    ControlToValidate="txtNombreI1" 
                                    ErrorMessage="Minimo dos participantes por equipo." Font-Bold="False" 
                                    ForeColor="Red" SetFocusOnError="True">*</asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td style="text-align:center;">
                                <asp:TextBox ID="txtNombreI2" runat="server" Font-Size="8pt" MaxLength="100" 
                                    Width="360px" />
                            </td>
                        </tr>
                        <tr>
                            <td style="text-align:center;">
                                <asp:TextBox ID="txtNombreI3" runat="server" Font-Size="8pt" MaxLength="100" 
                                    Width="360px" />
                            </td>
                        </tr>
                        <tr>
                            <td style="text-align:center;">
                                <asp:TextBox ID="txtNombreI4" runat="server" Font-Size="8pt" MaxLength="100" 
                                    Width="360px" />
                            </td>
                        </tr>
                        <tr>
                            <td style="text-align:center;">
                                <asp:TextBox ID="txtNombreI5" runat="server" Font-Size="8pt" MaxLength="100" 
                                    Width="360px" />
                            </td>
                        </tr>
                        <tr>
                            <td style="text-align:center;">
                                <asp:TextBox ID="txtNombreI6" runat="server" Font-Size="8pt" MaxLength="100" 
                                    Width="360px" />
                            </td>
                        </tr>
                        <tr>
                            <td style="text-align:center;">
                                <asp:TextBox ID="txtNombreI7" runat="server" Font-Size="8pt" MaxLength="100" 
                                    Width="360px" />
                            </td>
                        </tr>
                        <tr>
                            <td style="text-align:center;">
                                <asp:TextBox ID="txtNombreI8" runat="server" Font-Size="8pt" MaxLength="100" 
                                    Width="360px" />
                            </td>
                        </tr>
                        <tr>
                            <td style="text-align:center;">
                                <asp:TextBox ID="txtNombreI9" runat="server" Font-Size="8pt" MaxLength="100" 
                                    Width="360px" />
                            </td>
                        </tr>
                        <tr>
                            <td style="text-align:center;">
                                <asp:TextBox ID="txtNombreI10" runat="server" Font-Size="8pt" MaxLength="100" 
                                    Width="360px" />
                            </td>
                        </tr>
                        <tr>
                            <td style="text-align:center;">
                                <asp:TextBox ID="txtNombreI11" runat="server" Font-Size="8pt" MaxLength="100" 
                                    Width="360px" />
                            </td>
                        </tr>
                        <tr>
                            <td style="text-align:center;">
                                <asp:TextBox ID="txtNombreI12" runat="server" Font-Size="8pt" MaxLength="100" 
                                    Width="360px" />
                            </td>
                        </tr>
                        <tr>
                            <td style="text-align:center;">
                                <asp:TextBox ID="txtNombreI13" runat="server" Font-Size="8pt" MaxLength="100" 
                                    Width="360px" />
                            </td>
                        </tr>
                        <tr>
                            <td style="text-align:center;">
                                <asp:TextBox ID="txtNombreI14" runat="server" Font-Size="8pt" MaxLength="100" 
                                    Width="360px" />
                            </td>
                        </tr>
                        <tr>
                            <td style="text-align:center;">
                                <asp:TextBox ID="txtNombreI15" runat="server" Font-Size="8pt" MaxLength="100" 
                                    Width="360px" />
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
                            DeleteCommand="DELETE FROM [Anivequipos] WHERE [id] = @original_id" 
                            InsertCommand="INSERT INTO [Anivequipos] ([nombres], [apellidos], [correo], [edad], [disciplina], [nombreequipo], [nombrei1], [edadi1], [nombrei2], [edadi2], [nombrei3], [edadi3], [nombrei4], [edadi4], [nombrei5], [edadi5], [nombrei6], [edadi6], [nombrei7], [edadi7], [nombrei8], [edadi8], [nombrei9], [edadi9], [nombrei10], [edadi10], [nombrei11], [edadi11], [nombrei12], [edadi12], [nombrei13], [edadi13], [nombrei14], [edadi14], [nombrei15], [edadi15], [comentarios]) VALUES (@nombres, @apellidos, @correo, @edad, @disciplina, @nombreequipo, @nombrei1, @edadi1, @nombrei2, @edadi2, @nombrei3, @edadi3, @nombrei4, @edadi4, @nombrei5, @edadi5, @nombrei6, @edadi6, @nombrei7, @edadi7, @nombrei8, @edadi8, @nombrei9, @edadi9, @nombrei10, @edadi10, @nombrei11, @edadi11, @nombrei12, @edadi12, @nombrei13, @edadi13, @nombrei14, @edadi14, @nombrei15, @edadi15, @comentarios)" 
                            SelectCommand="SELECT * FROM [Anivequipos]" 
                            
                            UpdateCommand="UPDATE [Anivequipos] SET [nombres] = @nombres, [apellidos] = @apellidos, [correo] = @correo, [edad] = @edad, [disciplina] = @disciplina, [nombreequipo] = @nombreequipo, [nombrei1] = @nombrei1, [edadi1] = @edadi1, [nombrei2] = @nombrei2, [edadi2] = @edadi2, [nombrei3] = @nombrei3, [edadi3] = @edadi3, [nombrei4] = @nombrei4, [edadi4] = @edadi4, [nombrei5] = @nombrei5, [edadi5] = @edadi5, [nombrei6] = @nombrei6, [edadi6] = @edadi6, [nombrei7] = @nombrei7, [edadi7] = @edadi7, [nombrei8] = @nombrei8, [edadi8] = @edadi8, [nombrei9] = @nombrei9, [edadi9] = @edadi9, [nombrei10] = @nombrei10, [edadi10] = @edadi10, [nombrei11] = @nombrei11, [edadi11] = @edadi11, [nombrei12] = @nombrei12, [edadi12] = @edadi12, [nombrei13] = @nombrei13, [edadi13] = @edadi13, [nombrei14] = @nombrei14, [edadi14] = @edadi14, [nombrei15] = @nombrei15, [edadi15] = @edadi15, [comentarios] = @comentarios WHERE [id] = @original_id" 
                            OldValuesParameterFormatString="original_{0}">
                            <DeleteParameters>
                                <asp:Parameter Name="original_id" Type="Int32" />
                            </DeleteParameters>
                            <UpdateParameters>
                                <asp:Parameter Name="nombres" Type="String" />
                                <asp:Parameter Name="apellidos" Type="String" />
                                <asp:Parameter Name="correo" Type="String" />
                                <asp:Parameter Name="edad" Type="String" />
                                <asp:Parameter Name="disciplina" Type="String" />
                                <asp:Parameter Name="nombreequipo" Type="String" />
                                <asp:Parameter Name="nombrei1" Type="String" />
                                <asp:Parameter Name="edadi1" Type="String" />
                                <asp:Parameter Name="nombrei2" Type="String" />
                                <asp:Parameter Name="edadi2" Type="String" />
                                <asp:Parameter Name="nombrei3" Type="String" />
                                <asp:Parameter Name="edadi3" Type="String" />
                                <asp:Parameter Name="nombrei4" Type="String" />
                                <asp:Parameter Name="edadi4" Type="String" />
                                <asp:Parameter Name="nombrei5" Type="String" />
                                <asp:Parameter Name="edadi5" Type="String" />
                                <asp:Parameter Name="nombrei6" Type="String" />
                                <asp:Parameter Name="edadi6" Type="String" />
                                <asp:Parameter Name="nombrei7" Type="String" />
                                <asp:Parameter Name="edadi7" Type="String" />
                                <asp:Parameter Name="nombrei8" Type="String" />
                                <asp:Parameter Name="edadi8" Type="String" />
                                <asp:Parameter Name="nombrei9" Type="String" />
                                <asp:Parameter Name="edadi9" Type="String" />
                                <asp:Parameter Name="nombrei10" Type="String" />
                                <asp:Parameter Name="edadi10" Type="String" />
                                <asp:Parameter Name="nombrei11" Type="String" />
                                <asp:Parameter Name="edadi11" Type="String" />
                                <asp:Parameter Name="nombrei12" Type="String" />
                                <asp:Parameter Name="edadi12" Type="String" />
                                <asp:Parameter Name="nombrei13" Type="String" />
                                <asp:Parameter Name="edadi13" Type="String" />
                                <asp:Parameter Name="nombrei14" Type="String" />
                                <asp:Parameter Name="edadi14" Type="String" />
                                <asp:Parameter Name="nombrei15" Type="String" />
                                <asp:Parameter Name="edadi15" Type="String" />
                                <asp:Parameter Name="comentarios" Type="String" />
                                <asp:Parameter Name="original_id" Type="Int32" />
                            </UpdateParameters>
                            <InsertParameters>
                                <asp:Parameter Name="nombres" Type="String" />
                                <asp:Parameter Name="apellidos" Type="String" />
                                <asp:Parameter Name="correo" Type="String" />
                                <asp:Parameter Name="edad" Type="String" />
                                <asp:Parameter Name="disciplina" Type="String" />
                                <asp:Parameter Name="nombreequipo" Type="String" />
                                <asp:Parameter Name="nombrei1" Type="String" />
                                <asp:Parameter Name="edadi1" Type="String" />
                                <asp:Parameter Name="nombrei2" Type="String" />
                                <asp:Parameter Name="edadi2" Type="String" />
                                <asp:Parameter Name="nombrei3" Type="String" />
                                <asp:Parameter Name="edadi3" Type="String" />
                                <asp:Parameter Name="nombrei4" Type="String" />
                                <asp:Parameter Name="edadi4" Type="String" />
                                <asp:Parameter Name="nombrei5" Type="String" />
                                <asp:Parameter Name="edadi5" Type="String" />
                                <asp:Parameter Name="nombrei6" Type="String" />
                                <asp:Parameter Name="edadi6" Type="String" />
                                <asp:Parameter Name="nombrei7" Type="String" />
                                <asp:Parameter Name="edadi7" Type="String" />
                                <asp:Parameter Name="nombrei8" Type="String" />
                                <asp:Parameter Name="edadi8" Type="String" />
                                <asp:Parameter Name="nombrei9" Type="String" />
                                <asp:Parameter Name="edadi9" Type="String" />
                                <asp:Parameter Name="nombrei10" Type="String" />
                                <asp:Parameter Name="edadi10" Type="String" />
                                <asp:Parameter Name="nombrei11" Type="String" />
                                <asp:Parameter Name="edadi11" Type="String" />
                                <asp:Parameter Name="nombrei12" Type="String" />
                                <asp:Parameter Name="edadi12" Type="String" />
                                <asp:Parameter Name="nombrei13" Type="String" />
                                <asp:Parameter Name="edadi13" Type="String" />
                                <asp:Parameter Name="nombrei14" Type="String" />
                                <asp:Parameter Name="edadi14" Type="String" />
                                <asp:Parameter Name="nombrei15" Type="String" />
                                <asp:Parameter Name="edadi15" Type="String" />
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
    </div>
   
    </form>
</body>
</html>
