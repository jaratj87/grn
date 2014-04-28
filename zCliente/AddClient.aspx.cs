using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class AddClient : System.Web.UI.Page
{
   
    protected void Page_Load(object sender, EventArgs e)
    {
      
    }



    protected void DDLFormaPago_PreRender(object sender, EventArgs e)
    {
      
    }
    protected void DDLFormaPagoDlls_PreRender(object sender, EventArgs e)
    {
     
    }
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
            Response.Redirect("MenuP.aspx");
    }
    protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
    {
      
    }
    protected void Wizard1_PreviousButtonClick(object sender, WizardNavigationEventArgs e)
    {

    }
    protected void Wizard1_NextButtonClick(object sender, WizardNavigationEventArgs e)
    {
        int idwizard = 0;
        idwizard = int.Parse(Wizard1.ActiveStepIndex.ToString());
        LbIndice.Text = (idwizard + 1).ToString();
    }
    protected void Wizard1_FinishButtonClick(object sender, WizardNavigationEventArgs e)
    {


    }

    protected void Wizard1_SideBarButtonClick(object sender, WizardNavigationEventArgs e)
    {

    }
    protected void CbCOD_CheckedChanged(object sender, EventArgs e)
    {

    
    }
}