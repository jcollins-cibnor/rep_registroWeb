﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="filogeografia2014.aspx.cs" Inherits="filogeografia2014" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>CIBNOR - Registro en Línea</title>
</head>
<body>
    <form id="form1" runat="server">
    <asp:ScriptManager ID="scriptmanager1" EnablePartialRendering="true" runat="server" />
    <div>
        <center>
            <div align="center">
                <table style="font-family: Verdana; font-size: 11pt; width: 500pt;">
                    <tr>
                        <td style="width: 160px;">
                            <asp:Image ID="Image1" runat="server" ImageUrl="~/Images/ciboficial.gif" 
                                Height="50px" />
                        </td>
                        <td style="width: 480px; text-align: center; font-size: 14pt; font-family: Arial;
                            font-weight: bold;">
                            <asp:Label ID="lblTitulo" runat="server" Font-Bold="True" Font-Names="Verdana" 
                                Font-Size="10pt" 
                                Text="Filogeografía, Teoría y Práctica"></asp:Label>
                        </td>
                        <td style="width: 160px; text-align: center; margin-left: 40px;">
                            <asp:Image ID="Image2" runat="server" ImageUrl="~/Images/logo_labgen.png" 
                                Height="50px" />
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
                    <asp:ValidationSummary ID="valSum" runat="server" DisplayMode="SingleParagraph" HeaderText="Los campos marcados con * son requeridos:"
                        Font-Names="Verdana" Font-Size="8pt" ForeColor="Red" />
                    <table style="border: 0; width: 500pt; font-size: 8pt;">
                        <tr>
                            <td colspan="3" style="font-size: 9pt; font-family: Verdana; font-weight: bold; text-align: center;">
                                DATOS PERSONALES
                            </td>
                        </tr>
                        <tr>
                            <td colspan="3" style="font-family: Verdana; font-weight: bold;">
                                <hr width="100%" noshade="noshade" size="0" />
                            </td>
                        </tr>
                        <tr>
                            <td style="text-align: right; font-family: Verdana">
                                <asp:Label ID="lblNombres" runat="server" Font-Bold="False" 
                                    Font-Names="Verdana" Font-Size="8pt" Text="Nombre(s):"></asp:Label>
&nbsp;</td>
                            <td style="text-align: left">
                                <asp:TextBox ID="txtNombres" runat="server" Font-Size="8pt" Width="240px" MaxLength="50" />
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtNombres"
                                    SetFocusOnError="True" Font-Bold="True" ForeColor="Red">*</asp:RequiredFieldValidator>
                            </td>
                            <td>
                            </td>
                        </tr>
                        <tr>
                            <td style="text-align: right; font-family: Verdana">
                                <asp:Label ID="lblApellidos" runat="server" Font-Bold="False" 
                                    Font-Names="Verdana" Font-Size="8pt" Text="Apellido(s):"></asp:Label>
                                &nbsp;</td>
                            <td style="text-align: left">
                                <asp:TextBox ID="txtApellidos" runat="server" Width="240px" Font-Size="8pt" MaxLength="50" />
                            </td>
                            <td>
                            </td>
                        </tr>
                        <tr>
                            <td style="text-align: right; font-family: Verdana">
                                <asp:Label ID="lblCorreo" runat="server" Font-Bold="False" Font-Names="Verdana" 
                                    Font-Size="8pt" Text="Correo electrónico:"></asp:Label>
&nbsp;</td>
                            <td style="text-align: left">
                                <asp:TextBox ID="txtCorreo" runat="server" MaxLength="50" Width="240px" Font-Size="8pt" />
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtCorreo"
                                    SetFocusOnError="True" Font-Bold="True" ForeColor="Red">
                              *</asp:RequiredFieldValidator>
                            </td>
                            <td style="text-align: left">
                                <asp:RegularExpressionValidator ID="valRegExCorreo" runat="server" ControlToValidate="txtCorreo"
                                    Display="Static" Font-Names="Arial" Font-Size="8pt" 
                                    ValidationExpression="^([\w-\.]+)@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.)|(([\w-]+\.)+))([a-zA-Z]{2,4}|[0-9]{1,3})(\]?)$" 
                                    ForeColor="Red">Formato: correo@servidor.dominio
                                </asp:RegularExpressionValidator>
                            </td>
                        </tr>
                        <!-- renglon en blanco -->
                        <tr>
                            <td style="text-align: right; font-family: Verdana">
                                <asp:Label ID="lblCorreoConfirma" runat="server" Font-Bold="False" 
                                    Font-Names="Verdana" Font-Size="8pt" Text="Confirmar correo electrónico:"></asp:Label>
&nbsp;</td>
                            <td style="text-align: left">
                                <asp:TextBox ID="txtCorreoConfirma" runat="server" Font-Size="8pt" MaxLength="50"
                                    Width="240px" />
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtCorreoConfirma"
                                    Font-Bold="True" SetFocusOnError="True" ForeColor="Red">
                              *</asp:RequiredFieldValidator>
                            </td>
                            <td style="text-align: left">
                                <asp:CompareValidator ID="CompareValidator3" runat="server" ControlToCompare="txtCorreo"
                                    ControlToValidate="txtCorreoConfirma" Font-Names="Arial" Font-Size="8pt" 
                                    SetFocusOnError="True" ForeColor="Red">Confirmar correo electrónico.</asp:CompareValidator>
                            </td>
                        </tr>
                        <tr>
                            <td style="text-align: right; font-family: Verdana">
                                <asp:Label ID="lblInstitucion" runat="server" Font-Bold="False" 
                                    Font-Names="Verdana" Font-Size="8pt" Text="Institución:"></asp:Label>
                                &nbsp;</td>
                            <td style="text-align: left">
                                <asp:TextBox ID="txtInstitucion" runat="server" Font-Size="8pt" Width="240px" MaxLength="200" />
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                                    ControlToValidate="txtInstitucion" Font-Bold="True" ForeColor="Red" 
                                    SetFocusOnError="True">*</asp:RequiredFieldValidator>
                            </td>
                            <td>
                                &nbsp;
                            </td>
                        </tr>
                        <tr>
                            <!-- renglon en blanco -->
                            <td colspan="3">
                                &nbsp;
                            </td>
                        </tr>
                    </table>
                    <table style="border: 0; width: 500pt; font-size: 8pt;">
                        <tr>
                            <td style="font-family: Verdana; text-align: right; width: 25%;">
                                <asp:Label ID="lblComentarios" runat="server" Font-Bold="False" 
                                    Font-Names="Verdana" Font-Size="8pt"
                                    Text="Comentarios:"></asp:Label>
                            </td>
                            <td style="text-align: left; font-family: Verdana;">
                                <asp:TextBox ID="txtComentarios" runat="server" MaxLength="5000" TextMode="MultiLine"
                                    Width="90%" />
                            </td>
                        </tr>
                        <tr>
                            <!-- renglon en blanco -->
                            <td colspan="2">
                                &nbsp;
                            </td>
                        </tr>
                    </table>
                    <asp:Button ID="btnContinuar" runat="server" OnClick="btnContinuar_Click" Text="Continuar"
                        Width="150px" Font-Names="Arial" Font-Size="8pt" />
                    <br />
                </asp:Panel>
            </div>
            <!-- REGISTRO -->
            <asp:Panel ID="pnlConfirmacion" runat="server" Visible="False">
                <table style="border: 0; width: 600; font-size: 8pt">
                    <tr>
                        <td colspan="3" style="font-family: Verdana; font-weight: bold; font-size: 9pt;">
                            CONFIRMACIÓN DE DATOS<br />
                        </td>
                    </tr>
                    <tr>
                        <td style="text-align: left;" colspan="3">
                            &nbsp;
                        </td>
                    </tr>
                    <tr>
                        <td style="text-align: right; font-family: Verdana">
                            &nbsp;
                        </td>
                        <td style="text-align: left">
                            <asp:Label ID="lblConfirmacion" runat="server" Font-Names="Consolas" Font-Size="8pt"
                                Text="Label"></asp:Label>
                        </td>
                        <td style="text-align: left">
                            &nbsp;
                        </td>
                    </tr>
                    <!-- renglon en blanco -->
                    <tr>
                        <td colspan="3" style="text-align: left">
                            &nbsp;
                        </td>
                    </tr>
                    <tr>
                        <td colspan="3" style="text-align: center;">
                            <asp:Button ID="btnRegresar" runat="server" OnClick="btnRegresar_Click" Text="Regresar"
                                Width="150px" Font-Names="Arial" Font-Size="8pt" />
                            &nbsp;<asp:Button ID="btnEnviar" runat="server" Text="Enviar" Width="150px" OnClick="btnEnviar_Click"
                                Font-Names="Arial" Font-Size="8pt" />
                                <br />
                            <asp:Label ID="lblStatusEnvio" runat="server" Font-Bold="True" 
                                Font-Names="Verdana" Font-Size="8pt" ForeColor="Blue"></asp:Label>
                            <asp:SqlDataSource ID="SqlDSregistro" runat="server" ConnectionString="<%$ ConnectionStrings:REGWEBConnectionString %>"
                                DeleteCommand="DELETE FROM [filogeografia2014] WHERE [id] = @original_id" InsertCommand="INSERT INTO [filogeografia2014] ([nombres], [apellidos], [correo], [institucion], [comentarios], [fecharegistro]) VALUES (@nombres, @apellidos, @correo, @institucion, @comentarios, @fecharegistro)"
                                SelectCommand="SELECT * FROM [filogeografia2014]" UpdateCommand="UPDATE [filogeografia2014] SET [nombres] = @nombres, [apellidos] = @apellidos, [correo] = @correo, [institucion] = @institucion, [comentarios] = @comentarios, [fecharegistro] = @fecharegistro WHERE [id] = @original_id"
                                OldValuesParameterFormatString="original_{0}">
                                <DeleteParameters>
                                    <asp:Parameter Name="original_id" Type="Int32" />
                                </DeleteParameters>
                                <UpdateParameters>
                                    <asp:Parameter Name="nombres" Type="String" />
                                    <asp:Parameter Name="apellidos" Type="String" />
                                    <asp:Parameter Name="correo" Type="String" />
                                    <asp:Parameter Name="institucion" Type="String" />
                                    <asp:Parameter Name="comentarios" Type="String" />
                                    <asp:Parameter Name="fecharegistro" Type="DateTime" />
                                    <asp:Parameter Name="original_id" Type="Int32" />
                                </UpdateParameters>
                                <InsertParameters>
                                    <asp:Parameter Name="nombres" Type="String" />
                                    <asp:Parameter Name="apellidos" Type="String" />
                                    <asp:Parameter Name="correo" Type="String" />
                                    <asp:Parameter Name="institucion" Type="String" />
                                    <asp:Parameter Name="comentarios" Type="String" />
                                    <asp:Parameter Name="fecharegistro" Type="DateTime" />
                                </InsertParameters>
                            </asp:SqlDataSource>
                        </td>
                    </tr>
                </table>
            </asp:Panel>
            <br />
            <asp:Button ID="btnCancelar" runat="server" Text="Cancelar" CausesValidation="False"
                Width="150px" PostBackUrl="http://www.cibnor.mx" Font-Names="Arial" Font-Size="8pt" />
            <br />
            <br />
            <table style="width: 800px; font-family: Verdana; font-size: 11pt;">
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
    </form>
</body>
</html>
