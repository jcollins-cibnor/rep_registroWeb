using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

using System.Data;
using System.Data.SqlClient;

/// <summary>
/// Descripción breve de OperacionesBasicas
/// </summary>
public class OperacionesBasicas
{
	public OperacionesBasicas()
	{
		//
		// TODO: Agregar aquí la lógica del constructor
		//
	}

    // Revisa si ya existe el registro en la 'tabla', buscando por el 'campo' y comparandolo con el 'texto'
    public int numRegistros(string tabla, string campo, string texto)
    {
        int numeroRegistros = 0;

        SqlConnection con = new SqlConnection(@"Data source=200.23.162.100; uid=cibnor; pwd=Pass@word1; Initial Catalog=REGWEB");
        SqlCommand cmd = new SqlCommand();
        cmd.Connection = con;
        //cmd.CommandText = "SELECT * FROM expociencias2014 WHERE ([correoEst1] = '" + txtCorreoEst1.Text + "')";
        cmd.CommandText = "SELECT * FROM " + tabla + " WHERE ([" + campo + "] = '" + texto + "')";
        DataSet ds = new DataSet();
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        da.Fill(ds);
        con.Close();

        numeroRegistros = ds.Tables[0].Rows.Count;
        return numeroRegistros;
    }

    public void enviarCorreo(string origen, string destino, string copiaoculta, string asunto, string mensaje)
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

        smtp.Send(correo);
    }
}