using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class pesquerias2013 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnContinuar_Click(object sender, EventArgs e)
    {
        Session["mensajeConfirmacion"] =
            "-----------------------------------------------------------------------------" + '\n' +
            '\n' +
            lblNombres.Text + " " + txtNombres.Text + '\n' +
            lblApellidos.Text + " " + txtApellidos.Text + '\n' +
            lblCorreo.Text + " " + txtCorreo.Text + '\n' +
            lblInstitucion.Text + " " + txtInstitucion.Text + '\n' +
            '\n' +
            '\n' +
            "- " + lblInformacionAdicional.Text + '\n' +
            "-----------------------------------------------------------------------------" + '\n' +
            '\n' +
            lblTrabajo.Text + " " + rblTrabajo.SelectedValue + '\n' +
            lblTrabajoNombre.Text + " " + txtTrabajoNombre.Text + '\n' +
            lblHotel.Text + " " + txtHotel.Text + '\n' +
            '\n' +
            lblComentarios.Text + " " + txtComentarios.Text + '\n' +
            '\n' +
            '\n' +
            "- " + lblFacturacion.Text + '\n' +
            "-----------------------------------------------------------------------------" + '\n' +
            '\n' +
            lblFactura.Text + " " + rblFactura.SelectedValue + '\n' +
            lblFacturaNombre.Text + " " + txtFacturaNombre.Text + '\n' +
            lblFacturaRFC.Text + " " + txtFacturaRFC.Text + '\n' +
            lblFacturaDireccion.Text + " " + txtFacturaDireccion.Text;
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

        SqlDSpesquerias2013.InsertCommand = "INSERT INTO Pesquerias2013 VALUES ('" + txtNombres.Text +
            "', '" + txtApellidos.Text +
            "', '" + txtCorreo.Text +
            "', '" + txtInstitucion.Text +

            "', '" + rblTrabajo.SelectedValue +
            "', '" + txtTrabajoNombre.Text +
            "', '" + txtHotel.Text +

            "', '" + txtComentarios.Text +
            "', '" + rblFactura.SelectedValue +
            "', '" + txtFacturaNombre.Text +
            "', '" + txtFacturaRFC.Text +
            "', '" + txtFacturaDireccion.Text +
            "')";
        SqlDSpesquerias2013.Insert();

        //ARMAR CUERPO DEL MENSAJE
        string mensaje = "Estimado(a) " + txtNombres.Text + ", usted ha sido registrado(a)." + '\n' +
            '\n' +
            Session["mensajeConfirmacion"] + '\n' +
            '\n' +
            '\n' +
            Session["Gracias"] + "," + '\n' + '\n' + "Comite organizador," + '\n' + "CIBNOR, S.C." + '\n' +
            '\n' +
            Session["PS"];

        //Mandamos el correo(de,                para,           copia oculta,           asunto,                 mensaje)
        enviarCorreo("pesquerias2013@cibnor.mx", txtCorreo.Text, "pesquerias2013@cibnor.mx", "CIBNOR - " + lblTituloEvento.Text, mensaje);

        Response.Redirect("~/RegistroOk.aspx?evento=pesquerias2013");
    }

    protected void rblFactura_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (rblFactura.SelectedValue != "No")
        {
            pnlFacturacion.Visible = true;
            txtFacturaNombre.Text = "";
            txtFacturaRFC.Text = "";
            txtFacturaDireccion.Text = "";
        }
        else
        {
            pnlFacturacion.Visible = false;
            txtFacturaNombre.Text = "--";
            txtFacturaRFC.Text = "--";
            txtFacturaDireccion.Text = "--";
        }
    }
    protected void rblTrabajo_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (rblTrabajo.SelectedValue != "No")
        {
            pnlTrabajo.Visible = true;
            txtTrabajoNombre.Text = "";
        }
        else
        {
            pnlTrabajo.Visible = false;
            txtTrabajoNombre.Text = "--";
        }
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