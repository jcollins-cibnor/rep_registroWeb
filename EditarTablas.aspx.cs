using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class EditarTablas : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
    }
    protected void ocultarTablas()
    {
        grvmicroscopia2012.Visible = false;
        grvanivindividual.Visible = false;
        grvanivatv.Visible = false;
        grvanivtriatlon.Visible = false;
        grvanivequipos.Visible = false;
        grvanivpesca.Visible = false;
        grvregistroWeb.Visible = false;
        grvoxidativestress2012.Visible = false;
        grvstatistical2013.Visible = false;
        grvmicroalgas2014.Visible = false;
        grvpesquerias2013.Visible = false;
        grvsmcs2013.Visible = false;
        grvpace2013.Visible = false;
        grvsecuencias2013.Visible = false;
        grvcpi2013.Visible = false;
        grvcpi2013mpd.Visible = false;
    }

    protected void ddlEventos_SelectedIndexChanged(object sender, EventArgs e)
    {
        ocultarTablas();
        switch (ddlEventos.SelectedValue)
        {
            case "cpi2013":
                grvcpi2013.Visible = true;
                break;

            case "cpi2013mpd":
                grvcpi2013mpd.Visible = true;
                break;

            case "secuencias2013":
                grvsecuencias2013.Visible = true;
                break;

            case "pace2013":
                grvpace2013.Visible = true;
                break;

            case "smcs-congreso2013":
                grvsmcs2013.Visible = true;
                break;

            case "pesquerias2013":
                grvpesquerias2013.Visible = true;
                break;

            case "microalgas2014":
                grvmicroalgas2014.Visible = true;
                break;

            case "statistical2013":
                grvstatistical2013.Visible = true;
                break;

            case "microscopia2012":
                grvmicroscopia2012.Visible = true;
                break;

            case "anivindividual":
                grvanivindividual.Visible = true;
                break;

            case "anivatv":
                grvanivatv.Visible = true;
                break;

            case "anivtriatlon":
                grvanivtriatlon.Visible = true;
                break;

            case "anivequipos":
                grvanivequipos.Visible = true;
                break;

            case "anivpesca":
                grvanivpesca.Visible = true;
                break;

            case "registroWeb":
                grvregistroWeb.Visible = true;
                break;

            case "oxidativestress2012":
                grvoxidativestress2012.Visible = true;
                break;

            default:
                break;
        }
    }
}
