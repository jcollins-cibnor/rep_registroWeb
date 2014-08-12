using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class microalgas2014 : System.Web.UI.Page
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
        //Crear el comando para el UPDATE
        SqlDSmicroalgas2014.InsertParameters.Add("@nombres", txtNombres.Text);
        SqlDSmicroalgas2014.InsertParameters.Add("@apellidos", txtApellidos.Text);
        SqlDSmicroalgas2014.InsertParameters.Add("@correo", txtCorreo.Text);
        SqlDSmicroalgas2014.InsertParameters.Add("@institucion", txtInstitucion.Text);

        SqlDSmicroalgas2014.InsertParameters.Add("@comentarios", txtComentarios.Text);

        SqlDSmicroalgas2014.InsertParameters.Add("@factura", rblFactura.SelectedValue);
        SqlDSmicroalgas2014.InsertParameters.Add("@facturaNombre", txtFacturaNombre.Text);
        SqlDSmicroalgas2014.InsertParameters.Add("@facturaRFC", txtFacturaRFC.Text);
        SqlDSmicroalgas2014.InsertParameters.Add("@facturaDireccion", txtFacturaDireccion.Text);


        SqlDSmicroalgas2014.InsertCommand = "INSERT INTO microalgas2014 VALUES ('" + txtNombres.Text +
            "', '" + txtApellidos.Text +
            "', '" + txtCorreo.Text +
            "', '" + txtInstitucion.Text +

            "', '" + txtComentarios.Text +

            "', '" + rblFactura.SelectedValue +
            "', '" + txtFacturaNombre.Text +
            "', '" + txtFacturaRFC.Text +
            "', '" + txtFacturaDireccion.Text +
            "')";
        SqlDSmicroalgas2014.Insert();

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
        enviarCorreo("microalgas2014@cibnor.mx", txtCorreo.Text, "microalgas2014@cibnor.mx", "Curso Microalgas 2014 - Registro en linea", mensaje);

        Response.Redirect("~/RegistroOk.aspx?evento=microalgas2014");
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