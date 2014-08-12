using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ogmforo2014 : System.Web.UI.Page
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
        lblInstitucion.Text + " " + txtInstitucion.Text + '\n' +
        '\n' +
        '\n' +
        "- " + lblInformacionAdicional.Text + '\n' +
        '\n' +
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
        SqlDSregistro.InsertCommand = "INSERT INTO ogmforo2014 VALUES ('" + txtNombres.Text +
            "', '" + txtApellidos.Text +
            "', '" + txtCorreo.Text +
            "', '" + txtInstitucion.Text +

            "', '" + txtComentarios.Text +
            "')";
        SqlDSregistro.Insert();

        //ARMAR CUERPO DEL MENSAJE
        string mensaje = "Estimado(a) " + txtNombres.Text + ", usted ha sido registrado(a)." + '\n' +
            '\n' +
            lblHiddenMensaje.Text + '\n' +
            '\n' +
            '\n' +
            "Gracias," + '\n' + "Comite Organizador" + '\n' + "CIBNOR, S.C."; 


        mensaje = mensaje.Replace("\n", "<br />");

        //Mandamos el correo(de,                para,           copia oculta,           asunto,                 mensaje)
        OperacionesBasicas Opb = new OperacionesBasicas();
        try
        {
            Opb.enviarCorreo("ogmforo2014@cibnor.mx", txtCorreo.Text, "ogmforo2014@cibnor.mx", "Registro en Linea - Foro OGMs 2014", mensaje);
        }
        catch (Exception ex)
        {
            lblStatusEnvio.Text = "El registro no ha podido ser entregado, intentelo de nuevo mas tarde." + ex.Message;
            //enviarCorreo(origen, "jcollins@cibnor.mx", "-", origen + ex.Message, Convert.ToString(Session["mensajeConfirmacion"]));
        }

        Response.Redirect("~/RegistroOk.aspx?evento=ogmforo2014");
    }
}