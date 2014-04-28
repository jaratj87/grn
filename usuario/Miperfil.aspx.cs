using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Security.Cryptography;

public partial class usuario_Miperfil : System.Web.UI.Page
{
    
   

    

    protected void Page_Load(object sender, EventArgs e)
    {

        try
        {  }
        catch { }
        if (!IsPostBack)
        {
            esconder.Visible = false;
        }
    }


    protected void cbpass_CheckedChanged(object sender, EventArgs e)
    {

        if (cbpass.Checked == true)
        {
            esconder.Visible = true;
            RequiredFieldValidator1.Enabled = true;
            RequiredFieldValidator2.Enabled = true;
            RequiredFieldValidator3.Enabled = true;
        }
        else
        {
            RequiredFieldValidator1.Enabled = false;
            RequiredFieldValidator2.Enabled = false;
            RequiredFieldValidator3.Enabled = false;
            esconder.Visible = true;
        }
        
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("PrincipalUsuario.aspx");
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
       
    }
    protected void Button3_Click(object sender, EventArgs e)
    {

    }
}