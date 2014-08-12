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

public partial class pace2014 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnContinuar_Click(object sender, EventArgs e)
    {
        OperacionesBasicas Opb = new OperacionesBasicas();
        int numRegistros = Opb.numRegistros("pace2014", "correo", txtCorreo.Text);
        if (numRegistros > 0) // Ya existe?
        {
            lblStatusExiste.Text = "El correo que ingresaste ya se encuentra registrado, por favor utiliza otro.";
            txtCorreo.Focus();
        }
        else // No existe, adelante
        {
            lblStatusExiste.Text = "";
            numRegistros = Opb.numRegistros("pace2014", "area", ddlArea.SelectedItem.Text);
            lblHiddenClave.Text = ddlArea.SelectedValue + Convert.ToString(numRegistros + 1);
            //lblHiddenClave.Visible = true;

            btnContinuar.Visible = false;
            pnlConfirmacion.Visible = true;
            confirmarDatos(1);
        }        
    }

    protected void btnRegresar_Click(object sender, EventArgs e)
    {
        pnlConfirmacion.Visible = false;
        btnContinuar.Visible = true;
        confirmarDatos(0);
    }

    void confirmarDatos(int op)
    {
        if (op == 1)
        {
            txtNombre.Enabled = false;
            txtCorreo.Enabled = false;
            txtTelefono.Enabled = false;
            ddlSexo.Enabled = false;
            txtEdad.Enabled = false;
            txtInstitucion.Enabled = false;
            txtDomicilio.Enabled = false;
            txtMunicipio.Enabled = false;

            txtProyecto.Enabled = false;
            ddlArea.Enabled = false;

            txtNombreHuesped.Enabled = false;
            txtJustificacion.Enabled = false;
        }
        else
        {
            txtNombre.Enabled = true;
            txtCorreo.Enabled = true;
            txtTelefono.Enabled = true;
            ddlSexo.Enabled = true;
            txtEdad.Enabled = true;
            txtInstitucion.Enabled = true;
            txtDomicilio.Enabled = true;
            txtMunicipio.Enabled = true;

            txtProyecto.Enabled = true;
            ddlArea.Enabled = true;

            txtNombreHuesped.Enabled = true;
            txtJustificacion.Enabled = true;
        }
    }

    protected void btnEnviar_Click(object sender, EventArgs e)
    {
        // CREAR EL MENSAJE A ENVIAR POR CORREO
        lblHiddenMensaje.Text = "Estimado(a) participante, el registro ha sido completado con exíto." + '\n' +
            '\n' +
            "- " + lblDatosGenerales.Text + '\n' +
            '\n' +
            lblNombre.Text + " " + txtNombre.Text + '\n' +
            lblCorreo.Text + " " + txtCorreo.Text + '\n' +
            lblTelefono.Text + " " + txtTelefono.Text + '\n' +
            lblSexo.Text + " " + ddlSexo.SelectedValue + '\n' +
            lblEdad.Text + " " + txtEdad.Text + '\n' +
            lblInstitucion.Text + " " + txtInstitucion.Text + '\n' +
            lblDomicilio.Text + " " + txtDomicilio.Text + '\n' +
            lblMunicipio.Text + " " + txtMunicipio.Text + '\n' +
            '\n' +
            "- " + lblDatosProyecto.Text + '\n' +
            '\n' +
            lblProyecto.Text + " " + txtProyecto.Text + '\n' +
            lblArea.Text + " " + ddlArea.SelectedItem.Text + '\n' +
            '\n' +
            "- " + lblInfoAdicional.Text + '\n' +
            '\n' +
            lblNombreHuesped.Text + " " + txtNombreHuesped.Text + '\n' +
            lblJustificacion.Text + " " + txtJustificacion.Text + '\n' +
            '\n' +
            '\n' +
            "Clave de registro: " + lblHiddenClave.Text + '\n' +
            '\n' +
            '\n' +
        "Gracias," + '\n' + "Comite Organizador" + '\n' + "CIBNOR, S.C."; 

        lblHiddenMensaje.Text = lblHiddenMensaje.Text.Replace("\n", "<br />");

        //Crear el comando para el INSERT
        SqlDSregistro.InsertCommand = "INSERT INTO pace2014 VALUES ('" +
            txtNombre.Text + "', '" +
            txtCorreo.Text + "', '" +
            txtTelefono.Text + "', '" +
            ddlSexo.SelectedValue + "', '" +
            txtEdad.Text + "', '" +

            txtInstitucion.Text + "', '" +
            txtDomicilio.Text + "', '" +
            txtMunicipio.Text + "', '" +

            txtProyecto.Text + "', '" +
            ddlArea.SelectedItem.Text + "', '" +
                
            txtNombreHuesped.Text + "', '" +
            txtJustificacion.Text + "', '" +
            lblHiddenClave.Text + "', '" + 
            "1" + "', GetDate())";

        int registroOk = 1; // Para validar si el registro se ejecuto en el server
        OperacionesBasicas OpbCorreo = new OperacionesBasicas();
        try
        {
            SqlDSregistro.Insert();
            //Mandamos el correo( de,                para,           copia oculta,           asunto,                 mensaje )
            OpbCorreo.enviarCorreo("pace2014@cibnor.mx", txtCorreo.Text, "pace2014@cibnor.mx", "pace2014 - Registro web", lblHiddenMensaje.Text);
        }
        catch (Exception ex)
        {
            OpbCorreo.enviarCorreo("pace2014@cibnor.mx", "jcollins@cibnor.mx", "-", "Error", "ex.Message: " + ex.Message + " - " + txtCorreo.Text + " - ex.InnerException.Message: " + ex.InnerException.Message);
            registroOk = 0;
            lblStatusEnvio.Text = "Hubo un problema al procesar su registro, favor de intentarlo de nuevo mas tarde. El webmaster ya ha sido notificado.";
        }
        if (registroOk == 1)
        {
            Response.Redirect("~/RegistroOk.aspx?evento=pace2014");
        }
    }

    protected void btnAdjuntar_Click(object sender, EventArgs e)
    {
        string nombreArchivoPorSubir = Server.MapPath("~/pace2014/" + Path.GetFileName(fuAdjuntar.PostedFile.FileName));
        string extension = System.IO.Path.GetExtension(nombreArchivoPorSubir).ToUpper();
        string nombreArchivoEnServer = Server.MapPath("~/pace2014/" + txtCorreo.Text + extension);
        try
        {
            if (extension == ".PDF") // Es un PDF?
            {
                if (fuAdjuntar.PostedFile.ContentLength < 2048000) // Es menor a 2MB?
                {
                    fuAdjuntar.SaveAs(MapPath("~/pace2014/" + txtCorreo.Text + extension));
                    lblStatusEnvio.Text = "Archivo adjuntado con exito, presione Enviar para continuar.";
                    btnAdjuntar.Enabled = false;
                    btnRegresar.Enabled = false;
                    btnEnviar.Enabled = true;
                }
                else
                {
                    lblStatusEnvio.Text = "El archivo es demasiado grande, limite: 2 MB." +
                        " Presiona Regresar para realizar los cambios necesarios.";
                }
            }
            else
            {
                lblStatusEnvio.Text = "El tipo de archivo es incorrecto. Debe de ser un archivo en PDF." +
                        " Presiona Regresar para realizar los cambios necesarios.";
            }
        }
        catch (Exception ex)
        {
            lblStatusEnvio.Text = ex.Message.ToString() + " - " + nombreArchivoPorSubir;
        }
    }

}