using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Security;
using System.Security.Cryptography;
using System.Security.Cryptography.X509Certificates;

using System.IO;
using System.Text;

public partial class zConfigFolio_AltaConfigFolio : System.Web.UI.Page
{
   
    protected void cbfacturas_CheckedChanged(object sender, EventArgs e)
    {
       
    }
    protected void cbNcredito_CheckedChanged(object sender, EventArgs e)
    {
     
    }
    protected void cbNcargo_CheckedChanged(object sender, EventArgs e)
    {
      
    }
    protected void cbdlls_CheckedChanged(object sender, EventArgs e)
    {
        
    }
    protected void cbDllsNcredito_CheckedChanged(object sender, EventArgs e)
    {
        
    }
    protected void cbDllsNcargo_CheckedChanged(object sender, EventArgs e)
    {
     
    }
    protected void DDlempresa_SelectedIndexChanged(object sender, EventArgs e)
    {

    }






    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("MenuFolios.aspx");
    }

 
    protected void Page_Load(object sender, EventArgs e)
    {



    }





  

    protected void Wizard1_NextButtonClick(object sender, WizardNavigationEventArgs e)
    {
     


    }



    protected void CBacepto_CheckedChanged(object sender, EventArgs e)
    {
    
    }
   
    protected void BtnValida_Click(object sender, EventArgs e)
    {
     
    }
    protected void Wizard1_PreviousButtonClick(object sender, WizardNavigationEventArgs e)
    {

    }
    protected void Wizard1_FinishButtonClick(object sender, WizardNavigationEventArgs e)
    {           
                        Response.Redirect("MenuFolios.aspx");    
    }

    protected void Wizard1_SideBarButtonClick(object sender, WizardNavigationEventArgs e)
    {

    }   
}