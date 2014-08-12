using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.IO;

public partial class desertfishes2014 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
    }

    protected void btnContinuar_Click(object sender, EventArgs e)
    {
        lblHiddenMensaje.Text =
            "- " + lblDatosPersonales.Text + '\n' +
            '\n' +
            lblNombres.Text + " " + txtNombres.Text + '\n' +
            lblApellidos.Text + " " + txtApellidos.Text + '\n' +
            lblCorreo.Text + " " + txtCorreo.Text + '\n' +
            lblTelefono.Text + " " + txtTelefono.Text + '\n' +
            lblDireccion.Text + " " + txtDireccion.Text + '\n' +
            lblCodigo.Text + " " + txtCodigo.Text + '\n' +
            lblCiudad.Text + " " + txtCiudad.Text + '\n' +
            lblEstado.Text + " " + txtEstado.Text + '\n' +
            lblPais.Text + " " + txtPais.Text + '\n' +
            lblRegistro.Text + " " + ddlRegistro.SelectedValue + '\n' +
            lblTalla.Text + " " + ddlTalla.SelectedValue + '\n' +

            lblHotel.Text + " " + txtHotel.Text + '\n' +
            lblFactura.Text + " " + rblFactura.SelectedValue + '\n' +
            lblFacturaNombre.Text + " " + txtFacturaNombre.Text + '\n' +
            lblFacturaRFC.Text + " " + txtFacturaRFC.Text + '\n' +
            lblFacturaDireccion.Text + " " + txtFacturaDireccion.Text + '\n' +

            lblComentarios.Text + " " + txtComentarios.Text;

        lblHiddenMensaje.Text = lblHiddenMensaje.Text.Replace("\n", "<br />");

        //metemos el mensaje en una label y confirmamos el mensaje
        lblConfirmacion.Text = lblHiddenMensaje.Text;

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
        SqlDSregistro.InsertCommand = "INSERT INTO desertfishes2014 VALUES ('" +
            txtNombres.Text + "', '" +
            txtApellidos.Text + "', '" +
            txtCorreo.Text + "', '" +
            txtTelefono.Text + "', '" +
            txtDireccion.Text + "', '" +
            txtCodigo.Text + "', '" +
            txtCiudad.Text + "', '" +
            txtEstado.Text + "', '" +
            txtPais.Text + "', '" +
            ddlRegistro.SelectedValue + "', '" +
            ddlTalla.SelectedValue + "', '" +
            txtHotel.Text + "', '" +
            rblFactura.SelectedValue + "', '" +
            txtFacturaNombre.Text + "', '" +
            txtFacturaRFC.Text + "', '" +
            txtFacturaDireccion.Text + "', '" +
            txtComentarios.Text + "', '" +

            "1" + "', GetDate())";

        int registroOk = 1;
        OperacionesBasicas Opb = new OperacionesBasicas();
        try
        {
            SqlDSregistro.Insert();
            //ARMAR CUERPO DEL MENSAJE
            string mensaje = "Estimado(a) participante, el registro ha sido completado con exíto." + '\n' +
                '\n' +
                lblHiddenMensaje.Text + '\n' +
                    '\n' +
                    '\n' +
                "Gracias," + '\n' + "Comite Organizador" + '\n' + "CIBNOR, S.C.";

            mensaje = mensaje.Replace("\n", "<br />");

            //Mandamos el correo( de,                para,           copia oculta,           asunto,                 mensaje )
            Opb.enviarCorreo("desertfishes2014@cibnor.mx", txtCorreo.Text, "desertfishes2014@cibnor.mx", "Peces del desierto 2014 - Registro web", mensaje);
        }
        catch (Exception ex)
        {
            Opb.enviarCorreo("desertfishes2014@cibnor.mx", "jcollins@cibnor.mx", "-", "Error", ex.Message + " - " + ex.StackTrace);
            registroOk = 0;
            lblStatus.Text = "Hubo un problema al procesar su registro, favor de intentarlo de nuevo mas tarde. El webmaster ya ha sido notificado.";
        }
        if (registroOk == 1)
        {
            Response.Redirect("~/RegistroOk.aspx?evento=desertfishes2014");
        }
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
    protected void btnPago_Click(object sender, EventArgs e)
    {
        string nombreArchivoPorSubir = Server.MapPath("~/desertfishes2014/" + Path.GetFileName(fuPago.PostedFile.FileName));
        string extension = System.IO.Path.GetExtension(nombreArchivoPorSubir).ToUpper();

        string nombreArchivoEnServer = Server.MapPath("~/desertfishes2014/" + txtCorreo.Text + extension);
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
                        fuPago.SaveAs(MapPath("~/desertfishes2014/" + txtCorreo.Text + extension));
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
}