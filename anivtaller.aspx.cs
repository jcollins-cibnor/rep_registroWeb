using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class anivtaller : System.Web.UI.Page
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
            "Telefono de contacto : " + txtTelefono.Text + '\n' +
            "Institución .........: " + txtInstitucion.Text + '\n' +
            '\n' +
            '\n' +
            "- INFORMACION ADICIONAL" + '\n' +
            "-----------------------------------------------------------------------------" + '\n' +
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
        SqlDSregistroWeb.InsertCommand = "INSERT INTO Anivtaller VALUES ('" + txtNombres.Text +
            "', '" + txtApellidos.Text +
            "', '" + txtCorreo.Text +
            "', '" + txtTelefono.Text +
            "', '" + txtInstitucion.Text +

            "', '" + txtComentarios.Text +
            "')";
        SqlDSregistroWeb.Insert();

        //ARMAR CUERPO DEL MENSAJE
        string mensaje = "Estimado(a) " + txtNombres.Text + ", usted ha sido registrado en el Taller de fondos CONACyT" + '\n' +
            '\n' +
            Session["mensajeConfirmacion"] +
            "Gracias," + '\n' + "Comite Organizador" + '\n' + "CIBNOR, S.C.";

        //Mandamos el correo(de,                para,           copia oculta,           asunto,                 mensaje)
        enviarCorreo("eventos@cibnor.mx", txtCorreo.Text, "eventos@cibnor.mx", "CIBNOR, " + lblTituloRegistro.Text, mensaje);

        // CORREOS A LOS COORDINADORES PARA SU CONTROL
        enviarCorreo("eventos@cibnor.mx", "mzarate04@cibnor.mx", "-", "CIBNOR, " + lblTituloRegistro.Text, mensaje);

        Response.Redirect("~/RegistroOk.aspx?evento=anivtaller");
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