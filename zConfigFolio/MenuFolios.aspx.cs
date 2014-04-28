using System;
using System.Data;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class zConfigFolio_MenuFolios : System.Web.UI.Page
{

    DataTable dt1 = new DataTable();
    private void gridViewData()
    {

        dt1.Columns.Add("FEA_Id", typeof(string));//[0,0]
        dt1.Columns.Add("FEA_Descripcion", typeof(string));//[1,0]
        dt1.Columns.Add("FEA_SerieFactura", typeof(string));//[2,0]
        dt1.Columns.Add("FEA_FolioFacturaIni", typeof(string));//[3,0]
        dt1.Columns.Add("FEA_Documento", typeof(string));//[5,0]
        Session["dtInSession"] = dt1;     //Saving Datatable To Session 
    }
  
    protected void Page_Load(object sender, EventArgs e)
    {
        gridViewData();
        DataRow dr = dt1.NewRow();
        dr["FEA_Id"] = "";
        dr["FEA_Descripcion"] = "Notas de cargo dollar";
        dr["FEA_SerieFactura"] = "CC";
        dr["FEA_FolioFacturaIni"] = "1";
        dr["FEA_Documento"] = "Notas de Cargo";
        dt1.Rows.Add(dr);
        GridView1.DataSource = dt1;
        GridView1.DataBind();
        DataRow dr2 = dt1.NewRow();
        dr2["FEA_Id"] = "";
        dr2["FEA_Descripcion"] = "Notas de cargo dollar";
        dr2["FEA_SerieFactura"] = "CC";
        dr2["FEA_FolioFacturaIni"] = "1";
        dr2["FEA_Documento"] = "Notas de Cargo";
        dt1.Rows.Add(dr2);
        GridView1.DataSource = dt1;
        GridView1.DataBind(); 
    
    }
    protected void ImageButton1_Click(object sender, EventArgs e)
    {
        Response.Redirect("AltaConfigFolio.aspx");
    }



    protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        
 
    }
    protected void txtBusqueda_TextChanged(object sender, EventArgs e)
    {
     
    }
    protected void Button2_Click(object sender, EventArgs e)
    {

    }

    protected void BtnSiguiente_Click(object sender, EventArgs e)
    {
      
    }
    protected void BtnAnterior_Click(object sender, EventArgs e)
    {
    }
    protected void ImageButton1_Click1(object sender, EventArgs e)
    {
        Response.Redirect("ModificaSello.aspx");
    }
}