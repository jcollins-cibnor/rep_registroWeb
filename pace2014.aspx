﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="pace2014.aspx.cs" Inherits="pace2014" Debug="true" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>CIBNOR - Registro en Línea</title>
</head>
<body>
    <form id="form1" runat="server">
    <asp:ScriptManager ID="scriptmanager1" EnablePartialRendering="true" runat="server" />
                            <asp:SqlDataSource ID="SqlDSregistro" runat="server" ConnectionString="<%$ ConnectionStrings:REGWEBConnectionString %>"
                                
        DeleteCommand="DELETE FROM [expociencias2014] WHERE [id] = @original_id" InsertCommand="INSERT INTO [expociencias2014] ([nombreEst1], [correoEst1], [telefonoEst1], [sexo], [edad], [numeroEst], [nombreEst2], [correoEst2], [nombreEst3], [correoEst3], [nombreAsesor], [correoAsesor], [telefonoAsesor], [institucion], [domicilio], [municipio], [proyecto], [categoria], [area], [descipcionProyecto], [nombreHuesped], [justificacion], [claveRegistro], [fechaRegistro]) VALUES (@nombreEst1, @correoEst1, @telefonoEst1, @sexo, @edad, @numeroEst, @nombreEst2, @correoEst2, @nombreEst3, @correoEst3, @nombreAsesor, @correoAsesor, @telefonoAsesor, @institucion, @domicilio, @municipio, @proyecto, @categoria, @area, @descipcionProyecto, @nombreHuesped, @justificacion, @claveRegistro, @fechaRegistro)"
                                SelectCommand="SELECT * FROM [expociencias2014]" UpdateCommand="UPDATE [expociencias2014] SET [nombreEst1] = @nombreEst1, [correoEst1] = @correoEst1, [telefonoEst1] = @telefonoEst1, [sexo] = @sexo, [edad] = @edad, [numeroEst] = @numeroEst, [nombreEst2] = @nombreEst2, [correoEst2] = @correoEst2, [nombreEst3] = @nombreEst3, [correoEst3] = @correoEst3, [nombreAsesor] = @nombreAsesor, [correoAsesor] = @correoAsesor, [telefonoAsesor] = @telefonoAsesor, [institucion] = @institucion, [domicilio] = @domicilio, [municipio] = @municipio, [proyecto] = @proyecto, [categoria] = @categoria, [area] = @area, [descipcionProyecto] = @descipcionProyecto, [nombreHuesped] = @nombreHuesped, [justificacion] = @justificacion, [claveRegistro] = @claveRegistro, [fechaRegistro] = @fechaRegistro WHERE [id] = @original_id"
                                OldValuesParameterFormatString="original_{0}">
                                <DeleteParameters>
                                    <asp:Parameter Name="original_id" Type="Int32" />
                                </DeleteParameters>
                                <UpdateParameters>
                                    <asp:Parameter Name="nombreEst1" Type="String" />
                                    <asp:Parameter Name="correoEst1" Type="String" />
                                    <asp:Parameter Name="telefonoEst1" Type="String" />
                                    <asp:Parameter Name="sexo" Type="String" />
                                    <asp:Parameter Name="edad" Type="String" />
                                    <asp:Parameter Name="numeroEst" Type="String" />
                                    <asp:Parameter Name="nombreEst2" Type="String" />
                                    <asp:Parameter Name="correoEst2" Type="String" />
                                    <asp:Parameter Name="nombreEst3" Type="String" />
                                    <asp:Parameter Name="correoEst3" Type="String" />
                                    <asp:Parameter Name="nombreAsesor" Type="String" />
                                    <asp:Parameter Name="correoAsesor" Type="String" />
                                    <asp:Parameter Name="telefonoAsesor" Type="String" />
                                    <asp:Parameter Name="institucion" Type="String" />
                                    <asp:Parameter Name="domicilio" Type="String" />
                                    <asp:Parameter Name="municipio" Type="String" />
                                    <asp:Parameter Name="proyecto" Type="String" />
                                    <asp:Parameter Name="categoria" Type="String" />
                                    <asp:Parameter Name="area" Type="String" />
                                    <asp:Parameter Name="descipcionProyecto" Type="String" />
                                    <asp:Parameter Name="nombreHuesped" Type="String" />
                                    <asp:Parameter Name="justificacion" Type="String" />
                                    <asp:Parameter Name="claveRegistro" Type="String" />
                                    <asp:Parameter Name="fechaRegistro" Type="DateTime" />
                                    <asp:Parameter Name="original_id" Type="Int32" />
                                </UpdateParameters>
                                <InsertParameters>
                                    <asp:Parameter Name="nombreEst1" Type="String" />
                                    <asp:Parameter Name="correoEst1" Type="String" />
                                    <asp:Parameter Name="telefonoEst1" Type="String" />
                                    <asp:Parameter Name="sexo" Type="String" />
                                    <asp:Parameter Name="edad" Type="String" />
                                    <asp:Parameter Name="numeroEst" Type="String" />
                                    <asp:Parameter Name="nombreEst2" Type="String" />
                                    <asp:Parameter Name="correoEst2" Type="String" />
                                    <asp:Parameter Name="nombreEst3" Type="String" />
                                    <asp:Parameter Name="correoEst3" Type="String" />
                                    <asp:Parameter Name="nombreAsesor" Type="String" />
                                    <asp:Parameter Name="correoAsesor" Type="String" />
                                    <asp:Parameter Name="telefonoAsesor" Type="String" />
                                    <asp:Parameter Name="institucion" Type="String" />
                                    <asp:Parameter Name="domicilio" Type="String" />
                                    <asp:Parameter Name="municipio" Type="String" />
                                    <asp:Parameter Name="proyecto" Type="String" />
                                    <asp:Parameter Name="categoria" Type="String" />
                                    <asp:Parameter Name="area" Type="String" />
                                    <asp:Parameter Name="descipcionProyecto" Type="String" />
                                    <asp:Parameter Name="nombreHuesped" Type="String" />
                                    <asp:Parameter Name="justificacion" Type="String" />
                                    <asp:Parameter Name="claveRegistro" Type="String" />
                                    <asp:Parameter Name="fechaRegistro" Type="DateTime" />
                                </InsertParameters>
                            </asp:SqlDataSource>
    <div>
        <center>
            <div align="center">
                <table style="font-family: Verdana; font-size: 11pt; width: 650pt;">
                    <tr>
                        <td style="width: 200pt; text-align: center; font-size: 14pt; font-family: Arial;
                            font-weight: bold;">
                            <asp:Image ID="Image1" runat="server" ImageUrl="~/Images/logo_pace.png" 
                                Height="80px" />&nbsp;
                        </td>
                        <td style="width: 250pt; text-align: center; font-size: 14pt; font-family: Arial;
                            font-weight: bold;">
                            <asp:Image ID="Image5" runat="server" ImageUrl="~/Images/logo_pace2014.png" 
                                Height="100px" Width="300px" />
                            <br />
                        </td>
                        <td style="width: 200pt; text-align: center; margin-left: 40px;">
                            <asp:Image ID="Image2" runat="server" ImageUrl="~/Images/cibreg.png" 
                                Height="70px" />
                                &nbsp;
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 160px;">
                        </td>
                        <td style="width: 480px; text-align: center; font-size: 14pt; font-family: Arial;
                            font-weight: bold;">                            
                            <asp:Label ID="Label2" runat="server" Font-Names="Verdana" 
                                Font-Size="10pt" Text="Registro en Línea" Font-Bold="False"></asp:Label>
                        </td>
                        <td style="width: 160px; text-align: center; margin-left: 40px;">
                        </td>
                    </tr>
                </table>
                <asp:Panel ID="pnlDatos" runat="server">
                    <asp:ValidationSummary ID="valSum" runat="server" DisplayMode="SingleParagraph" HeaderText="Los campos marcados con * son requeridos. "
                        Font-Names="Arial" Font-Size="8pt" ForeColor="Red" />
                    <asp:RegularExpressionValidator ID="valRegExCorreo" runat="server" 
                        ControlToValidate="txtCorreo" Display="Static" Font-Names="Arial" 
                        Font-Size="8pt" ForeColor="Red" SetFocusOnError="True" 
                        
                        
                        ValidationExpression="^([\w-\.]+)@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.)|(([\w-]+\.)+))([a-zA-Z]{2,4}|[0-9]{1,3})(\]?)$">- Formato del correo: micorreo@servidor.dominio</asp:RegularExpressionValidator>
                    <br />
                    <asp:Label ID="lblStatusExiste" runat="server" Font-Bold="True" 
                        Font-Names="Arial" Font-Size="8pt" ForeColor="Blue"></asp:Label>
                    <br />
                    <table style="border: 0; width: 650pt; font-size: 8pt;">
                        <tr>
                            <td colspan="3" style="text-align: left;">
                                <asp:Label ID="lblDatosGenerales" runat="server" Font-Bold="True" Font-Names="Verdana" 
                                    Font-Size="9pt" Text=" DATOS GENERALES DEL AUTOR"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td colspan="3" style="font-family: Verdana; font-weight: bold;">
                                <hr width="100%" noshade="noshade" size="0" />
                            </td>
                        </tr>
                        <tr>
                            <td style="text-align:left; width:320px;">
                                <asp:Label ID="lblNombre" runat="server" Font-Bold="False" 
                                    Font-Names="Verdana" Font-Size="8pt" 
                                    Text="Nombre completo del estudiante:"></asp:Label>
                                &nbsp;</td>
                            <td style="text-align: left; width:260px;">
                                <asp:Label ID="lblCorreo" runat="server" Font-Bold="False" 
                                    Font-Names="Verdana" Font-Size="8pt" Text="Correo electrónico:"></asp:Label>
                            </td>
                            <td style="text-align: left">
                                <asp:Label ID="lblTelefono" runat="server" Font-Bold="False" 
                                    Font-Names="Verdana" Font-Size="8pt" Text="Telefono:"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td style="text-align: left">
                                <asp:TextBox ID="txtNombre" runat="server" Font-Size="8pt" MaxLength="100" 
                                    Width="300px" />
                                &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                                    ControlToValidate="txtNombre" Font-Bold="True" ForeColor="Red" 
                                    SetFocusOnError="True">*</asp:RequiredFieldValidator>
                            </td>
                            <td style="text-align: left">
                                <asp:TextBox ID="txtCorreo" runat="server" Font-Size="8pt" MaxLength="50" 
                                    Width="240px" TextMode="SingleLine" />
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                                    ControlToValidate="txtCorreo" Font-Bold="True" ForeColor="Red" 
                                    SetFocusOnError="True">
                              *</asp:RequiredFieldValidator>
                            </td>
                            <td style="text-align: left">
                                <asp:TextBox ID="txtTelefono" runat="server" Font-Size="8pt" MaxLength="10" 
                                    Width="120px" TextMode="SingleLine" />
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                                    ControlToValidate="txtTelefono" Font-Bold="True" ForeColor="Red" 
                                    SetFocusOnError="True">*</asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td style="text-align:left; width:320px;">
                                <asp:Label ID="lblSexo" runat="server" Font-Bold="False" 
                                    Font-Names="Verdana" Font-Size="8pt" 
                                    Text="Sexo:"></asp:Label>
                                &nbsp;</td>
                            <td style="text-align: left; width:260px;">
                                <asp:Label ID="lblEdad" runat="server" Font-Bold="False" 
                                    Font-Names="Verdana" Font-Size="8pt" Text="Edad:"></asp:Label>
                            </td>
                            <td style="text-align: left">
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td style="text-align: left">
                                <asp:DropDownList ID="ddlSexo" runat="server" Font-Names="Verdana" 
                                    Font-Size="8pt" Width="120px">
                                    <asp:ListItem>Seleccionar...</asp:ListItem>
                                    <asp:ListItem>Femenino</asp:ListItem>
                                    <asp:ListItem>Masculino</asp:ListItem>
                                </asp:DropDownList>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" 
                                    ControlToValidate="ddlSexo" Font-Bold="True" ForeColor="Red" 
                                    InitialValue="Seleccionar..." SetFocusOnError="True">*</asp:RequiredFieldValidator>
                            </td>
                            <td style="text-align: left" valign="middle">
                                <asp:TextBox ID="txtEdad" runat="server" Font-Size="8pt" MaxLength="2" 
                                    Width="40px" />
                                <asp:Label ID="lblAnios" runat="server" Font-Bold="False" 
                                    Font-Names="Verdana" Font-Size="8pt" Text="años"></asp:Label>
                            </td>
                            <td style="text-align: left">
                                &nbsp;</td>
                        </tr>
                    </table>
<%--Inicia segmento con validaciones--%>
            <asp:UpdatePanel ID="uplActualizar" runat="server">
            <ContentTemplate>
            
               <table style="border:0; width:650pt; font-size: 8pt;">
                    <tr>
                        <td style="text-align: left; width:320px;">
                            <asp:Label ID="lblInstitucion" runat="server" Font-Bold="False" 
                                Font-Names="Verdana" Font-Size="8pt" 
                                Text="Nombre de la institución:"></asp:Label>
                            &nbsp;</td>
                        <td style="text-align: left; width:260px;">
                            <asp:Label ID="lblDomicilio" runat="server" Font-Bold="False" 
                                Font-Names="Verdana" Font-Size="8pt" Text="Domicilio oficial:"></asp:Label>
                        </td>
                        <td style="text-align: left">
                            <asp:Label ID="lblMunicipio" runat="server" Font-Bold="False" 
                                Font-Names="Verdana" Font-Size="8pt" Text="Municipio:"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td style="text-align: left">
                            <asp:TextBox ID="txtInstitucion" runat="server" Font-Size="8pt" MaxLength="200" 
                                Width="300px" />
                            &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                                ControlToValidate="txtInstitucion" Font-Bold="True" ForeColor="Red" 
                                SetFocusOnError="True">*</asp:RequiredFieldValidator>
                        </td>
                        <td style="text-align: left">
                            <asp:TextBox ID="txtDomicilio" runat="server" Font-Size="8pt" MaxLength="100" 
                                Width="240px" />
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
                                ControlToValidate="txtDomicilio" Font-Bold="True" ForeColor="Red" 
                                SetFocusOnError="True"> *</asp:RequiredFieldValidator>
                        </td>
                        <td style="text-align: left">
                            <asp:TextBox ID="txtMunicipio" runat="server" Font-Size="8pt" 
                                MaxLength="50" Width="120px" />
                        </td>
                    </tr>
               </table>
               <br />
               <table style="border: 0; width: 650pt; font-size: 8pt;">
                        <tr>
                            <td colspan="2" style="text-align: left;">
                                <asp:Label ID="lblDatosProyecto" runat="server" Font-Bold="True" Font-Names="Verdana" 
                                    Font-Size="9pt" Text=" DATOS DE PROYECTO Y PARTICIPACIÓN"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td colspan="2" style="font-family: Verdana; font-weight: bold;">
                                <hr width="100%" noshade="noshade" size="0" />
                            </td>
                        </tr>
                        <tr>
                            <td style="text-align:left; width:320px;">
                                <asp:Label ID="lblProyecto" runat="server" Font-Bold="False" 
                                    Font-Names="Verdana" Font-Size="8pt" 
                                    Text="Nombre del proyecto u obra:"></asp:Label>
                                &nbsp;
                            </td>
                            <td style="text-align: left">
                                <asp:Label ID="lblArea" runat="server" Font-Bold="False" 
                                    Font-Names="Verdana" Font-Size="8pt" Text="Área de participación:"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td style="text-align: left">
                                <asp:TextBox ID="txtProyecto" runat="server" Font-Size="8pt" MaxLength="100" 
                                    Width="300px" />
                                &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" 
                                    ControlToValidate="txtProyecto" Font-Bold="True" ForeColor="Red" 
                                    SetFocusOnError="True">*</asp:RequiredFieldValidator>
                            <td style="text-align: left">
                                <asp:DropDownList ID="ddlArea" runat="server" Font-Names="Verdana" 
                                    Font-Size="8pt" Width="240px">
                                    <asp:ListItem Value="Seleccionar...">Seleccionar...</asp:ListItem>
                                    <asp:ListItem Value="A">Ciencias de la Tierra</asp:ListItem>
                                    <asp:ListItem Value="B">Biología y Química</asp:ListItem>
                                    <asp:ListItem Value="C">Medicina y Ciencias de la Salud</asp:ListItem>
                                    <asp:ListItem Value="D">Humanidades y Ciencias de la Conducta</asp:ListItem>
                                    <asp:ListItem Value="E">Ciencias Sociales</asp:ListItem>
                                    <asp:ListItem Value="F">Biotecnología y Ciencias Agropecuarias</asp:ListItem>
                                    <asp:ListItem Value="G">Ingenierías</asp:ListItem>
                                </asp:DropDownList>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" 
                                    ControlToValidate="ddlArea" Font-Bold="True" ForeColor="Red" 
                                    SetFocusOnError="True" InitialValue="Seleccionar...">*</asp:RequiredFieldValidator>
                            </td>
                        </tr>
                    </table>
                    <br />
                    <table style="border: 0; width: 650pt; font-size: 8pt;">
                        <tr>
                            <td colspan="2" style="text-align: left;">
                                <asp:Label ID="lblInfoAdicional" runat="server" Font-Bold="True" Font-Names="Verdana" 
                                    Font-Size="9pt" Text="INFORMACIÓN ADICIONAL"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td colspan="2" style="font-family: Verdana; font-weight: bold;">
                                <hr width="100%" noshade="noshade" size="0" />
                            </td>
                        </tr>
                        <tr>
                            <td colspan="2" style="text-align:left;">
                                <asp:Label ID="Label6" runat="server" Font-Bold="True" 
                                    Font-Names="Verdana" Font-Size="8pt" 
                                    
                                    Text="En caso de requerir apoyo de hospedaje, favor de llenar lo siguiente:"></asp:Label>                                
                            </td>
                        </tr>
                        <tr>
                            <td style="font-family: Verdana; text-align: left; width:320px;">                                
                                <asp:Label ID="lblNombreHuesped" runat="server" Font-Bold="False" 
                                    Font-Names="Verdana" Font-Size="8pt" 
                                    Text="Nombre completo de la persona que requiere el hospedaje:"></asp:Label>
                            </td>
                            <td style="font-family: Verdana; text-align: left;">                                
                                <asp:Label ID="lblJustificacion" runat="server" Font-Bold="False" Font-Names="Verdana" 
                                    Font-Size="8pt" Text="Justificación:"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td style="font-family: Verdana; text-align: left;">                                
                                <asp:TextBox ID="txtNombreHuesped" runat="server" Font-Size="8pt" 
                                    MaxLength="100" Width="300px" />
                            </td>
                            <td style="font-family: Verdana; text-align: left;">                                
                                <asp:TextBox ID="txtJustificacion" runat="server" Font-Size="8pt" 
                                    MaxLength="100" Width="90%" />
                            </td>
                        </tr>
                    </table>
                    <br />
                    <table style="border: 0; width: 650pt; font-size: 8pt;">
                        <tr>
                            <td style="text-align: left;">
                                <asp:Label ID="lblCondiciones" runat="server" Font-Bold="True" Font-Names="Verdana" 
                                    Font-Size="9pt" Text="CONDICIONES DE PARTICIPACIÓN"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td style="font-family: Verdana; font-weight: bold;">
                                <hr width="100%" noshade="noshade" size="0" />
                            </td>
                        </tr>
                        <tr>
                            <td style="text-align:left;">
                                <asp:Label ID="Label4" runat="server" Font-Bold="False" 
                                    Font-Names="Verdana" Font-Size="8pt" 
                                    Text="Autores del proyecto registrado en este formulario aceptan las condiciones de participación que declara el evento en cuestión donde se estipula lo siguiente:"></asp:Label>
                                <p style=" font-family:Arial; font-size:9pt;">
                                "El fraude científico y la mala conducta, no son toleradas en ningún nivel de investigación o participación. El plagio, uso o presentación de trabajos de otra persona como propios, fabricación o falsificación de datos no serán aceptados. Proyectos fraudulentos no calificarán para participar en cualquier evento afiliado independientemente de la etapa que se encuentren."
                                </p>
                            </td>
                        </tr>
                        <tr>
                            <td style="font-family: Verdana; text-align: center;">
                                <asp:Label ID="Label12" runat="server" Font-Bold="True" Font-Names="Verdana" 
                                    Font-Size="8pt"
                                    Text="Al presionar el botón Continuar ACEPTAMOS LAS CONDICIONES DE PARTICIPACIÓN."></asp:Label>
                            </td>
                        </tr>                        
                    </table>
                    
<%--            Se cierra el updatePanel --%>
            </ContentTemplate>
            </asp:UpdatePanel>                    
                    <asp:Button ID="btnContinuar" runat="server" OnClick="btnContinuar_Click" Text="Continuar"
                        Width="150px" Font-Names="Arial" Font-Size="8pt" />
                </asp:Panel>
            </div>
            <!-- REGISTRO -->
            <asp:Panel ID="pnlConfirmacion" runat="server" Visible="False">
                <asp:Label ID="lblCondiciones0" runat="server" Font-Bold="True" 
                    Font-Names="Arial" Font-Size="8pt"                                 
                    Text="Confirma que los datos sean correctos, en caso contrario, presiona Regresar para modificarlos." 
                    ForeColor="Blue"></asp:Label>
                <br />
                <br />
                <table style="border: 0; width: 650pt; font-size: 8pt;">
                    <tr>
                        <td style="text-align:left;">                            
                            <asp:Label ID="lblAdjuntar" runat="server" Font-Bold="False" 
                                Font-Names="Verdana" Font-Size="8pt" 
                                Text="Favor de adjuntar su resumen en formato PDF:"></asp:Label>
                            &nbsp;
                            </td>
                    </tr>
                    <tr>
                        <td style="text-align: left; width:100%;">
                            <asp:FileUpload ID="fuAdjuntar" runat="server" Font-Names="Verdana" 
                                Font-Size="8pt" Width="50%" />
                            <asp:Button ID="btnAdjuntar" runat="server" Font-Names="Arial" Font-Size="8pt" 
                                Text="Adjuntar" Width="150px" onclick="btnAdjuntar_Click" />
                        </td>
                    </tr>
                </table>
                <table style="border: 0; width: 600; font-size: 8pt">
                    <tr>
                        <td style="font-family: Verdana; font-weight: bold; font-size: 9pt;">
                            <asp:Label ID="lblStatusEnvio" runat="server" Font-Bold="True" 
                                Font-Names="Arial" Font-Size="8pt" ForeColor="Blue"></asp:Label>
                            <br />
                        </td>
                    </tr>                    
                    <tr>
                        <td style="text-align: center;">
                            <asp:Button ID="btnRegresar" runat="server" OnClick="btnRegresar_Click" Text="Regresar"
                                Width="150px" Font-Names="Arial" Font-Size="8pt" style="height: 22px" />
                            &nbsp;<asp:Button ID="btnEnviar" runat="server" Text="Enviar" Width="150px" OnClick="btnEnviar_Click"
                                Font-Names="Arial" Font-Size="8pt" Enabled="False" />
                                <br />
                        </td>
                    </tr>
                </table>
            </asp:Panel>
            <br />
            <asp:Button ID="btnCancelar" runat="server" Text="Cancelar" CausesValidation="False"
                Width="150px" PostBackUrl="http://www.cibnor.mx" Font-Names="Arial" Font-Size="8pt" />
            <br />
            <br />
            <table style="width: 650pt; font-family: Verdana; font-size: 11pt;">
                <tr>
                    <td colspan="2" style="font-size: 8pt; text-align: center;">
                        <asp:Label ID="Label11" runat="server" Font-Size="7pt" Text="Instituto Politécnico Nacional 195, Playa Palo de Santa Rita Sur; La Paz, B.C.S. México; C.P. 23096, Tel:(52) (612) 123-8484 Fax:(52) (612) 125-3625"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td style="font-size: 8pt; text-align: right; background-color: #223D63;">
                        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="http://www.cibnor.gob.mx/component/content/article/472"
                            Font-Bold="True" Font-Names="Verdana" Font-Size="8pt" ForeColor="#CCFFFF" 
                            Target="_blank">Política de Privacidad</asp:HyperLink>
                        &nbsp;&nbsp;&nbsp;
                    </td>
                    <td width="32%" height="5" bgcolor="#D8ECF3" id="footblk" align="center">
                    </td>
                </tr>
            </table>
        </center>
    </div>
    <asp:Label ID="lblHiddenClave" runat="server" Font-Names="Arial" 
        Font-Size="8pt" Visible="False"></asp:Label>
    <asp:Label ID="lblHiddenMensaje" runat="server" Font-Names="Arial" 
        Font-Size="8pt" Visible="False"></asp:Label>
    </form>
</body>
</html>
