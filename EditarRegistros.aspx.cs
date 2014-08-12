using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class EditarRegistros : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
    }

    protected void ddlEventos_SelectedIndexChanged(object sender, EventArgs e)
    {
        switch (ddlEventos.SelectedValue)
        {
            case "anivequipos":
                SqlDSRegistros.SelectCommand = "SELECT * FROM [anivequipos]";
                break;

            case "anivpesca":
                SqlDSRegistros.SelectCommand = "SELECT * FROM [anivpesca]";
                break;

            case "registroWeb":
                SqlDSRegistros.SelectCommand = "SELECT * FROM [RegistroWeb]";
                break;

            case "oxidativestress2012":
                SqlDSRegistros.SelectCommand = "SELECT * FROM [Oxidativestress2012]";
                break;

            default:
                break;
        }
        SqlDSRegistros.DataBind();
    }
    protected void grvRegistros_SelectedIndexChanged(object sender, EventArgs e)
    {
        Label1.Text = "SELECT * FROM [anivequipos] WHERE id=" + grvRegistros.Rows[grvRegistros.SelectedIndex].Cells[1].Text;
        SqlDSRegistrosEditar.SelectCommand = Label1.Text;
        SqlDSRegistrosEditar.DataBind();
        
    }
}