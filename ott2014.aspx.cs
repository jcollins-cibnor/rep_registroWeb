using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ott2014 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Session.Timeout = 30;
    }
    protected void btnContinuar_Click(object sender, EventArgs e)
    {
        txtNombres.Text = txtNombres.Text.Trim();
        lblHiddenMensaje.Text =
            "- " + lblDatosPersonales.Text + '\n' +
            '\n' +
            lblNombres.Text + " " + txtNombres.Text + '\n' +
            lblApellidos.Text + " " + txtApellidos.Text + '\n' +
            lblCorreo.Text + " " + txtCorreo.Text + '\n' +
            lblTelefono.Text + " " + txtTelefono.Text + '\n' +
            lblInstitucion.Text + " " + txtInstitucion.Text + '\n' +
            lblPatrocinio.Text + " " + rblPatrocinio.SelectedValue + '\n' +
            '\n' +
            '\n' +
            "- " + lblInformacionAdicional.Text + '\n' +
            '\n' +
            "++ Itinerario de vuelo de salida ++" + '\n' +
            lblSalidaCiudad1.Text + txtSalidaCiudad1.Text + ", " + lblSalidaAerolinea1.Text + txtSalidaAerolinea1.Text + ", " +
            lblSalidaNoVuelo1.Text + txtSalidaNoVuelo1.Text + ", " + lblSalidaFecha1.Text + txtSalidaFecha1.Text + ", " +
            lblSalidaHora1.Text + txtSalidaHora1.Text + '\n' +
            lblSalidaCiudad2.Text + txtSalidaCiudad2.Text + ", " + lblSalidaAerolinea2.Text + txtSalidaAerolinea2.Text + ", " +
            lblSalidaNoVuelo2.Text + txtSalidaNoVuelo2.Text + ", " + lblSalidaFecha2.Text + txtSalidaFecha2.Text + ", " +
            lblSalidaHora2.Text + txtSalidaHora2.Text + '\n' +
            lblSalidaCiudad3.Text + txtSalidaCiudad3.Text + ", " + lblSalidaAerolinea3.Text + txtSalidaAerolinea3.Text + ", " +
            lblSalidaNoVuelo3.Text + txtSalidaNoVuelo3.Text + ", " + lblSalidaFecha3.Text + txtSalidaFecha3.Text + ", " +
            lblSalidaHora3.Text + txtSalidaHora3.Text + '\n' +
            '\n' +
            "++ Itinerario de vuelo de regreso ++" + '\n' +
            lblRegresoCiudad1.Text + txtRegresoCiudad1.Text + ", " + lblRegresoAerolinea1.Text + txtRegresoAerolinea1.Text + ", " +
            lblRegresoNoVuelo1.Text + txtRegresoNoVuelo1.Text + ", " + lblRegresoFecha1.Text + txtRegresoFecha1.Text + ", " +
            lblRegresoHora1.Text + txtRegresoHora1.Text + '\n' +
            lblRegresoCiudad2.Text + txtRegresoCiudad2.Text + ", " + lblRegresoAerolinea2.Text + txtRegresoAerolinea2.Text + ", " +
            lblRegresoNoVuelo2.Text + txtRegresoNoVuelo2.Text + ", " + lblRegresoFecha2.Text + txtRegresoFecha2.Text + ", " +
            lblRegresoHora2.Text + txtRegresoHora2.Text + '\n' +
            lblRegresoCiudad3.Text + txtRegresoCiudad3.Text + ", " + lblRegresoAerolinea3.Text + txtRegresoAerolinea3.Text + ", " +
            lblRegresoNoVuelo3.Text + txtRegresoNoVuelo3.Text + ", " + lblRegresoFecha3.Text + txtRegresoFecha3.Text + ", " +
            lblRegresoHora3.Text + txtRegresoHora3.Text + '\n' +
            '\n' +
            "Hotel donde se hospeda: " + txtHotel.Text + '\n' +
            '\n' +
            '\n' +
            lblAlergico.Text + " " + rblAlergico.SelectedValue + '\n' +
            lblEspecifique.Text + " " + txtEspecifique.Text + '\n' +
            lblMedicamento.Text + " " + rblMedicamento.SelectedValue + '\n' +
            '\n' +
            "En caso de cualquier eventualidad contactar a:" + '\n' +
            lblContactoNombre.Text + " " + txtContactoNombre.Text + '\n' +
            lblContactoTelefono.Text + " " + txtContactoTelefono.Text + '\n' +
            '\n' +
            lblComentarios.Text + " " + txtComentarios.Text;

        //metemos el mensaje en una label y confirmamos el mensaje
        lblHiddenMensaje.Text = lblHiddenMensaje.Text.Replace("\n", "<br />");

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
        SqlDSott2014.InsertCommand = "INSERT INTO OTT2014 VALUES ('" + txtNombres.Text +
            "', '" + txtApellidos.Text +
            "', '" + txtCorreo.Text +
            "', '" + txtTelefono.Text +
            "', '" + txtInstitucion.Text +
            "', '" + rblPatrocinio.SelectedValue +

            "', '" + txtSalidaCiudad1.Text +
            "', '" + txtSalidaAerolinea1.Text +
            "', '" + txtSalidaNoVuelo1.Text +
            "', '" + txtSalidaFecha1.Text +
            "', '" + txtSalidaHora1.Text +

            "', '" + txtSalidaCiudad2.Text +
            "', '" + txtSalidaAerolinea2.Text +
            "', '" + txtSalidaNoVuelo2.Text +
            "', '" + txtSalidaFecha2.Text +
            "', '" + txtSalidaHora2.Text +

            "', '" + txtSalidaCiudad3.Text +
            "', '" + txtSalidaAerolinea3.Text +
            "', '" + txtSalidaNoVuelo3.Text +
            "', '" + txtSalidaFecha3.Text +
            "', '" + txtSalidaHora3.Text +

            "', '" + txtRegresoCiudad1.Text +
            "', '" + txtRegresoAerolinea1.Text +
            "', '" + txtRegresoNoVuelo1.Text +
            "', '" + txtRegresoFecha1.Text +
            "', '" + txtRegresoHora1.Text +

            "', '" + txtRegresoCiudad2.Text +
            "', '" + txtRegresoAerolinea2.Text +
            "', '" + txtRegresoNoVuelo2.Text +
            "', '" + txtRegresoFecha2.Text +
            "', '" + txtRegresoHora2.Text +

            "', '" + txtRegresoCiudad3.Text +
            "', '" + txtRegresoAerolinea3.Text +
            "', '" + txtRegresoNoVuelo3.Text +
            "', '" + txtRegresoFecha3.Text +
            "', '" + txtRegresoHora3.Text +

            "', '" + txtHotel.Text +

            "', '" + rblAlergico.SelectedValue +
            "', '" + rblMedicamento.SelectedValue +
            "', '" + txtEspecifique.Text +
            "', '" + txtContactoNombre.Text +
            "', '" + txtContactoTelefono.Text +

            "', '" + txtComentarios.Text +
            "')";
        SqlDSott2014.Insert();

        //ARMAR CUERPO DEL MENSAJE
        string mensaje = "Estimado(a) " + txtNombres.Text + ", usted ha sido registrado(a)." + '\n' +
            '\n' +
            lblHiddenMensaje.Text + '\n' + '\n' +
            "Gracias," + '\n' + "Comite Organizador" + '\n' + "CIBNOR, S.C.";

        mensaje = mensaje.Replace("\n", "<br />");

        //Mandamos el correo(de,                para,           copia oculta,           asunto,                 mensaje)
        OperacionesBasicas Opb = new OperacionesBasicas();
        try
        {
            Opb.enviarCorreo("ott2014@cibnor.mx", txtCorreo.Text, "-", "Registro en Linea - Red OTT 2014", mensaje);
        }
        catch (Exception ex)
        {
            lblStatus.Text = "El registro no ha podido ser entregado, intentelo de nuevo mas tarde." + ex.Message;
            //enviarCorreo(origen, "jcollins@cibnor.mx", "-", origen + ex.Message, Convert.ToString(Session["mensajeConfirmacion"]));
        }

        Response.Redirect("~/RegistroOk.aspx?evento=ott2014");
    }
}