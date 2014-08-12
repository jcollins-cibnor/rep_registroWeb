<%@ Page Language="C#" AutoEventWireup="true" CodeFile="posgrado2014.aspx.cs" Inherits="posgrado2014" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>XIV Semana del Posgrado en Baja California Sur - Registro en línea</title>
</head>
<body>
     <form id="form1" runat="server">
    
    <asp:ScriptManager ID="scriptmanager1" EnablePartialRendering="true" runat="server" />

    <div>
    <center>
    <div align="center">
        
        <table style="font-family: Verdana; width:500pt;">
            <tr>
                <td style="width:30%; text-align: center;">
                    <asp:Image ID="Image4" runat="server" 
                        Height="65px" ImageUrl="~/Images/ciboficial.gif" /></td>
                <td style="width:40%; text-align:center;">
                    <asp:Image ID="Image5" runat="server" Height="65px" 
                        ImageUrl="~/Images/logo_cicimar.jpg" />
                </td>
                <td style="width:30%; text-align:center;">
                    <asp:Image ID="Image6" runat="server" Height="65px" 
                        ImageUrl="~/Images/logo_uabcs.jpg" />
                </td>
            </tr>
            <tr>
                <td colspan="3" style="text-align:center">
                    <asp:Label ID="lblTituloEvento" runat="server" Font-Bold="True" 
                        Font-Names="Verdana" Font-Size="10pt" 
                        Text="XIV Semana del Posgrado en Baja California Sur"></asp:Label>
                    <br />
                    <asp:Label ID="lblRegistroEnLinea" runat="server" Font-Bold="False" Font-Names="Verdana" 
                        Font-Size="10pt" Text="Registro en Línea"></asp:Label>
                </td>
            </tr>
        </table>

            <asp:Panel ID="pnlDatos" runat="server">

                <asp:SqlDataSource ID="SqlDScatEstudiantes2014" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:REGWEBConnectionString %>" 
                    SelectCommand="SELECT * FROM [catEstudiantes2014]">
                </asp:SqlDataSource>
                <asp:SqlDataSource ID="SqlDScatPosgPeriodos2014" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:REGWEBConnectionString %>"></asp:SqlDataSource>
            <asp:ValidationSummary ID="valSum" runat="server" DisplayMode="SingleParagraph" 
                HeaderText="* campos requeridos." Font-Names="Verdana" 
                    Font-Size="8pt" ForeColor="Red" />

        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>

            <table style="border:0; width:500pt;  font-size: 8pt;">
                <tr>
                    <td style="font-family: Verdana; font-size: 9pt; font-weight: bold;" 
                        colspan="3">
                        <hr width="100%" noshade="noshade" size="0" />
                    </td>
                </tr>
                <tr>
                    <td style="font-family: Verdana; text-align: right; width: 20%; height: 30px;">
                        Nombre:</td>
                    <td style="text-align:left">
                        <asp:DropDownList ID="ddlNombre" runat="server" 
                            DataSourceID="SqlDScatEstudiantes2014" DataTextField="nombre" 
                            DataValueField="nombre" Font-Names="Verdana" Font-Size="7pt" Width="320px">
                        </asp:DropDownList>
                        <br />
                    </td>
                    <td>
                        <asp:Label ID="lblDetallesTitulo0" runat="server" Font-Italic="True" 
                            Font-Names="Verdana" Font-Size="7pt" ForeColor="#000099" 
                            Text="Estudiantes adscritos al CIBNOR, CICIMAR y UABCS."></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td style="text-align:right; font-family: Verdana; height: 30px;">
                        <asp:CheckBox ID="ckbNombre" runat="server" AutoPostBack="True" 
                            Font-Italic="True" oncheckedchanged="ckbNombre_CheckedChanged" 
                            Text="Mi nombre no aparece en el listado" />
                    </td>
                    <td style="text-align:left">
                        <asp:TextBox ID="txtNombre" runat="server" CausesValidation="True" 
                            Enabled="False" Font-Names="Verdana" Font-Size="8pt" MaxLength="100" 
                            Width="320px" />
                        <br />
                        <asp:Label ID="lblDetallesNombre" runat="server" Font-Italic="True" 
                            Font-Names="Verdana" Font-Size="7pt" ForeColor="#000099" 
                            Text="Capturar en MAYUSCULAS, empezando por los apellidos." Visible="False"></asp:Label>
                    </td>
                    <td style="text-align:left">
                        &nbsp;</td>
                </tr>
                
                <tr>
                    <td style="text-align:right; font-family: Verdana; height: 30px;">
                        Correo electrónico:</td>
                    <td style="text-align:left">
                        <asp:TextBox ID="txtCorreo" runat="server" 
                            MaxLength="50" Width="240px" Font-Size="8pt" Font-Names="Verdana" 
                            CausesValidation="True" />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                            ControlToValidate="txtCorreo" Font-Bold="True" ForeColor="Red" 
                            SetFocusOnError="True">*
                        </asp:RequiredFieldValidator>
                    </td>
                    <td style="text-align:left">
                        <asp:RegularExpressionValidator ID="valRegExCorreo" runat="server" 
                            ControlToValidate="txtCorreo" Display="Static" Font-Names="Arial" 
                            Font-Size="8pt" ForeColor="Red" 
                            ValidationExpression="^([\w-\.]+)@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.)|(([\w-]+\.)+))([a-zA-Z]{2,4}|[0-9]{1,3})(\]?)$">Formato: 
                        correo@servidor.dominio
                        </asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td style="text-align:right; font-family: Verdana; height: 30px;">
                        Confirmar correo electrónico:</td>
                    <td style="text-align: left">
                        <asp:TextBox ID="txtCorreoConfirmar" runat="server" 
                            Font-Names="Verdana" Font-Size="8pt" MaxLength="50" Width="240px" 
                            CausesValidation="True" ></asp:TextBox>
                    </td>
                    <td style="text-align:left"> 
                        <asp:CompareValidator ID="CompareValidator1" runat="server" 
                            ControlToCompare="txtCorreo" ControlToValidate="txtCorreoConfirmar" 
                            Font-Names="Arial" Font-Size="8pt" ForeColor="Red" SetFocusOnError="True">Confirmar correo electrónico.</asp:CompareValidator>
                    </td>
                </tr>                
                <tr>
                    <td style="text-align:right; font-family: Verdana; height: 30px;">
                        Programa Académico:</td>
                    <td colspan="2" style="text-align: left">
                        <asp:DropDownList ID="ddlPrograma" runat="server" AutoPostBack="True" 
                            Font-Italic="False" Font-Names="Verdana" Font-Size="7pt" Width="90%" 
                            onselectedindexchanged="ddlPrograma_SelectedIndexChanged">
                            <asp:ListItem Selected="True">Seleccionar...</asp:ListItem>
                            <asp:ListItem>Maestría en Desarrollo Agropecuario de Zonas Áridas</asp:ListItem>
                            <asp:ListItem>Maestría en Ciencias Zootécnicas</asp:ListItem>
                            <asp:ListItem>Maestría en Políticas Públicas y Administración</asp:ListItem>
                            <asp:ListItem>Maestría en Desarrollo Sustentable y Globalización</asp:ListItem>
                            <asp:ListItem>Maestría en Economía del Medio Ambiente y Recursos Naturales</asp:ListItem>
                            <asp:ListItem>Maestría en Estudios Sociales y Humanísticos de Frontera</asp:ListItem>
                            <asp:ListItem>Maestría en Historia Regional</asp:ListItem>
                            <asp:ListItem>Maestría en Ciencias Marinas y Costeras</asp:ListItem>
                            <asp:ListItem>Doctorado en Ciencias Marinas y Costeras</asp:ListItem>
                            <asp:ListItem>Doctorado en Desarrollo Sustentable y Globalización</asp:ListItem>
                            <asp:ListItem>Doctorado en Historia</asp:ListItem>
                            <asp:ListItem>Especialidad en Desarrollo Sustentable y Globalización</asp:ListItem>
                            <asp:ListItem>Maestría en Ciencias en Manejo de Recursos Marinos</asp:ListItem>
                            <asp:ListItem>Doctorado en Ciencias marinas</asp:ListItem>
                            <asp:ListItem>Maestría en Ciencias en el Uso, Manejo y Preservación de los Recursos Naturales</asp:ListItem>
                            <asp:ListItem>Doctorado en Ciencias en el Uso, Manejo y Preservación de los Recursos Naturales</asp:ListItem>
                            <asp:ListItem>Doctorado en Ciencias en Bioeconomia Pesquera y Acuícola</asp:ListItem>
                        </asp:DropDownList>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                            ControlToValidate="ddlPrograma" Font-Bold="True" ForeColor="Red" 
                            InitialValue="Seleccionar..." SetFocusOnError="True">*</asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td style="text-align:right; font-family: Verdana; height: 30px;">
                        Institución:</td>
                    <td style="text-align: left">
                        <asp:DropDownList ID="ddlInstitucion" runat="server" Font-Italic="False" 
                            Font-Names="Verdana" Font-Size="8pt" AutoPostBack="True" Width="220px" 
                            Enabled="False">
                            <asp:ListItem Value="UABCS">UABCS</asp:ListItem>
                            <asp:ListItem Value="CICIMAR">CICIMAR</asp:ListItem>
                            <asp:ListItem Value="CIBNOR">CIBNOR</asp:ListItem>
                            <asp:ListItem  Value="CICIMAR-CIBNOR">CICIMAR-CIBNOR</asp:ListItem>
                            <asp:ListItem Selected="True">-</asp:ListItem>
                        </asp:DropDownList>
                        <br />
                    </td>
                    <td style="text-align:left">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td style="text-align:right; font-family: Verdana; height: 30px;">
                        Nivel:</td>
                    <td style="text-align: left">
                        <asp:DropDownList ID="ddlNivel" runat="server" Font-Italic="False" 
                            Font-Names="Verdana" Font-Size="8pt" AutoPostBack="True" Width="120px" 
                            Enabled="False">
                            <asp:ListItem Value="Maestría">Maestría</asp:ListItem>
                            <asp:ListItem Value="Doctorado">Doctorado</asp:ListItem>
                            <asp:ListItem Value="Especialidad">Especialidad</asp:ListItem>
                            <asp:ListItem Selected="True">-</asp:ListItem>
                        </asp:DropDownList>
                        <br />
                    </td>
                    <td style="text-align:left">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td style="text-align:right; font-family: Verdana; height: 30px;">
                        Modalidad:</td>
                    <td style="text-align: left">
                        <asp:DropDownList ID="ddlModalidad" runat="server" Font-Italic="False" 
                            Font-Names="Verdana" Font-Size="8pt" AutoPostBack="True" 
                            onselectedindexchanged="ddlModalidad_SelectedIndexChanged" Width="220px">
                            <asp:ListItem Selected="True">Seleccionar...</asp:ListItem>
                            <asp:ListItem Value="Cartel">Cartel</asp:ListItem>
                            <asp:ListItem Value="Pláticas de divulgación">Pláticas de divulgación</asp:ListItem>
                            <asp:ListItem Value="Entrevistas radio/tv">Entrevistas radio/tv</asp:ListItem>
                            <asp:ListItem Value="Ponencia oral">Ponencia oral</asp:ListItem>
                        </asp:DropDownList>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                            ControlToValidate="ddlModalidad" Font-Bold="True" ForeColor="Red" 
                            InitialValue="Seleccionar..." SetFocusOnError="True">*</asp:RequiredFieldValidator>
                    </td>
                    <td>
                        <asp:Label ID="lblModalidadUbicacion" runat="server" Font-Italic="True" 
                            Font-Names="Verdana" Font-Size="7pt" ForeColor="#000099"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td style="text-align:right; font-family: Verdana; height: 30px;">
                        Trimestre / Semestre:</td>
                    <td style="text-align: left">
                        <asp:DropDownList ID="ddlPeriodo" runat="server" 
                            DataSourceID="SqlDScatPosgPeriodos2014" DataTextField="periodo" 
                            DataValueField="periodo" Font-Names="Verdana" Font-Size="8pt" Width="60px">
                        </asp:DropDownList>
                    </td>
                    <td>
                        &nbsp;</td>
                </tr> 
                <tr>
                    <td style="text-align:right; font-family: Verdana; height: 30px;">
                        Título del trabajo:</td>
                    <td colspan="2" style="text-align: left">
                        <asp:RegularExpressionValidator ID="valRegExTitulo" runat="server" 
                            ControlToValidate="txtTituloTrabajo" Font-Names="Arial" Font-Size="8pt" 
                            ForeColor="Red" ValidationExpression="[\w\s\d,;.:-_+áéíóúñÁÉÍÓÚÑ]*">No introducir caracteres 
                        especiales (&quot; / &#39; ? etc.).</asp:RegularExpressionValidator>
                        <br />
                        <asp:TextBox ID="txtTituloTrabajo" runat="server" Font-Names="Verdana" 
                            Font-Size="8pt" MaxLength="200" Width="90%" />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
                            ControlToValidate="txtTituloTrabajo" Font-Bold="True" ForeColor="Red" 
                            SetFocusOnError="True">*
                        </asp:RequiredFieldValidator>
                        <br />
                        <asp:Label ID="lblDetallesTitulo" runat="server" Font-Italic="True" 
                            Font-Names="Verdana" Font-Size="7pt" 
                            
                            Text="Capturar en formato Tipo Titulo. Nombres científicos entre ++" 
                            ForeColor="#000099"></asp:Label>
                    </td>
                </tr>                               
            </table>
            
            <table style="border:0; width:500pt; font-size: 8pt;">
                <tr>
                    <td style="text-align:right; vertical-align:middle; font-family: Verdana; width: 20%;">
                        Área de conocimiento:</td>
                    <td style="text-align:left; font-family: Verdana; width: 80%;">
                        <asp:RadioButtonList ID="rblArea" runat="server" AutoPostBack="True" 
                            Font-Names="Verdana" Font-Size="8pt" 
                            onselectedindexchanged="rblArea_SelectedIndexChanged" RepeatColumns="2">
                            <asp:ListItem Selected="True">Acuicultura</asp:ListItem>
                            <asp:ListItem>Biología Marina</asp:ListItem>
                            <asp:ListItem>Biología Terrestre</asp:ListItem>
                            <asp:ListItem>Biotecnología</asp:ListItem>
                            <asp:ListItem>Ciencias Agropecuarias</asp:ListItem>
                            <asp:ListItem>Ecología</asp:ListItem>
                            <asp:ListItem>Geoquímica</asp:ListItem>
                            <asp:ListItem>Manejo Costero</asp:ListItem>
                            <asp:ListItem>Oceanografía</asp:ListItem>
                            <asp:ListItem>Pesquerías</asp:ListItem>
                            <asp:ListItem>Bioeconomía</asp:ListItem>
                            <asp:ListItem>Planeación Ambiental y Conservación</asp:ListItem>
                            <asp:ListItem>Ciencias Sociales</asp:ListItem>
                            <asp:ListItem>Otras</asp:ListItem>
                        </asp:RadioButtonList>
                    </td>
                </tr>
                <tr>
                    <td style="text-align:right; font-family: Verdana; width: 20%; height: 30px;">
                        <asp:Label ID="lblEspecifiqueArea" runat="server" Text="Especifique:" 
                            Visible="False"></asp:Label>
                    </td>
                    <td style="text-align:left; font-family: Verdana; width: 80%;">
                        <asp:TextBox ID="txtArea" runat="server" Font-Names="Verdana" Font-Size="8pt" 
                            MaxLength="200" Visible="False" Width="360px" />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                            ControlToValidate="txtArea" Font-Bold="True" ForeColor="Red" 
                            SetFocusOnError="True">*</asp:RequiredFieldValidator>
                    </td>
                </tr>
                
                <tr>
                    <td colspan="2" style="font-size: 9pt; font-family: Verdana; font-weight: bold;">
                        <hr width="100%" noshade="noshade" size="0" />
                    </td>
                </tr>
            </table>
        
        </ContentTemplate>
        </asp:UpdatePanel>
            
            <asp:Button ID="btnContinuar" runat="server" 
                onclick="btnContinuar_Click" Text="Continuar" Width="100px" 
                Font-Names="Arial" Font-Size="8pt" Enabled="False" />
            <br />
        </asp:Panel>
        </div>
        <!-- REGISTRO -->
        <asp:Panel ID="pnlConfirmacion" runat="server" Visible="False">
            <table style="border:0; width:500pt; font-size: 8pt;">
                <tr>
                    <td colspan="3" style="font-family: Verdana; font-weight: bold; font-size:9pt;">
                        CONFIRMACIÓN DE DATOS</td>
                </tr>
                <tr>
                    <td style="text-align:left; " colspan="3">
                        <hr noshade="noshade" size="0" width="100%" />
                    </td>
                </tr>
                <tr>
                    <td style="text-align:right; font-family: Verdana; width:50pt;">
                        &nbsp;</td>
                    <td style="text-align:left">
                        <asp:Label ID="lblConfirmacion" runat="server" Font-Names="Consolas" 
                            Font-Size="9pt" Text="Label" ForeColor="#000099"></asp:Label>
                    </td>
                    <td style="text-align:right; font-family: Verdana; width:50pt;">
                        &nbsp;</td>
                </tr>
                
                <tr>
                    <td style="text-align:right; font-family: Verdana;">
                        <asp:Label ID="lblAdjuntarResumen" runat="server" Text="Adjuntar resumen:" 
                            Font-Bold="False" Font-Names="Arial Narrow" Font-Size="9pt" 
                            ForeColor="#000099"></asp:Label>
                    </td>
                    <td style="text-align:left">
                        <asp:FileUpload ID="fuAdjuntarResumen" runat="server" Font-Names="Arial" Width="100%" 
                            Font-Size="8pt" />                        
                    </td>
                    <td style="text-align:left; font-family: Verdana;">
                        <asp:Button ID="btnAdjuntar" runat="server" Height="20px"
                            Text="Adjuntar" Font-Names="Arial" Font-Size="8pt" 
                            onclick="btnAdjuntar_Click" />
                    </td>
                </tr>
                <tr>
                    <td colspan="3" style="text-align: center">
                        <asp:Label ID="lblStatusArchivo" runat="server" Font-Names="Arial Narrow" 
                            Font-Size="9pt" Text="Label" Visible="False" Font-Bold="True" 
                            ForeColor="#000099"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td colspan="3" style="text-align: center">
                        <asp:Label ID="lbl1" runat="server" ForeColor="Maroon"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td colspan="3" style="text-align:center;">
                        <asp:Button ID="btnRegresar" runat="server" onclick="btnRegresar_Click" 
                            Text="Regresar" Width="100px" Font-Names="Arial" Font-Size="8pt" />
                        &nbsp;<asp:Button ID="btnEnviar" runat="server"  
                            Text="Enviar" Width="100px" onclick="btnEnviar_Click" Font-Names="Arial" 
                            Font-Size="8pt" Enabled="False" />
                        <asp:SqlDataSource ID="SqlDSposgrado2014" runat="server" 
                            ConnectionString="<%$ ConnectionStrings:REGWEBConnectionString %>" 
                            DeleteCommand="DELETE FROM [Posgrado2014] WHERE [id] = @original_id" 
                            InsertCommand="INSERT INTO [Posgrado2014] ([nombre], [correo], [programa], [institucion], [nivel], [modalidad], [periodo], [titulo], [area], [fecharegistro]) VALUES (@nombre, @correo, @programa, @institucion, @nivel, @modalidad, @periodo, @titulo, @area, @fecharegistro)" 
                            SelectCommand="SELECT * FROM [Posgrado2014]" 
                            
                            UpdateCommand="UPDATE [Posgrado2014] SET [nombre] = @nombre, [correo] = @correo, [programa] = @programa, [institucion] = @institucion, [nivel] = @nivel, [modalidad] = @modalidad, [periodo] = @periodo, [titulo] = @titulo, [area] = @area, [fecharegistro] = @fecharegistro WHERE [id] = @original_id" 
                            OldValuesParameterFormatString="original_{0}" 
                            
                            
                            
                            ProviderName="<%$ ConnectionStrings:REGWEBConnectionString.ProviderName %>">
                            <DeleteParameters>
                                <asp:Parameter Name="original_id" Type="Int32" />
                            </DeleteParameters>
                            <UpdateParameters>
                                <asp:Parameter Name="nombre" Type="String" />
                                <asp:Parameter Name="correo" Type="String" />
                                <asp:Parameter Name="programa" Type="String" />
                                <asp:Parameter Name="institucion" Type="String" />
                                <asp:Parameter Name="nivel" Type="String" />
                                <asp:Parameter Name="modalidad" Type="String" />
                                <asp:Parameter Name="periodo" Type="String" />
                                <asp:Parameter Name="titulo" Type="String" />
                                <asp:Parameter Name="area" Type="String" />
                                <asp:Parameter Name="fecharegistro" Type="DateTime" />
                                <asp:Parameter Name="original_id" Type="Int32" />
                            </UpdateParameters>
                            <InsertParameters>
                                <asp:Parameter Name="nombre" Type="String" />
                                <asp:Parameter Name="correo" Type="String" />
                                <asp:Parameter Name="programa" Type="String" />
                                <asp:Parameter Name="institucion" Type="String" />
                                <asp:Parameter Name="nivel" Type="String" />
                                <asp:Parameter Name="modalidad" Type="String" />
                                <asp:Parameter Name="periodo" Type="String" />
                                <asp:Parameter Name="titulo" Type="String" />
                                <asp:Parameter Name="area" Type="String" />
                                <asp:Parameter Name="fecharegistro" Type="DateTime" />
                            </InsertParameters>
                        </asp:SqlDataSource>
                    </td>
                </tr>
            </table>
        </asp:Panel>
        <br />
        <asp:Button ID="btnCancelar" runat="server" Text="Cancelar" 
            CausesValidation="False" Width="100px"            
            PostBackUrl="http://intranet.cibnor.mx/eplant1.php?pagID=anuncios/posgrado2014/index" 
            Font-Names="Arial" Font-Size="8pt" />
        <br />
        <asp:Label ID="lblNombreHidden" runat="server" Visible="False"></asp:Label>
        <br />
        <asp:Label ID="lblInstitucionHidden" runat="server" Visible="False"></asp:Label>
        <br />
        <asp:Label ID="lblAreaHidden" runat="server" Visible="False"></asp:Label>
        <br />
        <asp:Label ID="lblMensajeConfirmacionHidden" runat="server" Visible="False"></asp:Label>
        <br />
        
        <table style="width: 500pt; font-family: Verdana; font-size: 11pt;">
            <tr>
                <td colspan="2" style="font-size:8pt; text-align:center;">
                    <asp:Label ID="lblDireccionCib" runat="server" Font-Size="7pt" 
                        Text="Instituto Politécnico Nacional 195, Playa Palo de Santa Rita Sur; La Paz, B.C.S. México; C.P. 23096, Tel:(52) (612) 123-8484"></asp:Label>
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
   
    </form>
</body>
</html>