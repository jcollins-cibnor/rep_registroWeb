using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class constanciasAdministradores2014 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void GVconstancias_SelectedIndexChanged(object sender, EventArgs e)
    {
        Session["liga"] = "http://200.23.162.100/registroweb/administradores2014constancias/" + GVconstancias.SelectedRow.Cells[4].Text;
        //lblTest.Text = GVsmcs.SelectedRow.Cells[1].Text;
        lblTest.Text = Convert.ToString(Session["liga"]);

        Response.Redirect(Convert.ToString(Session["liga"]));

    }
}