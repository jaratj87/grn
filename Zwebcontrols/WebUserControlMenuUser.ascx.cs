using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class WebUserControlMenuUser : System.Web.UI.UserControl
{
   
    protected void Page_Load(object sender, EventArgs e)
    {
        DivMenu.Visible = true;
    
    }
    protected void LinkMiperfil_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/usuario/Miperfil.aspx");

    }
    protected void LinkSeleccionarEmpresa_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/usuario/PrincipalUsuario.aspx");
    }
    protected void LinkMisEmpresas_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/zEmpresa/MenuEmp.aspx");
    }
    protected void LinkClientes_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/zCliente/MenuP.aspx");
    }
    protected void LinkArticulos_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/zarticulos/MenuArt.aspx");
    }
    protected void LinkFolios_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/zConfigFolio/MenuFolios.aspx");
    }
    protected void LinkBF_Click(object sender, EventArgs e)
    {
        //asigna la F para controlar los menus y cosas del documento factura
        Response.Cookies["TipoDocumento"].Value = "F";
        Response.Redirect("~/zfactura/MenuFactura.aspx");
    }

    protected void LinkBN_Click(object sender, EventArgs e)
    {
        Response.Cookies["TipoDocumento"].Value = "N";
        Response.Redirect("~/zfactura/MenuFactura.aspx");
    }

    protected void LinkBuNE_Click(object sender, EventArgs e)
    {
        Response.Cookies["TipoDocumento"].Value = "E";
        Response.Redirect("~/zfactura/MenuFactura.aspx");
    }
}