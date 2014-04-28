using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using iTextSharp.text;
using iTextSharp.text.pdf;
using iTextSharp.text.html;
using iTextSharp.text.html.simpleparser;
using ThoughtWorks.QRCode.Codec;
using System.Data;

using System.Text;
using System.Net.Mail;
using System.Net;

using System.Security.Cryptography;
using System.Security.Cryptography.X509Certificates;
using System.Security;



public partial class zfactura_VisualizarFactura : System.Web.UI.Page
{

   
   
   
    protected void Page_Load(object sender, EventArgs e)
    {
        
    }
    void CalculCarpetaypathDeArchivos()
    {
        string a;
        #region carpeta pdf
        try
        {
            Session["Idusuario"] = Request.Cookies["Idusuario"].Value.ToString();
            Session["IdEmpresa"] = Request.Cookies["IdEmpresa"].Value.ToString();
            //_concatenapathPDF = path + "/" + Session["Idusuario"].ToString() + "/" + Session["IdEmpresa"].ToString() + "/" + "PDF" + "/" + LbFacturaCliente.Text + "/"+LbNombreArchivoPdf.Text;
        }
        catch (Exception ex)
        {
            //Label1.Text = ex.Message;
        }
        #endregion
        #region carpeta Xml
        try
        {
            Session["Idusuario"] = Request.Cookies["Idusuario"].Value.ToString();
            Session["IdEmpresa"] = Request.Cookies["IdEmpresa"].Value.ToString();
            a = Session["Id_Receptor"].ToString();
            //Directory.CreateDirectory(MapPath(path) + "\\" + Session["Idusuario"].ToString()
                //+ "\\" + Session["IdEmpresa"].ToString() + "\\" + "Xml" + "\\" + a);
            //_concatenapathXML = path + "/" + Session["Idusuario"].ToString() + "/" + Session["IdEmpresa"].ToString() + "/" + "Xml" + "/" + a + "/";
        }
        catch (Exception ex)
        {
            //Label1.Text = ex.Message;
        }
        #endregion

    }


    

    protected void LinkButtonDownloadPdf_Click(object sender, EventArgs e)
    {
        /////filesGRN/14/77/Xml/56/FP_13.Xml
        //Session["Idusuario"] = Request.Cookies["Idusuario"].Value.ToString();
        //Session["IdEmpresa"] = Request.Cookies["IdEmpresa"].Value.ToString();
        //_concatenapathPDF = path + "/" + Session["Idusuario"].ToString() + "/" + Session["IdEmpresa"].ToString() + "/" + "PDF" + "/" + LbFacturaCliente.Text + "/" + LbNombreArchivoPdf.Text;
        ////_concatenapathPDF = path + "/" + Session["Idusuario"].ToString() + "/" + Session["IdEmpresa"].ToString() + "/" + "PDF" + "/" + LbFacturaCliente.Text + "/" ;
        //_concatenapathXML= path + "/" + Session["Idusuario"].ToString() + "/" + Session["IdEmpresa"].ToString() + "/" + "Xml" + "/"+LbFacturaCliente.Text + LbFacturaCliente.Text + "/" + "FP_13.Xml";

        //Response.Redirect(_concatenapathPDF);
      
    }

    protected void BtnTimbrar_Click(object sender, EventArgs e)
    {
        
    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {

    }
    protected void BtnTimbrar_Up_Click(object sender, EventArgs e)
    {

    }
    protected void LinkButton1_Up_Click(object sender, EventArgs e)
    {

    }
    void cargaDatosCorreoKokies()
    {



    }
    void traeIepsArticulo()
    {
      


    }
    protected void BtnEnviaCorreo_Click(object sender, EventArgs e)
    {
       
    }
    protected void BtnEnviaCorreo_Up_Click(object sender, EventArgs e)
    {

    }


}