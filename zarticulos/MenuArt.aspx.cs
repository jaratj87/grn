using System;
using System.Data;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class MenuArt : System.Web.UI.Page
{
    DataTable dt1 = new DataTable();
    private void gridViewData()
    {

        dt1.Columns.Add("idArticulo", typeof(string));//[0,0]
        dt1.Columns.Add("codigo", typeof(string));//[1,0]
        dt1.Columns.Add("NombreArt", typeof(string));//[2,0]
        dt1.Columns.Add("Articulo_PrecioA", typeof(string));//[3,0]
        dt1.Columns.Add("Articulo_Nacional", typeof(string));//[5,0]
        dt1.Columns.Add("Presentacion", typeof(string));//[5,0]
        Session["dtInSession"] = dt1;     //Saving Datatable To Session 
    }

    protected void Page_Load(object sender, EventArgs e)
    {
        gridViewData();
        DataRow dr = dt1.NewRow();
        dr["idArticulo"] = "";
        dr["codigo"] = "1";
        dr["NombreArt"] = "Pesos + ieps + iva";
        dr["Articulo_PrecioA"] = "13";
        dr["Articulo_Nacional"] = "Pesos";
        dr["Presentacion"] = "Pieza";
        dt1.Rows.Add(dr);
        GridView1.DataSource = dt1;
        GridView1.DataBind();
        DataRow dr2 = dt1.NewRow();
        dr2["idArticulo"] = "";
        dr2["codigo"] = "1";
        dr2["NombreArt"] = "Pesos + ieps + iva";
        dr2["Articulo_PrecioA"] = "13";
        dr2["Articulo_Nacional"] = "Pesos";
        dr2["Presentacion"] = "Pieza";
        dt1.Rows.Add(dr2);
        GridView1.DataSource = dt1;
        GridView1.DataBind();      
    }

    protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
    {
    
        
    }
    protected void ImageButton1_Click(object sender, EventArgs e)
    {

        Response.Redirect("AltaProducto.aspx");
    }
 




    protected void Button2_Click(object sender, EventArgs e)
    {

    }
    protected void txtBusqueda_TextChanged(object sender, EventArgs e)
    {
        
    }
     

    protected void BtnNext_Click(object sender, EventArgs e)
    {
       
    }
      
    protected void BtnAnterior_Click(object sender, EventArgs e)
    {
    }
    protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {

    
     }
}


    

