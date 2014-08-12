<%@ Page Language="C#" AutoEventWireup="true" CodeFile="smcs-consulta.aspx.cs" Inherits="smcs_consulta" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>CIBNOR - Registro en Línea</title>
    
    <meta name="msapplication-window" content="width=800;height=600"/>
    <link rel="icon" type="image/x-icon" href="images/icon_cib.ico" />
    <script type="text/javascript" language="JavaScript">
        function abrirVentana(popup) {
            open(popup, null, "Height=600, Width=720, Top=50, Left=100, scrollbars=yes, toolbar=no, location=no, directories=no, menubar=no, status=no");
            //            open(popup, "miVentana", "toolbar=no,directories=no,menubar=no,status=no"); AQUI ME QUEDE FALTA PULIR UN POCO MAS...
        } 
    </script> 

</head>
<body>
    <form id="form1" runat="server">    
    <asp:ScriptManager ID="scriptmanager1" EnablePartialRendering="true" runat="server" />
        <div align="center">    
            <table style="font-family: Verdana; width:500pt;">
                <tr>
                    <td style="width:160px; text-align: center;">
                        <asp:Image ID="Image1" runat="server" 
                            Height="70px" ImageUrl="~/Images/logo_SMCS.png" /></td>
                    <td style="width:480px; text-align:center; font-size: 10pt; font-family: Arial; font-weight: bold;">
                        <asp:Label ID="lblTituloEvento" runat="server" Font-Bold="True" 
                            Font-Names="Verdana" Font-Size="10pt" 
                                
                                
                            Text="Congreso de la Sociedad Mexicana de la Ciencia del Suelo"></asp:Label>
                        <br />
                        <br />
                        <asp:Label ID="lblRegistroEnLinea" runat="server" Font-Bold="False" Font-Names="Verdana" 
                            Font-Size="10pt" Text="Consulta de Registros"></asp:Label>
                    </td>
                    <td style="width:160px; text-align: center;">
                        <asp:Image ID="Image2" runat="server" Height="50px" 
                            ImageUrl="~/images/ciboficial.gif" />
                    </td>
                </tr>
            </table>
            <br />

            <asp:Panel ID="pnlDatos" runat="server"> <%--PANEL DE DATOS--%>

            <asp:UpdatePanel ID="UpnlGeneral" runat="server">
            <ContentTemplate>
                
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
                    </td>
                    <td style="text-align: left"> 
                        &nbsp;</td>
                </tr>
                <tr>
                    <td style="text-align:right; font-family: Verdana">
                        <asp:Label ID="lblCorreoConfirma" runat="server" Font-Bold="False" 
                            Font-Names="Verdana" Font-Size="8pt" Text="Confirmar correo electrónico:"></asp:Label>
                    </td>
                    <td style="text-align:left">
                        <asp:TextBox ID="txtCorreoConfirma" runat="server" 
                            MaxLength="50" Width="240px" Font-Size="8pt" ></asp:TextBox>
                    </td>
                    <td style="text-align:left">
                        &nbsp;</td>
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
                    <td style="text-align:right; font-family: Verdana" valign="top">
                        <asp:Label ID="lblTipoRegistro" runat="server" Font-Bold="False" 
                            Font-Names="Verdana" Font-Size="8pt" Text="Tipo de registro:"></asp:Label>
                    </td>
                    <td style="text-align: left">
                        &nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
            </table>
            <table style="border:0; width:500pt; font-size: 8pt;">
                <tr>  
                    <td colspan="2" style="font-family: Verdana; text-align: center; font-size: 9pt; font-weight: bold;"> 
                        <asp:Label ID="lblInformacionAdicional" runat="server" Font-Bold="True" 
                            Font-Names="Verdana" Font-Size="9pt" Text="DATOS DEL TRABAJO A REGISTRAR"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <!-- renglon en blanco -->
                    <td colspan="2" style="font-family: Verdana; font-weight: bold; width: 600pt;">
                        <hr noshade="noshade" size="0" width="100%" />
                    </td>
                </tr>
                <tr>
                    <td style="font-family: Verdana; width: 25%; text-align: right;" 
                        valign="top">
                        <asp:Label ID="lblTitulo" runat="server" Font-Bold="False" Font-Names="Verdana" 
                            Font-Size="8pt" Text="Titulo del trabajo:"></asp:Label>
                    </td>
                    <td style="text-align: left; font-family: Verdana; ">
                        <asp:TextBox ID="txtTitulo" runat="server" Font-Size="8pt" MaxLength="500" 
                            Width="420px"></asp:TextBox>
                        <br />
                    </td>
                </tr>                
                <tr>
                    <td style="text-align:right; font-family: Verdana; width: 25%;" valign="top">
                        <asp:Label ID="lblAutores" runat="server" Font-Bold="False" 
                            Font-Names="Verdana" Font-Size="8pt" Text="Autor(es):"></asp:Label>
                    </td>
                    <td style="text-align: left; font-family: Verdana; ">
                        <asp:TextBox ID="txtAutores" runat="server" Font-Size="8pt" MaxLength="500" 
                            Width="420px"></asp:TextBox>
                        <br />
                    </td>
                </tr>
            </table>
            <%--**********--%>
                <table style="border:0; width:500pt; font-size: 8pt;">
                    <tr>
                        <td style="text-align:left; font-family: Verdana; text-indent: 70px;">
                            <asp:Label ID="Label3" runat="server" Font-Bold="True" Font-Names="Verdana" 
                                Font-Size="8pt" Text="Modalidad de presentación:"></asp:Label>
                        </td>
                    </tr>
                    <tr>  
                        <td style="text-align:left; text-indent:70px; font-family: Verdana;">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td style="text-align:left; text-indent:70px; font-family: Verdana;">
                            <asp:Label ID="lblSimposiums" runat="server" Font-Bold="True" 
                                Font-Names="Verdana" Font-Size="8pt" 
                                Text="Sesión para presentar su trabajo (División o Simposio)"></asp:Label>
                            <br />
                        </td>
                    </tr>
                    <tr>
                        <td style="text-align:left; text-indent:105px; font-family: Verdana;" 
                            valign="top">
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

                <table style="border:0; width:500pt; font-size: 8pt;">
                    <tr>
                        <td style="text-align:right; font-family: Verdana; width: 25%;">
                            <asp:Label ID="lblFactura" runat="server" Font-Bold="False" Font-Names="Verdana" 
                                Font-Size="8pt" Text="Requiere factura:"></asp:Label>
                        </td>
                        <td style="text-align: left; font-family: Verdana; ">
                            &nbsp;</td>
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
<%--            Se cierra el updatePanel General--%>
            </ContentTemplate>
            </asp:UpdatePanel>
                
            <asp:Button ID="btnContinuar" runat="server" 
            Text="Continuar" Width="150px" 
            Font-Names="Arial" Font-Size="8pt" style="height: 22px" />
                
        </asp:Panel>
        
<!-- CONFIRMACION DE REGISTRO -->
        <asp:Panel ID="pnlConfirmacion" runat="server"> 
            <table style="border:0; width:500pt;  font-size: 8pt;">
                <tr>
                    <td style="text-align:left;" colspan="3">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td style="text-align:left; width:50pt;">
                        &nbsp;</td>
                    <td style="text-align:left; width:400pt;">
                        <asp:Label ID="lblStatusArchivo" runat="server" Font-Bold="True" 
                            Font-Names="Verdana" Font-Size="8pt" ForeColor="Blue" Visible="False"></asp:Label>
                    </td>
                    <td style="text-align:left; width:50pt;">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td style="text-align:left;" colspan="3">
                        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
                            AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" 
                            DataKeyNames="id" DataSourceID="SqlDSsmcs2013" ForeColor="#333333" 
                            GridLines="None">
                            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                            <Columns>
                                <asp:HyperLinkField NavigateUrl="abrirVentana('~/ConsultaSMCS.aspx');" 
                                    Text="Pago" />
                                <asp:BoundField DataField="id" HeaderText="id" InsertVisible="False" 
                                    ReadOnly="True" SortExpression="id" />
                                <asp:BoundField DataField="nombres" HeaderText="nombres" 
                                    SortExpression="nombres" />
                                <asp:BoundField DataField="apellidos" HeaderText="apellidos" 
                                    SortExpression="apellidos" />
                                <asp:BoundField DataField="correo" HeaderText="correo" 
                                    SortExpression="correo" />
                                <asp:BoundField DataField="telefono" HeaderText="telefono" 
                                    SortExpression="telefono" />
                                <asp:BoundField DataField="institucion" HeaderText="institucion" 
                                    SortExpression="institucion" />
                                <asp:BoundField DataField="tipoRegistro" HeaderText="tipoRegistro" 
                                    SortExpression="tipoRegistro" />
                                <asp:BoundField DataField="titulo" HeaderText="titulo" 
                                    SortExpression="titulo" />
                                <asp:BoundField DataField="autores" HeaderText="autores" 
                                    SortExpression="autores" />
                                <asp:BoundField DataField="modalidad" HeaderText="modalidad" 
                                    SortExpression="modalidad" />
                                <asp:BoundField DataField="tipoSesion" HeaderText="tipoSesion" 
                                    SortExpression="tipoSesion" />
                                <asp:BoundField DataField="divisionSimposio" HeaderText="divisionSimposio" 
                                    SortExpression="divisionSimposio" />
                                <asp:BoundField DataField="comentarios" HeaderText="comentarios" 
                                    SortExpression="comentarios" />
                                <asp:BoundField DataField="factura" HeaderText="factura" 
                                    SortExpression="factura" />
                                <asp:BoundField DataField="facturaNombre" HeaderText="facturaNombre" 
                                    SortExpression="facturaNombre" />
                                <asp:BoundField DataField="facturaRFC" HeaderText="facturaRFC" 
                                    SortExpression="facturaRFC" />
                                <asp:BoundField DataField="facturaDireccion" HeaderText="facturaDireccion" 
                                    SortExpression="facturaDireccion" />
                            </Columns>
                            <EditRowStyle BackColor="#999999" />
                            <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                            <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                            <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                            <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                            <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                            <SortedAscendingCellStyle BackColor="#E9E7E2" />
                            <SortedAscendingHeaderStyle BackColor="#506C8C" />
                            <SortedDescendingCellStyle BackColor="#FFFDF8" />
                            <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
                        </asp:GridView>
                    </td>
                </tr>
            </table>
            <!--  -->
            <!--  -->
            <table style="border:0; width:500pt;  font-size: 8pt;">
                <tr>
                    <td style="text-align: center">
                        &nbsp;<br />

                        <asp:SqlDataSource ID="SqlDSsmcs2013" runat="server" 
                            ConnectionString="<%$ ConnectionStrings:REGWEBConnectionString %>" 
                            SelectCommand="SELECT * FROM [smcs2013]" 
                            OldValuesParameterFormatString="original_{0}">
                        </asp:SqlDataSource>
                    </td>
                </tr>
            </table>
        </asp:Panel>
        
        <center>
        
            <br />
            <asp:Button ID="btnCancelar" runat="server" Text="Cancelar" 
                CausesValidation="False" Width="150px"            
                PostBackUrl="http://intranet.cibnor.mx/eplant1.php?pagID=anuncios/suelo2013/index" 
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
