using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class microscopia2012 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnContinuar_Click(object sender, EventArgs e)
    {
        Session["mensajeConfirmacion"] =
            "- INFORMACION GENERAL" + '\n' +
            '\n' +
            "Nombre(s)          : " + txtNombres.Text + '\n' +
            "Apellido(s)        : " + txtApellidos.Text + '\n' +
            "Correo electronico : " + txtCorreo.Text + '\n' +
            "Escolaridad        : " + ddlEscolaridad.SelectedValue + '\n' +
            "Institucion        : " + txtInstitucion.Text + '\n' +
            "Domicilio          : " + txtDomicilio.Text + '\n' +
            "Ciudad             : " + txtCiudad.Text + '\n' +
            "Estado             : " + txtEstado.Text + '\n' +
            "Pais               : " + txtPais.Text + '\n' +
            "Codigo postal      : " + txtCP.Text + '\n' +
            "Telefono           : " + txtTelefono.Text + '\n' +
            "Fax                : " + txtFax.Text + '\n' +
            "________________________________________________________________________" + '\n' +
            '\n' +
            "- PARTICIPANTES FORANEOS" + '\n' +
            '\n' +
            "Hotel donde se hospeda : " + txtHotel.Text + '\n' +
            "________________________________________________________________________" + '\n' +
            '\n' +
            "Observaciones y/o comentarios adicionales: " + '\n' +
            '\n' +
            txtObservaciones.Text + '\n' +
            '\n' +
            '\n' +
            "- PARA FACTURACION:" + '\n' +
            "Si usted requiere factura, por favor mande al correo electronico del evento," + '\n' +
            "una copia escaneada de su cédula (RFC), incluyendo su dirección fiscal." + '\n';
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
        
        SqlDSmicroscopia2012.InsertParameters.Add("@nombres", txtNombres.Text);
        SqlDSmicroscopia2012.InsertParameters.Add("@apellidos", txtApellidos.Text);
        SqlDSmicroscopia2012.InsertParameters.Add("@correo", txtCorreo.Text);
        SqlDSmicroscopia2012.InsertParameters.Add("@escolaridad", ddlEscolaridad.SelectedValue);
        SqlDSmicroscopia2012.InsertParameters.Add("@institucion", txtInstitucion.Text);
        SqlDSmicroscopia2012.InsertParameters.Add("@domicilio", txtDomicilio.Text);
        SqlDSmicroscopia2012.InsertParameters.Add("@ciudad", txtCiudad.Text);
        SqlDSmicroscopia2012.InsertParameters.Add("@estado", txtEstado.Text);
        SqlDSmicroscopia2012.InsertParameters.Add("@pais", txtPais.Text);
        SqlDSmicroscopia2012.InsertParameters.Add("@cp", txtCP.Text);
        SqlDSmicroscopia2012.InsertParameters.Add("@telefono", txtTelefono.Text);
        SqlDSmicroscopia2012.InsertParameters.Add("@fax", txtFax.Text);

        SqlDSmicroscopia2012.InsertParameters.Add("@hotel", txtHotel.Text);
        SqlDSmicroscopia2012.InsertParameters.Add("@observaciones", txtObservaciones.Text);

        SqlDSmicroscopia2012.InsertCommand = "INSERT INTO Microscopia2012 VALUES ('" + txtNombres.Text +
            "', '" + txtApellidos.Text +
            "', '" + txtCorreo.Text +
            "', '" + ddlEscolaridad.SelectedValue +
            "', '" + txtInstitucion.Text +
            "', '" + txtDomicilio.Text +
            "', '" + txtCiudad.Text +
            "', '" + txtEstado.Text +
            "', '" + txtPais.Text +
            "', '" + txtCP.Text +
            "', '" + txtTelefono.Text +
            "', '" + txtFax.Text +
            "', '" + txtHotel.Text +
            "', '" + txtObservaciones.Text +
            "')";
        SqlDSmicroscopia2012.Insert();

        //ARMAR CUERPO DEL MENSAJE
        string mensaje = "Estimado(a) " + txtNombres.Text + " " + txtApellidos.Text + ", usted ha sido registrado(a)." + '\n' +
            '\n' +
            Session["mensajeConfirmacion"] +
            '\n' +
            '\n' +
            "Gracias," + '\n' + "Comite Organizador" + '\n' + "CIBNOR, S.C.";

        //Mandamos el correo(de,                para,           copia oculta,           asunto,                 mensaje)
        enviarCorreo("microscopia2012@cibnor.mx", txtCorreo.Text, "microscopia2012@cibnor.mx", "Curso Basico de Microscopia Electronica de Barrido", mensaje);

        Response.Redirect("~/RegistroOk.aspx?evento=microscopia2012");
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
