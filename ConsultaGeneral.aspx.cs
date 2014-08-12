using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;

using System.Data.SqlClient;


public partial class ConsultaGeneral : System.Web.UI.Page
{
    protected void ddlEventos_SelectedIndexChanged(object sender, EventArgs e)
    { 
        switch (ddlEventos.SelectedValue)
        {
            case "cultivos2014":
                SqlDSgeneral.SelectCommand = "SELECT * FROM [cultivos2014]";
                break;

            case "administradores2014":
                SqlDSgeneral.SelectCommand = "SELECT * FROM [administradores2014]";
                break;

            case "desertfishes2014":
                SqlDSgeneral.SelectCommand = "SELECT * FROM [desertfishes2014]";
                break;

            case "ott2014":
                SqlDSgeneral.SelectCommand = "SELECT * FROM [ott2014]";
                break;

            case "ogmforo2014":
                SqlDSgeneral.SelectCommand = "SELECT * FROM [ogmforo2014]";
                break;

            case "expociencias2014":
                SqlDSgeneral.SelectCommand = "SELECT * FROM [expociencias2014]";
                break;

            case "posgrado2014":
                SqlDSgeneral.SelectCommand = "SELECT * FROM [posgrado2014]";
                break;

            case "filogeografia2014":
                SqlDSgeneral.SelectCommand = "SELECT * FROM [filogeografia2014]";
                break;

            case "cari2014":
                SqlDSgeneral.SelectCommand = "SELECT * FROM [cari2014]";
                break;

            case "cpi2013":
                SqlDSgeneral.SelectCommand = "SELECT * FROM [CPI2013]";
                break;

            case "cpi2013mpd":
                SqlDSgeneral.SelectCommand = "SELECT * FROM [CPI2013mpd]";
                break;

            case "secuencias2013":
                SqlDSgeneral.SelectCommand = "SELECT * FROM [Secuencias2013]";
                break;

            case "pace2013":
                SqlDSgeneral.SelectCommand = "SELECT * FROM [Pace2013]";
                break;

            case "smcs-congreso2013":
                SqlDSgeneral.SelectCommand = "SELECT * FROM [smcs2013]";
                break;

            case "pesquerias2013":
                SqlDSgeneral.SelectCommand = "SELECT * FROM [Pesquerias2013]";
                break;

            case "microalgas2014":
                SqlDSgeneral.SelectCommand = "SELECT * FROM [microalgas2014]";
                break;

            case "statistical2013":
                SqlDSgeneral.SelectCommand = "SELECT * FROM [Statistical2013]";
                break;

            case "microscopia2012":
                SqlDSgeneral.SelectCommand = "SELECT * FROM [Microscopia2012]";
                break;

            case "registroWeb":
                SqlDSgeneral.SelectCommand = "SELECT * FROM [RegistroWeb]";
                break;

            case "oxidativestress2012":
                SqlDSgeneral.SelectCommand = "SELECT * FROM [Oxidativestress2012]";
                break;

            case "consultivo":
                SqlDSgeneral.SelectCommand = "SELECT * FROM [Consultivo]";
                break;

            default:
                break;
        }
        SqlDSgeneral.DataBind();
        btnExportar.Enabled = true;
    }

    protected void btnExportar_Click(object sender, EventArgs e)
    {
        exportarExcel(grvConsulta);
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

        Response.AddHeader("Content-Disposition", "attachment;filename=RegistroWeb.xls");
        Response.Charset = "UTF-8";
        Response.Write(sb.ToString());
        Response.End();
    }

}
