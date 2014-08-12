using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class anivtriatlon : System.Web.UI.Page
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
            "Categoria ...........: " + ddlCategoria.SelectedValue + '\n' +
            "Modalidad ...........: " + ddlModalidad.SelectedValue + '\n' +
            "Rama ................: " + ddlRama.SelectedValue + '\n' +
            "Nombre del club .....: " + txtNombreClub.Text + '\n' +
            "Tipo de sangre ......: " + ddlTipoSangre.SelectedValue + '\n' +
            '\n' +
            '\n' +
            "- INFORMACION ADICIONAL" + '\n' +
            "-----------------------------------------------------------------------------" + '\n' +
            "No. de acompañantes a la cena: " + ddlAcompanantes.SelectedValue + '\n' +
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
        SqlDSregistroWeb.InsertParameters.Add("@categoria", ddlCategoria.SelectedValue);
        SqlDSregistroWeb.InsertParameters.Add("@modalidad", ddlModalidad.SelectedValue);
        SqlDSregistroWeb.InsertParameters.Add("@rama", ddlRama.SelectedValue);
        SqlDSregistroWeb.InsertParameters.Add("@nombreclub", txtNombreClub.Text);
        SqlDSregistroWeb.InsertParameters.Add("@tiposangre", ddlTipoSangre.SelectedValue);

        SqlDSregistroWeb.InsertParameters.Add("@acompanantes", ddlAcompanantes.SelectedValue);
        SqlDSregistroWeb.InsertParameters.Add("@comentarios", txtComentarios.Text);

        SqlDSregistroWeb.InsertCommand = "INSERT INTO Anivtriatlon VALUES ('" + txtNombres.Text +
            "', '" + txtApellidos.Text +
            "', '" + txtCorreo.Text +
            "', '" + txtEdad.Text +
            "', '" + ddlCategoria.SelectedValue +
            "', '" + ddlModalidad.SelectedValue +
            "', '" + ddlRama.SelectedValue + 
            "', '" + txtNombreClub.Text +
            "', '" + ddlTipoSangre.SelectedValue + 

            "', '" + ddlAcompanantes.SelectedValue +
            "', '" + txtComentarios.Text +
            "')";
        SqlDSregistroWeb.Insert();

        //ARMAR CUERPO DEL MENSAJE
        string mensaje = "Estimado(a) " + txtNombres.Text + ", usted ha sido registrado en el 1er. Triatlón conmemorativo del CIBNOR" + '\n' +
            '\n' +
            Session["mensajeConfirmacion"] +
            "Gracias," + '\n' + "Comite Organizador" + '\n' + "CIBNOR, S.C.";

        //    FALTA AGREGAR COPIA OCULTA
        //Mandamos el correo(de,                para,           copia oculta,           asunto,                 mensaje)
        enviarCorreo("eventos@cibnor.mx", txtCorreo.Text, "primertriatlon@cibnor.mx", "CIBNOR, " + lblTituloRegistro.Text, mensaje);

        Response.Redirect("~/RegistroOk.aspx?evento=anivtriatlon");
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

    protected void ddlCategoria_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (ddlCategoria.SelectedValue == "Individual")
        {
            lblModalidad.Visible = true;
            ddlModalidad.Visible = true;
            rfvModalidad.Enabled = true;
        }
        else
        {
            lblModalidad.Visible = false;
            ddlModalidad.Visible = false;
            rfvModalidad.Enabled = false;
        }
    }
}