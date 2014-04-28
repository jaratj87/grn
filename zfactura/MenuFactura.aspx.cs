using System;
using System.Data;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.HtmlControls;


public partial class zConfigFolio_MenuFolios : System.Web.UI.Page
{
    DataTable dt1 = new DataTable();
    private void gridViewData()
    {

        dt1.Columns.Add("Factura_Id", typeof(string));//[0,0]
        dt1.Columns.Add("Factura_Serie", typeof(string));//[1,0]
        dt1.Columns.Add("Factura_Folio", typeof(string));//[2,0]
        dt1.Columns.Add("Cliente", typeof(string));//[3,0]
        dt1.Columns.Add("Documento", typeof(string));//[5,0]
        dt1.Columns.Add("Factura_Moneda", typeof(string));//[5,0]
        dt1.Columns.Add("Comentario", typeof(string));//[5,0]
        dt1.Columns.Add("Factura_TotalFactura", typeof(string));//[5,0]
        dt1.Columns.Add("Factura_FechaTimbrado", typeof(string));//[5,0]
        dt1.Columns.Add("Factura_FechaCancelada", typeof(string));//[5,0]
        dt1.Columns.Add("btnVerFactura", typeof(string));//[5,0]
        dt1.Columns.Add("btnDescargar", typeof(string));//[5,0]
        dt1.Columns.Add("Factura_EmailEnviadoOriginal", typeof(string));//[5,0]
        Session["dtInSession"] = dt1;     //Saving Datatable To Session 
    }    
    
    protected void Page_Load(object sender, EventArgs e)
    {
        gridViewData();
        DataRow dr = dt1.NewRow();
        dr["Factura_Id"] = "";
        dr["Factura_Serie"] = "F";
        dr["Factura_Folio"] = "4";
        dr["Cliente"] = "Mi Primer Cliente";
        dr["Documento"] = "Factura";
        dr["Factura_Moneda"] = "Pesos";
        dr["Comentario"] = "Comentario prueba";
        dr["Factura_TotalFactura"] = "11.700";
        dr["Factura_FechaTimbrado"] = "";
        dr["Factura_FechaCancelada"] = "";
        dr["btnVerFactura"] = "";
        dr["btnDescargar"] = "";
        dr["Factura_EmailEnviadoOriginal"] = "Enviado";
        dt1.Rows.Add(dr);
        GridView1.DataSource = dt1;
        GridView1.DataBind();
        DataRow dr2 = dt1.NewRow();
        dr2["Factura_Id"] = "";
        dr2["Factura_Serie"] = "F";
        dr2["Factura_Folio"] = "4";
        dr2["Cliente"] = "Mi Primer Cliente";
        dr2["Documento"] = "Factura";
        dr2["Factura_Moneda"] = "Pesos";
        dr2["Comentario"] = "Comentario prueba";
        dr2["Factura_TotalFactura"] = "11.700";
        dr2["Factura_FechaTimbrado"] = "";
        dr2["Factura_FechaCancelada"] = "";
        dr2["btnVerFactura"] = "";
        dr2["btnDescargar"] = "";
        dr2["Factura_EmailEnviadoOriginal"] = "Enviado";
        dt1.Rows.Add(dr2);
        GridView1.DataSource = dt1;
        GridView1.DataBind(); 
    }
    protected void ImageButton1_Click(object sender, EventArgs e)
    {
        Response.Redirect("Realizarfactura1.aspx");
    }
    protected void btnNext_Click(object sender, EventArgs e)
    {
      
    }

   
    protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        Response.Redirect("MenuFactura.aspx");
    }
    protected void Button2_Click(object sender, EventArgs e)
    {

    }
    protected void txtBusqueda_TextChanged(object sender, EventArgs e)
    {
        
    }
    protected void BtnAnterior_Click(object sender, EventArgs e)
    {
        
    }
}