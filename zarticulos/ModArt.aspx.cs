using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ModArt : System.Web.UI.Page
{
   
    protected void Page_Load(object sender, EventArgs e)
    {
      
    }
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("MenuArt.aspx");
    }

   
    protected void Button2_Click(object sender, EventArgs e)
    {

    }

    protected void DdlIva_TextChanged(object sender, EventArgs e)
    {
      
    }
    protected void txtPrecioART_TextChanged(object sender, EventArgs e)
    {
    
    }
    protected void Ddpago_PreRender(object sender, EventArgs e)
    {
     
    }
    protected void DdlIva_PreRender(object sender, EventArgs e)
    {
 
    }
    protected void DDpresentacion_PreRender(object sender, EventArgs e)
    {
  
    }
    protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
    {
  
        Response.Redirect("MenuArt.aspx");
    }

    protected void CbIeps_CheckedChanged(object sender, EventArgs e)
    {

    }

}