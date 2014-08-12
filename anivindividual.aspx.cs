using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class anivindividual : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        // VARIABLES UNICAMENTE PARA ESTE REGISTRO
        Session["strAjedrez"] = "No";
        Session["strAtletica"] = "No";
        Session["strLoteria"] = "No";
        Session["strPingpong"] = "No";

        if (chkAjedrez.Checked) Session["strAjedrez"] = "Si";
        if (chkCarreraAtletica.Checked) Session["strAtletica"] = "Si";
        if (chkLoteria.Checked) Session["strLoteria"] = "Si";
        if (chkPingPong.Checked) Session["strPingpong"] = "Si";
        ////////////////
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
        '\n' +
        '\n' +
        "- ACTIVIDADES A PARTICIPAR" + '\n' +
        "-----------------------------------------------------------------------------" + '\n' +
        "Ajedrez ........: " + Session["strAjedrez"] + '\n' +
        "Carrera atletica: " + Session["strAtletica"] + '\n' +
        "Loteria ........: " + Session["strLoteria"] + '\n' +
        //"Ping pong ......: " + Session["strPingpong"] + '\n' +
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
        SqlDSregistroWeb.InsertCommand = "INSERT INTO Anivindividual VALUES ('" + txtNombres.Text +
            "', '" + txtApellidos.Text +
            "', '" + txtCorreo.Text +
            "', '" + txtEdad.Text +

            "', '" + Convert.ToString(Session["strAjedrez"]) +
            "', '" + Convert.ToString(Session["strAtletica"]) +
            "', '" + Convert.ToString(Session["strLoteria"]) +
            "', '" + Convert.ToString(Session["strPingpong"]) +

            "', '" + txtComentarios.Text +
            "')";
        SqlDSregistroWeb.Insert();

        //ARMAR CUERPO DEL MENSAJE
        string mensaje = "Estimado(a) " + txtNombres.Text + ", usted ha sido registrado(a) en las actividades seleccionadas" + '\n' +
            '\n' +
            Session["mensajeConfirmacion"] +
            "Gracias," + '\n' + "Comite Organizador" + '\n' + "CIBNOR, S.C.";

        //    FALTA AGREGAR COPIA OCULTA
        //Mandamos el correo(de,                para,           copia oculta,           asunto,                 mensaje)
        enviarCorreo("eventos@cibnor.mx", txtCorreo.Text, "eventos@cibnor.mx", "CIBNOR, Registro en Linea Individual", mensaje);

        // CORREOS A LOS COORDINADORES PARA SU CONTROL
        if (chkAjedrez.Checked) enviarCorreo("eventos@cibnor.mx", "agmichel04@cibnor.mx", "-", "CIBNOR, Registro en Linea Individual", mensaje);
        if (chkCarreraAtletica.Checked) enviarCorreo("eventos@cibnor.mx", "pnavarro04@cibnor.mx", "-", "CIBNOR, Registro en Linea Individual", mensaje);
        if (chkLoteria.Checked) enviarCorreo("eventos@cibnor.mx", "asauceda@cibnor.mx", "-", "CIBNOR, Registro en Linea Individual", mensaje);
        if (chkPingPong.Checked) enviarCorreo("eventos@cibnor.mx", "jahernandez@cibnor.mx", "-", "CIBNOR, Registro en Linea Individual", mensaje);

        Response.Redirect("~/RegistroOk.aspx?evento=anivindividual");
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