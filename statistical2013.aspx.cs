using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class statistical2013 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnContinuar_Click(object sender, EventArgs e)
    {
        Session["mensajeConfirmacion"] =
            "-----------------------------------------------------------------------------" + '\n' +
            '\n' +
            "Nombre(s)          : " + txtNombres.Text + '\n' +
            "Apellido(s)        : " + txtApellidos.Text + '\n' +
            "Correo electronico : " + txtCorreo.Text + '\n' +
            "Institucion        : " + txtInstitucion.Text + '\n' +
            "Telefono           : " + txtTelefono.Text + '\n' +
            '\n' +
            '\n' +
            "- INFORMACION ADICIONAL" + '\n' +
            "-----------------------------------------------------------------------------" + '\n' +
            '\n' +
            lblTema.Text + " " + txtTema.Text + '\n' +
            lblNivel.Text + " " + ddlNivel.SelectedValue + '\n' +
            lblAsesores.Text + " " + txtAsesores.Text + '\n' +
            lblConocimientoR.Text + " " + ddlConocimientoR.SelectedValue + '\n' +
            lblConocimientoArcGIS.Text + " " + ddlConocimientoArcGIS.SelectedValue + '\n' +
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
        ////Crear el comando para el UPDATE
        SqlDSstatistical2013.InsertParameters.Add("@nombres", txtNombres.Text);
        SqlDSstatistical2013.InsertParameters.Add("@apellidos", txtApellidos.Text);
        SqlDSstatistical2013.InsertParameters.Add("@correo", txtCorreo.Text);
        SqlDSstatistical2013.InsertParameters.Add("@telefono", txtTelefono.Text);
        SqlDSstatistical2013.InsertParameters.Add("@institucion", txtInstitucion.Text);

        SqlDSstatistical2013.InsertParameters.Add("@tema", txtTema.Text);
        SqlDSstatistical2013.InsertParameters.Add("@nivel", ddlNivel.SelectedValue);
        SqlDSstatistical2013.InsertParameters.Add("@asesores", txtAsesores.Text);
        SqlDSstatistical2013.InsertParameters.Add("@conocimientor", ddlConocimientoR.SelectedValue);
        SqlDSstatistical2013.InsertParameters.Add("@conocimientoarcgis", ddlConocimientoArcGIS.SelectedValue);

        SqlDSstatistical2013.InsertParameters.Add("@comentarios", txtComentarios.Text);
        SqlDSstatistical2013.InsertParameters.Add("@factura", rblFactura.SelectedValue);
        SqlDSstatistical2013.InsertParameters.Add("@facturaNombre", txtFacturaNombre.Text);
        SqlDSstatistical2013.InsertParameters.Add("@facturaRFC", txtFacturaRFC.Text);
        SqlDSstatistical2013.InsertParameters.Add("@facturaDireccion", txtFacturaDireccion.Text);

        SqlDSstatistical2013.InsertCommand = "INSERT INTO Statistical2013 VALUES ('" + txtNombres.Text +
            "', '" + txtApellidos.Text +
            "', '" + txtCorreo.Text +
            "', '" + txtTelefono.Text +
            "', '" + txtInstitucion.Text +

            "', '" + txtTema.Text +
            "', '" + ddlNivel.SelectedValue +
            "', '" + txtAsesores.Text +
            "', '" + ddlConocimientoR.SelectedValue +
            "', '" + ddlConocimientoArcGIS.SelectedValue +

            "', '" + txtComentarios.Text +
            "', '" + rblFactura.SelectedValue +
            "', '" + txtFacturaNombre.Text +
            "', '" + txtFacturaRFC.Text +
            "', '" + txtFacturaDireccion.Text +
            "')";
        SqlDSstatistical2013.Insert();

        //ARMAR CUERPO DEL MENSAJE
        string mensaje = "Estimado(a) " + txtNombres.Text +", usted ha sido registrado(a)." + '\n' +
            '\n' +
            Session["mensajeConfirmacion"] +
            '\n' +
            '\n' +
            "Gracias," + '\n' + "Comite Organizador" + '\n' + "CIBNOR, S.C.";

        //Mandamos el correo(de,                para,           copia oculta,           asunto,                 mensaje)
        enviarCorreo("gencon.cibnor@gmail.com", txtCorreo.Text, "gencon.cibnor@gmail.com", "Introduction to Statistical Analysis for Landscape Genetics", mensaje);
        enviarCorreo("gencon.cibnor@gmail.com", "eventos@cibnor.mx", "-", "Introduction to Statistical Analysis for Landscape Genetics", mensaje);

        Response.Redirect("~/RegistroOk.aspx?evento=statistical2013");
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
            lbl1.Text = "El mensaje no ha podido ser entregado, intentelo de nuevo mas tarde. " + ex.Message;
        }
    }
}