﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using Ionic.Zip;



public partial class zfactura_Download : System.Web.UI.Page
{

    protected void Page_Load(object sender, EventArgs e)
    {
      
    }
    protected void btnAceptar_Click(object sender, EventArgs e)
    {
        Response.Redirect("CerrarCorreo.aspx");
    }
}