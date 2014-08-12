using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class consultivo : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnContinuar_Click(object sender, EventArgs e)
    {
        Session["mensajeConfirmacion"] =
            "-----------------------------------------------------------------------------" + '\n' +
            '\n' +
            "Nombre(s) ...........: " + txtNombres.Text + '\n' +
            "Apellido(s) .........: " + txtApellidos.Text + '\n' +
            "Correo electrónico ..: " + txtCorreo.Text + '\n' +
            "Telefono ............: " + txtTelefono.Text + '\n' +
            "Institucion .........: " + txtInstitucion.Text + '\n' +
            '\n' +
            '\n' +
            "- INFORMACION ADICIONAL" + '\n' +
            "-----------------------------------------------------------------------------" + '\n' +
            "++ Itinerario de vuelo (llegada) ++" + '\n' +
            "---> Aerolinea: " + txtLlegadaLinea.Text + ", No. de vuelo: " + txtLlegadaVuelo.Text + '\n' +
            "---> Fecha: " + txtLlegadaFecha.Text + ", Hora: " + txtLlegadaHora.Text + '\n' +
            '\n' +
            "++ Itinerario de vuelo (salida) ++" + '\n' +
            "---> Aerolinea: " + txtSalidaLinea.Text + ", No. de vuelo: " + txtSalidaVuelo.Text + '\n' +
            "---> Fecha: " + txtSalidaFecha.Text + ", Hora: " + txtSalidaHora.Text + '\n' +
            '\n' +
            "Hotel donde se hospeda: " + txtHotel.Text + '\n' +
            "Actividad extramuros..: " + ddlExtramuros.SelectedValue + '\n' +
            "Comentario adicional..: " + txtComentarios.Text + '\n' +
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
        SqlDSconsultivo.InsertParameters.Add("@nombres", txtNombres.Text);
        SqlDSconsultivo.InsertParameters.Add("@apellidos", txtApellidos.Text);
        SqlDSconsultivo.InsertParameters.Add("@correo", txtCorreo.Text);
        SqlDSconsultivo.InsertParameters.Add("@telefono", txtTelefono.Text);
        SqlDSconsultivo.InsertParameters.Add("@institucion", txtInstitucion.Text);

        SqlDSconsultivo.InsertParameters.Add("@llegalinea", txtLlegadaLinea.Text);
        SqlDSconsultivo.InsertParameters.Add("@llegavuelo", txtLlegadaVuelo.Text);
        SqlDSconsultivo.InsertParameters.Add("@llegafecha", txtLlegadaFecha.Text);
        SqlDSconsultivo.InsertParameters.Add("@llegahora", txtLlegadaHora.Text);
        SqlDSconsultivo.InsertParameters.Add("@salelinea", txtSalidaLinea.Text);
        SqlDSconsultivo.InsertParameters.Add("@salevuelo", txtSalidaVuelo.Text);
        SqlDSconsultivo.InsertParameters.Add("@salefecha", txtSalidaFecha.Text);
        SqlDSconsultivo.InsertParameters.Add("@salehora", txtSalidaHora.Text);

        SqlDSconsultivo.InsertParameters.Add("@hotel", txtHotel.Text);
        SqlDSconsultivo.InsertParameters.Add("@extramuros", ddlExtramuros.SelectedValue);
        SqlDSconsultivo.InsertParameters.Add("@comentarios", txtComentarios.Text);

        //Aqui hay que cambiar el nombre de la tabla
        SqlDSconsultivo.InsertCommand = "INSERT INTO Consultivo VALUES ('" + txtNombres.Text +
            "', '" + txtApellidos.Text +
            "', '" + txtCorreo.Text +
            "', '" + txtTelefono.Text +
            "', '" + txtInstitucion.Text +

            "', '" + txtLlegadaLinea.Text +
            "', '" + txtLlegadaVuelo.Text +
            "', '" + txtLlegadaFecha.Text +
            "', '" + txtLlegadaHora.Text +
            "', '" + txtSalidaLinea.Text +
            "', '" + txtSalidaVuelo.Text +
            "', '" + txtSalidaFecha.Text +
            "', '" + txtSalidaHora.Text +

            "', '" + txtHotel.Text +
            "', '" + ddlExtramuros.SelectedValue +
            "', '" + txtComentarios.Text +
            "')";
        SqlDSconsultivo.Insert();

        //ARMAR CUERPO DEL MENSAJE
        string mensaje = "Estimado(a) " + txtNombres.Text + ", usted ha sido registrado(a)." + '\n' +
            '\n' +
            Session["mensajeConfirmacion"] +
            "Gracias," + '\n' + "Comite Organizador" + '\n' + "CIBNOR, S.C.";

        //    FALTA AGREGAR COPIA OCULTA
        //Mandamos el correo(de,                para,           copia oculta,           asunto,                 mensaje)
        enviarCorreo("consultivo2013@cibnor.mx", txtCorreo.Text, "consultivo2013@cibnor.mx", "CIBNOR, Registro en Linea - Consejo Consultivo", mensaje);

        Response.Redirect("~/RegistroOk.aspx?evento=consultivo2013");
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