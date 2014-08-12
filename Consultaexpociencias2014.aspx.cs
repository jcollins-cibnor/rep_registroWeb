using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Data;
using System.Data.SqlClient;

public partial class Consultaexpociencias2014 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
    }

    protected void gvRegistros_SelectedIndexChanged(object sender, EventArgs e)
    {
        int renglon = gvRegistros.SelectedIndex;
        //Session["id"] = gvRegistros.SelectedIndex.ToString(); // Nos da el indice del renglon del grid, empezando en 0, el encabezado no cuenta

        Session["id"] = gvRegistros.Rows[renglon].Cells[1].Text;

        //lblStatusExiste.Text = gvRegistros.SelectedRow.Cells[2].Text;
        //lblStatusExiste0.Text = Convert.ToString(Session["id"]);

        SqlDSdetalles.SelectCommand = "SELECT * FROM expociencias2014 WHERE ([id] = '" + Convert.ToString(Session["id"]) + "')";
        SqlDSdetalles.DataBind();
    }

}