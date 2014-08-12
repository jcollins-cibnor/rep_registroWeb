<%@ Page Language="C#" AutoEventWireup="true" CodeFile="EditarTablas.aspx.cs" Inherits="EditarTablas" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Editar los registros en linea</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>    
        <asp:DropDownList ID="ddlEventos" runat="server" AutoPostBack="True" 
            onselectedindexchanged="ddlEventos_SelectedIndexChanged">
            <asp:ListItem Value="0">Seleccionar una opcion...</asp:ListItem>
            <asp:ListItem>microalgas2014</asp:ListItem>
            <asp:ListItem>smcs-congreso2013</asp:ListItem>
            <asp:ListItem>pace2013</asp:ListItem>
            <asp:ListItem>secuencias2013</asp:ListItem>
            <asp:ListItem>cpi2013</asp:ListItem>
            <asp:ListItem>cpi2013mpd</asp:ListItem>
        </asp:DropDownList>
        <br />
    </div>
    
    <div>    

    <asp:SqlDataSource ID="SqlDScpi2013" runat="server" 
        ConnectionString="<%$ ConnectionStrings:REGWEBConnectionString %>" 
        SelectCommand="SELECT * FROM [CPI2013]" 
            DeleteCommand="DELETE FROM [CPI2013] WHERE [id] = @original_id" 
            InsertCommand="INSERT INTO [CPI2013] ([nombres], [apellidos], [correo], [telefono], [institucion], [talla], [registro], [eje], [salidaciudad1], [salidalinea1], [salidavuelo1], [salidafecha1], [salidahora1], [salidahorallegada1], [salidaciudad2], [salidalinea2], [salidavuelo2], [salidafecha2], [salidahora2], [salidahorallegada2], [regresociudad1], [regresolinea1], [regresovuelo1], [regresofecha1], [regresohora1], [regresohorallegada1], [regresociudad2], [regresolinea2], [regresovuelo2], [regresofecha2], [regresohora2], [regresohorallegada2], [hotel], [coctel], [cena], [familia], [familiacantidad], [familiaedades], [comentarios]) VALUES (@nombres, @apellidos, @correo, @telefono, @institucion, @talla, @registro, @eje, @salidaciudad1, @salidalinea1, @salidavuelo1, @salidafecha1, @salidahora1, @salidahorallegada1, @salidaciudad2, @salidalinea2, @salidavuelo2, @salidafecha2, @salidahora2, @salidahorallegada2, @regresociudad1, @regresolinea1, @regresovuelo1, @regresofecha1, @regresohora1, @regresohorallegada1, @regresociudad2, @regresolinea2, @regresovuelo2, @regresofecha2, @regresohora2, @regresohorallegada2, @hotel, @coctel, @cena, @familia, @familiacantidad, @familiaedades, @comentarios)" 
            OldValuesParameterFormatString="original_{0}" 
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
        
            
            
            UpdateCommand="UPDATE [CPI2013] SET [nombres] = @nombres, [apellidos] = @apellidos, [correo] = @correo, [telefono] = @telefono, [institucion] = @institucion, [talla] = @talla, [registro] = @registro, [eje] = @eje, [salidaciudad1] = @salidaciudad1, [salidalinea1] = @salidalinea1, [salidavuelo1] = @salidavuelo1, [salidafecha1] = @salidafecha1, [salidahora1] = @salidahora1, [salidahorallegada1] = @salidahorallegada1, [salidaciudad2] = @salidaciudad2, [salidalinea2] = @salidalinea2, [salidavuelo2] = @salidavuelo2, [salidafecha2] = @salidafecha2, [salidahora2] = @salidahora2, [salidahorallegada2] = @salidahorallegada2, [regresociudad1] = @regresociudad1, [regresolinea1] = @regresolinea1, [regresovuelo1] = @regresovuelo1, [regresofecha1] = @regresofecha1, [regresohora1] = @regresohora1, [regresohorallegada1] = @regresohorallegada1, [regresociudad2] = @regresociudad2, [regresolinea2] = @regresolinea2, [regresovuelo2] = @regresovuelo2, [regresofecha2] = @regresofecha2, [regresohora2] = @regresohora2, [regresohorallegada2] = @regresohorallegada2, [hotel] = @hotel, [coctel] = @coctel, [cena] = @cena, [familia] = @familia, [familiacantidad] = @familiacantidad, [familiaedades] = @familiaedades, [comentarios] = @comentarios WHERE [id] = @original_id">
        <DeleteParameters>
            <asp:Parameter Name="original_id" Type="Int32" />
        </DeleteParameters>
        <UpdateParameters>
            <asp:Parameter Name="nombres" Type="String" />
            <asp:Parameter Name="apellidos" Type="String" />
            <asp:Parameter Name="correo" Type="String" />
            <asp:Parameter Name="telefono" Type="String" />
            <asp:Parameter Name="institucion" Type="String" />
            <asp:Parameter Name="talla" Type="String" />
            <asp:Parameter Name="registro" Type="String" />
            <asp:Parameter Name="eje" Type="String" />
            <asp:Parameter Name="salidaciudad1" Type="String" />
            <asp:Parameter Name="salidalinea1" Type="String" />
            <asp:Parameter Name="salidavuelo1" Type="String" />
            <asp:Parameter Name="salidafecha1" Type="String" />
            <asp:Parameter Name="salidahora1" Type="String" />
            <asp:Parameter Name="salidahorallegada1" Type="String" />
            <asp:Parameter Name="salidaciudad2" Type="String" />
            <asp:Parameter Name="salidalinea2" Type="String" />
            <asp:Parameter Name="salidavuelo2" Type="String" />
            <asp:Parameter Name="salidafecha2" Type="String" />
            <asp:Parameter Name="salidahora2" Type="String" />
            <asp:Parameter Name="salidahorallegada2" Type="String" />
            <asp:Parameter Name="regresociudad1" Type="String" />
            <asp:Parameter Name="regresolinea1" Type="String" />
            <asp:Parameter Name="regresovuelo1" Type="String" />
            <asp:Parameter Name="regresofecha1" Type="String" />
            <asp:Parameter Name="regresohora1" Type="String" />
            <asp:Parameter Name="regresohorallegada1" Type="String" />
            <asp:Parameter Name="regresociudad2" Type="String" />
            <asp:Parameter Name="regresolinea2" Type="String" />
            <asp:Parameter Name="regresovuelo2" Type="String" />
            <asp:Parameter Name="regresofecha2" Type="String" />
            <asp:Parameter Name="regresohora2" Type="String" />
            <asp:Parameter Name="regresohorallegada2" Type="String" />
            <asp:Parameter Name="hotel" Type="String" />
            <asp:Parameter Name="coctel" Type="String" />
            <asp:Parameter Name="cena" Type="String" />
            <asp:Parameter Name="familia" Type="String" />
            <asp:Parameter Name="familiacantidad" Type="String" />
            <asp:Parameter Name="familiaedades" Type="String" />
            <asp:Parameter Name="comentarios" Type="String" />
            <asp:Parameter Name="original_id" Type="Int32" />
        </UpdateParameters>
        <InsertParameters>
            <asp:Parameter Name="nombres" Type="String" />
            <asp:Parameter Name="apellidos" Type="String" />
            <asp:Parameter Name="correo" Type="String" />
            <asp:Parameter Name="telefono" Type="String" />
            <asp:Parameter Name="institucion" Type="String" />
            <asp:Parameter Name="talla" Type="String" />
            <asp:Parameter Name="registro" Type="String" />
            <asp:Parameter Name="eje" Type="String" />
            <asp:Parameter Name="salidaciudad1" Type="String" />
            <asp:Parameter Name="salidalinea1" Type="String" />
            <asp:Parameter Name="salidavuelo1" Type="String" />
            <asp:Parameter Name="salidafecha1" Type="String" />
            <asp:Parameter Name="salidahora1" Type="String" />
            <asp:Parameter Name="salidahorallegada1" Type="String" />
            <asp:Parameter Name="salidaciudad2" Type="String" />
            <asp:Parameter Name="salidalinea2" Type="String" />
            <asp:Parameter Name="salidavuelo2" Type="String" />
            <asp:Parameter Name="salidafecha2" Type="String" />
            <asp:Parameter Name="salidahora2" Type="String" />
            <asp:Parameter Name="salidahorallegada2" Type="String" />
            <asp:Parameter Name="regresociudad1" Type="String" />
            <asp:Parameter Name="regresolinea1" Type="String" />
            <asp:Parameter Name="regresovuelo1" Type="String" />
            <asp:Parameter Name="regresofecha1" Type="String" />
            <asp:Parameter Name="regresohora1" Type="String" />
            <asp:Parameter Name="regresohorallegada1" Type="String" />
            <asp:Parameter Name="regresociudad2" Type="String" />
            <asp:Parameter Name="regresolinea2" Type="String" />
            <asp:Parameter Name="regresovuelo2" Type="String" />
            <asp:Parameter Name="regresofecha2" Type="String" />
            <asp:Parameter Name="regresohora2" Type="String" />
            <asp:Parameter Name="regresohorallegada2" Type="String" />
            <asp:Parameter Name="hotel" Type="String" />
            <asp:Parameter Name="coctel" Type="String" />
            <asp:Parameter Name="cena" Type="String" />
            <asp:Parameter Name="familia" Type="String" />
            <asp:Parameter Name="familiacantidad" Type="String" />
            <asp:Parameter Name="familiaedades" Type="String" />
            <asp:Parameter Name="comentarios" Type="String" />
        </InsertParameters>
        </asp:SqlDataSource>
    
    <asp:GridView ID="grvcpi2013" runat="server" 
            AutoGenerateColumns="False" DataKeyNames="id" 
        DataSourceID="SqlDScpi2013" BackColor="White" BorderColor="#3366CC" 
        BorderStyle="None" BorderWidth="1px" CellPadding="4" Visible="False" 
            AllowSorting="True">
        <RowStyle BackColor="White" ForeColor="#003399" Font-Names="Arial" 
            Font-Size="8pt" />
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
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
<asp:BoundField DataField="talla" HeaderText="talla" SortExpression="talla"></asp:BoundField>
<asp:BoundField DataField="registro" HeaderText="registro" 
                SortExpression="registro"></asp:BoundField>
            <asp:BoundField DataField="eje" HeaderText="eje" 
                SortExpression="eje" />
            <asp:BoundField DataField="salidaciudad1" HeaderText="salidaciudad1" 
                SortExpression="salidaciudad1" />
            <asp:BoundField DataField="salidalinea1" HeaderText="salidalinea1" 
                SortExpression="salidalinea1" />
            <asp:BoundField DataField="salidavuelo1" HeaderText="salidavuelo1" 
                SortExpression="salidavuelo1" />
            <asp:BoundField DataField="salidafecha1" HeaderText="salidafecha1" 
                SortExpression="salidafecha1" />
            <asp:BoundField DataField="salidahora1" HeaderText="salidahora1" 
                SortExpression="salidahora1" />
            <asp:BoundField DataField="salidahorallegada1" HeaderText="salidahorallegada1" 
                SortExpression="salidahorallegada1" />
            <asp:BoundField DataField="salidaciudad2" HeaderText="salidaciudad2" 
                SortExpression="salidaciudad2" />
            <asp:BoundField DataField="salidalinea2" HeaderText="salidalinea2" 
                SortExpression="salidalinea2" />
            <asp:BoundField DataField="salidavuelo2" HeaderText="salidavuelo2" 
                SortExpression="salidavuelo2" />
            <asp:BoundField DataField="salidafecha2" HeaderText="salidafecha2" 
                SortExpression="salidafecha2" />
            <asp:BoundField DataField="salidahora2" HeaderText="salidahora2" 
                SortExpression="salidahora2" />
            <asp:BoundField DataField="salidahorallegada2" HeaderText="salidahorallegada2" 
                SortExpression="salidahorallegada2" />
            <asp:BoundField DataField="regresociudad1" HeaderText="regresociudad1" 
                SortExpression="regresociudad1" />
            <asp:BoundField DataField="regresolinea1" HeaderText="regresolinea1" 
                SortExpression="regresolinea1" />
            <asp:BoundField DataField="regresovuelo1" HeaderText="regresovuelo1" 
                SortExpression="regresovuelo1" />
            <asp:BoundField DataField="regresofecha1" HeaderText="regresofecha1" 
                SortExpression="regresofecha1" />
            <asp:BoundField DataField="regresohora1" HeaderText="regresohora1" 
                SortExpression="regresohora1" />
            <asp:BoundField DataField="regresohorallegada1" HeaderText="regresohorallegada1" 
                SortExpression="regresohorallegada1" />
            <asp:BoundField DataField="regresociudad2" HeaderText="regresociudad2" 
                SortExpression="regresociudad2" />
            <asp:BoundField DataField="regresolinea2" HeaderText="regresolinea2" 
                SortExpression="regresolinea2" />
            <asp:BoundField DataField="regresovuelo2" HeaderText="regresovuelo2" 
                SortExpression="regresovuelo2" />
            <asp:BoundField DataField="regresofecha2" HeaderText="regresofecha2" 
                SortExpression="regresofecha2" />
            <asp:BoundField DataField="regresohora2" HeaderText="regresohora2" 
                SortExpression="regresohora2" />
            <asp:BoundField DataField="regresohorallegada2" HeaderText="regresohorallegada2" 
                SortExpression="regresohorallegada2" />
            <asp:BoundField DataField="hotel" HeaderText="hotel" 
                SortExpression="hotel" />
            <asp:BoundField DataField="coctel" HeaderText="coctel" 
                SortExpression="coctel" />
            <asp:BoundField DataField="cena" HeaderText="cena" 
                SortExpression="cena" />
            <asp:BoundField DataField="familia" HeaderText="familia" 
                SortExpression="familia" />
            <asp:BoundField DataField="familiacantidad" HeaderText="familiacantidad" 
                SortExpression="familiacantidad" />
            <asp:BoundField DataField="familiaedades" HeaderText="familiaedades" 
                SortExpression="familiaedades" />
            <asp:BoundField DataField="comentarios" HeaderText="comentarios" 
                SortExpression="comentarios" />
        </Columns>
        <FooterStyle BackColor="#99CCCC" ForeColor="#003399" />
        <PagerStyle BackColor="#99CCCC" ForeColor="#003399" HorizontalAlign="Left" />
        <SelectedRowStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
        <HeaderStyle BackColor="White" Font-Bold="True" ForeColor="Black" 
            Font-Names="Arial" Font-Size="8pt" />
    </asp:GridView>        
    
    <asp:SqlDataSource ID="SqlDScpi2013mpd" runat="server" 
        ConnectionString="<%$ ConnectionStrings:REGWEBConnectionString %>" 
        SelectCommand="SELECT * FROM [CPI2013mpd]" 
            DeleteCommand="DELETE FROM [CPI2013mpd] WHERE [id] = @original_id" 
            InsertCommand="INSERT INTO [CPI2013mpd] ([nombres], [apellidos], [correo], [telefono], [institucion], [talla], [eje], [salidaciudad1], [salidalinea1], [salidavuelo1], [salidafecha1], [salidahora1], [salidahorallegada1], [salidaciudad2], [salidalinea2], [salidavuelo2], [salidafecha2], [salidahora2], [salidahorallegada2], [regresociudad1], [regresolinea1], [regresovuelo1], [regresofecha1], [regresohora1], [regresohorallegada1], [regresociudad2], [regresolinea2], [regresovuelo2], [regresofecha2], [regresohora2], [regresohorallegada2], [hotel], [coctel], [cena], [familia], [familiacantidad], [familiaedades], [comentarios]) VALUES (@nombres, @apellidos, @correo, @telefono, @institucion, @talla, @eje, @salidaciudad1, @salidalinea1, @salidavuelo1, @salidafecha1, @salidahora1, @salidahorallegada1, @salidaciudad2, @salidalinea2, @salidavuelo2, @salidafecha2, @salidahora2, @salidahorallegada2, @regresociudad1, @regresolinea1, @regresovuelo1, @regresofecha1, @regresohora1, @regresohorallegada1, @regresociudad2, @regresolinea2, @regresovuelo2, @regresofecha2, @regresohora2, @regresohorallegada2, @hotel, @coctel, @cena, @familia, @familiacantidad, @familiaedades, @comentarios)" 
            OldValuesParameterFormatString="original_{0}" 
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
        
            
            
            
            UpdateCommand="UPDATE [CPI2013mpd] SET [nombres] = @nombres, [apellidos] = @apellidos, [correo] = @correo, [telefono] = @telefono, [institucion] = @institucion, [talla] = @talla, [eje] = @eje, [salidaciudad1] = @salidaciudad1, [salidalinea1] = @salidalinea1, [salidavuelo1] = @salidavuelo1, [salidafecha1] = @salidafecha1, [salidahora1] = @salidahora1, [salidahorallegada1] = @salidahorallegada1, [salidaciudad2] = @salidaciudad2, [salidalinea2] = @salidalinea2, [salidavuelo2] = @salidavuelo2, [salidafecha2] = @salidafecha2, [salidahora2] = @salidahora2, [salidahorallegada2] = @salidahorallegada2, [regresociudad1] = @regresociudad1, [regresolinea1] = @regresolinea1, [regresovuelo1] = @regresovuelo1, [regresofecha1] = @regresofecha1, [regresohora1] = @regresohora1, [regresohorallegada1] = @regresohorallegada1, [regresociudad2] = @regresociudad2, [regresolinea2] = @regresolinea2, [regresovuelo2] = @regresovuelo2, [regresofecha2] = @regresofecha2, [regresohora2] = @regresohora2, [regresohorallegada2] = @regresohorallegada2, [hotel] = @hotel, [coctel] = @coctel, [cena] = @cena, [familia] = @familia, [familiacantidad] = @familiacantidad, [familiaedades] = @familiaedades, [comentarios] = @comentarios WHERE [id] = @original_id">
        <DeleteParameters>
            <asp:Parameter Name="original_id" Type="Int32" />
        </DeleteParameters>
        <UpdateParameters>
            <asp:Parameter Name="nombres" Type="String" />
            <asp:Parameter Name="apellidos" Type="String" />
            <asp:Parameter Name="correo" Type="String" />
            <asp:Parameter Name="telefono" Type="String" />
            <asp:Parameter Name="institucion" Type="String" />
            <asp:Parameter Name="talla" Type="String" />
            <asp:Parameter Name="eje" Type="String" />
            <asp:Parameter Name="salidaciudad1" Type="String" />
            <asp:Parameter Name="salidalinea1" Type="String" />
            <asp:Parameter Name="salidavuelo1" Type="String" />
            <asp:Parameter Name="salidafecha1" Type="String" />
            <asp:Parameter Name="salidahora1" Type="String" />
            <asp:Parameter Name="salidahorallegada1" Type="String" />
            <asp:Parameter Name="salidaciudad2" Type="String" />
            <asp:Parameter Name="salidalinea2" Type="String" />
            <asp:Parameter Name="salidavuelo2" Type="String" />
            <asp:Parameter Name="salidafecha2" Type="String" />
            <asp:Parameter Name="salidahora2" Type="String" />
            <asp:Parameter Name="salidahorallegada2" Type="String" />
            <asp:Parameter Name="regresociudad1" Type="String" />
            <asp:Parameter Name="regresolinea1" Type="String" />
            <asp:Parameter Name="regresovuelo1" Type="String" />
            <asp:Parameter Name="regresofecha1" Type="String" />
            <asp:Parameter Name="regresohora1" Type="String" />
            <asp:Parameter Name="regresohorallegada1" Type="String" />
            <asp:Parameter Name="regresociudad2" Type="String" />
            <asp:Parameter Name="regresolinea2" Type="String" />
            <asp:Parameter Name="regresovuelo2" Type="String" />
            <asp:Parameter Name="regresofecha2" Type="String" />
            <asp:Parameter Name="regresohora2" Type="String" />
            <asp:Parameter Name="regresohorallegada2" Type="String" />
            <asp:Parameter Name="hotel" Type="String" />
            <asp:Parameter Name="coctel" Type="String" />
            <asp:Parameter Name="cena" Type="String" />
            <asp:Parameter Name="familia" Type="String" />
            <asp:Parameter Name="familiacantidad" Type="String" />
            <asp:Parameter Name="familiaedades" Type="String" />
            <asp:Parameter Name="comentarios" Type="String" />
            <asp:Parameter Name="original_id" Type="Int32" />
        </UpdateParameters>
        <InsertParameters>
            <asp:Parameter Name="nombres" Type="String" />
            <asp:Parameter Name="apellidos" Type="String" />
            <asp:Parameter Name="correo" Type="String" />
            <asp:Parameter Name="telefono" Type="String" />
            <asp:Parameter Name="institucion" Type="String" />
            <asp:Parameter Name="talla" Type="String" />
            <asp:Parameter Name="eje" Type="String" />
            <asp:Parameter Name="salidaciudad1" Type="String" />
            <asp:Parameter Name="salidalinea1" Type="String" />
            <asp:Parameter Name="salidavuelo1" Type="String" />
            <asp:Parameter Name="salidafecha1" Type="String" />
            <asp:Parameter Name="salidahora1" Type="String" />
            <asp:Parameter Name="salidahorallegada1" Type="String" />
            <asp:Parameter Name="salidaciudad2" Type="String" />
            <asp:Parameter Name="salidalinea2" Type="String" />
            <asp:Parameter Name="salidavuelo2" Type="String" />
            <asp:Parameter Name="salidafecha2" Type="String" />
            <asp:Parameter Name="salidahora2" Type="String" />
            <asp:Parameter Name="salidahorallegada2" Type="String" />
            <asp:Parameter Name="regresociudad1" Type="String" />
            <asp:Parameter Name="regresolinea1" Type="String" />
            <asp:Parameter Name="regresovuelo1" Type="String" />
            <asp:Parameter Name="regresofecha1" Type="String" />
            <asp:Parameter Name="regresohora1" Type="String" />
            <asp:Parameter Name="regresohorallegada1" Type="String" />
            <asp:Parameter Name="regresociudad2" Type="String" />
            <asp:Parameter Name="regresolinea2" Type="String" />
            <asp:Parameter Name="regresovuelo2" Type="String" />
            <asp:Parameter Name="regresofecha2" Type="String" />
            <asp:Parameter Name="regresohora2" Type="String" />
            <asp:Parameter Name="regresohorallegada2" Type="String" />
            <asp:Parameter Name="hotel" Type="String" />
            <asp:Parameter Name="coctel" Type="String" />
            <asp:Parameter Name="cena" Type="String" />
            <asp:Parameter Name="familia" Type="String" />
            <asp:Parameter Name="familiacantidad" Type="String" />
            <asp:Parameter Name="familiaedades" Type="String" />
            <asp:Parameter Name="comentarios" Type="String" />
        </InsertParameters>
        </asp:SqlDataSource>
    
    <asp:GridView ID="grvcpi2013mpd" runat="server" 
            AutoGenerateColumns="False" DataKeyNames="id" 
        DataSourceID="SqlDScpi2013mpd" BackColor="White" BorderColor="#3366CC" 
        BorderStyle="None" BorderWidth="1px" CellPadding="4" Visible="False" 
            AllowSorting="True">
        <RowStyle BackColor="White" ForeColor="#003399" Font-Names="Arial" 
            Font-Size="8pt" />
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
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
<asp:BoundField DataField="talla" HeaderText="talla" SortExpression="talla"></asp:BoundField>
<asp:BoundField DataField="eje" HeaderText="eje" 
                SortExpression="eje"></asp:BoundField>
            <asp:BoundField DataField="salidaciudad1" HeaderText="salidaciudad1" 
                SortExpression="salidaciudad1" />
            <asp:BoundField DataField="salidalinea1" HeaderText="salidalinea1" 
                SortExpression="salidalinea1" />
            <asp:BoundField DataField="salidavuelo1" HeaderText="salidavuelo1" 
                SortExpression="salidavuelo1" />
            <asp:BoundField DataField="salidafecha1" HeaderText="salidafecha1" 
                SortExpression="salidafecha1" />
            <asp:BoundField DataField="salidahora1" HeaderText="salidahora1" 
                SortExpression="salidahora1" />
            <asp:BoundField DataField="salidahorallegada1" HeaderText="salidahorallegada1" 
                SortExpression="salidahorallegada1" />
            <asp:BoundField DataField="salidaciudad2" HeaderText="salidaciudad2" 
                SortExpression="salidaciudad2" />
            <asp:BoundField DataField="salidalinea2" HeaderText="salidalinea2" 
                SortExpression="salidalinea2" />
            <asp:BoundField DataField="salidavuelo2" HeaderText="salidavuelo2" 
                SortExpression="salidavuelo2" />
            <asp:BoundField DataField="salidafecha2" HeaderText="salidafecha2" 
                SortExpression="salidafecha2" />
            <asp:BoundField DataField="salidahora2" HeaderText="salidahora2" 
                SortExpression="salidahora2" />
            <asp:BoundField DataField="salidahorallegada2" HeaderText="salidahorallegada2" 
                SortExpression="salidahorallegada2" />
            <asp:BoundField DataField="regresociudad1" HeaderText="regresociudad1" 
                SortExpression="regresociudad1" />
            <asp:BoundField DataField="regresolinea1" HeaderText="regresolinea1" 
                SortExpression="regresolinea1" />
            <asp:BoundField DataField="regresovuelo1" HeaderText="regresovuelo1" 
                SortExpression="regresovuelo1" />
            <asp:BoundField DataField="regresofecha1" HeaderText="regresofecha1" 
                SortExpression="regresofecha1" />
            <asp:BoundField DataField="regresohora1" HeaderText="regresohora1" 
                SortExpression="regresohora1" />
            <asp:BoundField DataField="regresohorallegada1" HeaderText="regresohorallegada1" 
                SortExpression="regresohorallegada1" />
            <asp:BoundField DataField="regresociudad2" HeaderText="regresociudad2" 
                SortExpression="regresociudad2" />
            <asp:BoundField DataField="regresolinea2" HeaderText="regresolinea2" 
                SortExpression="regresolinea2" />
            <asp:BoundField DataField="regresovuelo2" HeaderText="regresovuelo2" 
                SortExpression="regresovuelo2" />
            <asp:BoundField DataField="regresofecha2" HeaderText="regresofecha2" 
                SortExpression="regresofecha2" />
            <asp:BoundField DataField="regresohora2" HeaderText="regresohora2" 
                SortExpression="regresohora2" />
            <asp:BoundField DataField="regresohorallegada2" HeaderText="regresohorallegada2" 
                SortExpression="regresohorallegada2" />
            <asp:BoundField DataField="hotel" HeaderText="hotel" 
                SortExpression="hotel" />
            <asp:BoundField DataField="coctel" HeaderText="coctel" 
                SortExpression="coctel" />
            <asp:BoundField DataField="cena" HeaderText="cena" 
                SortExpression="cena" />
            <asp:BoundField DataField="familia" HeaderText="familia" 
                SortExpression="familia" />
            <asp:BoundField DataField="familiacantidad" HeaderText="familiacantidad" 
                SortExpression="familiacantidad" />
            <asp:BoundField DataField="familiaedades" HeaderText="familiaedades" 
                SortExpression="familiaedades" />
            <asp:BoundField DataField="comentarios" HeaderText="comentarios" 
                SortExpression="comentarios" />
        </Columns>
        <FooterStyle BackColor="#99CCCC" ForeColor="#003399" />
        <PagerStyle BackColor="#99CCCC" ForeColor="#003399" HorizontalAlign="Left" />
        <SelectedRowStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
        <HeaderStyle BackColor="White" Font-Bold="True" ForeColor="Black" 
            Font-Names="Arial" Font-Size="8pt" />
    </asp:GridView>        
    
<%--        <br />--%>

    <asp:SqlDataSource ID="SqlDSsmcs2013" runat="server" 
        ConnectionString="<%$ ConnectionStrings:REGWEBConnectionString %>" 
        SelectCommand="SELECT * FROM [smcs2013]" 
            DeleteCommand="DELETE FROM [smcs2013] WHERE [id] = @original_id" 
            InsertCommand="INSERT INTO [smcs2013] ([nombres], [apellidos], [correo], [telefono], [institucion], [tipoRegistro], [titulo], [autores], [modalidad], [tipoSesion], [divisionSimposio], [comentarios], [factura], [facturaNombre], [facturaRFC], [facturaDireccion]) VALUES (@nombres, @apellidos, @correo, @telefono, @institucion, @tipoRegistro, @titulo, @autores, @modalidad, @tipoSesion, @divisionSimposio, @comentarios, @factura, @facturaNombre, @facturaRFC, @facturaDireccion)" 
            OldValuesParameterFormatString="original_{0}" 
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
        
            UpdateCommand="UPDATE [smcs2013] SET [nombres] = @nombres, [apellidos] = @apellidos, [correo] = @correo, [telefono] = @telefono, [institucion] = @institucion, [tipoRegistro] = @tipoRegistro, [titulo] = @titulo, [autores] = @autores, [modalidad] = @modalidad, [tipoSesion] = @tipoSesion, [divisionSimposio] = @divisionSimposio, [comentarios] = @comentarios, [factura] = @factura, [facturaNombre] = @facturaNombre, [facturaRFC] = @facturaRFC, [facturaDireccion] = @facturaDireccion WHERE [id] = @original_id">
        <DeleteParameters>
            <asp:Parameter Name="original_id" Type="Int32" />
        </DeleteParameters>
        <UpdateParameters>
            <asp:Parameter Name="nombres" Type="String" />
            <asp:Parameter Name="apellidos" Type="String" />
            <asp:Parameter Name="correo" Type="String" />
            <asp:Parameter Name="telefono" Type="String" />
            <asp:Parameter Name="institucion" Type="String" />
            <asp:Parameter Name="tipoRegistro" Type="String" />
            <asp:Parameter Name="titulo" Type="String" />
            <asp:Parameter Name="autores" Type="String" />
            <asp:Parameter Name="modalidad" Type="String" />
            <asp:Parameter Name="tipoSesion" Type="String" />
            <asp:Parameter Name="divisionSimposio" Type="String" />
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
            <asp:Parameter Name="tipoRegistro" Type="String" />
            <asp:Parameter Name="titulo" Type="String" />
            <asp:Parameter Name="autores" Type="String" />
            <asp:Parameter Name="modalidad" Type="String" />
            <asp:Parameter Name="tipoSesion" Type="String" />
            <asp:Parameter Name="divisionSimposio" Type="String" />
            <asp:Parameter Name="comentarios" Type="String" />
            <asp:Parameter Name="factura" Type="String" />
            <asp:Parameter Name="facturaNombre" Type="String" />
            <asp:Parameter Name="facturaRFC" Type="String" />
            <asp:Parameter Name="facturaDireccion" Type="String" />
        </InsertParameters>
        </asp:SqlDataSource>
    
    <asp:GridView ID="grvsmcs2013" runat="server" 
            AutoGenerateColumns="False" DataKeyNames="id" 
        DataSourceID="SqlDSsmcs2013" BackColor="White" BorderColor="#3366CC" 
        BorderStyle="None" BorderWidth="1px" CellPadding="4" Visible="False" 
            AllowSorting="True">
        <RowStyle BackColor="White" ForeColor="#003399" Font-Names="Arial" 
            Font-Size="8pt" />
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
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
                SortExpression="tipoRegistro"></asp:BoundField>
<asp:BoundField DataField="titulo" HeaderText="titulo" SortExpression="titulo"></asp:BoundField>
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
        <FooterStyle BackColor="#99CCCC" ForeColor="#003399" />
        <PagerStyle BackColor="#99CCCC" ForeColor="#003399" HorizontalAlign="Left" />
        <SelectedRowStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
        <HeaderStyle BackColor="White" Font-Bold="True" ForeColor="Black" 
            Font-Names="Arial" Font-Size="8pt" />
    </asp:GridView>        
    
    <asp:SqlDataSource ID="SqlDSpace2013" runat="server" 
        ConnectionString="<%$ ConnectionStrings:REGWEBConnectionString %>" 
        SelectCommand="SELECT * FROM [Pace2013]" 
            DeleteCommand="DELETE FROM [Pace2013] WHERE [id] = @original_id" 
            InsertCommand="INSERT INTO [Pace2013] ([nombres], [apellidos], [correo], [residencia], [sexo], [clave], [semestre], [transportacion], [hospedaje], [comentarios]) VALUES (@nombres, @apellidos, @correo, @residencia, @sexo, @clave, @semestre, @transportacion, @hospedaje, @comentarios)" 
            OldValuesParameterFormatString="original_{0}" 
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
        
            
            UpdateCommand="UPDATE [Pace2013] SET [nombres] = @nombres, [apellidos] = @apellidos, [correo] = @correo, [residencia] = @residencia, [sexo] = @sexo, [clave] = @clave, [semestre] = @semestre, [transportacion] = @transportacion, [hospedaje] = @hospedaje, [comentarios] = @comentarios WHERE [id] = @original_id">
        <DeleteParameters>
            <asp:Parameter Name="original_id" Type="Int32" />
        </DeleteParameters>
        <UpdateParameters>
            <asp:Parameter Name="nombres" Type="String" />
            <asp:Parameter Name="apellidos" Type="String" />
            <asp:Parameter Name="correo" Type="String" />
            <asp:Parameter Name="residencia" Type="String" />
            <asp:Parameter Name="sexo" Type="String" />
            <asp:Parameter Name="clave" Type="String" />
            <asp:Parameter Name="semestre" Type="String" />
            <asp:Parameter Name="transportacion" Type="String" />
            <asp:Parameter Name="hospedaje" Type="String" />
            <asp:Parameter Name="comentarios" Type="String" />
            <asp:Parameter Name="original_id" Type="Int32" />
        </UpdateParameters>
        <InsertParameters>
            <asp:Parameter Name="nombres" Type="String" />
            <asp:Parameter Name="apellidos" Type="String" />
            <asp:Parameter Name="correo" Type="String" />
            <asp:Parameter Name="residencia" Type="String" />
            <asp:Parameter Name="sexo" Type="String" />
            <asp:Parameter Name="clave" Type="String" />
            <asp:Parameter Name="semestre" Type="String" />
            <asp:Parameter Name="transportacion" Type="String" />
            <asp:Parameter Name="hospedaje" Type="String" />
            <asp:Parameter Name="comentarios" Type="String" />
        </InsertParameters>
        </asp:SqlDataSource>
    
    
    <asp:GridView ID="grvpace2013" runat="server" AutoGenerateColumns="False" DataKeyNames="id" 
        DataSourceID="SqlDSpace2013" BackColor="White" BorderColor="#3366CC" 
        BorderStyle="None" BorderWidth="1px" CellPadding="4" Visible="False" 
            AllowSorting="True">
        <RowStyle BackColor="White" ForeColor="#003399" Font-Names="Arial" 
            Font-Size="8pt" />
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
            <asp:BoundField DataField="id" HeaderText="id" InsertVisible="False" 
                ReadOnly="True" SortExpression="id" />
            <asp:BoundField DataField="nombres" HeaderText="nombres" 
                SortExpression="nombres" />
            <asp:BoundField DataField="apellidos" HeaderText="apellidos" 
                SortExpression="apellidos" />
            <asp:BoundField DataField="correo" HeaderText="correo" 
                SortExpression="correo" />
            <asp:BoundField DataField="residencia" HeaderText="residencia" 
                SortExpression="residencia" />
            <asp:BoundField DataField="sexo" HeaderText="sexo" 
                SortExpression="sexo" />
            <asp:BoundField DataField="clave" HeaderText="clave" 
                SortExpression="clave" />
            <asp:BoundField DataField="semestre" HeaderText="semestre" 
                SortExpression="semestre" />
            <asp:BoundField DataField="transportacion" HeaderText="transportacion" 
                SortExpression="transportacion" />
            <asp:BoundField DataField="hospedaje" HeaderText="hospedaje" 
                SortExpression="hospedaje" />
            <asp:BoundField DataField="comentarios" HeaderText="comentarios" 
                SortExpression="comentarios" />
        </Columns>
        <FooterStyle BackColor="#99CCCC" ForeColor="#003399" />
        <PagerStyle BackColor="#99CCCC" ForeColor="#003399" HorizontalAlign="Left" />
        <SelectedRowStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
        <HeaderStyle BackColor="White" Font-Bold="True" ForeColor="Black" 
            Font-Names="Arial" Font-Size="8pt" />
    </asp:GridView>        
    
        <asp:SqlDataSource ID="SqlDSmicroscopia2012" runat="server" 
            ConnectionString="<%$ ConnectionStrings:REGWEBConnectionString %>" 
            SelectCommand="SELECT * FROM [Microscopia2012]" 
            DeleteCommand="DELETE FROM [Microscopia2012] WHERE [id] = @original_id" 
            InsertCommand="INSERT INTO [Microscopia2012] ([nombres], [apellidos], [correo], [escolaridad], [institucion], [domicilio], [ciudad], [estado], [pais], [cp], [telefono], [fax], [hotel], [observaciones]) VALUES (@nombres, @apellidos, @correo, @escolaridad, @institucion, @domicilio, @ciudad, @estado, @pais, @cp, @telefono, @fax, @hotel, @observaciones)" 
            OldValuesParameterFormatString="original_{0}"             
            
            
            
            
            
            
            UpdateCommand="UPDATE [Microscopia2012] SET [nombres] = @nombres, [apellidos] = @apellidos, [correo] = @correo, [escolaridad] = @escolaridad, [institucion] = @institucion, [domicilio] = @domicilio, [ciudad] = @ciudad, [estado] = @estado, [pais] = @pais, [cp] = @cp, [telefono] = @telefono, [fax] = @fax, [hotel] = @hotel, [observaciones] = @observaciones WHERE [id] = @original_id">
        <DeleteParameters>
            <asp:Parameter Name="original_id" Type="Int32" />
        </DeleteParameters>
        <UpdateParameters>
            <asp:Parameter Name="nombres" Type="String" />
            <asp:Parameter Name="apellidos" Type="String" />
            <asp:Parameter Name="correo" Type="String" />
            <asp:Parameter Name="escolaridad" Type="String" />
            <asp:Parameter Name="institucion" Type="String" />
            <asp:Parameter Name="domicilio" Type="String" />
            <asp:Parameter Name="ciudad" Type="String" />
            <asp:Parameter Name="estado" Type="String" />
            <asp:Parameter Name="pais" Type="String" />
            <asp:Parameter Name="cp" Type="String" />
            <asp:Parameter Name="telefono" Type="String" />
            <asp:Parameter Name="fax" Type="String" />
            <asp:Parameter Name="hotel" Type="String" />
            <asp:Parameter Name="observaciones" Type="String" />
            <asp:Parameter Name="original_id" Type="Int32" />
        </UpdateParameters>
        <InsertParameters>
            <asp:Parameter Name="nombres" Type="String" />
            <asp:Parameter Name="apellidos" Type="String" />
            <asp:Parameter Name="correo" Type="String" />
            <asp:Parameter Name="escolaridad" Type="String" />
            <asp:Parameter Name="institucion" Type="String" />
            <asp:Parameter Name="domicilio" Type="String" />
            <asp:Parameter Name="ciudad" Type="String" />
            <asp:Parameter Name="estado" Type="String" />
            <asp:Parameter Name="pais" Type="String" />
            <asp:Parameter Name="cp" Type="String" />
            <asp:Parameter Name="telefono" Type="String" />
            <asp:Parameter Name="fax" Type="String" />
            <asp:Parameter Name="hotel" Type="String" />
            <asp:Parameter Name="observaciones" Type="String" />
        </InsertParameters>
        </asp:SqlDataSource>
    
    
    <asp:GridView ID="grvmicroscopia2012" runat="server" AutoGenerateColumns="False" DataKeyNames="id" 
        DataSourceID="SqlDSmicroscopia2012" BackColor="White" BorderColor="#3366CC" 
        BorderStyle="None" BorderWidth="1px" CellPadding="4" Visible="False" 
            AllowSorting="True">
        <RowStyle BackColor="White" ForeColor="#003399" Font-Names="Arial" 
            Font-Size="8pt" />
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
            <asp:BoundField DataField="id" HeaderText="id" InsertVisible="False" 
                ReadOnly="True" SortExpression="id" />
            <asp:BoundField DataField="nombres" HeaderText="nombres" 
                SortExpression="nombres" />
            <asp:BoundField DataField="apellidos" HeaderText="apellidos" 
                SortExpression="apellidos" />
            <asp:BoundField DataField="correo" HeaderText="correo" 
                SortExpression="correo" />
            <asp:BoundField DataField="escolaridad" HeaderText="escolaridad" 
                SortExpression="escolaridad" />
            <asp:BoundField DataField="institucion" HeaderText="institucion" 
                SortExpression="institucion" />
            <asp:BoundField DataField="domicilio" HeaderText="domicilio" 
                SortExpression="domicilio" />
            <asp:BoundField DataField="ciudad" HeaderText="ciudad" 
                SortExpression="ciudad" />
            <asp:BoundField DataField="estado" HeaderText="estado" 
                SortExpression="estado" />
            <asp:BoundField DataField="pais" HeaderText="pais" 
                SortExpression="pais" />
            <asp:BoundField DataField="cp" HeaderText="cp" SortExpression="cp" />
            <asp:BoundField DataField="telefono" HeaderText="telefono" 
                SortExpression="telefono" />
            <asp:BoundField DataField="fax" HeaderText="fax" SortExpression="fax" />
            <asp:BoundField DataField="hotel" HeaderText="hotel" SortExpression="hotel" />
            <asp:BoundField DataField="observaciones" HeaderText="observaciones" 
                SortExpression="observaciones" />
        </Columns>
        <FooterStyle BackColor="#99CCCC" ForeColor="#003399" />
        <PagerStyle BackColor="#99CCCC" ForeColor="#003399" HorizontalAlign="Left" />
        <SelectedRowStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
        <HeaderStyle BackColor="White" Font-Bold="True" ForeColor="Black" 
            Font-Names="Arial" Font-Size="8pt" />
    </asp:GridView>        
<%--    <br />--%>
        <asp:SqlDataSource ID="SqlDSanivindividual" runat="server" 
            ConnectionString="<%$ ConnectionStrings:REGWEBConnectionString %>" 
            SelectCommand="SELECT * FROM [Anivindividual]" 
            DeleteCommand="DELETE FROM [Anivindividual] WHERE [id] = @original_id" 
            InsertCommand="INSERT INTO [Anivindividual] ([nombres], [apellidos], [correo], [edad], [ajedrez], [atletica], [loteria], [pingpong], [comentarios]) VALUES (@nombres, @apellidos, @correo, @edad, @ajedrez, @atletica, @loteria, @pingpong, @comentarios)" 
            OldValuesParameterFormatString="original_{0}"             
            
            
            
            
            
            UpdateCommand="UPDATE [Anivindividual] SET [nombres] = @nombres, [apellidos] = @apellidos, [correo] = @correo, [edad] = @edad, [ajedrez] = @ajedrez, [atletica] = @atletica, [loteria] = @loteria, [pingpong] = @pingpong, [comentarios] = @comentarios WHERE [id] = @original_id">
        <DeleteParameters>
            <asp:Parameter Name="original_id" Type="Int32" />
        </DeleteParameters>
        <UpdateParameters>
            <asp:Parameter Name="nombres" Type="String" />
            <asp:Parameter Name="apellidos" Type="String" />
            <asp:Parameter Name="correo" Type="String" />
            <asp:Parameter Name="edad" Type="String" />
            <asp:Parameter Name="ajedrez" Type="String" />
            <asp:Parameter Name="atletica" Type="String" />
            <asp:Parameter Name="loteria" Type="String" />
            <asp:Parameter Name="pingpong" Type="String" />
            <asp:Parameter Name="comentarios" Type="String" />
            <asp:Parameter Name="original_id" Type="Int32" />
        </UpdateParameters>
        <InsertParameters>
            <asp:Parameter Name="nombres" Type="String" />
            <asp:Parameter Name="apellidos" Type="String" />
            <asp:Parameter Name="correo" Type="String" />
            <asp:Parameter Name="edad" Type="String" />
            <asp:Parameter Name="ajedrez" Type="String" />
            <asp:Parameter Name="atletica" Type="String" />
            <asp:Parameter Name="loteria" Type="String" />
            <asp:Parameter Name="pingpong" Type="String" />
            <asp:Parameter Name="comentarios" Type="String" />
        </InsertParameters>
        </asp:SqlDataSource>
    
    
    <asp:GridView ID="grvanivindividual" runat="server" AutoGenerateColumns="False" DataKeyNames="id" 
        DataSourceID="SqlDSanivindividual" BackColor="White" BorderColor="#3366CC" 
        BorderStyle="None" BorderWidth="1px" CellPadding="4" Visible="False" 
            AllowSorting="True">
        <RowStyle BackColor="White" ForeColor="#003399" Font-Names="Arial" 
            Font-Size="8pt" />
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
            <asp:BoundField DataField="id" HeaderText="id" InsertVisible="False" 
                ReadOnly="True" SortExpression="id" />
            <asp:BoundField DataField="nombres" HeaderText="nombres" 
                SortExpression="nombres" />
            <asp:BoundField DataField="apellidos" HeaderText="apellidos" 
                SortExpression="apellidos" />
            <asp:BoundField DataField="correo" HeaderText="correo" 
                SortExpression="correo" />
            <asp:BoundField DataField="edad" HeaderText="edad" 
                SortExpression="edad" />
            <asp:BoundField DataField="ajedrez" HeaderText="ajedrez" 
                SortExpression="ajedrez" />
            <asp:BoundField DataField="atletica" HeaderText="atletica" 
                SortExpression="atletica" />
            <asp:BoundField DataField="loteria" HeaderText="loteria" 
                SortExpression="loteria" />
            <asp:BoundField DataField="pingpong" HeaderText="pingpong" 
                SortExpression="pingpong" />
            <asp:BoundField DataField="comentarios" HeaderText="comentarios" 
                SortExpression="comentarios" />
        </Columns>
        <FooterStyle BackColor="#99CCCC" ForeColor="#003399" />
        <PagerStyle BackColor="#99CCCC" ForeColor="#003399" HorizontalAlign="Left" />
        <SelectedRowStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
        <HeaderStyle BackColor="White" Font-Bold="True" ForeColor="Black" 
            Font-Names="Arial" Font-Size="8pt" />
    </asp:GridView>        
<%--    <br />--%>
        <asp:SqlDataSource ID="SqlDSanivatv" runat="server" 
            ConnectionString="<%$ ConnectionStrings:REGWEBConnectionString %>" 
            SelectCommand="SELECT * FROM [Anivatv]" 
            DeleteCommand="DELETE FROM [Anivatv] WHERE [id] = @original_id" 
            InsertCommand="INSERT INTO [Anivatv] ([nombres], [apellidos], [correo], [edad], [vehiculo], [camiseta], [nombrei1], [edadi1], [nombrei2], [edadi2], [nombrei3], [edadi3], [nombrei4], [edadi4], [nombrei5], [edadi5], [nombrei6], [edadi6], [nombrei7], [edadi7], [nombrei8], [edadi8], [comentarios]) VALUES (@nombres, @apellidos, @correo, @edad, @vehiculo, @camiseta, @nombrei1, @edadi1, @nombrei2, @edadi2, @nombrei3, @edadi3, @nombrei4, @edadi4, @nombrei5, @edadi5, @nombrei6, @edadi6, @nombrei7, @edadi7, @nombrei8, @edadi8, @comentarios)" 
            OldValuesParameterFormatString="original_{0}"             
            
            
            
            
            UpdateCommand="UPDATE [Anivatv] SET [nombres] = @nombres, [apellidos] = @apellidos, [correo] = @correo, [edad] = @edad, [vehiculo] = @vehiculo, [camiseta] = @camiseta, [nombrei1] = @nombrei1, [edadi1] = @edadi1, [nombrei2] = @nombrei2, [edadi2] = @edadi2, [nombrei3] = @nombrei3, [edadi3] = @edadi3, [nombrei4] = @nombrei4, [edadi4] = @edadi4, [nombrei5] = @nombrei5, [edadi5] = @edadi5, [nombrei6] = @nombrei6, [edadi6] = @edadi6, [nombrei7] = @nombrei7, [edadi7] = @edadi7, [nombrei8] = @nombrei8, [edadi8] = @edadi8, [comentarios] = @comentarios WHERE [id] = @original_id">
        <DeleteParameters>
            <asp:Parameter Name="original_id" Type="Int32" />
        </DeleteParameters>
        <UpdateParameters>
            <asp:Parameter Name="nombres" Type="String" />
            <asp:Parameter Name="apellidos" Type="String" />
            <asp:Parameter Name="correo" Type="String" />
            <asp:Parameter Name="edad" Type="String" />
            <asp:Parameter Name="vehiculo" Type="String" />
            <asp:Parameter Name="camiseta" Type="String" />
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
            <asp:Parameter Name="comentarios" Type="String" />
            <asp:Parameter Name="original_id" Type="Int32" />
        </UpdateParameters>
        <InsertParameters>
            <asp:Parameter Name="nombres" Type="String" />
            <asp:Parameter Name="apellidos" Type="String" />
            <asp:Parameter Name="correo" Type="String" />
            <asp:Parameter Name="edad" Type="String" />
            <asp:Parameter Name="vehiculo" Type="String" />
            <asp:Parameter Name="camiseta" Type="String" />
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
            <asp:Parameter Name="comentarios" Type="String" />
        </InsertParameters>
        </asp:SqlDataSource>
    
    
    <asp:GridView ID="grvanivatv" runat="server" AutoGenerateColumns="False" DataKeyNames="id" 
        DataSourceID="SqlDSanivatv" BackColor="White" BorderColor="#3366CC" 
        BorderStyle="None" BorderWidth="1px" CellPadding="4" Visible="False" 
            AllowSorting="True">
        <RowStyle BackColor="White" ForeColor="#003399" Font-Names="Arial" 
            Font-Size="8pt" />
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
            <asp:BoundField DataField="id" HeaderText="id" InsertVisible="False" 
                ReadOnly="True" SortExpression="id" />
            <asp:BoundField DataField="nombres" HeaderText="nombres" 
                SortExpression="nombres" />
            <asp:BoundField DataField="apellidos" HeaderText="apellidos" 
                SortExpression="apellidos" />
            <asp:BoundField DataField="correo" HeaderText="correo" 
                SortExpression="correo" />
            <asp:BoundField DataField="edad" HeaderText="edad" 
                SortExpression="edad" />
            <asp:BoundField DataField="vehiculo" HeaderText="vehiculo" 
                SortExpression="vehiculo" />
            <asp:BoundField DataField="camiseta" HeaderText="camiseta" 
                SortExpression="camiseta" />
            <asp:BoundField DataField="nombrei1" HeaderText="nombrei1" 
                SortExpression="nombrei1" />
            <asp:BoundField DataField="edadi1" HeaderText="edadi1" 
                SortExpression="edadi1" />
            <asp:BoundField DataField="nombrei2" HeaderText="nombrei2" 
                SortExpression="nombrei2" />
            <asp:BoundField DataField="edadi2" HeaderText="edadi2" 
                SortExpression="edadi2" />
            <asp:BoundField DataField="nombrei3" HeaderText="nombrei3" 
                SortExpression="nombrei3" />
            <asp:BoundField DataField="edadi3" HeaderText="edadi3" 
                SortExpression="edadi3" />
            <asp:BoundField DataField="nombrei4" HeaderText="nombrei4" 
                SortExpression="nombrei4" />
            <asp:BoundField DataField="edadi4" HeaderText="edadi4" 
                SortExpression="edadi4" />
            <asp:BoundField DataField="nombrei5" HeaderText="nombrei5" 
                SortExpression="nombrei5" />
            <asp:BoundField DataField="edadi5" HeaderText="edadi5" 
                SortExpression="edadi5" />
            <asp:BoundField DataField="nombrei6" HeaderText="nombrei6" 
                SortExpression="nombrei6" />
            <asp:BoundField DataField="edadi6" HeaderText="edadi6" 
                SortExpression="edadi6" />
            <asp:BoundField DataField="nombrei7" HeaderText="nombrei7" 
                SortExpression="nombrei7" />
            <asp:BoundField DataField="edadi7" HeaderText="edadi7" 
                SortExpression="edadi7" />
            <asp:BoundField DataField="nombrei8" HeaderText="nombrei8" 
                SortExpression="nombrei8" />
            <asp:BoundField DataField="edadi8" HeaderText="edadi8" 
                SortExpression="edadi8" />
            <asp:BoundField DataField="comentarios" HeaderText="comentarios" 
                SortExpression="comentarios" />
        </Columns>
        <FooterStyle BackColor="#99CCCC" ForeColor="#003399" />
        <PagerStyle BackColor="#99CCCC" ForeColor="#003399" HorizontalAlign="Left" />
        <SelectedRowStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
        <HeaderStyle BackColor="White" Font-Bold="True" ForeColor="Black" 
            Font-Names="Arial" Font-Size="8pt" />
    </asp:GridView>        
<%--    <br />--%>
        <asp:SqlDataSource ID="SqlDSanivtriatlon" runat="server" 
            ConnectionString="<%$ ConnectionStrings:REGWEBConnectionString %>" 
            SelectCommand="SELECT * FROM [Anivtriatlon]" 
            DeleteCommand="DELETE FROM [Anivtriatlon] WHERE [id] = @original_id" 
            InsertCommand="INSERT INTO [Anivtriatlon] ([nombres], [apellidos], [correo], [edad], [categoria], [modalidad], [rama], [nombreclub], [tiposangre], [acompanantes], [comentarios]) VALUES (@nombres, @apellidos, @correo, @edad, @categoria, @modalidad, @rama, @nombreclub, @tiposangre, @acompanantes, @comentarios)" 
            OldValuesParameterFormatString="original_{0}"             
            
            
            
            UpdateCommand="UPDATE [Anivtriatlon] SET [nombres] = @nombres, [apellidos] = @apellidos, [correo] = @correo, [edad] = @edad, [categoria] = @categoria, [modalidad] = @modalidad, [rama] = @rama, [nombreclub] = @nombreclub, [tiposangre] = @tiposangre, [acompanantes] = @acompanantes, [comentarios] = @comentarios WHERE [id] = @original_id">
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
    
    
    <asp:GridView ID="grvanivtriatlon" runat="server" AutoGenerateColumns="False" DataKeyNames="id" 
        DataSourceID="SqlDSanivtriatlon" BackColor="White" BorderColor="#3366CC" 
        BorderStyle="None" BorderWidth="1px" CellPadding="4" Visible="False" 
            AllowSorting="True">
        <RowStyle BackColor="White" ForeColor="#003399" Font-Names="Arial" 
            Font-Size="8pt" />
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
            <asp:BoundField DataField="id" HeaderText="id" InsertVisible="False" 
                ReadOnly="True" SortExpression="id" />
            <asp:BoundField DataField="nombres" HeaderText="nombres" 
                SortExpression="nombres" />
            <asp:BoundField DataField="apellidos" HeaderText="apellidos" 
                SortExpression="apellidos" />
            <asp:BoundField DataField="correo" HeaderText="correo" 
                SortExpression="correo" />
            <asp:BoundField DataField="edad" HeaderText="edad" 
                SortExpression="edad" />
            <asp:BoundField DataField="categoria" HeaderText="categoria" 
                SortExpression="categoria" />
            <asp:BoundField DataField="modalidad" HeaderText="modalidad" 
                SortExpression="modalidad" />
            <asp:BoundField DataField="rama" HeaderText="rama" 
                SortExpression="rama" />
            <asp:BoundField DataField="nombreclub" HeaderText="nombreclub" 
                SortExpression="nombreclub" />
            <asp:BoundField DataField="tiposangre" HeaderText="tiposangre" 
                SortExpression="tiposangre" />
            <asp:BoundField DataField="acompanantes" HeaderText="acompanantes" 
                SortExpression="acompanantes" />
            <asp:BoundField DataField="comentarios" HeaderText="comentarios" 
                SortExpression="comentarios" />
        </Columns>
        <FooterStyle BackColor="#99CCCC" ForeColor="#003399" />
        <PagerStyle BackColor="#99CCCC" ForeColor="#003399" HorizontalAlign="Left" />
        <SelectedRowStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
        <HeaderStyle BackColor="White" Font-Bold="True" ForeColor="Black" 
            Font-Names="Arial" Font-Size="8pt" />
    </asp:GridView>        
<%--        <br />--%>
        <asp:SqlDataSource ID="SqlDSanivequipos" runat="server" 
            ConnectionString="<%$ ConnectionStrings:REGWEBConnectionString %>" 
            SelectCommand="SELECT * FROM [Anivequipos]" 
            DeleteCommand="DELETE FROM [Anivequipos] WHERE [id] = @original_id" 
            InsertCommand="INSERT INTO [Anivequipos] ([nombres], [apellidos], [correo], [edad], [disciplina], [nombreequipo], [nombrei1], [edadi1], [nombrei2], [edadi2], [nombrei3], [edadi3], [nombrei4], [edadi4], [nombrei5], [edadi5], [nombrei6], [edadi6], [nombrei7], [edadi7], [nombrei8], [edadi8], [nombrei9], [edadi9], [nombrei10], [edadi10], [nombrei11], [edadi11], [nombrei12], [edadi12], [nombrei13], [edadi13], [nombrei14], [edadi14], [nombrei15], [edadi15], [comentarios]) VALUES (@nombres, @apellidos, @correo, @edad, @disciplina, @nombreequipo, @nombrei1, @edadi1, @nombrei2, @edadi2, @nombrei3, @edadi3, @nombrei4, @edadi4, @nombrei5, @edadi5, @nombrei6, @edadi6, @nombrei7, @edadi7, @nombrei8, @edadi8, @nombrei9, @edadi9, @nombrei10, @edadi10, @nombrei11, @edadi11, @nombrei12, @edadi12, @nombrei13, @edadi13, @nombrei14, @edadi14, @nombrei15, @edadi15, @comentarios)" 
            OldValuesParameterFormatString="original_{0}"             
            
            
            UpdateCommand="UPDATE [Anivequipos] SET [nombres] = @nombres, [apellidos] = @apellidos, [correo] = @correo, [edad] = @edad, [disciplina] = @disciplina, [nombreequipo] = @nombreequipo, [nombrei1] = @nombrei1, [edadi1] = @edadi1, [nombrei2] = @nombrei2, [edadi2] = @edadi2, [nombrei3] = @nombrei3, [edadi3] = @edadi3, [nombrei4] = @nombrei4, [edadi4] = @edadi4, [nombrei5] = @nombrei5, [edadi5] = @edadi5, [nombrei6] = @nombrei6, [edadi6] = @edadi6, [nombrei7] = @nombrei7, [edadi7] = @edadi7, [nombrei8] = @nombrei8, [edadi8] = @edadi8, [nombrei9] = @nombrei9, [edadi9] = @edadi9, [nombrei10] = @nombrei10, [edadi10] = @edadi10, [nombrei11] = @nombrei11, [edadi11] = @edadi11, [nombrei12] = @nombrei12, [edadi12] = @edadi12, [nombrei13] = @nombrei13, [edadi13] = @edadi13, [nombrei14] = @nombrei14, [edadi14] = @edadi14, [nombrei15] = @nombrei15, [edadi15] = @edadi15, [comentarios] = @comentarios WHERE [id] = @original_id">
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
    
    
    <asp:GridView ID="grvanivequipos" runat="server" AutoGenerateColumns="False" DataKeyNames="id" 
        DataSourceID="SqlDSanivequipos" BackColor="White" BorderColor="#3366CC" 
        BorderStyle="None" BorderWidth="1px" CellPadding="4" Visible="False" 
            AllowSorting="True">
        <RowStyle BackColor="White" ForeColor="#003399" Font-Names="Arial" 
            Font-Size="8pt" />
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
            <asp:BoundField DataField="id" HeaderText="id" InsertVisible="False" 
                ReadOnly="True" SortExpression="id" />
            <asp:BoundField DataField="nombres" HeaderText="nombres" 
                SortExpression="nombres" />
            <asp:BoundField DataField="apellidos" HeaderText="apellidos" 
                SortExpression="apellidos" />
            <asp:BoundField DataField="correo" HeaderText="correo" 
                SortExpression="correo" />
            <asp:BoundField DataField="edad" HeaderText="edad" 
                SortExpression="edad" />
            <asp:BoundField DataField="disciplina" HeaderText="disciplina" 
                SortExpression="disciplina" />
            <asp:BoundField DataField="nombreequipo" HeaderText="nombreequipo" 
                SortExpression="nombreequipo" />
            <asp:BoundField DataField="nombrei1" HeaderText="nombrei1" 
                SortExpression="nombrei1" />
            <asp:BoundField DataField="edadi1" HeaderText="edadi1" 
                SortExpression="edadi1" />
            <asp:BoundField DataField="nombrei2" HeaderText="nombrei2" 
                SortExpression="nombrei2" />
            <asp:BoundField DataField="edadi2" HeaderText="edadi2" 
                SortExpression="edadi2" />
            <asp:BoundField DataField="nombrei3" HeaderText="nombrei3" 
                SortExpression="nombrei3" />
            <asp:BoundField DataField="edadi3" HeaderText="edadi3" 
                SortExpression="edadi3" />
            <asp:BoundField DataField="nombrei4" HeaderText="nombrei4" 
                SortExpression="nombrei4" />
            <asp:BoundField DataField="edadi4" HeaderText="edadi4" 
                SortExpression="edadi4" />
            <asp:BoundField DataField="nombrei5" HeaderText="nombrei5" 
                SortExpression="nombrei5" />
            <asp:BoundField DataField="edadi5" HeaderText="edadi5" 
                SortExpression="edadi5" />
            <asp:BoundField DataField="nombrei6" HeaderText="nombrei6" 
                SortExpression="nombrei6" />
            <asp:BoundField DataField="edadi6" HeaderText="edadi6" 
                SortExpression="edadi6" />
            <asp:BoundField DataField="nombrei7" HeaderText="nombrei7" 
                SortExpression="nombrei7" />
            <asp:BoundField DataField="edadi7" HeaderText="edadi7" 
                SortExpression="edadi7" />
            <asp:BoundField DataField="nombrei8" HeaderText="nombrei8" 
                SortExpression="nombrei8" />
            <asp:BoundField DataField="edadi8" HeaderText="edadi8" 
                SortExpression="edadi8" />
            <asp:BoundField DataField="nombrei9" HeaderText="nombrei9" 
                SortExpression="nombrei9" />
            <asp:BoundField DataField="edadi9" HeaderText="edadi9" 
                SortExpression="edadi9" />
            <asp:BoundField DataField="nombrei10" HeaderText="nombrei10" 
                SortExpression="nombrei10" />
            <asp:BoundField DataField="edadi10" HeaderText="edadi10" 
                SortExpression="edadi10" />
            <asp:BoundField DataField="nombrei11" HeaderText="nombrei11" 
                SortExpression="nombrei11" />
            <asp:BoundField DataField="edadi11" HeaderText="edadi11" 
                SortExpression="edadi11" />
            <asp:BoundField DataField="nombrei12" HeaderText="nombrei12" 
                SortExpression="nombrei12" />
            <asp:BoundField DataField="edadi12" HeaderText="edadi12" 
                SortExpression="edadi12" />
            <asp:BoundField DataField="nombrei13" HeaderText="nombrei13" 
                SortExpression="nombrei13" />
            <asp:BoundField DataField="edadi13" HeaderText="edadi13" 
                SortExpression="edadi13" />
            <asp:BoundField DataField="nombrei14" HeaderText="nombrei14" 
                SortExpression="nombrei14" />
            <asp:BoundField DataField="edadi14" HeaderText="edadi14" 
                SortExpression="edadi14" />
            <asp:BoundField DataField="nombrei15" HeaderText="nombrei15" 
                SortExpression="nombrei15" />
            <asp:BoundField DataField="edadi15" HeaderText="edadi15" 
                SortExpression="edadi15" />
            <asp:BoundField DataField="comentarios" HeaderText="comentarios" 
                SortExpression="comentarios" />
        </Columns>
        <FooterStyle BackColor="#99CCCC" ForeColor="#003399" />
        <PagerStyle BackColor="#99CCCC" ForeColor="#003399" HorizontalAlign="Left" />
        <SelectedRowStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
        <HeaderStyle BackColor="White" Font-Bold="True" ForeColor="Black" 
            Font-Names="Arial" Font-Size="8pt" />
    </asp:GridView>        
<%--        <br />--%>
    <asp:SqlDataSource ID="SqlDSanivpesca" runat="server" 
        ConnectionString="<%$ ConnectionStrings:REGWEBConnectionString %>" 
        SelectCommand="SELECT * FROM [Anivpesca]" 
            DeleteCommand="DELETE FROM [Anivpesca] WHERE [id] = @original_id" 
            InsertCommand="INSERT INTO [Anivpesca] ([nombres], [apellidos], [correo], [edad], [embarcacion], [nombret1], [edadt1], [nombret2], [edadt2], [nombret3], [edadt3], [nombret4], [edadt4], [comentarios]) VALUES (@nombres, @apellidos, @correo, @edad, @embarcacion, @nombret1, @edadt1, @nombret2, @edadt2, @nombret3, @edadt3, @nombret4, @edadt4, @comentarios)" 
            OldValuesParameterFormatString="original_{0}"             
            
            UpdateCommand="UPDATE [Anivpesca] SET [nombres] = @nombres, [apellidos] = @apellidos, [correo] = @correo, [edad] = @edad, [embarcacion] = @embarcacion, [nombret1] = @nombret1, [edadt1] = @edadt1, [nombret2] = @nombret2, [edadt2] = @edadt2, [nombret3] = @nombret3, [edadt3] = @edadt3, [nombret4] = @nombret4, [edadt4] = @edadt4, [comentarios] = @comentarios WHERE [id] = @original_id">
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
    
    
    <asp:GridView ID="grvanivpesca" runat="server" AutoGenerateColumns="False" DataKeyNames="id" 
        DataSourceID="SqlDSanivpesca" BackColor="White" BorderColor="#3366CC" 
        BorderStyle="None" BorderWidth="1px" CellPadding="4" Visible="False" 
            AllowSorting="True">
        <RowStyle BackColor="White" ForeColor="#003399" Font-Names="Arial" 
            Font-Size="8pt" />
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
            <asp:BoundField DataField="id" HeaderText="id" InsertVisible="False" 
                ReadOnly="True" SortExpression="id" />
            <asp:BoundField DataField="nombres" HeaderText="nombres" 
                SortExpression="nombres" />
            <asp:BoundField DataField="apellidos" HeaderText="apellidos" 
                SortExpression="apellidos" />
            <asp:BoundField DataField="correo" HeaderText="correo" 
                SortExpression="correo" />
            <asp:BoundField DataField="edad" HeaderText="edad" 
                SortExpression="edad" />
            <asp:BoundField DataField="embarcacion" HeaderText="embarcacion" 
                SortExpression="embarcacion" />
            <asp:BoundField DataField="nombret1" HeaderText="nombret1" 
                SortExpression="nombret1" />
            <asp:BoundField DataField="edadt1" HeaderText="edadt1" 
                SortExpression="edadt1" />
            <asp:BoundField DataField="nombret2" HeaderText="nombret2" 
                SortExpression="nombret2" />
            <asp:BoundField DataField="edadt2" HeaderText="edadt2" 
                SortExpression="edadt2" />
            <asp:BoundField DataField="nombret3" HeaderText="nombret3" 
                SortExpression="nombret3" />
            <asp:BoundField DataField="edadt3" HeaderText="edadt3" 
                SortExpression="edadt3" />
            <asp:BoundField DataField="nombret4" HeaderText="nombret4" 
                SortExpression="nombret4" />
            <asp:BoundField DataField="edadt4" HeaderText="edadt4" 
                SortExpression="edadt4" />
            <asp:BoundField DataField="comentarios" HeaderText="comentarios" 
                SortExpression="comentarios" />
        </Columns>
        <FooterStyle BackColor="#99CCCC" ForeColor="#003399" />
        <PagerStyle BackColor="#99CCCC" ForeColor="#003399" HorizontalAlign="Left" />
        <SelectedRowStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
        <HeaderStyle BackColor="White" Font-Bold="True" ForeColor="Black" 
            Font-Names="Arial" Font-Size="8pt" />
    </asp:GridView>        
<%--        <br />--%>
    <asp:SqlDataSource ID="SqlDSregistroWeb" runat="server" 
        ConnectionString="<%$ ConnectionStrings:REGWEBConnectionString %>" 
        SelectCommand="SELECT * FROM [RegistroWeb]" 
            DeleteCommand="DELETE FROM [RegistroWeb] WHERE [id] = @original_id" 
            InsertCommand="INSERT INTO [RegistroWeb] ([tituloEvento], [nombres], [apellidos], [correo], [domicilio], [ciudad], [estado], [pais], [cp], [telefono], [fax], [institucion], [extramuros], [llegalinea], [llegavuelo], [llegafecha], [llegahora], [salelinea], [salevuelo], [salefecha], [salehora], [hotel], [comentarios]) VALUES (@tituloEvento, @nombres, @apellidos, @correo, @domicilio, @ciudad, @estado, @pais, @cp, @telefono, @fax, @institucion, @extramuros, @llegalinea, @llegavuelo, @llegafecha, @llegahora, @salelinea, @salevuelo, @salefecha, @salehora, @hotel, @comentarios)" 
            OldValuesParameterFormatString="original_{0}"             
            UpdateCommand="UPDATE [RegistroWeb] SET [tituloEvento] = @tituloEvento, [nombres] = @nombres, [apellidos] = @apellidos, [correo] = @correo, [domicilio] = @domicilio, [ciudad] = @ciudad, [estado] = @estado, [pais] = @pais, [cp] = @cp, [telefono] = @telefono, [fax] = @fax, [institucion] = @institucion, [extramuros] = @extramuros, [llegalinea] = @llegalinea, [llegavuelo] = @llegavuelo, [llegafecha] = @llegafecha, [llegahora] = @llegahora, [salelinea] = @salelinea, [salevuelo] = @salevuelo, [salefecha] = @salefecha, [salehora] = @salehora, [hotel] = @hotel, [comentarios] = @comentarios WHERE [id] = @original_id">
        <DeleteParameters>
            <asp:Parameter Name="original_id" Type="Int32" />
        </DeleteParameters>
        <UpdateParameters>
            <asp:Parameter Name="tituloEvento" Type="String" />
            <asp:Parameter Name="nombres" Type="String" />
            <asp:Parameter Name="apellidos" Type="String" />
            <asp:Parameter Name="correo" Type="String" />
            <asp:Parameter Name="domicilio" Type="String" />
            <asp:Parameter Name="ciudad" Type="String" />
            <asp:Parameter Name="estado" Type="String" />
            <asp:Parameter Name="pais" Type="String" />
            <asp:Parameter Name="cp" Type="String" />
            <asp:Parameter Name="telefono" Type="String" />
            <asp:Parameter Name="fax" Type="String" />
            <asp:Parameter Name="institucion" Type="String" />
            <asp:Parameter Name="extramuros" Type="String" />
            <asp:Parameter Name="llegalinea" Type="String" />
            <asp:Parameter Name="llegavuelo" Type="String" />
            <asp:Parameter Name="llegafecha" Type="String" />
            <asp:Parameter Name="llegahora" Type="String" />
            <asp:Parameter Name="salelinea" Type="String" />
            <asp:Parameter Name="salevuelo" Type="String" />
            <asp:Parameter Name="salefecha" Type="String" />
            <asp:Parameter Name="salehora" Type="String" />
            <asp:Parameter Name="hotel" Type="String" />
            <asp:Parameter Name="comentarios" Type="String" />
            <asp:Parameter Name="original_id" Type="Int32" />
        </UpdateParameters>
        <InsertParameters>
            <asp:Parameter Name="tituloEvento" Type="String" />
            <asp:Parameter Name="nombres" Type="String" />
            <asp:Parameter Name="apellidos" Type="String" />
            <asp:Parameter Name="correo" Type="String" />
            <asp:Parameter Name="domicilio" Type="String" />
            <asp:Parameter Name="ciudad" Type="String" />
            <asp:Parameter Name="estado" Type="String" />
            <asp:Parameter Name="pais" Type="String" />
            <asp:Parameter Name="cp" Type="String" />
            <asp:Parameter Name="telefono" Type="String" />
            <asp:Parameter Name="fax" Type="String" />
            <asp:Parameter Name="institucion" Type="String" />
            <asp:Parameter Name="extramuros" Type="String" />
            <asp:Parameter Name="llegalinea" Type="String" />
            <asp:Parameter Name="llegavuelo" Type="String" />
            <asp:Parameter Name="llegafecha" Type="String" />
            <asp:Parameter Name="llegahora" Type="String" />
            <asp:Parameter Name="salelinea" Type="String" />
            <asp:Parameter Name="salevuelo" Type="String" />
            <asp:Parameter Name="salefecha" Type="String" />
            <asp:Parameter Name="salehora" Type="String" />
            <asp:Parameter Name="hotel" Type="String" />
            <asp:Parameter Name="comentarios" Type="String" />
        </InsertParameters>
        </asp:SqlDataSource>
    
    
    <asp:GridView ID="grvregistroWeb" runat="server" AutoGenerateColumns="False" DataKeyNames="id" 
        DataSourceID="SqlDSregistroWeb" BackColor="White" BorderColor="#3366CC" 
        BorderStyle="None" BorderWidth="1px" CellPadding="4" Visible="False" 
            AllowSorting="True">
        <RowStyle BackColor="White" ForeColor="#003399" Font-Names="Arial" 
            Font-Size="8pt" />
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
            <asp:BoundField DataField="id" HeaderText="id" InsertVisible="False" 
                ReadOnly="True" SortExpression="id" />
            <asp:BoundField DataField="tituloEvento" HeaderText="tituloEvento" 
                SortExpression="tituloEvento" />
            <asp:BoundField DataField="nombres" HeaderText="nombres" 
                SortExpression="nombres" />
            <asp:BoundField DataField="apellidos" HeaderText="apellidos" 
                SortExpression="apellidos" />
            <asp:BoundField DataField="correo" HeaderText="correo" 
                SortExpression="correo" />
            <asp:BoundField DataField="domicilio" HeaderText="domicilio" 
                SortExpression="domicilio" />
            <asp:BoundField DataField="ciudad" HeaderText="ciudad" 
                SortExpression="ciudad" />
            <asp:BoundField DataField="estado" HeaderText="estado" 
                SortExpression="estado" />
            <asp:BoundField DataField="pais" HeaderText="pais" 
                SortExpression="pais" />
            <asp:BoundField DataField="cp" HeaderText="cp" 
                SortExpression="cp" />
            <asp:BoundField DataField="telefono" HeaderText="telefono" 
                SortExpression="telefono" />
            <asp:BoundField DataField="fax" HeaderText="fax" SortExpression="fax" />
            <asp:BoundField DataField="institucion" HeaderText="institucion" 
                SortExpression="institucion" />
            <asp:BoundField DataField="extramuros" HeaderText="extramuros" 
                SortExpression="extramuros" />
            <asp:BoundField DataField="llegalinea" HeaderText="llegalinea" 
                SortExpression="llegalinea" />
            <asp:BoundField DataField="llegavuelo" HeaderText="llegavuelo" 
                SortExpression="llegavuelo" />
            <asp:BoundField DataField="llegafecha" HeaderText="llegafecha" 
                SortExpression="llegafecha" />
            <asp:BoundField DataField="llegahora" HeaderText="llegahora" 
                SortExpression="llegahora" />
            <asp:BoundField DataField="salelinea" HeaderText="salelinea" 
                SortExpression="salelinea" />
            <asp:BoundField DataField="salevuelo" HeaderText="salevuelo" 
                SortExpression="salevuelo" />
            <asp:BoundField DataField="salefecha" HeaderText="salefecha" 
                SortExpression="salefecha" />
            <asp:BoundField DataField="salehora" HeaderText="salehora" 
                SortExpression="salehora" />
            <asp:BoundField DataField="hotel" HeaderText="hotel" SortExpression="hotel" />
            <asp:BoundField DataField="comentarios" HeaderText="comentarios" 
                SortExpression="comentarios" />
        </Columns>
        <FooterStyle BackColor="#99CCCC" ForeColor="#003399" />
        <PagerStyle BackColor="#99CCCC" ForeColor="#003399" HorizontalAlign="Left" />
        <SelectedRowStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
        <HeaderStyle BackColor="White" Font-Bold="True" ForeColor="Black" 
            Font-Names="Arial" Font-Size="8pt" />
    </asp:GridView>        
<%--        <br />--%>

    <asp:SqlDataSource ID="SqlDSoxidativestress2012" runat="server" 
        ConnectionString="<%$ ConnectionStrings:REGWEBConnectionString %>" 
        SelectCommand="SELECT * FROM [Oxidativestress2012]" 
            DeleteCommand="DELETE FROM [Oxidativestress2012] WHERE [id] = @original_id" 
            InsertCommand="INSERT INTO [Oxidativestress2012] ([nombres], [apellidos], [correo], [domicilio], [ciudad], [estado], [pais], [cp], [telefono], [fax], [institucion], [estudiante], [beca], [cena], [comentarios], [factura], [facturaNombre], [facturaRFC], [facturaDireccion]) VALUES (@nombres, @apellidos, @correo, @domicilio, @ciudad, @estado, @pais, @cp, @telefono, @fax, @institucion, @estudiante, @beca, @cena, @comentarios, @factura, @facturaNombre, @facturaRFC, @facturaDireccion)" 
            OldValuesParameterFormatString="original_{0}" 
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            UpdateCommand="UPDATE [Oxidativestress2012] SET [nombres] = @nombres, [apellidos] = @apellidos, [correo] = @correo, [domicilio] = @domicilio, [ciudad] = @ciudad, [estado] = @estado, [pais] = @pais, [cp] = @cp, [telefono] = @telefono, [fax] = @fax, [institucion] = @institucion, [estudiante] = @estudiante, [beca] = @beca, [cena] = @cena, [comentarios] = @comentarios, [factura] = @factura, [facturaNombre] = @facturaNombre, [facturaRFC] = @facturaRFC, [facturaDireccion] = @facturaDireccion WHERE [id] = @original_id">
        <DeleteParameters>
            <asp:Parameter Name="original_id" Type="Int32" />
        </DeleteParameters>
        <UpdateParameters>
            <asp:Parameter Name="nombres" Type="String" />
            <asp:Parameter Name="apellidos" Type="String" />
            <asp:Parameter Name="correo" Type="String" />
            <asp:Parameter Name="domicilio" Type="String" />
            <asp:Parameter Name="ciudad" Type="String" />
            <asp:Parameter Name="estado" Type="String" />
            <asp:Parameter Name="pais" Type="String" />
            <asp:Parameter Name="cp" Type="String" />
            <asp:Parameter Name="telefono" Type="String" />
            <asp:Parameter Name="fax" Type="String" />
            <asp:Parameter Name="institucion" Type="String" />
            <asp:Parameter Name="estudiante" Type="String" />
            <asp:Parameter Name="beca" Type="String" />
            <asp:Parameter Name="cena" Type="String" />
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
            <asp:Parameter Name="domicilio" Type="String" />
            <asp:Parameter Name="ciudad" Type="String" />
            <asp:Parameter Name="estado" Type="String" />
            <asp:Parameter Name="pais" Type="String" />
            <asp:Parameter Name="cp" Type="String" />
            <asp:Parameter Name="telefono" Type="String" />
            <asp:Parameter Name="fax" Type="String" />
            <asp:Parameter Name="institucion" Type="String" />
            <asp:Parameter Name="estudiante" Type="String" />
            <asp:Parameter Name="beca" Type="String" />
            <asp:Parameter Name="cena" Type="String" />
            <asp:Parameter Name="comentarios" Type="String" />
            <asp:Parameter Name="factura" Type="String" />
            <asp:Parameter Name="facturaNombre" Type="String" />
            <asp:Parameter Name="facturaRFC" Type="String" />
            <asp:Parameter Name="facturaDireccion" Type="String" />
        </InsertParameters>
        </asp:SqlDataSource>
    
    <asp:GridView ID="grvoxidativestress2012" runat="server" 
            AutoGenerateColumns="False" DataKeyNames="id" 
        DataSourceID="SqlDSoxidativestress2012" BackColor="White" BorderColor="#3366CC" 
        BorderStyle="None" BorderWidth="1px" CellPadding="4" Visible="False" 
            AllowSorting="True">
        <RowStyle BackColor="White" ForeColor="#003399" Font-Names="Arial" 
            Font-Size="8pt" />
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
            <asp:BoundField DataField="id" HeaderText="id" InsertVisible="False" 
                ReadOnly="True" SortExpression="id" />
            <asp:BoundField DataField="nombres" HeaderText="nombres" 
                SortExpression="nombres" />
            <asp:BoundField DataField="apellidos" HeaderText="apellidos" 
                SortExpression="apellidos" />
            <asp:BoundField DataField="correo" HeaderText="correo" 
                SortExpression="correo" />
            <asp:BoundField DataField="domicilio" HeaderText="domicilio" 
                SortExpression="domicilio" />
            <asp:BoundField DataField="ciudad" HeaderText="ciudad" 
                SortExpression="ciudad" />
<asp:BoundField DataField="estado" HeaderText="estado" SortExpression="estado"></asp:BoundField>
<asp:BoundField DataField="pais" HeaderText="pais" SortExpression="pais"></asp:BoundField>
            <asp:BoundField DataField="cp" HeaderText="cp" SortExpression="cp" />
            <asp:BoundField DataField="telefono" HeaderText="telefono" 
                SortExpression="telefono" />
            <asp:BoundField DataField="fax" HeaderText="fax" 
                SortExpression="fax" />
            <asp:BoundField DataField="institucion" HeaderText="institucion" 
                SortExpression="institucion" />
            <asp:BoundField DataField="estudiante" HeaderText="estudiante" 
                SortExpression="estudiante" />
            <asp:BoundField DataField="beca" HeaderText="beca" 
                SortExpression="beca" />
            <asp:BoundField DataField="cena" HeaderText="cena" 
                SortExpression="cena" />
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
        <FooterStyle BackColor="#99CCCC" ForeColor="#003399" />
        <PagerStyle BackColor="#99CCCC" ForeColor="#003399" HorizontalAlign="Left" />
        <SelectedRowStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
        <HeaderStyle BackColor="White" Font-Bold="True" ForeColor="Black" 
            Font-Names="Arial" Font-Size="8pt" />
    </asp:GridView>        
    
<%--        <br />--%>

    <asp:SqlDataSource ID="SqlDSstatistical2013" runat="server" 
        ConnectionString="<%$ ConnectionStrings:REGWEBConnectionString %>" 
        SelectCommand="SELECT * FROM [Statistical2013]" 
            DeleteCommand="DELETE FROM [Statistical2013] WHERE [id] = @original_id" 
            InsertCommand="INSERT INTO [Statistical2013] ([nombres], [apellidos], [correo], [telefono], [institucion], [tema], [nivel], [asesores], [conocimientor], [conocimientoarcgis], [comentarios], [factura], [facturaNombre], [facturaRFC], [facturaDireccion]) VALUES (@nombres, @apellidos, @correo, @telefono, @institucion, @tema, @nivel, @asesores, @conocimientor, @conocimientoarcgis, @comentarios, @factura, @facturaNombre, @facturaRFC, @facturaDireccion)" 
            OldValuesParameterFormatString="original_{0}" 
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            UpdateCommand="UPDATE [Statistical2013] SET [nombres] = @nombres, [apellidos] = @apellidos, [correo] = @correo, [telefono] = @telefono, [institucion] = @institucion, [tema] = @tema, [nivel] = @nivel, [asesores] = @asesores, [conocimientor] = @conocimientor, [conocimientoarcgis] = @conocimientoarcgis, [comentarios] = @comentarios, [factura] = @factura, [facturaNombre] = @facturaNombre, [facturaRFC] = @facturaRFC, [facturaDireccion] = @facturaDireccion WHERE [id] = @original_id">
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
    
    <asp:GridView ID="grvstatistical2013" runat="server" 
            AutoGenerateColumns="False" DataKeyNames="id" 
        DataSourceID="SqlDSstatistical2013" BackColor="White" BorderColor="#3366CC" 
        BorderStyle="None" BorderWidth="1px" CellPadding="4" Visible="False" 
            AllowSorting="True">
        <RowStyle BackColor="White" ForeColor="#003399" Font-Names="Arial" 
            Font-Size="8pt" />
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
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
<asp:BoundField DataField="tema" HeaderText="tema" SortExpression="tema"></asp:BoundField>
<asp:BoundField DataField="nivel" HeaderText="nivel" SortExpression="nivel"></asp:BoundField>
            <asp:BoundField DataField="asesores" HeaderText="asesores" 
                SortExpression="asesores" />
            <asp:BoundField DataField="conocimientor" HeaderText="conocimientor" 
                SortExpression="conocimientor" />
            <asp:BoundField DataField="conocimientoarcgis" HeaderText="conocimientoarcgis" 
                SortExpression="conocimientoarcgis" />
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
        <FooterStyle BackColor="#99CCCC" ForeColor="#003399" />
        <PagerStyle BackColor="#99CCCC" ForeColor="#003399" HorizontalAlign="Left" />
        <SelectedRowStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
        <HeaderStyle BackColor="White" Font-Bold="True" ForeColor="Black" 
            Font-Names="Arial" Font-Size="8pt" />
    </asp:GridView>        
    
    <asp:SqlDataSource ID="SqlDSmicroalgas2014" runat="server" 
        ConnectionString="<%$ ConnectionStrings:REGWEBConnectionString %>" 
        SelectCommand="SELECT * FROM [microalgas2014]" 
            DeleteCommand="DELETE FROM [microalgas2014] WHERE [id] = @original_id" 
            InsertCommand="INSERT INTO [microalgas2014] ([nombres], [apellidos], [correo], [institucion], [comentarios], [factura], [facturaNombre], [facturaRFC], [facturaDireccion]) VALUES (@nombres, @apellidos, @correo, @institucion, @comentarios, @factura, @facturaNombre, @facturaRFC, @facturaDireccion)" 
            OldValuesParameterFormatString="original_{0}" 
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            UpdateCommand="UPDATE [microalgas2014] SET [nombres] = @nombres, [apellidos] = @apellidos, [correo] = @correo, [institucion] = @institucion, [comentarios] = @comentarios, [factura] = @factura, [facturaNombre] = @facturaNombre, [facturaRFC] = @facturaRFC, [facturaDireccion] = @facturaDireccion WHERE [id] = @original_id">
        <DeleteParameters>
            <asp:Parameter Name="original_id" Type="Int32" />
        </DeleteParameters>
        <UpdateParameters>
            <asp:Parameter Name="nombres" Type="String" />
            <asp:Parameter Name="apellidos" Type="String" />
            <asp:Parameter Name="correo" Type="String" />
            <asp:Parameter Name="institucion" Type="String" />
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
            <asp:Parameter Name="institucion" Type="String" />
            <asp:Parameter Name="comentarios" Type="String" />
            <asp:Parameter Name="factura" Type="String" />
            <asp:Parameter Name="facturaNombre" Type="String" />
            <asp:Parameter Name="facturaRFC" Type="String" />
            <asp:Parameter Name="facturaDireccion" Type="String" />
        </InsertParameters>
        </asp:SqlDataSource>
    
    <asp:GridView ID="grvmicroalgas2014" runat="server" 
            AutoGenerateColumns="False" DataKeyNames="id" 
        DataSourceID="SqlDSmicroalgas2014" BackColor="White" BorderColor="#3366CC" 
        BorderStyle="None" BorderWidth="1px" CellPadding="4" Visible="False" 
            AllowSorting="True">
        <RowStyle BackColor="White" ForeColor="#003399" Font-Names="Arial" 
            Font-Size="8pt" />
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
            <asp:BoundField DataField="id" HeaderText="id" InsertVisible="False" 
                ReadOnly="True" SortExpression="id" />
            <asp:BoundField DataField="nombres" HeaderText="nombres" 
                SortExpression="nombres" />
            <asp:BoundField DataField="apellidos" HeaderText="apellidos" 
                SortExpression="apellidos" />
            <asp:BoundField DataField="correo" HeaderText="correo" 
                SortExpression="correo" />
            <asp:BoundField DataField="institucion" HeaderText="institucion" 
                SortExpression="institucion" />
            <asp:BoundField DataField="comentarios" HeaderText="comentarios" 
                SortExpression="comentarios" />
<asp:BoundField DataField="factura" HeaderText="factura" SortExpression="factura"></asp:BoundField>
<asp:BoundField DataField="facturaNombre" HeaderText="facturaNombre" 
                SortExpression="facturaNombre"></asp:BoundField>
            <asp:BoundField DataField="facturaRFC" HeaderText="facturaRFC" 
                SortExpression="facturaRFC" />
            <asp:BoundField DataField="facturaDireccion" HeaderText="facturaDireccion" 
                SortExpression="facturaDireccion" />
        </Columns>
        <FooterStyle BackColor="#99CCCC" ForeColor="#003399" />
        <PagerStyle BackColor="#99CCCC" ForeColor="#003399" HorizontalAlign="Left" />
        <SelectedRowStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
        <HeaderStyle BackColor="White" Font-Bold="True" ForeColor="Black" 
            Font-Names="Arial" Font-Size="8pt" />
    </asp:GridView>        
    
    <asp:SqlDataSource ID="SqlDSpesquerias2013" runat="server" 
        ConnectionString="<%$ ConnectionStrings:REGWEBConnectionString %>" 
        SelectCommand="SELECT * FROM [Pesquerias2013]" 
            DeleteCommand="DELETE FROM [Pesquerias2013] WHERE [id] = @original_id" 
            InsertCommand="INSERT INTO [Pesquerias2013] ([nombres], [apellidos], [correo], [institucion], [trabajo], [trabajoNombre], [comentarios], [factura], [facturaNombre], [facturaRFC], [facturaDireccion]) VALUES (@nombres, @apellidos, @correo, @institucion, @trabajo, @trabajoNombre, @comentarios, @factura, @facturaNombre, @facturaRFC, @facturaDireccion)" 
            OldValuesParameterFormatString="original_{0}" 
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            UpdateCommand="UPDATE [Pesquerias2013] SET [nombres] = @nombres, [apellidos] = @apellidos, [correo] = @correo, [institucion] = @institucion, [trabajo] = @trabajo, [trabajoNombre] = @trabajoNombre, [comentarios] = @comentarios, [factura] = @factura, [facturaNombre] = @facturaNombre, [facturaRFC] = @facturaRFC, [facturaDireccion] = @facturaDireccion WHERE [id] = @original_id">
        <DeleteParameters>
            <asp:Parameter Name="original_id" Type="Int32" />
        </DeleteParameters>
        <UpdateParameters>
            <asp:Parameter Name="nombres" Type="String" />
            <asp:Parameter Name="apellidos" Type="String" />
            <asp:Parameter Name="correo" Type="String" />
            <asp:Parameter Name="institucion" Type="String" />
            <asp:Parameter Name="trabajo" Type="String" />
            <asp:Parameter Name="trabajoNombre" Type="String" />
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
            <asp:Parameter Name="institucion" Type="String" />
            <asp:Parameter Name="trabajo" Type="String" />
            <asp:Parameter Name="trabajoNombre" Type="String" />
            <asp:Parameter Name="comentarios" Type="String" />
            <asp:Parameter Name="factura" Type="String" />
            <asp:Parameter Name="facturaNombre" Type="String" />
            <asp:Parameter Name="facturaRFC" Type="String" />
            <asp:Parameter Name="facturaDireccion" Type="String" />
        </InsertParameters>
        </asp:SqlDataSource>
    
    <asp:GridView ID="grvpesquerias2013" runat="server" 
            AutoGenerateColumns="False" DataKeyNames="id" 
        DataSourceID="SqlDSpesquerias2013" BackColor="White" BorderColor="#3366CC" 
        BorderStyle="None" BorderWidth="1px" CellPadding="4" Visible="False" 
            AllowSorting="True">
        <RowStyle BackColor="White" ForeColor="#003399" Font-Names="Arial" 
            Font-Size="8pt" />
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
            <asp:BoundField DataField="id" HeaderText="id" InsertVisible="False" 
                ReadOnly="True" SortExpression="id" />
            <asp:BoundField DataField="nombres" HeaderText="nombres" 
                SortExpression="nombres" />
            <asp:BoundField DataField="apellidos" HeaderText="apellidos" 
                SortExpression="apellidos" />
            <asp:BoundField DataField="correo" HeaderText="correo" 
                SortExpression="correo" />
            <asp:BoundField DataField="institucion" HeaderText="institucion" 
                SortExpression="institucion" />
            <asp:BoundField DataField="trabajo" HeaderText="trabajo" 
                SortExpression="trabajo" />
<asp:BoundField DataField="trabajoNombre" HeaderText="trabajoNombre" 
                SortExpression="trabajoNombre"></asp:BoundField>
<asp:BoundField DataField="comentarios" HeaderText="comentarios" 
                SortExpression="comentarios"></asp:BoundField>
            <asp:BoundField DataField="factura" HeaderText="factura" 
                SortExpression="factura" />
            <asp:BoundField DataField="facturaNombre" HeaderText="facturaNombre" 
                SortExpression="facturaNombre" />
            <asp:BoundField DataField="facturaRFC" HeaderText="facturaRFC" 
                SortExpression="facturaRFC" />
            <asp:BoundField DataField="facturaDireccion" HeaderText="facturaDireccion" 
                SortExpression="facturaDireccion" />
        </Columns>
        <FooterStyle BackColor="#99CCCC" ForeColor="#003399" />
        <PagerStyle BackColor="#99CCCC" ForeColor="#003399" HorizontalAlign="Left" />
        <SelectedRowStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
        <HeaderStyle BackColor="White" Font-Bold="True" ForeColor="Black" 
            Font-Names="Arial" Font-Size="8pt" />
    </asp:GridView>        
    
    <asp:SqlDataSource ID="SqlDSsecuencias2013" runat="server" 
        ConnectionString="<%$ ConnectionStrings:REGWEBConnectionString %>" 
        SelectCommand="SELECT * FROM [Secuencias2013]" 
            DeleteCommand="DELETE FROM [Secuencias2013] WHERE [id] = @original_id" 
            InsertCommand="INSERT INTO [Secuencias2013] ([nombres], [apellidos], [correo], [institucion], [comentarios], [factura], [facturaNombre], [facturaRFC], [facturaDireccion]) VALUES (@nombres, @apellidos, @correo, @institucion, @comentarios, @factura, @facturaNombre, @facturaRFC, @facturaDireccion)" 
            OldValuesParameterFormatString="original_{0}" 
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            UpdateCommand="UPDATE [Secuencias2013] SET [nombres] = @nombres, [apellidos] = @apellidos, [correo] = @correo, [institucion] = @institucion, [comentarios] = @comentarios, [factura] = @factura, [facturaNombre] = @facturaNombre, [facturaRFC] = @facturaRFC, [facturaDireccion] = @facturaDireccion WHERE [id] = @original_id">
        <DeleteParameters>
            <asp:Parameter Name="original_id" Type="Int32" />
        </DeleteParameters>
        <UpdateParameters>
            <asp:Parameter Name="nombres" Type="String" />
            <asp:Parameter Name="apellidos" Type="String" />
            <asp:Parameter Name="correo" Type="String" />
            <asp:Parameter Name="institucion" Type="String" />
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
            <asp:Parameter Name="institucion" Type="String" />
            <asp:Parameter Name="comentarios" Type="String" />
            <asp:Parameter Name="factura" Type="String" />
            <asp:Parameter Name="facturaNombre" Type="String" />
            <asp:Parameter Name="facturaRFC" Type="String" />
            <asp:Parameter Name="facturaDireccion" Type="String" />
        </InsertParameters>
        </asp:SqlDataSource>
    
    <asp:GridView ID="grvsecuencias2013" runat="server" 
            AutoGenerateColumns="False" DataKeyNames="id" 
        DataSourceID="SqlDSsecuencias2013" BackColor="White" BorderColor="#3366CC" 
        BorderStyle="None" BorderWidth="1px" CellPadding="4" Visible="False" 
            AllowSorting="True">
        <RowStyle BackColor="White" ForeColor="#003399" Font-Names="Arial" 
            Font-Size="8pt" />
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
            <asp:BoundField DataField="id" HeaderText="id" InsertVisible="False" 
                ReadOnly="True" SortExpression="id" />
            <asp:BoundField DataField="nombres" HeaderText="nombres" 
                SortExpression="nombres" />
            <asp:BoundField DataField="apellidos" HeaderText="apellidos" 
                SortExpression="apellidos" />
            <asp:BoundField DataField="correo" HeaderText="correo" 
                SortExpression="correo" />
            <asp:BoundField DataField="institucion" HeaderText="institucion" 
                SortExpression="institucion" />
            <asp:BoundField DataField="comentarios" HeaderText="comentarios" 
                SortExpression="comentarios" />
<asp:BoundField DataField="factura" HeaderText="factura" 
                SortExpression="factura"></asp:BoundField>
<asp:BoundField DataField="facturaNombre" HeaderText="facturaNombre" 
                SortExpression="facturaNombre"></asp:BoundField>
            <asp:BoundField DataField="facturaRFC" HeaderText="facturaRFC" 
                SortExpression="facturaRFC" />
            <asp:BoundField DataField="facturaDireccion" HeaderText="facturaDireccion" 
                SortExpression="facturaDireccion" />
        </Columns>
        <FooterStyle BackColor="#99CCCC" ForeColor="#003399" />
        <PagerStyle BackColor="#99CCCC" ForeColor="#003399" HorizontalAlign="Left" />
        <SelectedRowStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
        <HeaderStyle BackColor="White" Font-Bold="True" ForeColor="Black" 
            Font-Names="Arial" Font-Size="8pt" />
    </asp:GridView>        
    
    <br />

    </div>
    
    </form>
</body>
</html>
