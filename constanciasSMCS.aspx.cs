using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class constanciasSMCS : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void GVsmcs_SelectedIndexChanged(object sender, EventArgs e)
    {
        Session["liga"] = "http://200.23.162.100/registroweb/smcs2013constancias/" + GVsmcs.SelectedRow.Cells[6].Text + ".pdf";
        //lblTest.Text = GVsmcs.SelectedRow.Cells[1].Text;
        lblTest.Text = Convert.ToString(Session["liga"]);

        Response.Redirect(Convert.ToString(Session["liga"]));
    }
}