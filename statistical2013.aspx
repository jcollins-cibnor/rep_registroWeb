﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="statistical2013.aspx.cs" Inherits="statistical2013" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>CIBNOR - Registro en Línea</title>
    
    <meta name="msapplication-window" content="width=800;height=600"/>
    <link rel="icon" type="image/x-icon" href="images/icon_cib.ico" />
</head>
<body>
    <form id="form1" runat="server">    
    <asp:ScriptManager ID="scriptmanager1" EnablePartialRendering="true" runat="server" />
        <div align="center">    
            
                <table style="font-family: Verdana; width:500pt;">
                    <tr>
                        <td style="width:160px; text-align: center;">
                            <asp:Image ID="Image1" runat="server" 
                                Height="70px" ImageUrl="~/Images/logo_labgen.png" /></td>
                        <td style="width:480px; text-align:center; font-size: 10pt; font-family: Arial; font-weight: bold;">
                            <asp:Label ID="lblTituloEvento" runat="server" Font-Bold="True" 
                                Font-Names="Verdana" Font-Size="10pt" 
                                
                                
                                Text="Introduction to Statistical Analysis for Landscape Genetics"></asp:Label>
                            <br />
                            <br />
                            <asp:Label ID="lblRegistroEnLinea" runat="server" Font-Bold="False" Font-Names="Verdana" 
                                Font-Size="10pt" Text="Registro en Línea"></asp:Label>
                        </td>
                        <td style="width:160px; text-align: center;">
                            <asp:Image ID="Image2" runat="server" Height="50px" 
                                ImageUrl="~/images/ciboficial.gif" />
                        </td>
                    </tr>
                </table>
                <br />

            <asp:ValidationSummary ID="valSum" runat="server" DisplayMode="SingleParagraph" 
                HeaderText="* Campos requeridos." Font-Names="Verdana" Font-Size="8pt" 
                ForeColor="Red" Width="80%" />

            <asp:Panel ID="pnlDatos" runat="server"> <%--PANEL DE DATOS--%>

            <table style="border:0; width:500pt;  font-size: 8pt;">
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
                        <asp:Label ID="lblTelefono" runat="server" Font-Bold="False" 
                            Font-Names="Verdana" Font-Size="8pt" Text="Teléfono:"></asp:Label>
                    </td>
                    <td style="text-align: left">
                        <asp:TextBox ID="txtTelefono" runat="server" Font-Size="8pt" 
                            MaxLength="50" />
                    </td>
                    <td>
                        </td>
                </tr>
                <tr>
                    <td style="text-align:right; font-family: Verdana">
                        <asp:Label ID="lblInstitucion" runat="server" Font-Bold="False" 
                            Font-Names="Verdana" Font-Size="8pt" Text="Institución:"></asp:Label>
                    </td>
                    <td style="text-align: left">
                        <asp:TextBox ID="txtInstitucion" runat="server" MaxLength="200" Font-Size="8pt" 
                            Width="240px" />
                    </td>
                    <td> &nbsp;</td>
                </tr>
                <tr>
                    <!-- renglon en blanco -->
                    <td colspan="3">
                        &nbsp;</td>
                </tr>
            </table>
            <br />
        <asp:Panel ID="pnlTipoRegistro" runat="server">
            <table style="border:0; width:500pt; font-size: 8pt;">
                <tr>  
                    <td colspan="2" style="font-family: Verdana; text-align: center; font-size: 9pt; font-weight: bold;"> 
                        <asp:Label ID="lblInformacionAdicional" runat="server" Font-Bold="True" 
                            Font-Names="Verdana" Font-Size="9pt" Text="INFORMACION ADICIONAL"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <!-- renglon en blanco -->
                    <td colspan="2" style="font-family: Verdana; font-weight: bold; width: 600pt;">
                        <hr noshade="noshade" size="0" width="100%" />
                    </td>
                </tr>
                <tr>
                    <td style="font-family: Verdana; text-align: center; width: 25%;" valign="middle">
                        &nbsp;</td>
                    <td style="text-align: center; font-family: Verdana; ">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td style="font-family: Verdana; width: 25%; text-align: right;" 
                        valign="top">
                        <asp:Label ID="lblTema" runat="server" Font-Bold="False" Font-Names="Verdana" 
                            Font-Size="8pt" Text="Tema de investigación o tesis:"></asp:Label>
                    </td>
                    <td style="text-align: left; font-family: Verdana; ">
                        <asp:TextBox ID="txtTema" runat="server" Font-Size="8pt" MaxLength="500" 
                            Width="420px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
                            ControlToValidate="txtTema" Font-Bold="True" ForeColor="Red" 
                            SetFocusOnError="True">*</asp:RequiredFieldValidator>
                        <br />
                        <asp:RegularExpressionValidator ID="valRegExPrograma" runat="server" 
                            ControlToValidate="txtTema" Font-Names="Arial" Font-Size="8pt" 
                            ForeColor="Red" SetFocusOnError="True" 
                            ValidationExpression="[\w\s\d,;.:-_+áéíóúÁÉÍÓÚ]*">No introducir caracteres especiales (&quot; / &#39; ? etc.).</asp:RegularExpressionValidator>
                    </td>
                </tr>                
                <tr>
                    <td style="font-family: Verdana; width: 25%; text-align: right;" 
                        valign="top">
                        <asp:Label ID="lblNivel" runat="server" Font-Bold="False" Font-Names="Verdana" 
                            Font-Size="8pt" Text="Nivel:"></asp:Label>
                    </td>
                    <td style="text-align: left; font-family: Verdana; ">
                        <asp:DropDownList ID="ddlNivel" runat="server" Width="180px">
                            <asp:ListItem>Maestria</asp:ListItem>
                            <asp:ListItem>Doctorado</asp:ListItem>
                            <asp:ListItem>Investigador</asp:ListItem>
                        </asp:DropDownList>
                        <br />
                    </td>
                </tr>                
                <tr>
                    <td style="text-align:right; font-family: Verdana; width: 25%;" valign="top">
                        <asp:Label ID="lblAsesores" runat="server" Font-Bold="False" 
                            Font-Names="Verdana" Font-Size="8pt" Text="Asesor(es) si es el caso:"></asp:Label>
                    </td>
                    <td style="text-align: left; font-family: Verdana; ">
                        <asp:TextBox ID="txtAsesores" runat="server" Font-Size="8pt" MaxLength="500" 
                            Width="420px"></asp:TextBox>
                        <br />
                        <asp:RegularExpressionValidator ID="valRegExPrograma0" runat="server" 
                            ControlToValidate="txtAsesores" Font-Names="Arial" Font-Size="8pt" 
                            ForeColor="Red" SetFocusOnError="True" 
                            ValidationExpression="[\w\s\d,;.:-_+áéíóúÁÉÍÓÚ]*">No introducir caracteres especiales (&quot; / &#39; ? etc.).</asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td style="font-family: Verdana; width: 25%; text-align: right;" 
                        valign="top">
                        <asp:Label ID="lblConocimientoR" runat="server" Font-Bold="False" Font-Names="Verdana" 
                            Font-Size="8pt" Text="Conocimiento de R:"></asp:Label>
                    </td>
                    <td style="text-align: left; font-family: Verdana; ">
                        <asp:DropDownList ID="ddlConocimientoR" runat="server" Width="180px">
                            <asp:ListItem>Basico</asp:ListItem>
                            <asp:ListItem>Intermedio</asp:ListItem>
                            <asp:ListItem>Avanzado</asp:ListItem>
                        </asp:DropDownList>
                        <br />
                    </td>
                </tr>                
                <tr>
                    <td style="font-family: Verdana; width: 25%; text-align: right;" 
                        valign="top">
                        <asp:Label ID="lblConocimientoArcGIS" runat="server" Font-Bold="False" Font-Names="Verdana" 
                            Font-Size="8pt" Text="Conocimiento de Arc GIS:"></asp:Label>
                    </td>
                    <td style="text-align: left; font-family: Verdana; ">
                        <asp:DropDownList ID="ddlConocimientoArcGIS" runat="server" Width="180px">
                            <asp:ListItem>Basico</asp:ListItem>
                            <asp:ListItem>Intermedio</asp:ListItem>
                            <asp:ListItem>Avanzado</asp:ListItem>
                        </asp:DropDownList>
                        <br />
                    </td>
                </tr>                
                <tr>
                    <!-- renglon en blanco -->
                    <td colspan="3">
                        &nbsp;</td>
                </tr>
            </table>
            <%--**********--%>
                <table style="border:0; width:500pt; font-size: 8pt;">
                    <tr>
                        <td style="text-align:left; font-family: Verdana;">
                            <asp:Label ID="lblComentarios" runat="server" Font-Bold="False" 
                                Font-Names="Verdana" Font-Size="8pt" Text="Comentarios:"></asp:Label>
                                <br />
                                <asp:TextBox ID="txtComentarios" runat="server" MaxLength="1000" 
                                TextMode="MultiLine" Width="100%" />
                        </td>
                    </tr>
                </table>
                <br />
                <table style="border:0; width:500pt; font-size: 8pt;">
                    <tr>
                        <td style="font-family: Verdana; font-weight: bold; font-size: 9pt; text-align: center;">
                            <asp:Label ID="lblFacturacion" runat="server" Font-Bold="True" 
                                Font-Names="Verdana" Font-Size="9pt" Text="FACTURACIÓN"></asp:Label>
                        </td>
                    </tr>                
                    <tr>
                        <!-- renglon en blanco -->
                        <td style="font-family: Verdana; font-weight: bold;">
                            <hr noshade="noshade" size="0" width="100%" />
                        </td>
                    </tr>
                </table>

            <asp:UpdatePanel ID="uplFacturacion" runat="server">
            <ContentTemplate>
            
                <table style="border:0; width:500pt; font-size: 8pt;">
                    <tr>
                        <td style="text-align:right; font-family: Verdana; width: 25%;">
                            <asp:Label ID="lblFactura" runat="server" Font-Bold="False" Font-Names="Verdana" 
                                Font-Size="8pt" Text="Requiere factura:"></asp:Label>
                        </td>
                        <td style="text-align: left; font-family: Verdana; ">
                            <asp:RadioButtonList ID="rblFactura" runat="server" AutoPostBack="True" 
                                Height="26px" onselectedindexchanged="rblFactura_SelectedIndexChanged" 
                                RepeatDirection="Horizontal" Width="120pt">
                                <asp:ListItem Selected="True">No</asp:ListItem>
                                <asp:ListItem>Si</asp:ListItem>
                            </asp:RadioButtonList>
                        </td>
                    </tr>
                    <tr>
                        <!-- renglon en blanco -->
                        <td colspan="2">
                            <asp:Panel ID="pnlFacturacion" runat="server" BorderColor="#999999" 
                                BorderStyle="Solid" BorderWidth="1pt" Visible="False">
                                <table style="border:0; width:100%; font-size: 8pt;">
                                    <tr>
                                        <td style="font-size: 9pt; font-family: Verdana; font-weight: bold; text-align:right; width: 25%;">
                                            <asp:Label ID="lblFacturaNombre" runat="server" Font-Bold="False" Font-Names="Verdana" 
                                                Font-Size="8pt" Text="Nombre:"></asp:Label>
                                        </td>
                                        <td 
                                            
                                            style="font-size: 9pt; font-family: Verdana; font-weight: bold; text-align:left;">
                                            <asp:TextBox ID="txtFacturaNombre" runat="server" Font-Names="Verdana" 
                                                Font-Size="8pt" MaxLength="200" Width="90%">--</asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                                                ControlToValidate="txtFacturaNombre" Font-Bold="True" Font-Names="Arial" 
                                                Font-Size="9pt" SetFocusOnError="True" ForeColor="Red">*</asp:RequiredFieldValidator>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td style="font-size: 9pt; font-family: Verdana; font-weight: bold; text-align:right;">
                                            <asp:Label ID="lblFacturaRFC" runat="server" Font-Bold="False" Font-Names="Verdana" 
                                                Font-Size="8pt" Text="RFC:"></asp:Label>
                                        </td>
                                        <td 
                                            
                                            style="font-size: 9pt; font-family: Verdana; font-weight: bold; text-align:left;">
                                            <asp:TextBox ID="txtFacturaRFC" runat="server" Font-Names="Verdana" 
                                                Font-Size="8pt" MaxLength="13" Width="90%">--</asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                                                ControlToValidate="txtFacturaRFC" Font-Bold="True" Font-Names="Arial" 
                                                Font-Size="9pt" SetFocusOnError="True" ForeColor="Red">*</asp:RequiredFieldValidator>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td style="font-size: 9pt; font-family: Verdana; font-weight: bold; text-align:right;">
                                            <asp:Label ID="lblFacturaDireccion" runat="server" Font-Bold="False" Font-Names="Verdana" 
                                                Font-Size="8pt" Text="Dirección:"></asp:Label>
                                        </td>
                                        <td 
                                            
                                            style="font-size: 9pt; font-family: Verdana; font-weight: bold; text-align:left;">
                                            <asp:TextBox ID="txtFacturaDireccion" runat="server" Font-Names="Verdana" 
                                                Font-Size="8pt" MaxLength="500" TextMode="MultiLine" Width="90%">--</asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                                                ControlToValidate="txtFacturaDireccion" Font-Bold="True" Font-Names="Arial" 
                                                Font-Size="9pt" SetFocusOnError="True" ForeColor="Red">*</asp:RequiredFieldValidator>
                                        </td>
                                    </tr>
                                </table>
                            </asp:Panel>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2">
                            &nbsp;</td>
                    </tr>
               </table>
<%--            Se cierra el updatePanel de Facturacion--%>
            </ContentTemplate>
            </asp:UpdatePanel>            

<%--            Se cierra el Panel de Tipo de Registro--%>
        </asp:Panel>

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
            <!--  -->
            <!--  -->
            <table style="border:0; width:500pt;  font-size: 8pt;">
                <tr>
                    <td style="text-align: center">
                        <asp:Button ID="btnRegresar" runat="server" onclick="btnRegresar_Click" 
                            Text="Regresar" Width="150px" Font-Names="Arial" Font-Size="8pt" />
                        &nbsp;<asp:Button ID="btnEnviar" runat="server"  
                            Text="Enviar" Width="150px" onclick="btnEnviar_Click" Font-Names="Arial" 
                            Font-Size="8pt" />
                            <br />

                        <asp:Label ID="lblStatusEnvio" runat="server" Font-Bold="True" 
                            Font-Names="Verdana" Font-Size="8pt" ForeColor="Blue" Visible="False"></asp:Label>

                        <asp:SqlDataSource ID="SqlDSstatistical2013" runat="server" 
                            ConnectionString="<%$ ConnectionStrings:REGWEBConnectionString %>" 
                            DeleteCommand="DELETE FROM [Statistical2013] WHERE [id] = @original_id" 
                            InsertCommand="INSERT INTO [Statistical2013] ([nombres], [apellidos], [correo], [telefono], [institucion], [tema], [nivel], [asesores], [conocimientor], [conocimientoarcgis], [comentarios], [factura], [facturaNombre], [facturaRFC], [facturaDireccion]) VALUES (@nombres, @apellidos, @correo, @telefono, @institucion, @tema, @nivel, @asesores, @conocimientor, @conocimientoarcgis, @comentarios, @factura, @facturaNombre, @facturaRFC, @facturaDireccion)" 
                            SelectCommand="SELECT * FROM [Statistical2013]" 
                            
                            UpdateCommand="UPDATE [Statistical2013] SET [nombres] = @nombres, [apellidos] = @apellidos, [correo] = @correo, [telefono] = @telefono, [institucion] = @institucion, [tema] = @tema, [nivel] = @nivel, [asesores] = @asesores, [conocimientor] = @conocimientor, [conocimientoarcgis] = @conocimientoarcgis, [comentarios] = @comentarios, [factura] = @factura, [facturaNombre] = @facturaNombre, [facturaRFC] = @facturaRFC, [facturaDireccion] = @facturaDireccion WHERE [id] = @original_id" 
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
                                <asp:Parameter Name="tema" Type="String" />
                                <asp:Parameter Name="nivel" Type="String" />
                                <asp:Parameter Name="asesores" Type="String" />
                                <asp:Parameter Name="conocimientor" Type="String" />
                                <asp:Parameter Name="conocimientoarcgis" Type="String" />
                                <asp:Parameter Name="comentarios" Type="String" />
                                <asp:Parameter Name="factura" Type="String" />
                                <asp:Parameter Name="facturaNombre" Type="String" />
                                <asp:Parameter Name="facturaRFC" Type="String" />
                                <asp:Parameter Name="facturaDireccion" Type="String" />
                                <asp:Parameter Name="original_id" Type="Int32" />
                            </UpdateParameters>
                            <InsertParameters>
                                <asp:Parameter Name="nombres" Type="String" />
                                <asp:Parameter Name="apellidos" Type="String" />
                                <asp:Parameter Name="correo" Type="String" />
                                <asp:Parameter Name="telefono" Type="String" />
                                <asp:Parameter Name="institucion" Type="String" />
                                <asp:Parameter Name="tema" Type="String" />
                                <asp:Parameter Name="nivel" Type="String" />
                                <asp:Parameter Name="asesores" Type="String" />
                                <asp:Parameter Name="conocimientor" Type="String" />
                                <asp:Parameter Name="conocimientoarcgis" Type="String" />
                                <asp:Parameter Name="comentarios" Type="String" />
                                <asp:Parameter Name="factura" Type="String" />
                                <asp:Parameter Name="facturaNombre" Type="String" />
                                <asp:Parameter Name="facturaRFC" Type="String" />
                                <asp:Parameter Name="facturaDireccion" Type="String" />
                            </InsertParameters>
                        </asp:SqlDataSource>
                        <asp:Label ID="lbl1" runat="server"></asp:Label>
                    </td>
                </tr>
            </table>
        </asp:Panel>
        
        <center>
        
            <br />
            <asp:Button ID="btnCancelar" runat="server" Text="Cancelar" 
                CausesValidation="False" Width="150px"            
                PostBackUrl="http://www.cibnor.gob.mx/inicio-eventos" 
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
    </div>
   
    </form>
</body>
</html>
