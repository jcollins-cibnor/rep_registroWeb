using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class anivpesca : System.Web.UI.Page
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
            "Edad ................: " + txtEdad.Text + '\n' +
            "Embarcacion .........: " + txtEmbarcacion.Text + '\n' +
            '\n' +
            '\n' +
            "- TRIPULACION" + '\n' +
            "-----------------------------------------------------------------------------" + '\n' +
            "Tripulante 1: " + txtNombreT1.Text + ", " + txtEdadT1.Text + " años" + '\n' +
            "Tripulante 2: " + txtNombreT2.Text + ", " + txtEdadT2.Text + " años" + '\n' +
            "Tripulante 3: " + txtNombreT3.Text + ", " + txtEdadT3.Text + " años" + '\n' +
            "Tripulante 4: " + txtNombreT4.Text + ", " + txtEdadT4.Text + " años" + '\n' +
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
        SqlDSregistroWeb.InsertParameters.Add("@nombres", txtNombres.Text);
        SqlDSregistroWeb.InsertParameters.Add("@apellidos", txtApellidos.Text);
        SqlDSregistroWeb.InsertParameters.Add("@correo", txtCorreo.Text);
        SqlDSregistroWeb.InsertParameters.Add("@edad", txtEdad.Text);
        SqlDSregistroWeb.InsertParameters.Add("@embarcacion", txtEmbarcacion.Text);

        SqlDSregistroWeb.InsertParameters.Add("@nombret1", txtNombreT1.Text);
        SqlDSregistroWeb.InsertParameters.Add("@edadt1", txtEdadT1.Text);
        SqlDSregistroWeb.InsertParameters.Add("@nombret2", txtNombreT2.Text);
        SqlDSregistroWeb.InsertParameters.Add("@edadt2", txtEdadT2.Text);
        SqlDSregistroWeb.InsertParameters.Add("@nombret3", txtNombreT3.Text);
        SqlDSregistroWeb.InsertParameters.Add("@edadt3", txtEdadT3.Text);
        SqlDSregistroWeb.InsertParameters.Add("@nombret4", txtNombreT4.Text);
        SqlDSregistroWeb.InsertParameters.Add("@edadt4", txtEdadT4.Text);

        SqlDSregistroWeb.InsertParameters.Add("@comentarios", txtComentarios.Text);

        SqlDSregistroWeb.InsertCommand = "INSERT INTO Anivpesca VALUES ('" + txtNombres.Text +
            "', '" + txtApellidos.Text +
            "', '" + txtCorreo.Text +
            "', '" + txtEdad.Text +
            "', '" + txtEmbarcacion.Text +

            "', '" + txtNombreT1.Text +
            "', '" + txtEdadT1.Text +
            "', '" + txtNombreT2.Text +
            "', '" + txtEdadT2.Text +
            "', '" + txtNombreT3.Text +
            "', '" + txtEdadT3.Text +
            "', '" + txtNombreT4.Text +
            "', '" + txtEdadT4.Text +

            "', '" + txtComentarios.Text +
            "')";
        SqlDSregistroWeb.Insert();

        //ARMAR CUERPO DEL MENSAJE
        string mensaje = "Estimado(a) " + txtNombres.Text + " " + txtApellidos.Text + ", ha sido registrado(a)." + '\n' +
            '\n' +
            Session["mensajeConfirmacion"] +
            "Gracias," + '\n' + "Comite Organizador" + '\n' + "CIBNOR, S.C.";

        //    FALTA AGREGAR COPIA OCULTA
        //Mandamos el correo(de,                para,           copia oculta,           asunto,                 mensaje)
        enviarCorreo("eventos@cibnor.mx", txtCorreo.Text, "eventos@cibnor.mx", "CIBNOR, " + lblTituloRegistro.Text, mensaje);

        Response.Redirect("~/RegistroOk.aspx?evento=anivpesca");
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