using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class registroWeb : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnContinuar_Click(object sender, EventArgs e)
    {
        Session["mensajeConfirmacion"] =
            "- DATOS PERSONALES -" + '\n' +
            "--------------------" + '\n' +
            '\n' +
            "Titulo del evento ...: " + ddlTituloEvento.SelectedValue + '\n' +
            "Nombre(s) ...........: " + txtNombres.Text + '\n' +
            "Apellido(s) .........: " + txtApellidos.Text + '\n' +
            "Correo electrónico ..: " + txtCorreo.Text + '\n' +
            "Domicilio ...........: " + txtDomicilio.Text + '\n' +
            "Ciudad ..............: " + txtCiudad.Text + '\n' +
            "Estado ..............: " + txtEstado.Text + '\n' +
            "Pais ................: " + txtPais.Text + '\n' +
            "Codigo postal .......: " + txtCP.Text + '\n' +
            "Telefono ............: " + txtTelefono.Text + '\n' +
            "Fax .................: " + txtFax.Text + '\n' +
            "Institucion .........: " + txtInstitucion.Text + '\n' +
            '\n' +
            '\n' +
            "- INFORMACION ADICIONAL -" + '\n' +
            "-------------------------" + '\n' +
            '\n' +
            "++ Itinerario de vuelo de salida ++" + '\n' +
            lblSalidaCiudad1.Text + txtSalidaCiudad1.Text + ", " + lblSalidaAerolinea1.Text + txtSalidaAerolinea1.Text + ", " +
            lblSalidaNoVuelo1.Text + txtSalidaNoVuelo1.Text + ", " + lblSalidaFecha1.Text + txtSalidaFecha1.Text + ", " +
            lblSalidaHora1.Text + txtSalidaHora1.Text + '\n' +
            lblSalidaCiudad2.Text + txtSalidaCiudad2.Text + ", " + lblSalidaAerolinea2.Text + txtSalidaAerolinea2.Text + ", " +
            lblSalidaNoVuelo2.Text + txtSalidaNoVuelo2.Text + ", " + lblSalidaFecha2.Text + txtSalidaFecha2.Text + ", " +
            lblSalidaHora2.Text + txtSalidaHora2.Text + '\n' +
            '\n' +
            "++ Itinerario de vuelo de regreso ++" + '\n' +
            lblRegresoCiudad1.Text + txtRegresoCiudad1.Text + ", " + lblRegresoAerolinea1.Text + txtRegresoAerolinea1.Text + ", " +
            lblRegresoNoVuelo1.Text + txtRegresoNoVuelo1.Text + ", " + lblRegresoFecha1.Text + txtRegresoFecha1.Text + ", " +
            lblRegresoHora1.Text + txtRegresoHora1.Text + '\n' +
            lblRegresoCiudad2.Text + txtRegresoCiudad2.Text + ", " + lblRegresoAerolinea2.Text + txtRegresoAerolinea2.Text + ", " +
            lblRegresoNoVuelo2.Text + txtRegresoNoVuelo2.Text + ", " + lblRegresoFecha2.Text + txtRegresoFecha2.Text + ", " +
            lblRegresoHora2.Text + txtRegresoHora2.Text + '\n' +
            '\n' +
            '\n' +
            "Hotel donde se hospeda: " + txtHotel.Text + '\n' +
            '\n' +
            "Comentarios: " + txtComentarios.Text + '\n' +
            '\n' +
            '\n';
        //metemos el mensaje en una label y confirmamos el mensaje
        lblConfirmacion.Text = Convert.ToString(Session["mensajeConfirmacion"]).Replace("'", "´");
        lblConfirmacion.Text = Convert.ToString(Session["mensajeConfirmacion"]).Replace("\n", "<br />");

        pnlDatos.Visible = false;
        pnlConfirmacion.Visible = true;
    }

    protected void btnRegresar_Click(object sender, EventArgs e)
    {
        pnlDatos.Visible = true;
        pnlConfirmacion.Visible = false;
    }

    protected void btnEnviar_Click(object sender, EventArgs e)
    {
        //Crear el comando para el UPDATE
        //SqlDSregistroWeb.InsertParameters.Add("@tituloEvento", ddlTituloEvento.SelectedValue);
        //SqlDSregistroWeb.InsertParameters.Add("@nombres", txtNombres.Text);
        //SqlDSregistroWeb.InsertParameters.Add("@apellidos", txtApellidos.Text);
        //SqlDSregistroWeb.InsertParameters.Add("@correo", txtCorreo.Text);
        //SqlDSregistroWeb.InsertParameters.Add("@domicilio", txtDomicilio.Text);
        //SqlDSregistroWeb.InsertParameters.Add("@ciudad", txtCiudad.Text);
        //SqlDSregistroWeb.InsertParameters.Add("@estado", txtEstado.Text);
        //SqlDSregistroWeb.InsertParameters.Add("@pais", txtPais.Text);
        //SqlDSregistroWeb.InsertParameters.Add("@cp", txtCP.Text);
        //SqlDSregistroWeb.InsertParameters.Add("@telefono", txtTelefono.Text);
        //SqlDSregistroWeb.InsertParameters.Add("@fax", txtFax.Text);
        //SqlDSregistroWeb.InsertParameters.Add("@institucion", txtInstitucion.Text);
        //SqlDSregistroWeb.InsertParameters.Add("@extramuros", ddlExtramuros.SelectedValue);

        ////SqlDSregistroWeb.InsertParameters.Add("@llegalinea", txtLlegadaLinea.Text);
        ////SqlDSregistroWeb.InsertParameters.Add("@llegavuelo", txtLlegadaVuelo.Text);
        ////SqlDSregistroWeb.InsertParameters.Add("@llegafecha", txtLlegadaFecha.Text);
        ////SqlDSregistroWeb.InsertParameters.Add("@llegahora", txtLlegadaHora.Text);
        ////SqlDSregistroWeb.InsertParameters.Add("@salelinea", txtSalidaLinea.Text);
        ////SqlDSregistroWeb.InsertParameters.Add("@salevuelo", txtSalidaVuelo.Text);
        ////SqlDSregistroWeb.InsertParameters.Add("@salefecha", txtSalidaFecha.Text);
        ////SqlDSregistroWeb.InsertParameters.Add("@salehora", txtSalidaHora.Text);

        //SqlDSregistroWeb.InsertParameters.Add("@hotel", txtHotel.Text);
        //SqlDSregistroWeb.InsertParameters.Add("@comentarios", txtComentarios.Text);

        SqlDSregistroWeb.InsertCommand = "INSERT INTO RegistroWeb VALUES ('" + ddlTituloEvento.SelectedValue +
            "', '" + txtNombres.Text +
            "', '" + txtApellidos.Text +
            "', '" + txtCorreo.Text +
            "', '" + txtDomicilio.Text +
            "', '" + txtCiudad.Text +
            "', '" + txtEstado.Text +
            "', '" + txtPais.Text +
            "', '" + txtCP.Text +
            "', '" + txtTelefono.Text +
            "', '" + txtFax.Text +
            "', '" + txtInstitucion.Text +

            "', '" + txtSalidaCiudad1.Text +
            "', '" + txtSalidaAerolinea1.Text +
            "', '" + txtSalidaNoVuelo1.Text +
            "', '" + txtSalidaFecha1.Text +
            "', '" + txtSalidaHora1.Text +

            "', '" + txtSalidaCiudad2.Text +
            "', '" + txtSalidaAerolinea2.Text +
            "', '" + txtSalidaNoVuelo2.Text +
            "', '" + txtSalidaFecha2.Text +
            "', '" + txtSalidaHora2.Text +

            "', '" + txtRegresoCiudad1.Text +
            "', '" + txtRegresoAerolinea1.Text +
            "', '" + txtRegresoNoVuelo1.Text +
            "', '" + txtRegresoFecha1.Text +
            "', '" + txtRegresoHora1.Text +

            "', '" + txtRegresoCiudad2.Text +
            "', '" + txtRegresoAerolinea2.Text +
            "', '" + txtRegresoNoVuelo2.Text +
            "', '" + txtRegresoFecha2.Text +
            "', '" + txtRegresoHora2.Text +

            "', '" + txtHotel.Text +
            "', '" + txtComentarios.Text +
            "')";
        SqlDSregistroWeb.Insert();

        //ARMAR CUERPO DEL MENSAJE
        string mensaje = "Estimado(a) " + txtNombres.Text +", usted ha sido registrado(a)." + '\n' +
            '\n' +
            Session["mensajeConfirmacion"] +
            "Gracias," + '\n' + "Comite Organizador" + '\n' + "CIBNOR, S.C.";

        //    FALTA AGREGAR COPIA OCULTA
        //Mandamos el correo(de,                para,           copia oculta,           asunto,                 mensaje)
        enviarCorreo("eventos@cibnor.mx", txtCorreo.Text, "eventos@cibnor.mx", "CIBNOR - Registro en Linea: " + ddlTituloEvento.SelectedValue, mensaje);

        Response.Redirect("~/RegistroOk.aspx?evento=registroWeb");
    }

    protected void enviarCorreo(string origen, string destino, string copiaoculta, string asunto, string mensaje)
    {
        System.Net.Mail.MailMessage correo = new System.Net.Mail.MailMessage();
        correo.From = new System.Net.Mail.MailAddress(origen);

        correo.To.Add(destino);
        if (copiaoculta != "-")
        { correo.Bcc.Add(copiaoculta); }

        correo.Subject = asunto;
        correo.Body = mensaje;

        correo.IsBodyHtml = false;
        correo.Priority = System.Net.Mail.MailPriority.Normal;

        correo.BodyEncoding = System.Text.Encoding.UTF8;

        System.Net.Mail.SmtpClient smtp = new System.Net.Mail.SmtpClient();
        smtp.Host = "smtp.cibnor.mx";

        try
        {
            smtp.Send(correo);
        }
        catch (Exception ex)
        {
            Session["mensaje"] = "El mensaje no ha podido ser entregado, intentelo de nuevo mas tarde. " + ex.Message;
        }
    }

}
