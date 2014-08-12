using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Data;
using System.Data.SqlClient;

public partial class administradores2014 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void valInquiry_ServerValidation(object source, ServerValidateEventArgs args)
    {
        args.IsValid = chkTalleres.SelectedItem != null;
    }

    protected int numRegistros()
    {
        int numeroRegistros = 0;

        SqlConnection con = new SqlConnection(@"Data source=200.23.162.100; uid=cibnor; pwd=Pass@word1; Initial Catalog=REGWEB");
        SqlCommand cmd = new SqlCommand();
        cmd.Connection = con;
        cmd.CommandText = "SELECT * FROM administradores2014 WHERE ([correo] = '" + txtCorreo.Text + "')";
        DataSet ds = new DataSet();
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        da.Fill(ds);
        con.Close();

        numeroRegistros = ds.Tables[0].Rows.Count;
        return numeroRegistros;
    }

    protected void btnContinuar_Click(object sender, EventArgs e)
    {
        if (chkTalleres.SelectedItem != null)
        {
            lblHiddenTalleres.Text = "";
        }
        else
        {
            lblHiddenTalleres.Text = "Ninguno seleccionado" + ". " + '\n';
        }

        foreach (ListItem li in chkTalleres.Items)
        {
            if (li.Selected)
            {
                lblHiddenTalleres.Text = lblHiddenTalleres.Text + li.Value + ". " + '\n';
            }
        }

        if (rblHotel.SelectedValue == "Otro")
        {
            lblHiddenHotel.Text = txtHotel.Text;
        }
        else
        {
            lblHiddenHotel.Text = rblHotel.SelectedValue;
        }

        //
        if (numRegistros() > 0)
        {
            lblStatusExiste.Text = "El correo que ingresaste ya se encuentra registrado, por favor utiliza otro.";
            txtCorreo.Focus();
        }
        else
        {
            lblStatusExiste.Text = "";

            lblHiddenMensaje.Text =
                "- " + lblDatosPersonales.Text + '\n' +
                '\n' +
                lblNombres.Text + " " + txtNombres.Text + '\n' +
                lblApellidos.Text + " " + txtApellidos.Text + '\n' +
                lblCorreo.Text + " " + txtCorreo.Text + '\n' +
                lblInstitucion.Text + " " + txtInstitucion.Text + '\n' +
                '\n' +
                "- " + lblInformacionAdicional.Text + '\n' +
                '\n' +
                lblTalleres.Text + '\n' +
                lblHiddenTalleres.Text +
                '\n' +
                lblHotel.Text + " " + lblHiddenHotel.Text + '\n' +
                '\n' +
                lblComentarios.Text + " " + txtComentarios.Text;

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
        SqlDSregistro.InsertCommand = "INSERT INTO administradores2014 VALUES ('" +
            txtNombres.Text + "', '" +
            txtApellidos.Text + "', '" +
            txtCorreo.Text + "', '" +
            txtInstitucion.Text + "', '" +
            lblHiddenTalleres.Text + "', '" +
            lblHiddenHotel.Text + "', '" +
            txtComentarios.Text + "', '" +
            "1" + "', GetDate())";

        int registroOk = 1; // Para validar si el registro se ejecuto en el server
        OperacionesBasicas Opb = new OperacionesBasicas();
        try
        {
            SqlDSregistro.Insert();
            //ARMAR CUERPO DEL MENSAJE
            string mensaje = "Estimado(a) participante, el registro ha sido completado con exíto." + '\n' +
                '\n' +
                lblHiddenMensaje.Text + '\n' +
                    '\n' +
                    '\n' +
                "Gracias," + '\n' + "Comite Organizador" + '\n' + "CIBNOR, S.C.";

            mensaje = mensaje.Replace("\n", "<br />");

            //Mandamos el correo( de,                para,           copia oculta,           asunto,                 mensaje )
            Opb.enviarCorreo("administradores2014@cibnor.mx", txtCorreo.Text, "administradores2014@cibnor.mx", "Administradores CPIs - Registro web", mensaje);
        }
        catch (Exception ex)
        {
            Opb.enviarCorreo("administradores2014@cibnor.mx", "jcollins@cibnor.mx", "-", "Error", ex.Message + " - " + txtCorreo.Text + " - " + ex.StackTrace);
            registroOk = 0;
            lblStatus.Text = "Hubo un problema al procesar su registro, favor de intentarlo de nuevo mas tarde. El webmaster ya ha sido notificado.";
        }
        if (registroOk == 1)
        {
            Response.Redirect("~/RegistroOk.aspx?evento=administradores2014");
        }
    }

    protected void rblHotel_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (rblHotel.SelectedValue == "Otro")
        {
            txtHotel.Enabled = true;
        }
        else
        {
            txtHotel.Enabled = false;
            txtHotel.Text = "";
        }
    }
}