using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ZLogins_Logout : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Context.Session.Abandon();
        Response.ClearHeaders();
        Response.Redirect("../Default.aspx");

    }
}