using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net.Mail;
using System.Text;
using System.IO;

public partial class cpi2013subirconstancia : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Session.Timeout = 600;
    }

    protected void btnAdjuntarConstancia_Click(object sender, EventArgs e)
    {
        //string ubicacionArchivos = "~/cpi2013/constancias/";
        string nombreArchivoPorSubir = Server.MapPath("~/cpi2013/constancias/" + Path.GetFileName(fuConstancia.PostedFile.FileName));
        string extension = System.IO.Path.GetExtension(nombreArchivoPorSubir).ToUpper();

        string nombreArchivoEnServer = Server.MapPath("~/cpi2013/constancias/" + txtCorreo.Text + extension);
        Session["nombreArchivo"] = Path.GetFileName(fuConstancia.PostedFile.FileName);
        try
        {
            if (extension == ".PDF")
            {
                if (fuConstancia.PostedFile.ContentLength > 2048000)
                {
                    lblStatusArchivo.Text = "El archivo es demasiado grande, limite: 2 MB.";
                }
                else
                {
                    fuConstancia.SaveAs(MapPath("~/cpi2013/constancias/" + txtCorreo.Text + extension));
                    lblStatusArchivo.Text = "Archivo adjuntado con exito.";
                }
            }
            else
            {
                lblStatusArchivo.Text = "El tipo de archivo es incorrecto. Debe de ser un archivo en PDF.";
            }
            
        }
        catch (Exception ex)
        {
            lblStatusArchivo.Text = ex.Message.ToString();
        }
    }

    public static void enviarEmail(string correoUsuario, string strFrom, string strSubject, string strBody, string strCC, string strCCO, string strAdjunto)
    {
        string AvisoError = string.Empty;
        strBody = strBody.Replace("\n", "<br />");
        System.Net.Mail.MailMessage correo = new System.Net.Mail.MailMessage();
        correo.From = new System.Net.Mail.MailAddress(strFrom);
        correo.To.Add(correoUsuario);

        if (strCC != "" && strCC != null)
            correo.CC.Add(strCC);

        if (strCCO != "" && strCCO != null)
            correo.Bcc.Add(strCCO);

        if (!string.IsNullOrEmpty(strAdjunto))
        {
            // Create  the file attachment for this e-mail message.
            Attachment data = new Attachment(strAdjunto);
            // Add the file attachment to this e-mail message.
            correo.Attachments.Add(data);
        }

        correo.Subject = strSubject;
        correo.Body = strBody;
        correo.IsBodyHtml = true;
        correo.Priority = System.Net.Mail.MailPriority.Normal;
        correo.BodyEncoding = Encoding.UTF8;
        {
            System.Net.Mail.SmtpClient cliente = new System.Net.Mail.SmtpClient();
            cliente.Host = "smtp.cibnor.mx";
            cliente.Port = 25;

            cliente.ServicePoint.MaxIdleTime = 1;
            cliente.ServicePoint.ConnectionLimit = 1;
            cliente.EnableSsl = false;
            try
            {
                cliente.Send(correo);
            }
            catch (System.Net.Mail.SmtpException ex)
            {
                AvisoError = "El mensaje NO pudo ser entregado a: (" + correoUsuario + "-" + ex.Message + ")<br>";
                throw new Exception(AvisoError);
            }
        }
    }

    protected void btnEnviar_Click(object sender, EventArgs e)
    {
        lblStatusArchivo.Text = "Constancia enviada exitosamente a " + txtCorreo.Text;
        txtCorreo.Text = "";
        btnEnviar.Enabled = false;        
    }
}