using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class WebUserControlMenuUser : System.Web.UI.UserControl
{
    //protected void Page_Load(object sender, EventArgs e)
    //{
    //    //LbnombreuserSystem.Text = Session["NombreUsuario"].ToString();
    //    //LbEmpresaTrabajando.Text = Session["NombreEmpresa"].ToString();
    //}

    protected void LinkBuGeFact_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/zfactura/Realizarfactura1.aspx");
    }
    protected void LinkBuSelectEmpresa_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/usuario/PrincipalUsuario.aspx");
    }
    protected void LinkBuReEmp_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/zEmpresa/AltaEmpresas.aspx");
    }
    protected void LinkBuNuevoCli_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/zCliente/AddClient.aspx");
    }
    protected void LinkBuNuevoProd_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/zarticulos/AltaProducto.aspx");
    }
}