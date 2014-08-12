using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

//Para el exportar a excel
using System.Web.UI.HtmlControls;

public partial class ConsultaAniv : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnExportar_Click(object sender, EventArgs e)
    {
        exportarExcel(GVaniv);
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

        Response.AddHeader("Content-Disposition", "attachment;filename=aniv" + rblRegistros.SelectedValue + "_RegistroWeb.xls");
        Response.Charset = "UTF-8";
        Response.Write(sb.ToString());
        Response.End();
    }

    protected void rblRegistros_SelectedIndexChanged(object sender, EventArgs e)
    {
        switch (rblRegistros.SelectedValue)
        {
            case "Equipos":
                SqlDSaniv.SelectCommand = "SELECT * FROM [Anivequipos]";
                break;

            case "Individual":
                SqlDSaniv.SelectCommand = "SELECT * FROM [Anivindividual]";
                break;

            case "Paseo":
                SqlDSaniv.SelectCommand = "SELECT * FROM [Anivpaseo]";
                break;

            case "Voleibol":
                SqlDSaniv.SelectCommand = "SELECT * FROM [AnivVoleibol]";
                break;

            case "ATV":
                SqlDSaniv.SelectCommand = "SELECT * FROM [Anivatv]";
                break;

            case "Taller":
                SqlDSaniv.SelectCommand = "SELECT * FROM [Anivtaller]";
                break;

            default:
                break;
        }
        SqlDSaniv.DataBind();
    }
}