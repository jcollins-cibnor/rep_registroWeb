using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Net;
using System.Net.Mail;
using System.Net.Mime;

using System.IO;

public partial class smcs_congreso2013 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Session.Timeout = 500;
    }

    protected void btnContinuar_Click(object sender, EventArgs e)
    {
        if ((rblTipoRegistro.SelectedValue == "Participante") || (rblTipoRegistro.SelectedValue == "Ponente"))
        {
            requierePago("si");
        }
        else
        {
            requierePago("no");
        }

        if (rblTipoRegistro.SelectedValue == "Comite" || rblTipoRegistro.SelectedValue == "Participante")
        {
            Session["rblModalidad"] = "--"; // Oral o poster
            Session["rblDivisionSimposio"] = "--"; // Division o simposio
            Session["txtDivisionSimposio"] = "--"; // Seleccionando el anterior, cual de ellos

            Session["mensajeConfirmacion"] =
                "-----------------------------------------------------------------------------" + '\n' +
                '\n' +
                lblNombres.Text + " " + txtNombres.Text + '\n' +
                lblApellidos.Text + " " + txtApellidos.Text + '\n' +
                lblCorreo.Text + " " + txtCorreo.Text + '\n' +
                lblTelefono.Text + " " + txtTelefono.Text + '\n' +
                lblInstitucion.Text + " " + txtInstitucion.Text + '\n' +
                lblTipoRegistro.Text + " " + rblTipoRegistro.SelectedItem.Text;
        }
        else
        {
            Session["rblModalidad"] = rblModalidad.SelectedItem.Text; // Oral o poster
            Session["rblDivisionSimposio"] = rblDivisionSimposio.SelectedItem.Text; // Division o simposio

            if (rblDivisionSimposio.SelectedValue == "div") // Seleccionando el anterior, cual de ellos
            {
                Session["txtDivisionSimposio"] = rblDivision.SelectedItem.Text;
            }
            else
            {
                Session["txtDivisionSimposio"] = rblSimposio.SelectedItem.Text;
            }

            Session["mensajeConfirmacion"] =
                "-----------------------------------------------------------------------------" + '\n' +
                '\n' +
                lblNombres.Text + " " + txtNombres.Text + '\n' +
                lblApellidos.Text + " " + txtApellidos.Text + '\n' +
                lblCorreo.Text + " " + txtCorreo.Text + '\n' +
                lblTelefono.Text + " " + txtTelefono.Text + '\n' +
                lblInstitucion.Text + " " + txtInstitucion.Text + '\n' +
                lblTipoRegistro.Text + " " + rblTipoRegistro.SelectedItem.Text + '\n' +
                '\n' +
                '\n' +
                "- " + lblInformacionAdicional.Text + '\n' +
                "-----------------------------------------------------------------------------" + '\n' +
                '\n' +
                "Titulo del trabajo: " + txtTitulo.Text + '\n' +
                "Autor(es): " + txtAutores.Text + '\n' +
                '\n' +
                "Modalidad de presentación: " + Convert.ToString(Session["rblModalidad"]) + '\n' +
                '\n' +
                "Tipo de sesión: " + Convert.ToString(Session["rblDivisionSimposio"]) + '\n' +
                " - " + Convert.ToString(Session["txtDivisionSimposio"]) + '\n' +
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
        }

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
        SqlDSsmcs2013.InsertParameters.Add("@nombres", txtNombres.Text);
        SqlDSsmcs2013.InsertParameters.Add("@apellidos", txtApellidos.Text);
        SqlDSsmcs2013.InsertParameters.Add("@correo", txtCorreo.Text);
        SqlDSsmcs2013.InsertParameters.Add("@telefono", txtTelefono.Text);
        SqlDSsmcs2013.InsertParameters.Add("@institucion", txtInstitucion.Text);
        SqlDSsmcs2013.InsertParameters.Add("@tipoRegistro", rblTipoRegistro.SelectedItem.Text);

        SqlDSsmcs2013.InsertParameters.Add("@titulo", txtTitulo.Text);
        SqlDSsmcs2013.InsertParameters.Add("@autores", txtAutores.Text);
        SqlDSsmcs2013.InsertParameters.Add("@modalidad", Convert.ToString(Session["rblModalidad"]));
        SqlDSsmcs2013.InsertParameters.Add("@tipoSesion", Convert.ToString(Session["rblDivisionSimposio"]));
        SqlDSsmcs2013.InsertParameters.Add("@divisionSimposio", Convert.ToString(Session["txtDivisionSimposio"]));

        SqlDSsmcs2013.InsertParameters.Add("@comentarios", txtComentarios.Text);
        SqlDSsmcs2013.InsertParameters.Add("@factura", rblFactura.SelectedValue);
        SqlDSsmcs2013.InsertParameters.Add("@facturaNombre", txtFacturaNombre.Text);
        SqlDSsmcs2013.InsertParameters.Add("@facturaRFC", txtFacturaRFC.Text);
        SqlDSsmcs2013.InsertParameters.Add("@facturaDireccion", txtFacturaDireccion.Text);


        SqlDSsmcs2013.InsertCommand = "INSERT INTO smcs2013 VALUES ('" + txtNombres.Text +
            "', '" + txtApellidos.Text +
            "', '" + txtCorreo.Text +
            "', '" + txtTelefono.Text +
            "', '" + txtInstitucion.Text +
            "', '" + rblTipoRegistro.SelectedItem.Text +

            "', '" + txtTitulo.Text +
            "', '" + txtAutores.Text +
            "', '" + Convert.ToString(Session["rblModalidad"]) +
            "', '" + Convert.ToString(Session["rblDivisionSimposio"]) +
            "', '" + Convert.ToString(Session["txtDivisionSimposio"]) +

            "', '" + txtComentarios.Text +
            "', '" + rblFactura.SelectedValue +
            "', '" + txtFacturaNombre.Text +
            "', '" + txtFacturaRFC.Text +
            "', '" + txtFacturaDireccion.Text +
            "')";
        SqlDSsmcs2013.Insert();

        //ARMAR CUERPO DEL MENSAJE
        string mensaje = "Estimado(a) " + txtNombres.Text + ", usted ha sido registrado(a)." + '\n' +
            '\n' +
            Session["mensajeConfirmacion"] + '\n' +
            '\n' +
            '\n' +
            "Gracias," + '\n' + "Comite Organizador" + '\n' + "CIBNOR, S.C.";

        mensaje = mensaje.Replace("\n", "<br />");

        //Mandamos el correo( de,                para,           copia oculta,           asunto,                 mensaje )
        enviarCorreo("smcs-congreso2013@cibnor.mx", txtCorreo.Text, "smcs-congreso2013@cibnor.mx", "SMCS Congreso 2013 - Registro en linea", mensaje);

        Response.Redirect("~/RegistroOk.aspx?evento=smcs-congreso2013");
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

    protected void rblDivisionSimposio_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (rblDivisionSimposio.SelectedValue == "div")
        {
            rblDivision.SelectedIndex = 0;
            pnlDivision.Visible = true;
            pnlSimposio.Visible = false;
        }
        else if (rblDivisionSimposio.SelectedValue == "sim")
        {
            rblSimposio.SelectedIndex = 0;
            pnlDivision.Visible = false;
            pnlSimposio.Visible = true;
        }
    }

    protected void btnPago_Click(object sender, EventArgs e)
    {
        string nombreArchivoPorSubir = Server.MapPath("~/smcs2013/" + Path.GetFileName(fuPago.PostedFile.FileName));
        string extension = System.IO.Path.GetExtension(nombreArchivoPorSubir).ToUpper();

        string nombreArchivoEnServer = Server.MapPath("~/smcs2013/" + txtCorreo.Text + extension);
        //Session["nombreArchivo"] = Path.GetFileName(fuPago.PostedFile.FileName);
        try
        {
            if (!File.Exists(nombreArchivoEnServer))
            {
                if (extension == ".PDF")
                {
                    if (fuPago.PostedFile.ContentLength > 2048000)
                    {
                        lblStatusArchivo.Text = "El archivo es demasiado grande, limite: 2 MB.";
                    }
                    else
                    {
                        fuPago.SaveAs(MapPath("~/smcs2013/" + txtCorreo.Text + extension));
                        lblStatusArchivo.Text = "Archivo grabado con exito, presione 'Enviar' para continuar.";

                        btnEnviar.Enabled = true;
                        fuPago.Visible = false;
                        btnPago.Visible = false;
                    }
                }
                else
                {
                    lblStatusArchivo.Text = "El tipo de archivo es incorrecto. Debe de ser un archivo en PDF.";
                }
            }
            else
            {
                lblStatusArchivo.Text = "Ya existe un pago relacionado con su correo electronico, " +
                    "si esto es correcto presione en Enviar.";
                btnEnviar.Enabled = true;
                fuPago.Visible = false;
                btnPago.Visible = false;
            }
        }
        catch (Exception ex)
        {
            lblStatusArchivo.Text = ex.Message.ToString();
        }
        lblStatusArchivo.Visible = true;
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
            lblStatusEnvio.Text = "El registro no ha podido ser entregado, intentelo de nuevo mas tarde. " +
                "-- Dudas: smcs-congreso2013@cibnor.mx";
            enviarCorreo("smcs-congreso2013@cibnor.mx", "jcollins@cibnor.mx", "-", "Registro smcs-congreso2013" + ex.Message, Convert.ToString(Session["mensajeConfirmacion"]));
        }
    }

    protected void rblTipoRegistro_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (rblTipoRegistro.SelectedValue == "Comite" || rblTipoRegistro.SelectedValue == "Participante")
        {
            pnlTipoRegistro.Visible = false;
            txtTitulo.Text = "--";
            txtAutores.Text = "--";
        }
        else
        {
            pnlTipoRegistro.Visible = true;
            txtTitulo.Text = "";
            txtAutores.Text = "";
        }
    }

    protected void requierePago(string paga)
    {
        if (paga == "no")
        {
            btnEnviar.Enabled = true;
            pnlPago.Visible = false;
        }
        else
        {
            btnEnviar.Enabled = false;
            pnlPago.Visible = true;
            fuPago.Visible = true;
            btnPago.Visible = true;
            lblStatusArchivo.Text = "";
        }
    }
}