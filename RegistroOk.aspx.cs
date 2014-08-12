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

public partial class RegistroOk : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string nomEv = Request.QueryString["evento"];

        switch (nomEv)
        {
            case "pace2014":
                imgLogo1.ImageUrl = "~/images/logo_pace.png";
                imgLogoCentral.Visible = true;
                imgLogoCentral.ImageUrl = "~/Images/logo_pace2014.png";
                lblTituloEvento.Text = "";
                //lblTituloEvento.Text = "Segundo Encuentro Estatal de Jóvenes Investigadores en B.C.S.";
                btnAceptar.PostBackUrl = "http://intranet.cibnor.mx/eplant1.php?pagID=anuncios/pace2014/index";
                break;
            
            case "waterbirds2014":
                imgLogo1.Height = 50;
                imgLogo2.Height = 50;
                imgLogo2.Visible = true;
                imgLogo3.Height = 50;
                imgLogo4.Height = 50;
                imgLogo4.Visible = true;

                imgLogo1.ImageUrl = "~/Images/logo_4birds.png";
                imgLogo2.ImageUrl = "~/Images/logo_cipamex.png";
                imgLogo3.ImageUrl = "~/Images/ciboficial.gif";
                imgLogo4.ImageUrl = "~/Images/logo_birdobservatory.png";
                lblTituloEvento.Text = "38Th Reunion Anual de la Waterbird Society y XIII Congreso para el Estudio y Conservación de las Aves en Mexico (CECAM)";
                btnAceptar.PostBackUrl = "http://intranet.cibnor.mx/eplant1.php?pagID=anuncios/waterbirds2014/index";
                break;

            case "cultivos2014":
                imgLogo1.ImageUrl = "~/Images/ciboficial.gif";
                imgLogo3.ImageUrl = "~/Images/logo_UABC.PNG";
                lblTituloEvento.Text = "Cultivos de Apoyo para Uso en Acuicultura y Biotecnología";
                btnAceptar.PostBackUrl = "http://intranet.cibnor.mx/eplant1.php?pagID=anuncios/cultivos2014/index";
                break;

            case "administradores2014":
                imgLogo1.ImageUrl = "~/Images/logo_mexicoPresidencia.png";
                imgLogo3.ImageUrl = "~/Images/logo_conacyt.jpg";
                imgLogoCentral.Visible = true;
                imgLogoCentral.ImageUrl = "~/Images/logo_administradores2014.png";
                lblTituloEvento.Text = "";
                btnAceptar.PostBackUrl = "http://200.23.162.100/eventos/administradores2014/";
                break;
                
            case "desertfishes2014":
                imgLogo1.ImageUrl = "~/Images/logo_desertfishes_reunion.png";
                imgLogo3.ImageUrl = "~/Images/ciboficial.gif";
                imgLogoCentral.Visible = true;
                imgLogoCentral.ImageUrl = "~/Images/logo_desertfishes_council.png";
                lblTituloEvento.Text = "";
                btnAceptar.PostBackUrl = "http://intranet.cibnor.mx/eplant1.php?pagID=anuncios/desertfishes2014/index";
                break;

            case "OTT2014":
                imgLogo1.ImageUrl = "~/Images/conacyt_logo3d.gif";
                imgLogo3.ImageUrl = "~/Images/ciboficial.gif";
                lblTituloEvento.Text = "Academia de Transferencia y Comercialización de Tecnología para las Américas";
                btnAceptar.PostBackUrl = "http://intranet.cibnor.mx/eplant1.php?pagID=anuncios/redott2014/index";
                break;

            case "ogmforo2014":
                imgLogo1.ImageUrl = "~/Images/cibreg.png";
                imgLogo3.ImageUrl = "~/Images/logo_conacyt.jpg";
                lblTituloEvento.Text = "1er. FORO DE DISCUSIÓN DE OGMs";
                btnAceptar.PostBackUrl = "http://intranet.cibnor.mx/eplant1.php?pagID=anuncios/ogmforo2014/index";
                break;

            case "expociencias2014":
                imgLogo1.ImageUrl = "~/Images/logo_pace.png";
                imgLogo2.ImageUrl = "~/Images/logo_milset.jpg";
                imgLogo2.Visible = true;
                imgLogo3.ImageUrl = "~/Images/logo_redActJuv10aniv.png";
                imgLogo4.ImageUrl = "~/Images/logo_upaep.png";
                imgLogo4.Visible = true;
                lblTituloEvento.Text = "Expociencias Sudcaliforniana 2014";
                btnAceptar.PostBackUrl = "http://intranet.cibnor.mx/eplant1.php?pagID=anuncios/expociencias2014/index";
                break;

            case "filogeografia2014":
                imgLogo1.ImageUrl = "~/Images/ciboficial.gif";
                imgLogo3.ImageUrl = "~/Images/logo_labgen.png";
                lblTituloEvento.Text = "Filogeografía, Teoría y Práctica";
                btnAceptar.PostBackUrl = "http://intranet.cibnor.mx/eplant1.php?pagID=anuncios/filogeografia2014/index";
                break;

            case "posgrado2014":
                imgLogo1.ImageUrl = "~/Images/ciboficial.gif";
                imgLogoCentral.ImageUrl = "~/Images/logo_cicimar.jpg";
                imgLogoCentral.Visible = true;
                imgLogo3.ImageUrl = "~/Images/logo_uabcs.jpg";
                lblTituloEvento.Text = "XIV Semana del Posgrado en Baja California Sur";
                btnAceptar.PostBackUrl = "http://intranet.cibnor.mx/eplant1.php?pagID=anuncios/posgrado2014/index";
                break;

            case "cari2014":
                imgLogo1.ImageUrl = "~/Images/conacyt_logo3d.gif";
                imgLogo3.ImageUrl = "~/Images/ciboficial.gif";
                lblTituloEvento.Text = "XIV Reunión del Consejo Asesor de Recursos de Información (CARI-CONACYT)";
                btnAceptar.PostBackUrl = "http://intranet.cibnor.mx/eplant1.php?pagID=anuncios/cari2014/index";
                break;

            case "OTT2013":
                imgLogo1.ImageUrl = "~/Images/conacyt_logo3d.gif";
                imgLogo3.ImageUrl = "~/Images/ciboficial.gif";
                lblTituloEvento.Text = "Academia de Transferencia y Comercialización de Tecnología para las Américas";
                btnAceptar.PostBackUrl = "http://intranet.cibnor.mx/eplant1.php?pagID=anuncios/redott2013/index";
                break;

            case "cpi2013":
            case "cpi2013mpd":
                imgLogo1.ImageUrl = "~/Images/logo_GobRepublicaFull.png";
                imgLogo3.ImageUrl = "~/Images/logo_conacytFull.png";
                lblTituloEvento.Text = "Reunión Nacional de Centros Públicos de Investigación";
                lblTituloEvento.Visible = false;
                imgLogoCentral.Visible = true;
                btnAceptar.PostBackUrl = "http://www.cpi2013.mx";
                break;

            case "pace2013":
                imgLogo1.ImageUrl = "~/images/logo_pace.png";
                lblTituloEvento.Text = "Primer Encuentro Estatal de Jóvenes Investigadores en B.C.S.";
                btnAceptar.PostBackUrl = "http://intranet.cibnor.mx/eplant1.php?pagID=anuncios/pace2013/index";
                break;

            case "pesquerias2013":
                imgLogo1.ImageUrl = "~/images/SMP_logo.jpg";
                lblTituloEvento.Text = "IV Reunión Bienal de la Sociedad Mexicana de Pesquerías";
                btnAceptar.PostBackUrl = "http://intranet.cibnor.mx/eplant1.php?pagID=anuncios/pesquerias2013/index";
                break;

            case "microalgas2014":
                imgLogo1.ImageUrl = "~/images/logo-microalgas.png";
                lblTituloEvento.Text = "Curso Teórico Práctico de Ecofisiología y Biotecnología de Microalgas";
                btnAceptar.PostBackUrl = "http://intranet.cibnor.mx/eplant1.php?pagID=anuncios/microalgas2014/index";
                break;

            case "statistical2013":
                imgLogo1.ImageUrl = "~/images/logo_labgen.png";
                lblTituloEvento.Text = "Introduction to Statistical Analysis for Landscape Genetics";
                btnAceptar.PostBackUrl = "http://intranet.cibnor.mx/eplant1.php?pagID=anuncios/statistical2013/index";
                break;

            case "smcs-congreso2013":
                imgLogo1.ImageUrl = "~/images/logo_SMCS.png";
                lblTituloEvento.Text = "Congreso de la Sociedad Mexicana de la Ciencia del Suelo";
                btnAceptar.PostBackUrl = "http://intranet.cibnor.mx/eplant1.php?pagID=anuncios/suelo2013/index";
                break;

            case "consultivo2013":
                imgLogo1.ImageUrl = "~/images/conacyt_logo3d.gif";
                lblTituloEvento.Text = "1era Sesión del Consejo Consultivo" + "<br />" + "Centros Públicos de Investigación CONACyT";
                btnAceptar.PostBackUrl = "http://intranet.cibnor.mx/eplant1.php?pagID=anuncios/cccpi2013/index";
                break;

            case "microscopia2014":
                imgLogo1.ImageUrl = "~/images/microscopia2012.png";
                lblTituloEvento.Text = "Curso Basico de Microscopia Electronica de Barrido";
                btnAceptar.PostBackUrl = "http://intranet.cibnor.mx/eplant1.php?pagID=anuncios/microscopia2014/index";
                break;

            case "anivindividual":
                imgLogo1.ImageUrl = "~/images/logo_38aniv.png";
                lblTituloEvento.Text = "Registro en Linea Individual";
                btnAceptar.PostBackUrl = "http://www.cibnor.gob.mx/eventos/aniversario.html";
                break;

            case "anivatv":
                imgLogo1.ImageUrl = "~/images/logo_38aniv.png";
                lblTituloEvento.Text = "Registro en Linea - Paseo ATV";
                btnAceptar.PostBackUrl = "http://www.cibnor.gob.mx/eventos/aniversario.html";
                break;

            case "anivpaseo":
                imgLogo1.ImageUrl = "~/images/logo_38aniv.png";
                lblTituloEvento.Text = "Registro en Linea - Paseo en Bicicleta";
                btnAceptar.PostBackUrl = "http://www.cibnor.gob.mx/eventos/aniversario.html";
                break;

            case "anivtaller":
                imgLogo1.ImageUrl = "~/images/logo_38aniv.png";
                lblTituloEvento.Text = "Registro en Linea - Taller de fondos CONACyT";
                btnAceptar.PostBackUrl = "http://www.cibnor.gob.mx/eventos/aniversario.html";
                break;

            case "anivequipos":
                imgLogo3.Visible = false;
                imgLogo1.ImageUrl = "~/images/logo_38aniv.png";
                lblTituloEvento.Text = "Registro en Linea por Equipos";
                btnAceptar.PostBackUrl = "http://www.cibnor.gob.mx/eventos/aniversario.html";
                break;

            case "anivpesca":
                imgLogo1.ImageUrl = "~/images/logo_38aniv.png";
                lblTituloEvento.Text = "Registro en Linea - 5to. Encuentro Pesca Deportiva";
                btnAceptar.PostBackUrl = "http://www.cibnor.gob.mx/eventos/aniversario.html";
                break;

            case "registroWeb":
                imgLogo1.ImageUrl = "~/images/conacyt_logo3d.gif";
                lblTituloEvento.Text = "CIBNOR - Registro en Linea";
                btnAceptar.PostBackUrl = "http://www.cibnor.mx/";
                break;

            case "oxidativestress2012":
                imgLogo1.ImageUrl = "~/images/logo_stress.png";
                lblTituloEvento.Text = "First International Conference on Oxidative Stress in Aquatic Ecosystems";
                btnAceptar.PostBackUrl = "http://intranet.cibnor.mx/eplant1.php?pagID=anuncios/estres2012/index";
                break;

            case "secuencias2013":
                imgLogo1.ImageUrl = "~/images/conacyt_logo3d.gif";
                lblTituloEvento.Text = "Análisis de Secuencias Genómicas Microbianas y Metagenómicas";
                btnAceptar.PostBackUrl = "http://intranet.cibnor.mx/eplant1.php?pagID=anuncios/secuencias2013/index";
                break;

            default:
                break;
        }        
    }
}
