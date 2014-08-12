using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

//Para el exportar a excel
using System.Web.UI.HtmlControls;


public partial class ConsultaSMCS : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
    }

    protected void GVsmcs_SelectedIndexChanged(object sender, EventArgs e)
    {
        //string liga = "infoAdicional.aspx?eId=" + evId;
        //CODIGO PARA AGREGAR UN ATRIBUTO AL BOTON QUE MANDA LLAMAR EL SCRIPT
        //btnUrlAd1.Attributes.Add("onClick", string.Format("abrirVentana('" + liga + "');"));

        Session["liga"] = "http://200.23.162.100/registroweb/smcs2013/" + GVsmcs.SelectedRow.Cells[4].Text + ".pdf";
        //GVsmcs.Attributes.Add("onClick", string.Format("abrirVentana('" + Convert.ToString(Session["liga"]) + "');"));
        //lblTest.Text = Convert.ToString(Session["liga"]);
        Response.Redirect(Convert.ToString(Session["liga"]));
    }

    protected void btnMostrar_Click(object sender, EventArgs e)
    {
        //btnMostrar.Attributes.Add("onClick", string.Format("abrirVentana('" + lblTest.Text + "');"));

        //lblTest.Text = GVsmcs.SelectedIndex.ToString() + ";" + GVsmcs.SelectedRow.RowIndex.ToString();
    }

    protected void btnExportar_Click(object sender, EventArgs e)
    {
        exportarExcel(GVsmcs);
    }

    protected void exportarExcel(GridView nomGV)
    {
        System.Text.StringBuilder sb = new System.Text.StringBuilder();
        System.IO.StringWriter sw = new System.IO.StringWriter(sb);
        System.Web.UI.HtmlTextWriter htw = new System.Web.UI.HtmlTextWriter(sw);

        Page page = new Page();
        HtmlForm form = new HtmlForm();

        nomGV.EnableViewState = false;
        page.EnableEventValidation = false;

        page.DesignerInitialize();

        page.Controls.Add(form);
        form.Controls.Add(nomGV);

        page.RenderControl(htw);

        Response.Clear();
        Response.Buffer = true;
        Response.ContentType = "application/vnd.ms-excel";

        Response.AddHeader("Content-Disposition", "attachment;filename=smcs_RegistroWeb.xls");
        Response.Charset = "UTF-8";
        Response.Write(sb.ToString());
        Response.End();
    }
}