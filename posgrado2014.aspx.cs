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

public partial class posgrado2014 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Session.Timeout = 20000;
    }

    protected void ckbNombre_CheckedChanged(object sender, EventArgs e)
    {
        if (ckbNombre.Checked == true)
        {
            txtNombre.Enabled = true;
            txtNombre.Text = "";
            txtNombre.Focus();
            lblDetallesNombre.Visible = true;

            ddlNombre.Enabled = false;
        }
        else
        {
            txtNombre.Enabled = false;
            lblDetallesNombre.Visible = false;

            ddlNombre.Enabled = true;
        }
    }

    protected void ddlPrograma_SelectedIndexChanged(object sender, EventArgs e)
    {
        switch (ddlPrograma.SelectedIndex)
        {
            case 1:
            case 2:
            case 3:
            case 4:
            case 5:
            case 6:
            case 7:
            case 8:
                ddlInstitucion.SelectedIndex = 0;
                ddlNivel.SelectedIndex = 0;
                break;
            case 9:
            case 10:
            case 11:
                ddlInstitucion.SelectedIndex = 0;
                ddlNivel.SelectedIndex = 1;
                break;
            case 12:
                ddlInstitucion.SelectedIndex = 0;
                ddlNivel.SelectedIndex = 2;
                break;
            case 13:
                ddlInstitucion.SelectedIndex = 1;
                ddlNivel.SelectedIndex = 0;
                break;
            case 14:
                ddlInstitucion.SelectedIndex = 1;
                ddlNivel.SelectedIndex = 1;
                break;
            case 15:
                ddlInstitucion.SelectedIndex = 2;
                ddlNivel.SelectedIndex = 0;
                break;
            case 16:
                ddlInstitucion.SelectedIndex = 2;
                ddlNivel.SelectedIndex = 1;
                break;
            case 17:
                ddlInstitucion.SelectedIndex = 3;
                ddlNivel.SelectedIndex = 1;
                break;
            default: break;
        }
        establecerPeriodo();
    }

    protected void ddlModalidad_SelectedIndexChanged(object sender, EventArgs e)
    {
        switch (ddlModalidad.SelectedValue)
        {
            case "Cartel":
                lblModalidadUbicacion.Text = "Poliforo Cultural UABCS";
                break;

            case "Pláticas de divulgación":
                lblModalidadUbicacion.Text = "En escuelas de todos los niveles educativos";
                break;

            case "Entrevistas radio/tv":
                lblModalidadUbicacion.Text = "Estaciones de radio y TV locales";
                break;

            case "Ponencia oral":
                lblModalidadUbicacion.Text = "Poliforo Cultural UABCS";
                break;

            default: break;
        }
        establecerPeriodo();
    }

    protected void establecerPeriodo()
    {
        //Si escoje maestria trimestral (la del cib)
        if (ddlPrograma.SelectedIndex == 15) 
        {
            switch (ddlModalidad.SelectedIndex)
            { 
                case 1: // cartel
                    SqlDScatPosgPeriodos2014.SelectCommand = "SELECT * FROM [catPosgPeriodos2014] WHERE [periodo]='1' OR [periodo]='2' OR [periodo]='3'";
                    break;
                case 2: // platica de divulgacion
                case 3: // entrevista radio/tv
                    SqlDScatPosgPeriodos2014.SelectCommand = "SELECT * FROM [catPosgPeriodos2014] WHERE [periodo]>='4' AND [periodo]<='6'";
                    break;
                case 4: // ponencia oral
                    SqlDScatPosgPeriodos2014.SelectCommand = "SELECT * FROM [catPosgPeriodos2014] WHERE [periodo]>='7'";
                    break;
                default: break;
            }
        }
        //Si escoje maestria o especialidad semestral (cualquier institucion)
        else if (((ddlPrograma.SelectedIndex > 0) && (ddlPrograma.SelectedIndex <= 8)) ||
                (ddlPrograma.SelectedIndex == 12) || (ddlPrograma.SelectedIndex == 13) || (ddlPrograma.SelectedIndex == 15))
        {
            switch (ddlModalidad.SelectedIndex)
            {
                case 1: // cartel
                    SqlDScatPosgPeriodos2014.SelectCommand = "SELECT * FROM [catPosgPeriodos2014] WHERE [periodo]='1' OR [periodo]='2'";
                    break;
                case 2: // platica de divulgacion
                case 3: // entrevista radio/tv
                    SqlDScatPosgPeriodos2014.SelectCommand = "SELECT * FROM [catPosgPeriodos2014] WHERE [periodo]='3'";
                    break;
                case 4: // ponencia oral
                    SqlDScatPosgPeriodos2014.SelectCommand = "SELECT * FROM [catPosgPeriodos2014] WHERE [periodo]>='4'";
                    break;
                default: break;
            }
        }
        //Si escoje doctorado (cualquier institucion)
        else
        {
            switch (ddlModalidad.SelectedIndex)
            {
                case 1: // cartel
                    SqlDScatPosgPeriodos2014.SelectCommand = "SELECT * FROM [catPosgPeriodos2014] WHERE [periodo]='1' OR [periodo]='2'";
                    break;
                case 2: // platica de divulgacion
                case 3: // entrevista radio/tv
                    SqlDScatPosgPeriodos2014.SelectCommand = "SELECT * FROM [catPosgPeriodos2014] WHERE [periodo]>='3' AND [periodo]<='6'";
                    break;
                case 4: // ponencia oral
                    SqlDScatPosgPeriodos2014.SelectCommand = "SELECT * FROM [catPosgPeriodos2014] WHERE [periodo]>='7'";
                    break;
                default: break;
            }
        }
        SqlDScatPosgPeriodos2014.DataBind();
    }

    protected void rblArea_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (rblArea.SelectedValue == "Otras")
        {
            lblEspecifiqueArea.Visible = true;
            txtArea.Visible = true;
            txtArea.Text = "";
        }
        else
        {
            lblEspecifiqueArea.Visible = false;
            txtArea.Visible = false;
            txtArea.Text = "-";
        }
    }

    protected void btnContinuar_Click(object sender, EventArgs e)
    {
        Session["nombre"] = ddlNombre.SelectedValue;
        if (ckbNombre.Checked == true)
        {
            Session["nombre"] = txtNombre.Text;
        }

        Session["institucion"] = ddlInstitucion.SelectedValue;
        
        Session["area"] = rblArea.SelectedValue;
        if (rblArea.SelectedValue == "Otras")
        {
            Session["area"] = txtArea.Text;
        }

        Session["mensajeConfirmacion"] =
            "Nombre ..............: " + Convert.ToString(Session["nombre"]) + '\n' +
            "Correo electrónico ..: " + txtCorreo.Text + '\n' +
            "Programa académico ..: " + ddlPrograma.SelectedValue + '\n' +
            "Institucion .........: " + Session["institucion"] + '\n' +
            "Nivel ...............: " + ddlNivel.SelectedValue + '\n' +
            "Modalidad ...........: " + ddlModalidad.SelectedValue + '\n' +
            "Trimestre/Semestre ..: " + ddlPeriodo.SelectedValue + '\n' +
            "Título del trabajo ..: " + txtTituloTrabajo.Text + '\n' +
            "Área de conocimiento : " + Session["area"] + '\n' +
            '\n' +
            '\n';
        //metemos el mensaje en una label y confirmamos el mensaje
        lblConfirmacion.Text = Convert.ToString(Session["mensajeConfirmacion"]).Replace("'", "´");
        lblConfirmacion.Text = Convert.ToString(Session["mensajeConfirmacion"]).Replace("\n", "<br />");

        pnlDatos.Visible = false;
        pnlConfirmacion.Visible = true;

        lblNombreHidden.Text = Convert.ToString(Session["nombre"]);
        lblInstitucionHidden.Text = Convert.ToString(Session["institucion"]);
        lblAreaHidden.Text = Convert.ToString(Session["area"]);
        lblMensajeConfirmacionHidden.Text = Convert.ToString(Session["mensajeConfirmacion"]);
    }

    protected void btnAdjuntar_Click(object sender, EventArgs e)
    {
        string nombreArchivoPorSubir = Server.MapPath("~/posgrado2014/" + Path.GetFileName(fuAdjuntarResumen.PostedFile.FileName));
        string extension = System.IO.Path.GetExtension(nombreArchivoPorSubir).ToUpper();

        string nombreArchivoEnServer = Server.MapPath("~/posgrado2014/" + txtCorreo.Text + extension);
        //Session["nombreArchivo"] = Path.GetFileName(fuPago.PostedFile.FileName);
        try
        {
            if (!File.Exists(nombreArchivoEnServer))
            {
                if (extension == ".PDF")
                {
                    if (fuAdjuntarResumen.PostedFile.ContentLength > 2048000)
                    {
                        lblStatusArchivo.Text = "El archivo es demasiado grande, limite: 2 MB.";
                    }
                    else
                    {
                        fuAdjuntarResumen.SaveAs(MapPath("~/posgrado2014/" + txtCorreo.Text + extension));
                        lblStatusArchivo.Text = "Archivo grabado con exito, presione 'Enviar' para continuar.";
                        lblAdjuntarResumen.Visible = false;
                        btnEnviar.Enabled = true;
                        fuAdjuntarResumen.Visible = false;
                        btnAdjuntar.Visible = false;
                    }
                }
                else
                {
                    lblStatusArchivo.Text = "El tipo de archivo es incorrecto. Debe de ser un archivo en PDF.";
                }
            }
            else
            {
                lblStatusArchivo.Text = "Ya existe un resumen relacionado con su correo electronico.";
                //btnEnviar.Enabled = true;
                fuAdjuntarResumen.Visible = false;
                btnAdjuntar.Visible = false;
            }
        }
        catch (Exception ex)
        {
            lblStatusArchivo.Text = ex.Message.ToString();
        }
        lblStatusArchivo.Visible = true;
    }

    protected void btnRegresar_Click(object sender, EventArgs e)
    {
        pnlDatos.Visible = true;
        pnlConfirmacion.Visible = false;
    }

    protected void btnEnviar_Click(object sender, EventArgs e)
    {
        //Crear el comando para el UPDATE
        //SqlDSposgrado2014.InsertCommand = "INSERT INTO Posgrado2014 VALUES ('" + Convert.ToString(Session["nombre"]) +
        //    "', '" + txtCorreo.Text +
        //    "', '" + ddlPrograma.SelectedValue +
        //    "', '" + Convert.ToString(Session["institucion"]) +
        //    "', '" + ddlNivel.SelectedValue +
        //    "', '" + ddlModalidad.SelectedValue +
        //    "', '" + ddlPeriodo.SelectedValue +
        //    "', '" + txtTituloTrabajo.Text +
        //    "', '" + Convert.ToString(Session["area"]) +
        //    "', GetDate())";
        SqlDSposgrado2014.InsertCommand = "INSERT INTO Posgrado2014 VALUES ('" + lblNombreHidden.Text +
        "', '" + txtCorreo.Text +
        "', '" + ddlPrograma.SelectedValue +
        "', '" + lblInstitucionHidden.Text +
        "', '" + ddlNivel.SelectedValue +
        "', '" + ddlModalidad.SelectedValue +
        "', '" + ddlPeriodo.SelectedValue +
        "', '" + txtTituloTrabajo.Text +
        "', '" + lblAreaHidden.Text +
        "', GetDate())";

        SqlDSposgrado2014.Insert();

        //ARMAR CUERPO DEL MENSAJE
        string mensaje = "Estimado(a) " + lblNombreHidden.Text + ", usted ha sido registrado(a)." + '\n' +
            '\n' +
            lblMensajeConfirmacionHidden.Text +
            "Gracias," + '\n' + "Comite Organizador" + '\n' + "CIBNOR, S.C.";

        //Mandamos el correo( de,                para,           copia oculta,           asunto,                 mensaje )
        enviarCorreo("posgrado2014@cibnor.mx", txtCorreo.Text, "posgrado2014@cibnor.mx", "XIV Semana del Posgrado en Baja California Sur", mensaje);

        //mensaje = Session["mensajeConfirmacion"] + "Nombre del resumen enviado: " + Convert.ToString(Session["nombreArchivo"]);
        //enviarCorreo("posgrado2014@cibnor.mx", "posgrado2014@cibnor.mx", "-", "XIV Semana del Posgrado en Baja California Sur", mensaje);

        Response.Redirect("~/RegistroOk.aspx?evento=posgrado2014");
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