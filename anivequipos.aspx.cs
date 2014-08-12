using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class anivequipos : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void ddlDisciplina_SelectedIndexChanged(object sender, EventArgs e)
    {
        pnlVoleibol.Visible = false;

        switch (ddlDisciplina.SelectedValue)
        {
            case "Voleibol playero":
                pnlVoleibol.Visible = true;
                Session["disciplina"] = "Voleibol";
                break;

            case "Basquetbol femenil":
                Session["disciplina"] = "Basquetbol femenil";
                break;

            case "Basquetbol varonil":
                Session["disciplina"] = "Basquetbol varonil";
                break;

            case "Futbol de salón":
                Session["disciplina"] = "Futbol de salón";
                break;

            case "Boliche":
                Session["disciplina"] = "Boliche";
                break;
                
            //<asp:ListItem>Dominó</asp:ListItem>
            //<asp:ListItem>Rally científico</asp:ListItem>
            //<asp:ListItem>Relevos</asp:ListItem>
            //<asp:ListItem>Touchito</asp:ListItem>


            default:
                break;
        }

    }

    protected void btnContinuar_Click(object sender, EventArgs e)
    {
        switch (Convert.ToString(Session["disciplina"]))
        {
            case "Voleibol":
                Session["mensajeDisciplina"] =
                    "Color de camiseta ...: " + ddlColorCamiseta.SelectedValue;
                btnEnviar.Enabled = false;
                break;

            case "Basquetbol femenil":
                Session["mensajeDisciplina"] = "";
                break;

            case "Basquetbol varonil":
                Session["mensajeDisciplina"] = "";
                break;

            case "Futbol de salón":
                Session["mensajeDisciplina"] = "";
                break;

            case "Boliche":
                Session["mensajeDisciplina"] = "";
                break;

            default:
                break;
        }

        Session["mensajeConfirmacion"] =
            "- DATOS DEL CAPITAN -" + '\n' +
            "------------------------------------------------" + '\n' +
            '\n' +
            "Nombre(s) ...........: " + txtNombres.Text + '\n' +
            "Apellido(s) .........: " + txtApellidos.Text + '\n' +
            "Correo electrónico ..: " + txtCorreo.Text + '\n' +
            "Telefono de contacto : " + txtTelefono.Text + '\n' +
            "Nombre del equipo ...: " + txtNombreEquipo.Text + '\n' +
            "Disciplina ..........: " + ddlDisciplina.SelectedValue + '\n' +
            '\n' +
            Convert.ToString(Session["mensajeDisciplina"]) + '\n' +
            '\n' +
            "- INTEGRANTES -" + '\n' +
            "------------------------------------------------" + '\n' +
            "01: " + txtNombreI1.Text + '\n' +
            "02: " + txtNombreI2.Text + '\n' +
            "03: " + txtNombreI3.Text + '\n' +
            "04: " + txtNombreI4.Text + '\n' +
            "05: " + txtNombreI5.Text + '\n' +
            "06: " + txtNombreI6.Text + '\n' +
            "07: " + txtNombreI7.Text + '\n' +
            "08: " + txtNombreI8.Text + '\n' +
            "09: " + txtNombreI9.Text + '\n' +
            "10: " + txtNombreI10.Text + '\n' +
            "11: " + txtNombreI11.Text + '\n' +
            "12: " + txtNombreI12.Text + '\n' +
            "13: " + txtNombreI13.Text + '\n' +
            "14: " + txtNombreI14.Text + '\n' +
            "15: " + txtNombreI15.Text + '\n' +
            '\n' +
            '\n' +
            "- INFORMACION ADICIONAL -" + '\n' +
            "------------------------------------------------" + '\n' +
            "Comentarios: " + txtComentarios.Text + '\n' +
            '\n' +
            '\n';
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
        //Crear el comando para el UPDATE dependiendo de que disciplina se selecciono
        switch (Convert.ToString(Session["disciplina"]))
        {
            case "Voleibol":
                // ESTE BLOQUE SE COMENTO DEBIDO A QUE EL COORDINADOR PIDIO SE BLOQUEARA EL REGISTRO DE MAS EQUIPOS

                //SqlDScolorcamiseta.UpdateCommand = "UPDATE AnivColorCamiseta SET [selected] = '" + "ocupado" +
                //                                    "' WHERE [color] = '" + ddlColorCamiseta.SelectedValue + "'";
                //SqlDScolorcamiseta.Update();

                //SqlDSregistroWeb.InsertCommand = "INSERT INTO AnivVoleibol VALUES ('" + txtNombres.Text + "', '" + txtApellidos.Text +
                //    "', '" + txtCorreo.Text + "', '" + txtTelefono.Text +
                //    "', '" + txtNombreEquipo.Text + "', '" + ddlDisciplina.Text +

                //    "', '" + ddlColorCamiseta.SelectedValue +

                //    "', '" + txtNombreI1.Text + "', '" + txtNombreI2.Text +
                //    "', '" + txtNombreI3.Text + "', '" + txtNombreI4.Text +
                //    "', '" + txtNombreI5.Text + "', '" + txtNombreI6.Text +
                //    "', '" + txtNombreI7.Text + "', '" + txtNombreI8.Text +
                //    "', '" + txtNombreI9.Text + "', '" + txtNombreI10.Text +
                //    "', '" + txtNombreI11.Text + "', '" + txtNombreI12.Text +
                //    "', '" + txtNombreI13.Text + "', '" + txtNombreI14.Text +
                //    "', '" + txtNombreI15.Text +

                //    "', '" + txtComentarios.Text +
                //    "')";
                //SqlDSregistroWeb.Insert();
                break;

            default:
                SqlDSregistroWeb.InsertCommand = "INSERT INTO Anivequipos VALUES ('" + txtNombres.Text + "', '" + txtApellidos.Text +
                    "', '" + txtCorreo.Text + "', '" + txtTelefono.Text +
                    "', '" + txtNombreEquipo.Text + "', '" + ddlDisciplina.Text +

                    "', '" + txtNombreI1.Text + "', '" + txtNombreI2.Text +
                    "', '" + txtNombreI3.Text + "', '" + txtNombreI4.Text +
                    "', '" + txtNombreI5.Text + "', '" + txtNombreI6.Text +
                    "', '" + txtNombreI7.Text + "', '" + txtNombreI8.Text +
                    "', '" + txtNombreI9.Text + "', '" + txtNombreI10.Text +
                    "', '" + txtNombreI11.Text + "', '" + txtNombreI12.Text +
                    "', '" + txtNombreI13.Text + "', '" + txtNombreI14.Text +
                    "', '" + txtNombreI15.Text +

                    "', '" + txtComentarios.Text +
                    "')";
                SqlDSregistroWeb.Insert();
                break;
        }

        //ARMAR CUERPO DEL MENSAJE
        string mensaje = "Estimado(a) " + txtNombres.Text + ", su equipo ha sido registrado en " + ddlDisciplina.SelectedValue + '\n' +
            '\n' +
            Session["mensajeConfirmacion"] +
            "Gracias," + '\n' + "Comite Organizador" + '\n' + "CIBNOR, S.C.";

        //    FALTA AGREGAR COPIA OCULTA
        //Mandamos el correo(de,                para,           copia oculta,           asunto,                 mensaje)
        enviarCorreo("eventos@cibnor.mx", txtCorreo.Text, "eventos@cibnor.mx", "CIBNOR, " + lblTituloRegistro.Text + " - " + ddlDisciplina.SelectedValue, mensaje);

        // CORREOS A LOS COORDINADORES PARA SU CONTROL
        switch (Convert.ToString(Session["disciplina"]))
        {
            case "Voleibol":
                enviarCorreo("eventos@cibnor.mx", "bymar04@cibnor.mx", "-", "CIBNOR, " + lblTituloRegistro.Text + " - " + ddlDisciplina.SelectedValue, mensaje);
                break;

            case "Basquetbol femenil":
                enviarCorreo("eventos@cibnor.mx", "kmercado@cibnor.mx", "-", "CIBNOR, " + lblTituloRegistro.Text + " - " + ddlDisciplina.SelectedValue, mensaje);
                break;

            case "Basquetbol varonil":
                enviarCorreo("eventos@cibnor.mx", "dortega04@cibnor.mx", "-", "CIBNOR, " + lblTituloRegistro.Text + " - " + ddlDisciplina.SelectedValue, mensaje);
                break;

            case "Futbol de salón":
                enviarCorreo("eventos@cibnor.mx", "csoto04@cibnor.mx", "-", "CIBNOR, " + lblTituloRegistro.Text + " - " + ddlDisciplina.SelectedValue, mensaje);
                break;

            case "Boliche":
                enviarCorreo("eventos@cibnor.mx", "mdvazquez@cibnor.mx", "-", "CIBNOR, " + lblTituloRegistro.Text + " - " + ddlDisciplina.SelectedValue, mensaje);
                break;

            default:
                break;
        }

        Response.Redirect("~/RegistroOk.aspx?evento=anivequipos");
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

    // PROCEDIMIENTO APLICABLE UNICAMENTE PARA VOLEIBOL
    protected void ddlColorCamiseta_SelectedIndexChanged(object sender, EventArgs e)
    {
        if ((ddlColorCamiseta.SelectedValue == "ocupado") || (ddlColorCamiseta.SelectedValue == "Selecciona"))
        {
            lblColorStatus.Text = "Color no disponible";
            txtValidaColor.Text = "";
            if (ddlColorCamiseta.SelectedValue == "Selecciona")
            {
                lblColorStatus.Text = "Selecciona un color";
            }
        }
        else
        {
            lblColorStatus.Text = "";
            txtValidaColor.Text = "Color disponible";
            txtValidaColor.ForeColor = System.Drawing.Color.Black;
        }
    }
}