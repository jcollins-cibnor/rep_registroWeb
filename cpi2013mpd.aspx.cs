using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class cpi2013mpd : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Session.Timeout = 1200;
    }
    protected void btnContinuar_Click(object sender, EventArgs e)
    {
        txtNombres.Text = txtNombres.Text.Trim();
        Session["mensajeConfirmacion"] =
            "-----------------------------------------------------------------------------" + '\n' +
            '\n' +
            lblNombres.Text + " " + txtNombres.Text + '\n' +
            lblApellidos.Text + " " + txtApellidos.Text + '\n' +
            lblCorreo.Text + " " + txtCorreo.Text + '\n' +
            lblTelefono.Text + " " + txtTelefono.Text + '\n' +
            lblInstitucion.Text + " " + txtInstitucion.Text + '\n' +
            //lblTalla.Text + " " + ddlTalla.SelectedValue + '\n' +
            '\n' +
            '\n' +
            "- " + lblInformacionAdicional.Text + '\n' +
            "-----------------------------------------------------------------------------" + '\n' +
            '\n' +
            "Eje seleccionado: " + rblEje.SelectedValue + '\n' +
            '\n' +
            '\n' +
            "++ Itinerario de vuelo de salida ++" + '\n' +
            lblSalidaCiudad1.Text + txtSalidaCiudad1.Text + ", " + lblSalidaAerolinea1.Text + txtSalidaAerolinea1.Text + ", " +
            lblSalidaNoVuelo1.Text + txtSalidaNoVuelo1.Text + ", " + lblSalidaFecha1.Text + txtSalidaFecha1.Text + ", " +
            lblSalidaHora1.Text + txtSalidaHora1.Text + ", " + lblSalidaHoraLlegada1.Text + txtSalidaHoraLlegada1.Text + '\n' +
            lblSalidaCiudad2.Text + txtSalidaCiudad2.Text + ", " + lblSalidaAerolinea2.Text + txtSalidaAerolinea2.Text + ", " +
            lblSalidaNoVuelo2.Text + txtSalidaNoVuelo2.Text + ", " + lblSalidaFecha2.Text + txtSalidaFecha2.Text + ", " +
            lblSalidaHora2.Text + txtSalidaHora2.Text + ", " + lblSalidaHoraLlegada2.Text + txtSalidaHoraLlegada2.Text + '\n' +
            '\n' +
            "++ Itinerario de vuelo de regreso ++" + '\n' +
            lblRegresoCiudad1.Text + txtRegresoCiudad1.Text + ", " + lblRegresoAerolinea1.Text + txtRegresoAerolinea1.Text + ", " +
            lblRegresoNoVuelo1.Text + txtRegresoNoVuelo1.Text + ", " + lblRegresoFecha1.Text + txtRegresoFecha1.Text + ", " +
            lblRegresoHora1.Text + txtRegresoHora1.Text + ", " + lblRegresoHoraLlegada1.Text + txtRegresoHoraLlegada1.Text + '\n' +
            lblRegresoCiudad2.Text + txtRegresoCiudad2.Text + ", " + lblRegresoAerolinea2.Text + txtRegresoAerolinea2.Text + ", " +
            lblRegresoNoVuelo2.Text + txtRegresoNoVuelo2.Text + ", " + lblRegresoFecha2.Text + txtRegresoFecha2.Text + ", " +
            lblRegresoHora2.Text + txtRegresoHora2.Text + ", " + lblRegresoHoraLlegada2.Text + txtRegresoHoraLlegada2.Text + '\n' +
            '\n' +
            "Hotel donde se hospeda: " + txtHotel.Text + '\n' +
            '\n' +
            '\n' +
            lblCoctel.Text + " " + rblCoctel.SelectedValue + '\n' +
            lblCena.Text + " " + rblCena.SelectedValue + '\n' +
            lblFamilia.Text + " " + rblFamilia.SelectedValue + '\n' +
            lblFamiliaCantidad.Text + " " + txtFamiliaCantidad.Text + '\n' +
            lblFamiliaEdades.Text + " " + txtFamiliaEdades.Text + '\n' +
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
        SqlDScongresocpi2013.InsertCommand = "INSERT INTO CPI2013mpd VALUES ('" + txtNombres.Text +
            "', '" + txtApellidos.Text +
            "', '" + txtCorreo.Text +
            "', '" + txtTelefono.Text +
            "', '" + txtInstitucion.Text +
            "', '" + ddlTalla.SelectedValue +

            "', '" + rblEje.SelectedValue +

            "', '" + txtSalidaCiudad1.Text +
            "', '" + txtSalidaAerolinea1.Text +
            "', '" + txtSalidaNoVuelo1.Text +
            "', '" + txtSalidaFecha1.Text +
            "', '" + txtSalidaHora1.Text +
            "', '" + txtSalidaHoraLlegada1.Text +

            "', '" + txtSalidaCiudad2.Text +
            "', '" + txtSalidaAerolinea2.Text +
            "', '" + txtSalidaNoVuelo2.Text +
            "', '" + txtSalidaFecha2.Text +
            "', '" + txtSalidaHora2.Text +
            "', '" + txtSalidaHoraLlegada2.Text +

            "', '" + txtRegresoCiudad1.Text +
            "', '" + txtRegresoAerolinea1.Text +
            "', '" + txtRegresoNoVuelo1.Text +
            "', '" + txtRegresoFecha1.Text +
            "', '" + txtRegresoHora1.Text +
            "', '" + txtRegresoHoraLlegada1.Text +

            "', '" + txtRegresoCiudad2.Text +
            "', '" + txtRegresoAerolinea2.Text +
            "', '" + txtRegresoNoVuelo2.Text +
            "', '" + txtRegresoFecha2.Text +
            "', '" + txtRegresoHora2.Text +
            "', '" + txtRegresoHoraLlegada2.Text +

            "', '" + txtHotel.Text +

            "', '" + rblCoctel.SelectedValue +
            "', '" + rblCena.SelectedValue +
            "', '" + rblFamilia.SelectedValue +
            "', '" + txtFamiliaCantidad.Text +
            "', '" + txtFamiliaEdades.Text +

            "', '" + txtComentarios.Text +
            "')";
        SqlDScongresocpi2013.Insert();

        //ARMAR CUERPO DEL MENSAJE
        string mensaje = "Estimado(a) " + txtNombres.Text + ", usted ha sido registrado(a)." + '\n' +
            '\n' +
            Session["mensajeConfirmacion"] +
            '\n' +
            '\n' +
            lblNotaImportante.Text +
            '\n' +
            '\n' +
            "Gracias," + '\n' + "Comite Organizador" + '\n' + "CIBNOR, S.C.";

        mensaje = mensaje.Replace("\n", "<br />");

        //Mandamos el correo(de,                para,           copia oculta,           asunto,                 mensaje)
        enviarCorreo("reunioncpi2013@cibnor.mx", txtCorreo.Text, "reunioncpi2013@cibnor.mx", "Registro en Linea - Reunión CPIs 2013", mensaje);

        Response.Redirect("~/RegistroOk.aspx?evento=cpi2013mpd");
    }

    protected void rblFamilia_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (rblFamilia.SelectedValue != "No")
        {
            pnlFamilia.Visible = true;
            txtFamiliaCantidad.Text = "";
            txtFamiliaEdades.Text = "";
        }
        else
        {
            pnlFamilia.Visible = false;
            txtFamiliaCantidad.Text = "--";
            txtFamiliaEdades.Text = "--";
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
            lblStatus.Text = "El registro no ha podido ser entregado, intentelo de nuevo mas tarde.";
            enviarCorreo(origen, "jcollins@cibnor.mx", "-", origen + ex.Message, Convert.ToString(Session["mensajeConfirmacion"]));
        }
    }

}