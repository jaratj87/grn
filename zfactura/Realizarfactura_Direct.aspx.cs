using System;
using System.Data;
using System.IO;
using System.Linq;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml.Linq;


public partial class zfactura_Realizarfactura : System.Web.UI.Page
{
    
    protected void botonACtivarTimer2_Click(object sender, EventArgs e)
    {
        
    }
    protected void Page_Load(object sender, EventArgs e)
    {
      
        
    }

 
    protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
    {
      

    }
 
    protected void Button1_Click(object sender, EventArgs e)
    {
  
                    Response.Redirect("MenuFactura.aspx");
         

    }

    protected void ddMoneda_PreRender(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            ddMoneda.Items.Insert(0, new ListItem("Selecciona...", "0"));
        }
      
    }

    protected void ddMoneda_TextChanged(object sender, EventArgs e)//copiar 3.04.2014
    {
      
    }
 
    protected void txtCodOnombre_TextChanged(object sender, EventArgs e)
    {
      
    }
    protected void txtCantidadArt_TextChanged(object sender, EventArgs e)
    {
       
    }
    protected void IbRegresar_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("MenuFactura.aspx");
    }
    protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
    {

    }
    protected void ImageButton11_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("Realizarfactura1.aspx");
    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        
    }
    protected void txtPrecioArt_TextChanged(object sender, EventArgs e)
    {

    }
    
   
    protected void txtBusquedaArticulo_TextChanged(object sender, EventArgs e)
    {
      
     
    }


    protected void BtnAnteriorArticulo_Click(object sender, ImageClickEventArgs e)
    {
       
    }
    protected void BtnNextArticulo_Click(object sender, ImageClickEventArgs e)
    {
      
    }

    protected void GridBuscaArticulos_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
     
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
     
    }
    protected void ImgBuCerrarDivArticulos_Click(object sender, ImageClickEventArgs e)
    {
        Div_Busca_Articulos.Visible = false;
    }

    protected void ddMoneda_SelectedIndexChanged(object sender, EventArgs e)
    {

    } 
    protected void CheckBox1_CheckedChanged(object sender, EventArgs e)
    {
    }

    protected void GridView1_SelectedIndexChanged1(object sender, EventArgs e)
    {

    }
       protected void ButtonAddgrid_Click(object sender, EventArgs e)//copiar 3.04.2014
    {
    }
}