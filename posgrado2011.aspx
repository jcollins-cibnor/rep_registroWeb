<%@ Page Language="C#" AutoEventWireup="true" CodeFile="posgrado2011.aspx.cs" Inherits="posgrado2011" %>

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
        
        <table style="font-family: Verdana; font-size: 11pt;">
            <tr>
                <td style="width:160px;">
                    <asp:Image ID="Image1" runat="server" 
                        Height="50px" Visible="False" />&nbsp;<asp:Image ID="Image3" runat="server" ImageUrl="~/images/conacyt_logo3d.gif" 
                        Height="50px" /></td>
                <td style="width:480px; text-align:center; font-size: 10pt; font-family: Arial; font-weight: bold;">
                    XI SEMANA DEL POSGRADO EN BAJA CALIFORNIA SUR<br />
                    <br />
                    Registro en Línea</td>
                <td  style="width:160px;">
                    <asp:Image ID="Image2" runat="server" ImageUrl="~/images/ciboficial.gif" 
                        Height="50px" />&nbsp;</td>
            </tr>
        </table>
            <asp:Panel ID="pnlDatos" runat="server">
            <br />
                <asp:SqlDataSource ID="SqlDScatEstudiantes2011" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:REGWEBConnectionString %>" 
                    SelectCommand="SELECT * FROM [Posgrado2011]">
                </asp:SqlDataSource>
            <asp:ValidationSummary ID="valSum" runat="server" DisplayMode="SingleParagraph" 
                HeaderText="Los siguientes campos son requeridos:" Font-Names="Verdana" 
                    Font-Size="8pt" />

        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>

            <table style="border:0; width:500pt;  font-size: 8pt;">
                <tr>
                    <td colspan="3" style="font-size: 9pt; font-family: Verdana; font-weight: bold;">
                        <hr width="100%" noshade="noshade" size="0" />
                    </td>
                </tr>
                <tr>
                    <td style="text-align:right; font-family: Verdana; width: 20%; height: 30px;">
                        Nombre:</td>
                    <td style="text-align:left">
                        <asp:DropDownList ID="ddlNombre" runat="server" 
                            DataSourceID="SqlDScatEstudiantes2011" DataTextField="nombre" 
                            DataValueField="nombre" Font-Names="Verdana" Font-Size="7pt" Width="340px">
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
                            Width="330px" />
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
                            ControlToValidate="txtCorreo" ErrorMessage="Correo electrónico. " 
                            SetFocusOnError="True" Font-Bold="True">
                              *</asp:RequiredFieldValidator>
                    </td>
                    <td style="text-align:left">
                        <asp:RegularExpressionValidator ID="valRegExCorreo" runat="server" 
                            ControlToValidate="txtCorreo" Display="Static" 
                            ErrorMessage="Correo electrónico. " Font-Names="Arial" Font-Size="8pt"                             
                            ValidationExpression="^([\w-\.]+)@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.)|(([\w-]+\.)+))([a-zA-Z]{2,4}|[0-9]{1,3})(\]?)$">Formato: correo@servidor.dominio
                        </asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td style="text-align:right; font-family: Verdana; height: 30px;">
                        Confirmar correo electrónico:</td>
                    <td style="text-align:left">
                        <asp:TextBox ID="txtCorreoConfirmar" runat="server" 
                            MaxLength="50" Width="240px" Font-Size="8pt" Font-Names="Verdana" 
                            CausesValidation="True" ForeColor="#999999" >Reingresar correo electrónico</asp:TextBox>
                    </td>
                    <td style="text-align:left">
                        <asp:CompareValidator ID="CompareValidator1" runat="server" 
                            ControlToCompare="txtCorreo" ControlToValidate="txtCorreoConfirmar" 
                            ErrorMessage="Confirmar correo electrónico. " Font-Names="Arial" Font-Size="8pt" 
                            SetFocusOnError="True">Confirmar correo electrónico.</asp:CompareValidator>
                    </td>
                </tr>
                <!-- renglon en blanco -->
                <tr>
                    <td style="text-align:right; font-family: Verdana; height: 30px;">
                        Nombre del Programa Académico:</td>
                    <td style="text-align: left">
                        <asp:TextBox ID="txtPrograma" runat="server" Width="240px" Font-Size="8pt" 
                            Font-Names="Verdana" MaxLength="200" />
                    </td>
                    <td style="text-align:left"> 
                        <asp:RegularExpressionValidator ID="valRegExPrograma" runat="server" 
                            ControlToValidate="txtPrograma" 
                            ErrorMessage="No introducir caracteres especiales (&quot; / ' ? etc.)." 
                            Font-Names="Arial" Font-Size="8pt" 
                            ValidationExpression="[\w\s\d,;.:-_+áéíóúÁÉÍÓÚ]*"></asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td style="text-align:right; font-family: Verdana; height: 30px;">
                        Título del trabajo:</td>
                    <td style="text-align: left">
                        <asp:TextBox ID="txtTituloTrabajo" runat="server" Font-Names="Verdana" 
                            Font-Size="8pt" MaxLength="200" Width="360px" />
                        <br />
                        <asp:Label ID="lblDetallesTitulo" runat="server" Font-Italic="True" 
                            Font-Names="Verdana" Font-Size="7pt" 
                            
                            Text="Capturar en formato Tipo Titulo. Nombres científicos entre ++" 
                            ForeColor="#000099"></asp:Label>
                    </td>
                    <td style="text-align:left"> 
                        <asp:RegularExpressionValidator ID="valRegExTitulo" runat="server" 
                            ErrorMessage="No introducir caracteres especiales (&quot; / ' ? etc.)." 
                            ControlToValidate="txtTituloTrabajo" Font-Names="Arial" Font-Size="8pt" 
                            ValidationExpression="[\w\s\d,;.:-_+áéíóúÁÉÍÓÚ]*"></asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td style="text-align:right; font-family: Verdana; height: 30px;">
                        Institución:</td>
                    <td style="text-align: left">
                        <asp:DropDownList ID="ddlInstitucion" runat="server" Font-Italic="False" 
                            Font-Names="Verdana" Font-Size="8pt" AutoPostBack="True" 
                            onselectedindexchanged="ddlInstitucion_SelectedIndexChanged" Width="320px">
                            <asp:ListItem Selected="True" Value="Centro de Investigaciones Biológicas del Noroeste">Centro de Investigaciones Biológicas del Noroeste</asp:ListItem>
                            <asp:ListItem Value="Centro Interdisciplinario de Ciencias Marinas">Centro Interdisciplinario de Ciencias Marinas</asp:ListItem>
                            <asp:ListItem Value="Universidad Autónoma de Baja California Sur">Universidad Autónoma de Baja California Sur</asp:ListItem>
                            <asp:ListItem Value="Otra">Otra</asp:ListItem>
                        </asp:DropDownList>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                            ControlToValidate="txtInstitucion" ErrorMessage="Institución. " 
                            Font-Bold="True" SetFocusOnError="True">*</asp:RequiredFieldValidator>
                        <br />
                    </td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td style="text-align:right; font-family: Verdana">
                        <asp:Label ID="lblEspecificarInstitucion" runat="server" Text="Especificar:" 
                            Visible="False"></asp:Label>
                    </td>
                    <td style="text-align: left">
                        <asp:TextBox ID="txtInstitucion" runat="server" 
                            Font-Names="Verdana" Font-Size="8pt" MaxLength="200" Width="300px" 
                            Visible="False" />
                    </td>
                    <td style="text-align:left"> 
                        <asp:RegularExpressionValidator ID="valRegExEspInstitucion" runat="server" 
                            ControlToValidate="txtInstitucion" 
                            ErrorMessage="No introducir caracteres especiales (&quot; / ' ? etc.)." 
                            Font-Names="Arial" Font-Size="8pt" 
                            ValidationExpression="[\w\s\d,;.:-_+áéíóúÁÉÍÓÚ]*"></asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td style="text-align:right; font-family: Verdana; height: 30px;">
                        Nivel:</td>
                    <td style="text-align: left">
                        <asp:DropDownList ID="ddlNivel" runat="server" Font-Italic="False" 
                            Font-Names="Verdana" Font-Size="8pt">
                            <asp:ListItem Selected="True" Value="Maestría">Maestría</asp:ListItem>
                            <asp:ListItem Value="Doctorado">Doctorado</asp:ListItem>
                            <asp:ListItem Value="Especialidad">Especialidad</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td style="text-align:right; font-family: Verdana; height: 30px;">
                        Trimestre / Semestre:</td>
                    <td style="text-align: left">
                        <asp:TextBox ID="txtSemestre" runat="server" Font-Names="Verdana" 
                            Font-Size="8pt" MaxLength="2" Width="30px" >1</asp:TextBox>
                    </td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td style="text-align:right; font-family: Verdana; height: 30px;">
                        Modalidad:</td>
                    <td style="text-align: left">
                        <asp:DropDownList ID="ddlModalidad" runat="server" Font-Italic="False" 
                            Font-Names="Verdana" Font-Size="8pt">
                            <asp:ListItem Selected="True" Value="Cartel">Cartel</asp:ListItem>
                            <asp:ListItem Value="Plática difusión">Plática difusión</asp:ListItem>
                            <asp:ListItem Value="Video">Video</asp:ListItem>
                            <asp:ListItem Value="Entrevista">Entrevista</asp:ListItem>
                            <asp:ListItem Value="Presentación demostrativa">Presentación demostrativa</asp:ListItem>
                            <asp:ListItem Value="Presentación oral">Presentación oral</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                    <td>
                        &nbsp;</td>
                </tr>
            </table>
            
            <table style="border:0; width:500pt; font-size: 8pt;">
                <tr>
                    <td style="text-align:right; vertical-align:middle; font-family: Verdana; width: 20%;">
                        Área de conocimiento:</td>
                    <td style="text-align:left; font-family: Verdana; width: 80%;">
                        <asp:RadioButtonList ID="rblArea" runat="server" AutoPostBack="True" 
                            Font-Names="Verdana" Font-Size="8pt" 
                            onselectedindexchanged="RadioButtonList1_SelectedIndexChanged" 
                            RepeatColumns="2">
                            <asp:ListItem Selected="True">Acuicultura</asp:ListItem>
                            <asp:ListItem>Biología Marina</asp:ListItem>
                            <asp:ListItem>Biología Terrestre</asp:ListItem>
                            <asp:ListItem>Ciencias Agropecuarias</asp:ListItem>
                            <asp:ListItem>Manejo Sustentable</asp:ListItem>
                            <asp:ListItem>Oceanografía</asp:ListItem>
                            <asp:ListItem>Pesquerías</asp:ListItem>
                            <asp:ListItem>Globalización</asp:ListItem>
                            <asp:ListItem>Desarrollo Sustentable</asp:ListItem>
                            <asp:ListItem>Otros</asp:ListItem>
                        </asp:RadioButtonList>
                    </td>
                </tr>
                <tr>
                    <td style="text-align:right; font-family: Verdana; width: 20%; height: 30px;">
                        <asp:Label ID="lblEspecifiqueArea" runat="server" Text="Especifique:" 
                            Visible="False"></asp:Label>
                    </td>
                    <td style="text-align:left; font-family: Verdana; width: 80%;">
                        <asp:TextBox ID="txtArea" runat="server" 
                            Width="360px" Font-Names="Verdana" Font-Size="8pt" MaxLength="200" 
                            Visible="False" />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                            ControlToValidate="txtArea" ErrorMessage="Área de conocimiento. " 
                            Font-Bold="True" SetFocusOnError="True">
                                *</asp:RequiredFieldValidator>
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
                Font-Names="Arial" Font-Size="8pt" />
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
                    <td style="text-align:right; font-family: Verdana; width:100pt;">
                        &nbsp;</td>
                    <td style="text-align:left">
                        <asp:Label ID="lblConfirmacion" runat="server" Font-Names="Consolas" 
                            Font-Size="9pt" Text="Label" ForeColor="#000099"></asp:Label>
                    </td>
                    <td style="text-align:right; font-family: Verdana; width:100pt;">
                        &nbsp;</td>
                </tr>
                
                <tr>
                    <td style="text-align:right; font-family: Verdana; width:100pt;">
                    </td>                    
                    <td style="text-align:left">                                            
                        <asp:Label ID="lblStatusArchivo" runat="server" Font-Names="Consolas" 
                            Font-Size="9pt" Text="Label" Visible="False"></asp:Label>
                        <br />
                        <asp:Label ID="lblAdjuntarResumen" runat="server" Text="Adjuntar resumen:" 
                            Font-Bold="True" Font-Names="Consolas" Font-Size="9pt" ForeColor="#000099"></asp:Label>                                 
                        <asp:FileUpload ID="fuAdjuntarResumen" runat="server" Font-Names="Arial" 
                            Font-Size="8pt" />
                        &nbsp;<asp:Button ID="Button1" runat="server" Height="20px" onclick="Button1_Click" 
                            Text="Adjuntar" Font-Names="Arial" Font-Size="8pt" />
                    </td>
                    <td style="text-align:right; font-family: Verdana; width:100pt;">
                        &nbsp;</td>
                </tr>
                
                <tr>
                    <td colspan="3" style="text-align: left">
                        <asp:Label ID="lbl1" runat="server" ForeColor="Maroon"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td colspan="3">
                        <asp:Button ID="btnRegresar" runat="server" onclick="btnRegresar_Click" 
                            Text="Regresar" Width="100px" Font-Names="Arial" Font-Size="8pt" />
                        &nbsp;<asp:Button ID="btnEnviar" runat="server"  
                            Text="Enviar" Width="100px" onclick="btnEnviar_Click" Font-Names="Arial" 
                            Font-Size="8pt" Enabled="False" />
                        <asp:SqlDataSource ID="SqlDSposgrado2011" runat="server" 
                            ConnectionString="<%$ ConnectionStrings:REGWEBConnectionString %>" 
                            DeleteCommand="DELETE FROM [Posgrado2011] WHERE [id] = @original_id" 
                            InsertCommand="INSERT INTO [Posgrado2011] ([nombre], [correo], [programa], [titulo], [institucion], [nivel], [semestre], [modalidad], [area]) VALUES (@nombre, @correo, @programa, @titulo, @institucion, @nivel, @semestre, @modalidad, @area)" 
                            SelectCommand="SELECT * FROM [Posgrado2011]" 
                            
                            UpdateCommand="UPDATE [Posgrado2011] SET [nombre] = @nombre, [correo] = @correo, [programa] = @programa, [titulo] = @titulo, [institucion] = @institucion, [nivel] = @nivel, [semestre] = @semestre, [modalidad] = @modalidad, [area] = @area WHERE [id] = @original_id" 
                            OldValuesParameterFormatString="original_{0}" 
                            
                            
                            ProviderName="<%$ ConnectionStrings:REGWEBConnectionString.ProviderName %>">
                            <DeleteParameters>
                                <asp:Parameter Name="original_id" Type="Int32" />
                            </DeleteParameters>
                            <UpdateParameters>
                                <asp:Parameter Name="nombre" Type="String" />
                                <asp:Parameter Name="correo" Type="String" />
                                <asp:Parameter Name="programa" Type="String" />
                                <asp:Parameter Name="titulo" Type="String" />
                                <asp:Parameter Name="institucion" Type="String" />
                                <asp:Parameter Name="nivel" Type="String" />
                                <asp:Parameter Name="semestre" Type="String" />
                                <asp:Parameter Name="modalidad" Type="String" />
                                <asp:Parameter Name="area" Type="String" />
                                <asp:Parameter Name="original_id" Type="Int32" />
                            </UpdateParameters>
                            <InsertParameters>
                                <asp:Parameter Name="nombre" Type="String" />
                                <asp:Parameter Name="correo" Type="String" />
                                <asp:Parameter Name="programa" Type="String" />
                                <asp:Parameter Name="titulo" Type="String" />
                                <asp:Parameter Name="institucion" Type="String" />
                                <asp:Parameter Name="nivel" Type="String" />
                                <asp:Parameter Name="semestre" Type="String" />
                                <asp:Parameter Name="modalidad" Type="String" />
                                <asp:Parameter Name="area" Type="String" />
                            </InsertParameters>
                        </asp:SqlDataSource>
                    </td>
                </tr>
            </table>
        </asp:Panel>
        <br />
        <asp:Button ID="btnCancelar" runat="server" Text="Cancelar" 
            CausesValidation="False" Width="100px"            
            PostBackUrl="http://intranet.cibnor.mx/eplant1.php?pagID=anuncios/posgrado2011/index" 
            Font-Names="Arial" Font-Size="8pt" />
        <br />
        <br />
        
        <table style="width: 800px; font-family: Verdana; font-size: 11pt;">
            <tr>
                <td colspan="2" style="font-size:8pt; text-align:center;">
                    <asp:Label ID="lblDireccionCib" runat="server" Font-Size="7pt" 
                        
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
