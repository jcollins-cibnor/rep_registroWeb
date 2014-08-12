using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class waterbirds2014 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnContinuar_Click(object sender, EventArgs e)
    {
        if (chkSociedades.SelectedItem == null)
        {
            lblHiddenSociedades.Text = "Ninguna" + '\n';
        }
        else
        {
            foreach (ListItem li in chkSociedades.Items)
            {
                if (li.Selected)
                {
                    lblHiddenSociedades.Text = lblHiddenSociedades.Text + li.Value + ". ";
                }
            }
        }

        lblHiddenMensaje.Text =
            "- " + lblDatosPersonales.Text + '\n' +
            '\n' +
            lblApellidos.Text + " " + txtApellidos.Text + '\n' +
            lblNombres.Text + " " + txtNombres.Text + '\n' +
            lblSexo.Text + " " + ddlSexo.SelectedValue + '\n' +
            lblCorreo.Text + " " + txtCorreo.Text + '\n' +
            lblCelular.Text + " " + txtCelular.Text + '\n' +
            lblTelefono.Text + " " + txtTelefono.Text + '\n' +
            lblInstitucion.Text + " " + txtInstitucion.Text + '\n' +
            lblDomicilio.Text + " " + txtDomicilio.Text + '\n' +
            '\n' +
            "- " + lblFacturacion.Text + '\n' +
            '\n' +
            lblFactura.Text + " " + rblFactura.SelectedValue + '\n' +
            lblFacturaNombre.Text + " " + txtFacturaNombre.Text + '\n' +
            lblFacturaRFC.Text + " " + txtFacturaRFC.Text + '\n' +
            lblFacturaDireccion.Text + " " + txtFacturaDireccion.Text + '\n' +
            '\n' +
            "- " + lblInformacionAdicional.Text + '\n' +
            '\n' +
            lblCongresoLlegada.Text + " " + ddlCongresoLlegada.SelectedValue + '\n' +
            lblCongresoAsistir.Text + " " + ddlCongresoAsistir.SelectedValue + '\n' +
            lblRequerimientosEspeciales.Text + " " + txtRequerimientosEspeciales.Text + '\n' +
            lblSociedades.Text + " " + lblHiddenSociedades.Text + '\n' +
            lblNombresPersonas.Text + " " + txtNombresPersonas.Text + '\n' +
            lblCamisetas.Text + " " + txtCamisetas.Text + '\n' +
            lblCamisetasTallas.Text + " " + txtCamisetasTallas.Text + '\n' +
            lblPlatillo.Text + " " + ddlPlatillo.SelectedValue + '\n' +
            lblSalidaCampo.Text + " " + ddlSalidaCampo.SelectedValue + '\n' +
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
        //Crear el comando para el UPDATE
        SqlDSregistro.InsertCommand = "INSERT INTO waterbirds2014 VALUES ('" +

            txtApellidos.Text + "', '" +
            txtNombres.Text + "', '" +
            ddlSexo.SelectedValue + "', '" +
            txtCorreo.Text + "', '" +
            txtCelular.Text + "', '" +
            txtTelefono.Text + "', '" +
            txtInstitucion.Text + "', '" +
            txtDomicilio.Text + "', '" +

            rblFactura.SelectedValue + "', '" +
            txtFacturaNombre.Text + "', '" +
            txtFacturaRFC.Text + "', '" +
            txtFacturaDireccion.Text + "', '" +

            ddlCongresoLlegada.SelectedValue + "', '" +
            ddlCongresoAsistir.SelectedValue + "', '" +
            txtRequerimientosEspeciales.Text + "', '" +
            lblHiddenSociedades.Text + "', '" +
            txtNombresPersonas.Text + "', '" +
            txtCamisetas.Text + "', '" +
            txtCamisetasTallas.Text + "', '" +
            ddlPlatillo.SelectedValue + "', '" +
            ddlSalidaCampo.SelectedValue + "', '" +

            txtComentarios.Text + "', '" +
            "1" + "', GetDate())";

        int registroOk = 1; // Para validar si el registro se ejecuto en el server
        OperacionesBasicas Opb = new OperacionesBasicas();
        try
        {
            SqlDSregistro.Insert();
            //ARMAR CUERPO DEL MENSAJE
            string mensaje = lblHiddenEstimado.Text + " " + txtNombres.Text.Trim() + ", " + lblHiddenRegistrado.Text + '\n' +
                '\n' +
                lblHiddenMensaje.Text + '\n' +
                    '\n' +
                    '\n' +
                lblHiddenGracias.Text +", " + '\n' + lblHiddenComite.Text + '\n' + "CIBNOR, S.C.";

            mensaje = mensaje.Replace("\n", "<br />");

            //Mandamos el correo( de,                para,           copia oculta,           asunto,                 mensaje )
            Opb.enviarCorreo("waterbirds2014@cibnor.mx", txtCorreo.Text, "waterbirds2014@cibnor.mx", "Waterbirds2014 - Registro web", mensaje);
        }
        catch (Exception ex)
        {
            Opb.enviarCorreo("waterbirds2014@cibnor.mx", "jcollins@cibnor.mx", "waterbirds2014@cibnor.mx", "Error", "ex.Message: " + ex.Message + " - " + txtCorreo.Text + " - ex.InnerException.Message: " + ex.InnerException.Message);
            registroOk = 0;
            lblStatusEnvio.Text = "Hubo un problema al procesar su registro, favor de intentarlo de nuevo mas tarde. El webmaster ya ha sido notificado.";
        }
        if (registroOk == 1)
        {
            Response.Redirect("~/RegistroOk.aspx?evento=waterbirds2014");
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

    protected void rblIdioma_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (rblIdioma.SelectedIndex == 1) ////////////////////////////////////////////// INGLES
        {
            lblTituloEvento.Text = "The 38th Annual Meeting of the Waterbird Society and XIII Congress for the Study and Conservation of the Birds in Mexico (CECAM)";
            lblRegistroEnLinea.Text = "Online Registration";
            valSum.HeaderText = "* Required fields.";

            lblDatosPersonales.Text = "PERSONAL INFORMATION";
            lblApellidos.Text = "Surname(s):";
            lblNombres.Text = "Name(s):";
            lblNombreLeyenda.Text = "Name to be used for your conference ID; please make sure it is well written.";
            lblSexo.Text = "Sex:";
            ddlSexo.Items[1].Text = "Female";
            ddlSexo.Items[2].Text = "Male";

            lblCorreo.Text = "Electronic mail:";
            valRegExCorreo.Text = "Format: mail@server.domain";
            lblCorreoConfirma.Text = "Confirm electronic mail:";
            valRegExCorreoConfirma.Text = "Confirm electronic mail";
            lblCorreoLeyenda.Text = "We will keep in touch with you through electronic mail; if it changes please notify us.";

            lblCelular.Text = "Cell phone:";
            valRegExCelular.Text = "Include area code";
            lblTelefono.Text = "Office telephone number:";
            valRegExTelefono.Text = "Include area code";
            lblInstitucion.Text = "Institution:";
            lblDomicilio.Text = "Complete address:";

            lblFacturacion.Text = "INVOICE";
            lblFactura.Text = "Need an invoice:";
            rblFactura.Items[1].Text = "Yes";
            lblFacturaNombre.Text = "Name:";
            lblFacturaRFC.Text = "RFC:";
            lblFacturaDireccion.Text = "Address:";

            lblInformacionAdicional.Text = "ADDITIONAL INFORMATION";
            lblCongresoLlegada.Text = "I will be arriving to the Conference on day:";
            ddlCongresoLlegada.Items[1].Text = "Sunday";
            ddlCongresoLlegada.Items[2].Text = "Monday";
            ddlCongresoLlegada.Items[3].Text = "Tuesday";
            ddlCongresoLlegada.Items[4].Text = "Wednesday";
            ddlCongresoLlegada.Items[5].Text = "Thursday";
            lblCongresoAsistir.Text = "I am planning on attending the Conference until day:";
            ddlCongresoAsistir.Items[1].Text = "Tuesday";
            ddlCongresoAsistir.Items[2].Text = "Wednesday";
            ddlCongresoAsistir.Items[3].Text = "Thursday";
            ddlCongresoAsistir.Items[4].Text = "Friday";
            ddlCongresoAsistir.Items[5].Text = "Saturday";
            ddlCongresoAsistir.Items[6].Text = "Sunday";
            lblRequerimientosEspeciales.Text = "I have the following special requirements (diet/allergies or physician/wheel chair):";
            lblSociedades.Text = "I am a member of one or both Societies:";
            lblNombresPersonas.Text = "Name of the person(s) attending the conference with you:";
            lblNombresPersonasLeyenda.Text = "Not attending the Conference, only social activities. Cost $60 USD";
            lblCamisetas.Text = "I want Waterbirds-CECAM 2014 Conference T-shirts (cost $20 USD), indicate amount:";
            lblCamisetasTallas.Text = "Select sizes please [S, M, L, XXL]:";
            lblPlatillo.Text = "I prefer vegetarian dishes in my main meal:";
            lblSalidaCampo.Text = "Field trips (information will be provided later):";

            lblComentarios.Text = "Comments:";

            btnCancelar.Text = "Cancel";
            btnContinuar.Text = "Continue";

            lblConfirmacionDeDatos.Text = "DATA CONFIRMATION";
            btnRegresar.Text = "Back";
            btnEnviar.Text = "Send";

            formatearVariablesSession(1);
        }
        else /////////////////////////////////////////////////////////////////////////// ESPAÑOL
        {
            lblTituloEvento.Text = "38Th Reunion Anual de la Waterbird Society y XIII Congreso para el Estudio y Conservación de las Aves en Mexico (CECAM)";
            lblRegistroEnLinea.Text = "Registro en Línea";
            valSum.HeaderText = "* Campos requeridos.";

            lblDatosPersonales.Text = "DATOS PERSONALES";
            lblApellidos.Text = "Apellido(s):";
            lblNombres.Text = "Nombre(s):";
            lblNombreLeyenda.Text = "Nombre que se usará para su gafete, asegúrese que esté bien escrito.";
            lblSexo.Text = "Sexo:";
            ddlSexo.Items[1].Text = "Femenino";
            ddlSexo.Items[2].Text = "Masculino";

            lblCorreo.Text = "Correo electrónico:";
            valRegExCorreo.Text = "Formato: correo@servidor.dominio";
            lblCorreoConfirma.Text = "Confirmar correo electrónico:";
            valRegExCorreoConfirma.Text = "Confirmar correo electrónico";
            lblCorreoLeyenda.Text = "Nos mantendremos en comunicación con usted mediante el correo electrónico, si cambia avísenos por favor.";

            lblCelular.Text = "Teléfono celular:";
            valRegExCelular.Text = "Incluir codigo de área";
            lblTelefono.Text = "Teléfono oficina:";
            valRegExTelefono.Text = "Incluir codigo de área";
            lblInstitucion.Text = "Institución:";
            lblDomicilio.Text = "Domicilio completo:";

            lblFacturacion.Text = "FACTURACIÓN";
            lblFactura.Text = "Requiere factura:";
            rblFactura.Items[1].Text = "Si";
            lblFacturaNombre.Text = "Nombre:";
            lblFacturaRFC.Text = "RFC:";
            lblFacturaDireccion.Text = "Dirección:";

            lblInformacionAdicional.Text = "INFORMACIÓN ADICIONAL";
            lblCongresoLlegada.Text = "Tengo pensado llegar al Congreso el dia:";
            ddlCongresoLlegada.Items[1].Text ="Domingo";
            ddlCongresoLlegada.Items[2].Text = "Lunes";
            ddlCongresoLlegada.Items[3].Text = "Martes";
            ddlCongresoLlegada.Items[4].Text = "Miércoles";
            ddlCongresoLlegada.Items[5].Text = "Jueves";
            lblCongresoAsistir.Text = "Tengo pensado en asistir al Congreso hasta el dia:";
            ddlCongresoAsistir.Items[1].Text = "Martes";
            ddlCongresoAsistir.Items[2].Text = "Miércoles";
            ddlCongresoAsistir.Items[3].Text = "Jueves";
            ddlCongresoAsistir.Items[4].Text = "Viernes";
            ddlCongresoAsistir.Items[5].Text = "Sabado";
            ddlCongresoAsistir.Items[6].Text = "Domingo";
            lblRequerimientosEspeciales.Text = "Tengo los siguientes requerimientos especiales (dieta/alergias o médico/silla de ruedas):";
            lblSociedades.Text = "Pertenece a alguna de las sociedades del Congreso:";
            lblNombresPersonas.Text = "Nombre de la persona(s) que le acompaña(n):";
            lblNombresPersonasLeyenda.Text = "No asiste al Congreso, que solo vendrá a las actividades sociales. Costo $60 USD";
            lblCamisetas.Text = "Deseo camiseta(s) del Congreso Waterbirds-CECAM 2014 (costo $20 USD), indique cantidad:";
            lblCamisetasTallas.Text = "Marque las tallas por favor [S, M, L, XXL]:";
            lblPlatillo.Text = "Prefiero platillo vegetariano en mi comida principal:";
            ddlPlatillo.Items[1].Text = "Yes";
            lblSalidaCampo.Text = "Salidas al campo (se dará información posterior):";
            ddlSalidaCampo.Items[1].Text = "Yes";
            lblComentarios.Text = "Comentarios:";

            btnCancelar.Text = "Cancelar";
            btnContinuar.Text = "Continuar";

            lblConfirmacionDeDatos.Text = "CONFIRMACIÓN DE DATOS";
            btnRegresar.Text = "Regresar";
            btnEnviar.Text = "Enviar";

            formatearVariablesSession(0);
        }
    }

    protected void formatearVariablesSession(int opcion)
    {
        if (opcion == 1) // ingles
        {
            //Session["Estimado"] = "Dear";
            lblHiddenEstimado.Text = "Dear";
            //Session["Registrado"] = "you have been registered.";
            lblHiddenRegistrado.Text = "you have been registered.";
            //Session["Gracias"] = "Thanks";
            lblHiddenGracias.Text = "Thanks";
            //Session["Comite"] = "Organizing Committee";
            lblHiddenComite.Text = "Organizing Committee";
        }
        else // español
        {
            //Session["Estimado"] = "Estimado(a)";
            //Session["Registrado"] = "usted ha sido registrado(a).";
            //Session["Gracias"] = "Gracias";
            //Session["Comite"] = "Comite Organizador";
            lblHiddenEstimado.Text = "Estimado(a)";
            lblHiddenRegistrado.Text = "usted ha sido registrado(a).";
            lblHiddenGracias.Text = "Gracias";
            lblHiddenComite.Text = "Comite Organizador";
        }
    }

}