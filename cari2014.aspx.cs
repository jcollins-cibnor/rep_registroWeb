using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class cari2014 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnContinuar_Click(object sender, EventArgs e)
    {
        Session["mensajeConfirmacion"] =
            lblNombres.Text + " " + txtNombres.Text + '\n' +
            lblApellidos.Text + " " + txtApellidos.Text + '\n' +
            lblCorreo.Text + " " + txtCorreo.Text + '\n' +
            lblInstitucion.Text + " " + txtInstitucion.Text + '\n' +
            '\n' +
            '\n' +
            "- " + lblInformacionAdicional.Text + '\n' +
            "-----------------------------------------------------------------------------" + '\n' +
            '\n' +
            "- " + lblVueloLlegada.Text + '\n' +
            '\n' +
            lblLlegadaAerolinea.Text + " " + txtLlegadaAerolinea.Text + '\n' +
            lblLlegadaNoVuelo.Text + " " + txtLlegadaNoVuelo.Text + '\n' +
            lblLlegadaFecha.Text + " " + txtLlegadaFecha.Text + '\n' +
            lblLlegadaHora.Text + " " + txtLlegadaHora.Text + '\n' +
            '\n' +
            "- " + lblVueloSalida.Text + '\n' +
            '\n' +
            lblSalidaAerolinea.Text + " " + txtSalidaAerolinea.Text + '\n' +
            lblSalidaNoVuelo.Text + " " + txtSalidaNoVuelo.Text + '\n' +
            lblSalidaFecha.Text + " " + txtSalidaFecha.Text + '\n' +
            lblSalidaHora.Text + " " + txtSalidaHora.Text + '\n' +
            '\n' +
            lblHotel.Text + " " + txtHotel.Text + '\n' +
            '\n' +
            '\n' +
            lblComentarios.Text + " " + txtComentarios.Text;

        //metemos el mensaje en una label y confirmamos el mensaje
        lblConfirmacion.Text = Convert.ToString(Session["mensajeConfirmacion"]).Replace("'", "´");
        lblConfirmacion.Text = Convert.ToString(Session["mensajeConfirmacion"]).Replace("\n", "<br />");

        Session["mensajeConfirmacion"] = lblConfirmacion.Text;

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
        SqlDScari2014.InsertCommand = "INSERT INTO cari2014 VALUES ('" + txtNombres.Text +
        "', '" + txtApellidos.Text +
        "', '" + txtCorreo.Text +
        "', '" + txtInstitucion.Text +

        "', '" + txtLlegadaAerolinea.Text +
        "', '" + txtLlegadaNoVuelo.Text +
        "', '" + txtLlegadaFecha.Text +
        "', '" + txtLlegadaHora.Text +

        "', '" + txtSalidaAerolinea.Text +
        "', '" + txtSalidaNoVuelo.Text +
        "', '" + txtSalidaFecha.Text +
        "', '" + txtSalidaHora.Text +

        "', '" + txtHotel.Text +
        "', '" + txtComentarios.Text +
        "', GetDate())";

        SqlDScari2014.Insert();

        //ARMAR CUERPO DEL MENSAJE
        string mensaje = "Estimado(a) " + txtNombres.Text + ", usted ha sido registrado(a)." + '\n' +
            '\n' +
            Session["mensajeConfirmacion"] + '\n' +
            '\n' +
            '\n' +
            "Gracias," + '\n' +
            '\n' +
            "Comite Organizador" + '\n' + "CIBNOR, S.C.";

        mensaje = mensaje.Replace("\n", "<br />");

        //Mandamos el correo( de,                para,           copia oculta,           asunto,                 mensaje )
        enviarCorreo("cari2014@cibnor.mx", txtCorreo.Text, "cari2014@cibnor.mx", "CARI 2014 - Registro en linea", mensaje);

        Response.Redirect("~/RegistroOk.aspx?evento=cari2014");
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

        correo.IsBodyHtml = true;
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
            lblStatusEnvio.Text = "El registro no ha podido ser entregado, intentelo de nuevo mas tarde.";
            enviarCorreo(origen, "jcollins@cibnor.mx", "-", origen + ex.Message, Convert.ToString(Session["mensajeConfirmacion"]));
        }
    }

}