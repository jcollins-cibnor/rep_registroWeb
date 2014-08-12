using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;

public partial class oxidativestress2012 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
    }

    protected void btnContinuar_Click(object sender, EventArgs e)
    {
        if (rblIdioma.SelectedIndex == 1)
        {
            formatearVariablesSession(1);
        }
        else
        {
            formatearVariablesSession(0);
        };

        Session["mensajeConfirmacion"] =
            "-----------------------------------------------------------------------------" + '\n' +
            '\n' +
            lblNombres.Text + " " + txtNombres.Text + '\n' +
            lblApellidos.Text + " " + txtApellidos.Text + '\n' +
            lblCorreo.Text + " " + txtCorreo.Text + '\n' +
            lblDomicilio.Text + " " + txtDomicilio.Text + '\n' +
            lblCiudad.Text + " " + txtCiudad.Text + '\n' +
            lblEstado.Text + " " + txtEstado.Text + '\n' +
            lblPais.Text + " " + txtPais.Text + '\n' +
            lblCP.Text + " " + txtCP.Text + '\n' +
            lblTelefono.Text + " " + txtTelefono.Text + '\n' +
            lblFax.Text + " " + txtFax.Text + '\n' +
            lblInstitucion.Text + " " + txtInstitucion.Text + '\n' +
            '\n' +
            '\n' +
            "- " + lblInformacionAdicional.Text + '\n' +
            "-----------------------------------------------------------------------------" + '\n' +
            '\n' +
            lblEstudiante.Text + " " + rblEstudiante.SelectedValue + '\n' +
            lblBeca.Text + " " + rblBeca.SelectedValue + '\n' +
            lblCena.Text + " " + rblCena.SelectedValue + '\n' +
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
        SqlDSoxidativestress2012.InsertParameters.Add("@nombres", txtNombres.Text);
        SqlDSoxidativestress2012.InsertParameters.Add("@apellidos", txtApellidos.Text);
        SqlDSoxidativestress2012.InsertParameters.Add("@correo", txtCorreo.Text);
        SqlDSoxidativestress2012.InsertParameters.Add("@domicilio", txtDomicilio.Text);
        SqlDSoxidativestress2012.InsertParameters.Add("@ciudad", txtCiudad.Text);
        SqlDSoxidativestress2012.InsertParameters.Add("@estado", txtEstado.Text);
        SqlDSoxidativestress2012.InsertParameters.Add("@pais", txtPais.Text);
        SqlDSoxidativestress2012.InsertParameters.Add("@cp", txtCP.Text);
        SqlDSoxidativestress2012.InsertParameters.Add("@telefono", txtTelefono.Text);
        SqlDSoxidativestress2012.InsertParameters.Add("@fax", txtFax.Text);
        SqlDSoxidativestress2012.InsertParameters.Add("@institucion", txtInstitucion.Text);

        SqlDSoxidativestress2012.InsertParameters.Add("@estudiante", rblEstudiante.SelectedValue);
        SqlDSoxidativestress2012.InsertParameters.Add("@beca", rblBeca.SelectedValue);
        SqlDSoxidativestress2012.InsertParameters.Add("@cena", rblCena.SelectedValue);

        SqlDSoxidativestress2012.InsertParameters.Add("@comentarios", txtComentarios.Text);
        SqlDSoxidativestress2012.InsertParameters.Add("@factura", rblFactura.SelectedValue);
        SqlDSoxidativestress2012.InsertParameters.Add("@facturaNombre", txtFacturaNombre.Text);
        SqlDSoxidativestress2012.InsertParameters.Add("@facturaRFC", txtFacturaRFC.Text);
        SqlDSoxidativestress2012.InsertParameters.Add("@facturaDireccion", txtFacturaDireccion.Text);

        SqlDSoxidativestress2012.InsertCommand = "INSERT INTO oxidativestress2012 VALUES ('" + txtNombres.Text +
            "', '" + txtApellidos.Text +
            "', '" + txtCorreo.Text +
            "', '" + txtDomicilio.Text +
            "', '" + txtCiudad.Text +
            "', '" + txtEstado.Text +
            "', '" + txtPais.Text +
            "', '" + txtCP.Text +
            "', '" + txtTelefono.Text +
            "', '" + txtFax.Text +
            "', '" + txtInstitucion.Text +

            "', '" + rblEstudiante.SelectedValue +
            "', '" + rblBeca.SelectedValue +
            "', '" + rblCena.SelectedValue +

            "', '" + txtComentarios.Text +
            "', '" + rblFactura.SelectedValue +
            "', '" + txtFacturaNombre.Text +
            "', '" + txtFacturaRFC.Text +
            "', '" + txtFacturaDireccion.Text +
            "')";
        SqlDSoxidativestress2012.Insert();

        //ARMAR CUERPO DEL MENSAJE
        string mensaje = Session["Estimado"] + " " + txtNombres.Text + ", " + Session["Registrado"] + "." + '\n' +
            '\n' +
            Session["mensajeConfirmacion"] + '\n' +
            '\n' +
            '\n' +
            Session["Gracias"] + "," + '\n' + Session["Comite"] + '\n' + "CIBNOR, S.C." + '\n' +
            '\n' +
            Session["PS"];

        //Mandamos el correo(de,                para,           copia oculta,           asunto,                 mensaje)
        enviarCorreo("oxidativestress2012@cibnor.mx", txtCorreo.Text, "oxidativestress2012@cibnor.mx", "CIBNOR - Oxidative Stress 2012", mensaje);

        Response.Redirect("~/RegistroOk.aspx?evento=oxidativestress2012");
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
            Session["mensaje"] = "El mensaje no ha podido ser entregado, intentelo de nuevo mas tarde. " + ex.Message;
        }
    }

    protected void rblIdioma_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (rblIdioma.SelectedIndex == 1) ////////////////////////////////////////////// INGLES
        {
            lblTituloEvento.Text = "First International Congress on Oxidative Stress in Aquatic Ecosystems";
            lblRegistroEnLinea.Text = "Online Registration";
            valSum.HeaderText = "* Required fields.";

            lblDatosPersonales.Text = "PERSONAL DATA";
            lblNombres.Text = "Name(s):";
            lblApellidos.Text = "Surname(s):";
            lblCorreo.Text = "Electronic mail:";
            valRegExCorreo.Text = "Format: mail@server.dominium";
            lblCorreoConfirma.Text = "Confirm electronic mail:";
            valRegExCorreoConfirma.Text = "Electronic mail confirmation";
            lblDomicilio.Text = "Address:";
            lblCiudad.Text = "City:";
            lblEstado.Text = "State:";
            lblPais.Text = "Country:";
            lblCP.Text = "Zip code:";
            lblTelefono.Text = "Telephone:";
            lblFax.Text = "Fax:";
            lblInstitucion.Text = "Institution:";

            lblInformacionAdicional.Text = "ADITIONAL DATA";
            lblEstudiante.Text = "Student:";
            rblEstudiante.Items[1].Text = "Yes";
            lblEstudianteInfo.Text = "If a student, you should send a scanned copy of current ID to have the right for the respective discount.";
            lblBeca.Text = "Scholarship:";
            rblBeca.Items[1].Text = "Yes";
            lblBecaInfo.Text = "We will only consider applications of students submitting an abstract with current ID.";
            lblCena.Text = "Closing dinner for non-participants:";
            rblCena.Items[1].Text = "Yes";
            lblCenaInfo.Text = "Please include additional cost with registration payment.";
            lblComentarios.Text = "Comments:";

            lblFacturacion.Text = "INVOICING";
            lblFactura.Text = "Require an invoice:";
            rblFactura.Items[1].Text = "Yes";
            lblFacturaNombre.Text = "Name:";
            lblFacturaRFC.Text = "TIN # [Tax Payer Identification Number]:";
            lblFacturaDireccion.Text = "Address:";

            btnCancelar.Text = "Cancel";
            btnContinuar.Text = "Continue";
            
            lblConfirmacionDeDatos.Text = "DATA CONFIRMATION";
            btnRegresar.Text = "Back";
            btnEnviar.Text = "Send";

            formatearVariablesSession(1);
        }
        else /////////////////////////////////////////////////////////////////////////// ESPAÑOL
        {
            lblTituloEvento.Text="Primer Congreso Internacional del Estrés Oxidativo en Ecosistemas Acuáticos";
            lblRegistroEnLinea.Text = "Registro en Línea";
            valSum.HeaderText = "* Campos requeridos.";

            lblDatosPersonales.Text = "DATOS PERSONALES";
            lblNombres.Text = "Nombre(s):";
            lblApellidos.Text = "Apellido(s):";
            lblCorreo.Text = "Correo electrónico:";
            valRegExCorreo.Text = "Formato: correo@servidor.dominio";
            lblCorreoConfirma.Text = "Confirmar correo electrónico:";
            valRegExCorreoConfirma.Text = "Confirmar correo electrónico";
            lblDomicilio.Text = "Domicilio:";
            lblCiudad.Text = "Ciudad:";
            lblEstado.Text = "Estado:";
            lblPais.Text = "País:";
            lblCP.Text = "Código postal:";
            lblTelefono.Text = "Teléfono:";
            lblFax.Text = "Fax:";
            lblInstitucion.Text = "Institución:";

            lblInformacionAdicional.Text = "INFORMACIÓN ADICIONAL";
            lblEstudiante.Text = "Estudiante:";
            rblEstudiante.Items[1].Text = "Si";
            lblEstudianteInfo.Text = "En caso de ser estudiante, deberá enviar una copia escaneada de su credencial vigente para tener derecho al descuento respectivo.";
            lblBeca.Text = "Beca:";
            rblBeca.Items[1].Text = "Si";
            lblBecaInfo.Text = "Solamente se considerarán las solicitudes de estudiantes con credencial vigente que sometan un resumen.";
            lblCena.Text = "Cena de clausura para acompañantes:";
            rblCena.Items[1].Text = "Si";
            lblCenaInfo.Text = "Incluir el costo adicional con el pago de su registro al congreso.";
            lblComentarios.Text = "Comentarios:";

            lblFacturacion.Text = "FACTURACIÓN";
            lblFactura.Text = "Requiere factura:";
            rblFactura.Items[1].Text = "Si";
            lblFacturaNombre.Text = "Nombre:";
            lblFacturaRFC.Text = "RFC:";
            lblFacturaDireccion.Text = "Dirección:";

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
        if (opcion == 1)
        {
            Session["Estimado"] = "Dear";
            Session["Registrado"] = "you have been registered";
            Session["Gracias"] = "Thanks";
            Session["Comite"] = "Organizing Committee";

            Session["PS"] = "PS: " + '\n' +
            "If a student, you should send a scanned copy of current ID to have the right for the respective discount." + '\n' +
            '\n' +
            "For those participants sending Extended Proceedings, we would like to inform they should be attached and " +
            "sent as a reply to the on line registration confirmation mail. Likewise, we would like to remind you to " +
            "consider writing regulations:" + '\n' +
            '\n' +
            "• Maximum 10-letter size pages (vertical). In Word for Microsoft, right and left margins 25 mm; lower and top margins 15 mm." + '\n' +
            "• Font: Arial (10) normal. In table, chart, and image description use Arial (9) normal." + '\n' +
            "• Title in capital and small letters, highlighted in bold, Arial (14) pt." + '\n' +
            "• Name of author, followed by institutional data and electronic mail must be under the title of the article Arial (14) pt." + '\n' +
            "• Abstract must be maximum 300 words, in compact paragraphs with the essential ideas of the work and novel elements." + '\n' +
            "• Pages cannot be numbered and cannot include headings nor footnotes." + '\n' +
            "• Charts and figures should be included within the work." + '\n' +
            "• Besides complete data, institution, address and electronic mail should follow author(s) name(s) in a separate paragraph.";
        }
        else
        {
            Session["Estimado"] = "Estimado(a)";
            Session["Registrado"] = "usted ha sido registrado(a)";
            Session["Gracias"] = "Gracias";
            Session["Comite"] = "Comite Organizador";

            Session["PS"] = "POSTDATA: " + '\n' +
            "En caso de ser estudiante, deberá de mandar su credencial escaneada vigente para tener derecho al descuento respectivo." + '\n' +
            '\n' +
            "Para aquellos participantes que enviarán Memorias en Extenso, se les informa que deberán agregar el archivo como atado y " +
            "enviarlo como respuesta al correo de confirmación de su registro en línea. Así mismo, se les recuerdan las " +
            "reglas para su elaboración:" + '\n' +
            '\n' +
            "• Máximo 10 hojas tamaño carta (orientación vertical). En programa Word de Microsoft. Márgenes derechos e izquierdo 25 mm; márgenes superiores e inferior 15 mm." + '\n' +
            "• Letra del artículo: Arial (10) normal. En la descripción de tablas, gráficos e imágenes use Arial (9) normal." + '\n' +
            "• Título en mayúsculas y minúsculas, resaltado en negritas, fuente arial (14) pt." + '\n' +
            "• El nombre del autor, seguido de los datos institucionales y correo electrónico, deben estar debajo del título del artículo, fuente arial (14) pt." + '\n' +
            "• El resumen debe tener máximo 300 palabras, compuesto por párrafos compactos con las ideas esenciales del trabajo, señalando los elementos novedosos." + '\n' +
            "• Las páginas no pueden estar enumeradas, y no pueden incluir encabezados ni pies de página." + '\n' +
            "• Los gráficos y figuras se incluirán dentro del trabajo." + '\n' +
            "• Deben aparecer seguido de los autores en párrafo aparte sus datos completos: Institución, dirección, correo electrónico.";
        }
    }
}
