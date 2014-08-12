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

public partial class posgrado2011 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Session.Timeout = 500;
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

    protected void ddlInstitucion_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (ddlInstitucion.SelectedValue == "Otra")
        {
            lblEspecificarInstitucion.Visible = true;
            txtInstitucion.Visible = true;
            txtInstitucion.Text = "";
        }
        else
        {
            lblEspecificarInstitucion.Visible = false;
            txtInstitucion.Visible = false;
            txtInstitucion.Text = "-";
        }
    }

    protected void RadioButtonList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (rblArea.SelectedValue == "Otros")
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
        if (ddlInstitucion.SelectedValue == "Otra")
        {
            Session["institucion"] = txtInstitucion.Text;
        }

        Session["area"] = rblArea.SelectedValue;
        if (rblArea.SelectedValue == "Otros")
        {
            Session["area"] = txtArea.Text;
        }

        Session["mensajeConfirmacion"] =
            "--------------------------------------------------------------------------" + '\n' +
            '\n' +
            "Nombre ..............: " + Convert.ToString(Session["nombre"]) + '\n' +
            "Correo electrónico ..: " + txtCorreo.Text + '\n' +
            "Programa académico ..: " + txtPrograma.Text + '\n' +
            "Título del trabajo ..: " + txtTituloTrabajo.Text + '\n' +
            "Institucion .........: " + Session["institucion"] + '\n' +
            "Nivel ...............: " + ddlNivel.SelectedValue + '\n' +
            "Trimestre/Semestre ..: " + txtSemestre.Text + '\n' +
            "Modalidad ...........: " + ddlModalidad.SelectedValue + '\n' +
            "Área de conocimiento : " + Session["area"] + '\n' +
            '\n' +
            "--------------------------------------------------------------------------" + '\n' +
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
        //Crear el comando para el UPDATE
        SqlDSposgrado2011.InsertParameters.Add("@nombre", Convert.ToString(Session["nombre"]));
        SqlDSposgrado2011.InsertParameters.Add("@correo", txtCorreo.Text);
        SqlDSposgrado2011.InsertParameters.Add("@programa", txtPrograma.Text);
        SqlDSposgrado2011.InsertParameters.Add("@titulo", txtTituloTrabajo.Text);
        SqlDSposgrado2011.InsertParameters.Add("@institucion", Convert.ToString(Session["institucion"]));
        SqlDSposgrado2011.InsertParameters.Add("@nivel", ddlNivel.SelectedValue);
        SqlDSposgrado2011.InsertParameters.Add("@semestre", txtSemestre.Text);
        SqlDSposgrado2011.InsertParameters.Add("@modalidad", ddlModalidad.SelectedValue);
        SqlDSposgrado2011.InsertParameters.Add("@area", Convert.ToString(Session["area"]));

        SqlDSposgrado2011.InsertCommand = "INSERT INTO Posgrado2011 VALUES ('" + Convert.ToString(Session["nombre"]) +
            "', '" + txtCorreo.Text +
            "', '" + txtPrograma.Text +
            "', '" + txtTituloTrabajo.Text +
            "', '" + Convert.ToString(Session["institucion"]) +
            "', '" + ddlNivel.SelectedValue +
            "', '" + txtSemestre.Text +
            "', '" + ddlModalidad.SelectedValue +
            "', '" + Convert.ToString(Session["area"]) +
            "')";
        SqlDSposgrado2011.Insert();

        //ARMAR CUERPO DEL MENSAJE
        string mensaje = "Estimado(a) " + Convert.ToString(Session["nombre"]) + ", usted ha sido registrado(a)." + '\n' +
            '\n' +
            Session["mensajeConfirmacion"] +
            "Gracias," + '\n' + "Comite Organizador" + '\n' + "CIBNOR, S.C.";

        //Mandamos el correo( de,                para,           copia oculta,           asunto,                 mensaje )
        enviarCorreo("posgrado2011@cibnor.mx", txtCorreo.Text, "-", "XI SEMANA DEL POSGRADO EN BAJA CALIFORNIA SUR", mensaje);

        mensaje = Session["mensajeConfirmacion"] + "Nombre del resumen enviado: " + Convert.ToString(Session["nombreArchivo"]);
        enviarCorreo("posgrado2011@cibnor.mx", "posgrado2011@cibnor.mx", "-", "XI SEMANA DEL POSGRADO EN BAJA CALIFORNIA SUR", mensaje);

        Response.Redirect("~/RegistroOk.aspx?evento=posgrado2011");
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        string nombreArchivo = Server.MapPath("~/files/" + Path.GetFileName(fuAdjuntarResumen.PostedFile.FileName));
        Session["nombreArchivo"] = Path.GetFileName(fuAdjuntarResumen.PostedFile.FileName);
        try
        {
            if (!File.Exists(nombreArchivo))
            {
                string extension = System.IO.Path.GetExtension(nombreArchivo).ToUpper();
                if (extension == ".PDF")
                {
                    if (fuAdjuntarResumen.PostedFile.ContentLength > 2048000)
                    {
                        lblStatusArchivo.Text = "El archivo es demasiado grande, limite: 2 MB.";
                    }
                    else
                    {
                        fuAdjuntarResumen.SaveAs(MapPath("~/files/" + fuAdjuntarResumen.FileName));
                        lblStatusArchivo.Text = "Archivo grabado con exito.";
                        btnEnviar.Enabled = true;

                        lblAdjuntarResumen.Visible = false;
                        fuAdjuntarResumen.Visible = false;
                        Button1.Visible = false;
                    }
                }
                else
                {
                    lblStatusArchivo.Text = "El tipo de archivo es incorrecto. Debe de ser un archivo en PDF.";
                }
            }
            else
            {
                lblStatusArchivo.Text = "Ya existe un archivo con ese nombre.";
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
