using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Data;
using System.Data.SqlClient;

public partial class expociencias2014 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Session.Timeout = 30;
    }

    protected int numRegistros()
    {
        int numeroRegistros = 0;

        SqlConnection con = new SqlConnection(@"Data source=200.23.162.100; uid=cibnor; pwd=Pass@word1; Initial Catalog=REGWEB");
        SqlCommand cmd = new SqlCommand();
        cmd.Connection = con;
        cmd.CommandText = "SELECT * FROM expociencias2014 WHERE ([correoEst1] = '" + txtCorreoEst1.Text + "')";
        DataSet ds = new DataSet();
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        da.Fill(ds);
        con.Close();

        numeroRegistros = ds.Tables[0].Rows.Count;
        return numeroRegistros;
    }

    protected int numRegistrosClave()
    {
        int numeroRegistros = 0;

        SqlConnection con = new SqlConnection(@"Data source=200.23.162.100; uid=cibnor; pwd=Pass@word1; Initial Catalog=REGWEB");
        SqlCommand cmd = new SqlCommand();
        cmd.Connection = con;
        cmd.CommandText = "SELECT * FROM expociencias2014 WHERE ([categoria] = '" + ddlCategoria.SelectedItem.Text + "' AND [area] = '" + ddlArea.SelectedItem.Text + "')";
        DataSet ds = new DataSet();
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        da.Fill(ds);
        con.Close();

        numeroRegistros = ds.Tables[0].Rows.Count;
        return numeroRegistros;
    }

    protected void btnContinuar_Click(object sender, EventArgs e)
    {
        //lblStatusEnvio.Text = Convert.ToString(numRegistros()); CONFIRMAR SI LA SUBSTRING FUNCIONA.....
        if (txtDescripcionProyecto.Text.Length > 1000)
        {
            txtDescripcionProyecto.Text = txtDescripcionProyecto.Text.Substring(0, 1000);
        }
        if (numRegistros() > 0)
        {
            lblStatusExiste.Text = "El correo que ingresaste ya se encuentra registrado, por favor utiliza otro.";
            txtCorreoEst1.Focus();
        }
        else
        {
            lblStatusExiste.Text = "";
            lblHiddenClave.Text = ddlCategoria.SelectedValue + ddlArea.SelectedValue + Convert.ToString(numRegistrosClave() + 1);

            lblHiddenMensaje.Text =
                "- " + lblDatosGenerales.Text + '\n' +
                '\n' +
                lblNombreEst1.Text + " " + txtNombreEst1.Text + '\n' +
                lblCorreoEst1.Text + " " + txtCorreoEst1.Text + '\n' +
                lblTelefonoEst1.Text + " " + txtTelefonoEst1.Text + '\n' +
                lblSexoEst1.Text + " " + ddlSexoEst1.SelectedValue + '\n' +
                lblEdadEst1.Text + " " + txtEdadEst1.Text + '\n' +

                lblNumeroEstudiantes.Text + " " + rblNumeroEstudiantes.SelectedValue + '\n' +
                lblNombreEst2.Text + " " + txtNombreEst2.Text + '\n' +
                lblCorreoEst2.Text + " " + txtCorreoEst2.Text + '\n' +
                lblNombreEst3.Text + " " + txtNombreEst3.Text + '\n' +
                lblCorreoEst3.Text + " " + txtCorreoEst3.Text + '\n' +

                lblNombreAsesor.Text + " " + txtNombreAsesor.Text + '\n' +
                lblCorreoAsesor.Text + " " + txtCorreoAsesor.Text + '\n' +
                lblTelefonoAsesor.Text + " " + txtTelefonoAsesor.Text + '\n' +

                lblInstitucion.Text + " " + txtInstitucion.Text + '\n' +
                lblDomicilio.Text + " " + txtDomicilio.Text + '\n' +
                lblMunicipio.Text + " " + txtMunicipio.Text + '\n' +
                '\n' +
                "- " + lblDatosProyecto.Text + '\n' +
                '\n' +
                lblProyecto.Text + " " + txtProyecto.Text + '\n' +
                lblCategoria.Text + " " + ddlCategoria.SelectedItem.Text + '\n' +
                lblArea.Text + " " + ddlArea.SelectedItem.Text + '\n' +
                '\n' +
                "- " + lblInfoAdicional.Text + '\n' +
                '\n' +
                lblNombreHuesped.Text + " " + txtNombreHuesped.Text + '\n' +
                lblJustificacion.Text + " " + txtJustificacion.Text + '\n' +
                '\n' +
                '\n' +
                "Clave de registro: " + lblHiddenClave.Text;

            lblHiddenMensaje.Text = lblHiddenMensaje.Text.Replace("\n", "<br />");

            //metemos el mensaje en una label y confirmamos el mensaje
            lblConfirmacion.Text = lblHiddenMensaje.Text;

            pnlDatos.Visible = false;
            pnlConfirmacion.Visible = true;
        }
    }

    protected void btnRegresar_Click(object sender, EventArgs e)
    {
        pnlDatos.Visible = true;
        pnlConfirmacion.Visible = false;
    }

    protected void btnEnviar_Click(object sender, EventArgs e)
    {
        //Crear el comando para el UPDATE
        SqlDSregistro.InsertCommand = "INSERT INTO expociencias2014 VALUES ('" + 
            txtNombreEst1.Text + "', '" +
            txtCorreoEst1.Text + "', '" +
            txtTelefonoEst1.Text + "', '" +
            ddlSexoEst1.SelectedValue + "', '" +
            txtEdadEst1.Text + "', '" +
            rblNumeroEstudiantes.SelectedValue + "', '" +
            txtNombreEst2.Text + "', '" +
            txtCorreoEst2.Text + "', '" +
            txtNombreEst3.Text + "', '" +
            txtCorreoEst3.Text + "', '" +

            txtNombreAsesor.Text + "', '" +
            txtCorreoAsesor.Text + "', '" +
            txtTelefonoAsesor.Text + "', '" +
            txtInstitucion.Text + "', '" +
            txtDomicilio.Text + "', '" +
            txtMunicipio.Text + "', '" +

            txtProyecto.Text + "', '" +
            ddlCategoria.SelectedItem.Text + "', '" +
            ddlArea.SelectedItem.Text + "', '" +
            txtDescripcionProyecto.Text + "', '" +
            txtNombreHuesped.Text + "', '" +
            txtJustificacion.Text + "', '" +
            lblHiddenClave.Text + "', GetDate())";

        try
        {
            SqlDSregistro.Insert();
        }
        catch (Exception ex)
        {
            enviarCorreo("expociencias2014@cibnor.mx", "jcollins@cibnor.mx", "-", "Expociencias2014 - Error", ex.Message + " - " + ex.StackTrace);
        }

        //ARMAR CUERPO DEL MENSAJE
        string mensaje = "Estimado(a) participante, el registro ha sido completado con exíto." + '\n' +
            '\n' +
            lblHiddenMensaje.Text + '\n' +
                '\n' +
                '\n' + 
            "Gracias," + '\n' + "Comite Organizador" + '\n' + "CIBNOR, S.C.";

        mensaje = mensaje.Replace("\n", "<br />");

        //Mandamos el correo( de,                para,           copia oculta,           asunto,                 mensaje )
        enviarCorreo("expociencias2014@cibnor.mx", txtCorreoEst1.Text, "expociencias2014@cibnor.mx", "Expociencias sudcaliforniana 2014 - Registro web", mensaje);

        Response.Redirect("~/RegistroOk.aspx?evento=expociencias2014");
    }

    protected void rblNumeroEstudiantes_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (rblNumeroEstudiantes.SelectedValue == "1")
        {
            pnlNumeroEstudiantes.Visible = false;
        }
        else
        {
            pnlNumeroEstudiantes.Visible = true;
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

        correo.IsBodyHtml = true;
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
            lblStatusEnvio.Text = "El mensaje no ha podido ser entregado, intentelo de nuevo mas tarde. " + ex.Message;
        }
    }
}