<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Consultaexpociencias2014.aspx.cs" Inherits="Consultaexpociencias2014" %>

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
                <table style="font-family: Verdana; font-size: 11pt; width: 650pt;">
                    <tr>
                        <td style="width: 200pt;">
                            <asp:Image ID="Image1" runat="server" ImageUrl="~/Images/logo_pace.png" 
                                Height="50px" />
                                &nbsp;
                            <asp:Image ID="Image3" runat="server" ImageUrl="~/Images/logo_milset.jpg" 
                                Height="50px" />
                        </td>
                        <td style="width: 250pt; text-align: center; font-size: 14pt; font-family: Arial;
                            font-weight: bold;">
                            <asp:Label ID="lblTitulo" runat="server" Font-Bold="True" Font-Names="Verdana" 
                                Font-Size="12pt" 
                                Text="Expociencias Sudcaliforniana 2014"></asp:Label>
                        </td>
                        <td style="width: 200pt; text-align: center; margin-left: 40px;">
                            <asp:Image ID="Image2" runat="server" ImageUrl="~/Images/logo_redActJuv10aniv.png" 
                                Height="40px" />
                                &nbsp;
                            <asp:Image ID="Image4" runat="server" ImageUrl="~/Images/logo_upaep.png" 
                                Height="40px" />
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 160px;">
                        </td>
                        <td style="width: 480px; text-align: center; font-size: 14pt; font-family: Arial;
                            font-weight: bold;">                            
                            <asp:Label ID="Label2" runat="server" Font-Names="Verdana" 
                                Font-Size="10pt" Text="Consulta de Registros" Font-Bold="False"></asp:Label>
                        </td>
                        <td style="width: 160px; text-align: center; margin-left: 40px;">
                        </td>
                    </tr>
                </table>
                <br />
                <asp:UpdatePanel ID="udpDatos" runat="server">
                    <ContentTemplate>

                        <table style="font-family: Verdana; font-size: 11pt; width: 650pt;">
                            <tr>
                                <td style="width: 250pt;" valign="top">
                                    <asp:GridView ID="gvRegistros" runat="server" AllowPaging="True" 
                                        AutoGenerateColumns="False" CellPadding="4" DataKeyNames="id" 
                                        DataSourceID="SqlDSregistro" ForeColor="#333333" GridLines="None" 
                                        onselectedindexchanged="gvRegistros_SelectedIndexChanged" Font-Size="7pt" 
                                        Width="100%">
                                        <AlternatingRowStyle BackColor="White" />
                                        <Columns>
                                            <asp:CommandField ShowSelectButton="True" SelectText="Ver" />
                                            <asp:BoundField DataField="id" HeaderText="#" InsertVisible="False" 
                                                ReadOnly="True" SortExpression="id" />
                                            <asp:BoundField DataField="nombreEst1" HeaderText="Estudiante titular" 
                                                SortExpression="nombreEst1" >
                                            <ItemStyle HorizontalAlign="Left" />
                                            </asp:BoundField>
                                            <asp:BoundField DataField="proyecto" HeaderText="Proyecto" 
                                                SortExpression="proyecto" >
                                            <ItemStyle HorizontalAlign="Left" />
                                            </asp:BoundField>
                                            <asp:BoundField DataField="claveRegistro" HeaderText="Clave" 
                                                SortExpression="claveRegistro" />
                                        </Columns>
                                        <EditRowStyle BackColor="#2461BF" />
                                        <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                                        <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                                        <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                                        <RowStyle BackColor="#EFF3FB" />
                                        <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="False" ForeColor="#333333" 
                                            Font-Italic="True" />
<%--                                        <SortedAscendingCellStyle BackColor="#F5F7FB" />
                                        <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                                        <SortedDescendingCellStyle BackColor="#E9EBEF" />
                                        <SortedDescendingHeaderStyle BackColor="#4870BE" />--%>
                                    </asp:GridView>

                                </td>
                                <td style="width: 400pt;">
                                    <asp:DetailsView ID="dvRegistros" runat="server" Height="50px" Width="100%" 
                                        DataSourceID="SqlDSdetalles" AutoGenerateRows="False" DataKeyNames="id" 
                                        CellPadding="4" ForeColor="#333333" GridLines="None" Font-Size="9pt">
                                        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                                        <CommandRowStyle BackColor="#E2DED6" Font-Bold="True" />
                                        <EditRowStyle BackColor="#999999" />
                                        <FieldHeaderStyle BackColor="#E9ECF1" Font-Bold="True" 
                                            HorizontalAlign="Right" />
                                        <Fields>
                                            <asp:BoundField DataField="id" HeaderText="id" InsertVisible="False" 
                                                ReadOnly="True" SortExpression="id" Visible="False" />
                                            <asp:BoundField DataField="nombreEst1" HeaderText="Nombre Estudiante Titular" 
                                                SortExpression="nombreEst1" />
                                            <asp:BoundField DataField="correoEst1" HeaderText="Correo" 
                                                SortExpression="correoEst1" />
                                            <asp:BoundField DataField="telefonoEst1" HeaderText="Telefono" 
                                                SortExpression="telefonoEst1" />
                                            <asp:BoundField DataField="sexo" HeaderText="Sexo" SortExpression="sexo" />
                                            <asp:BoundField DataField="edad" HeaderText="Edad" SortExpression="edad" />
                                            <asp:BoundField DataField="numeroEst" HeaderText="Numero Estudiantes" 
                                                SortExpression="numeroEst" />
                                            <asp:BoundField DataField="nombreEst2" HeaderText="Estudiante 2" 
                                                SortExpression="nombreEst2" />
                                            <asp:BoundField DataField="correoEst2" HeaderText="Correo" 
                                                SortExpression="correoEst2" />
                                            <asp:BoundField DataField="nombreEst3" HeaderText="Estudiante 3" 
                                                SortExpression="nombreEst3" />
                                            <asp:BoundField DataField="correoEst3" HeaderText="Correo" 
                                                SortExpression="correoEst3" />
                                            <asp:BoundField DataField="nombreAsesor" HeaderText="Asesor" 
                                                SortExpression="nombreAsesor" />
                                            <asp:BoundField DataField="correoAsesor" HeaderText="Correo" 
                                                SortExpression="correoAsesor" />
                                            <asp:BoundField DataField="telefonoAsesor" HeaderText="Telefono" 
                                                SortExpression="telefonoAsesor" />
                                            <asp:BoundField DataField="institucion" HeaderText="Institucion" 
                                                SortExpression="institucion" />
                                            <asp:BoundField DataField="domicilio" HeaderText="Domicilio" 
                                                SortExpression="domicilio" />
                                            <asp:BoundField DataField="municipio" HeaderText="Municipio" 
                                                SortExpression="municipio" />
                                            <asp:BoundField DataField="proyecto" HeaderText="Proyecto" 
                                                SortExpression="proyecto" />
                                            <asp:BoundField DataField="categoria" HeaderText="Categoria" 
                                                SortExpression="categoria" />
                                            <asp:BoundField DataField="area" HeaderText="Area" SortExpression="area" />
                                            <asp:BoundField DataField="descipcionProyecto" HeaderText="Descipcion Proyecto" 
                                                SortExpression="descipcionProyecto" />
                                            <asp:BoundField DataField="nombreHuesped" HeaderText="Huesped" 
                                                SortExpression="nombreHuesped" />
                                            <asp:BoundField DataField="justificacion" HeaderText="Justificacion" 
                                                SortExpression="justificacion" />
                                            <asp:BoundField DataField="claveRegistro" HeaderText="Clave Registro" 
                                                SortExpression="claveRegistro" />
                                            <asp:BoundField DataField="fechaRegistro" HeaderText="Fecha Registro" 
                                                SortExpression="fechaRegistro" />
                                        </Fields>
                                        <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                                        <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                                        <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                                        <RowStyle BackColor="#F7F6F3" ForeColor="#333333" HorizontalAlign="Left" />
                                    </asp:DetailsView>
                                </td>
                            </tr>
                        </table>

                    </ContentTemplate>
                </asp:UpdatePanel>

                    <asp:Label ID="lblStatusExiste" runat="server" Font-Bold="True" 
                        Font-Names="Verdana" Font-Size="8pt" ForeColor="Blue"></asp:Label>

                <br />
            </div>
            <!-- REGISTRO -->
            
                            <asp:SqlDataSource ID="SqlDSregistro" runat="server" ConnectionString="<%$ ConnectionStrings:REGWEBConnectionString %>"
                                
                DeleteCommand="DELETE FROM [expociencias2014] WHERE [id] = @original_id" InsertCommand="INSERT INTO [expociencias2014] ([nombreEst1], [proyecto], [claveRegistro]) VALUES (@nombreEst1, @proyecto, @claveRegistro)"
                                
                SelectCommand="SELECT [id], [nombreEst1], [proyecto], [claveRegistro] FROM [expociencias2014]" UpdateCommand="UPDATE [expociencias2014] SET [nombreEst1] = @nombreEst1, [proyecto] = @proyecto, [claveRegistro] = @claveRegistro WHERE [id] = @original_id"
                                OldValuesParameterFormatString="original_{0}">
                                <DeleteParameters>
                                    <asp:Parameter Name="original_id" Type="Int32" />
                                </DeleteParameters>
                                <UpdateParameters>
                                    <asp:Parameter Name="nombreEst1" Type="String" />
                                    <asp:Parameter Name="proyecto" Type="String" />
                                    <asp:Parameter Name="claveRegistro" Type="String" />
                                    <asp:Parameter Name="original_id" Type="Int32" />
                                </UpdateParameters>
                                <InsertParameters>
                                    <asp:Parameter Name="nombreEst1" Type="String" />
                                    <asp:Parameter Name="proyecto" Type="String" />
                                    <asp:Parameter Name="claveRegistro" Type="String" />
                                </InsertParameters>
                            </asp:SqlDataSource>
            
                            <asp:SqlDataSource ID="SqlDSdetalles" runat="server" ConnectionString="<%$ ConnectionStrings:REGWEBConnectionString %>"
                                
                SelectCommand="SELECT * FROM [expociencias2014]"
                                OldValuesParameterFormatString="original_{0}">
                            </asp:SqlDataSource>
            <br />
        </center>
    </div>
    <asp:Label ID="lblHiddenClave" runat="server" Font-Names="Arial" 
        Font-Size="8pt" Visible="False"></asp:Label>
    <asp:Label ID="lblHiddenMensaje" runat="server" Font-Names="Arial" 
        Font-Size="8pt" Visible="False"></asp:Label>
    </form>
</body>
</html>
