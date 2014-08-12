using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class pace2013 : System.Web.UI.Page
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
            lblResidencia.Text + " " + txtResidencia.Text + '\n' +
            lblSexo.Text + " " + rblSexo.SelectedValue + '\n' +
            '\n' +
            '\n' +
            "- " + lblInformacionAdicional.Text + '\n' +
            "-----------------------------------------------------------------------------" + '\n' +
            '\n' +
            lblClave.Text + " " + txtClave.Text + '\n' +
            lblSemestre.Text + " " + txtSemestre.Text + '\n' +
            lblTransportacion.Text + " " + rblTransportacion.SelectedValue + '\n' +
            lblHospedaje.Text + " " + rblHospedaje.SelectedValue + '\n' +
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
        //Crear el comando para el UPDATE
        SqlDSpace2013.InsertParameters.Add("@nombres", txtNombres.Text);
        SqlDSpace2013.InsertParameters.Add("@apellidos", txtApellidos.Text);
        SqlDSpace2013.InsertParameters.Add("@correo", txtCorreo.Text);
        SqlDSpace2013.InsertParameters.Add("@residencia", txtResidencia.Text);
        SqlDSpace2013.InsertParameters.Add("@sexo", rblSexo.SelectedValue);

        SqlDSpace2013.InsertParameters.Add("@clave", txtClave.Text);
        SqlDSpace2013.InsertParameters.Add("@semestre", txtSemestre.Text);
        SqlDSpace2013.InsertParameters.Add("@transportacion", rblTransportacion.SelectedValue);
        SqlDSpace2013.InsertParameters.Add("@hospedaje", rblHospedaje.SelectedValue);
        
        SqlDSpace2013.InsertParameters.Add("@comentarios", txtComentarios.Text);
        
        SqlDSpace2013.InsertCommand = "INSERT INTO Pace2013 VALUES ('" + txtNombres.Text +
            "', '" + txtApellidos.Text +
            "', '" + txtCorreo.Text +
            "', '" + txtResidencia.Text +
            "', '" + rblSexo.SelectedValue +

            "', '" + txtClave.Text +
            "', '" + txtSemestre.Text +
            "', '" + rblTransportacion.SelectedValue +
            "', '" + rblHospedaje.SelectedValue +

            "', '" + txtComentarios.Text +

            "')";
        SqlDSpace2013.Insert();

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
        enviarCorreo("pace2013@cibnor.mx", txtCorreo.Text, "pace2013@cibnor.mx", "Pace 2013 - Registro en linea", mensaje);

        Response.Redirect("~/RegistroOk.aspx?evento=pace2013");
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