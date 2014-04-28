using System;
using System.Data;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class usuario_PrincipalUsuario : System.Web.UI.Page
{
    DataTable dt1 = new DataTable();
    protected void gridViewData()
    {
        dt1.Columns.Add("Propiedades_Id", typeof(string));//[0,0]
        dt1.Columns.Add("Propiedades_Empresa", typeof(string));//[1,0]
        dt1.Columns.Add("RFC", typeof(string));//[2,0]
        dt1.Columns.Add("Usuario_Stat1", typeof(string));//[3,0]
        dt1.Columns.Add("RegimenFiscal", typeof(string));
        Session["dtInSession"] = dt1;     //Saving Datatable To Session 
    }
    
    protected void Page_Load(object sender, EventArgs e)
    {
        gridViewData();
        DataRow dr = dt1.NewRow();
        dr["Propiedades_Id"] = "26";
        dr["Propiedades_Empresa"] = "Juan Perez";
        dr["RFC"] = "01 664 35 61 887";
        dr["Usuario_Stat1"] = "";
        dr["RegimenFiscal"] = "klasjdklajhdkasgd";
        dt1.Rows.Add(dr);
        GridView1.DataSource = dt1;
        GridView1.DataBind();
        DataRow dr2 = dt1.NewRow();
        dr2["Propiedades_Id"] = "26";
        dr2["Propiedades_Empresa"] = "Juan Perez";
        dr2["RFC"] = "01 664 35 61 887";
        dr2["Usuario_Stat1"] = "";
        dr2["RegimenFiscal"] = "klasjdklajhdkasgd";
        dt1.Rows.Add(dr2);
        GridView1.DataSource = dt1;
        GridView1.DataBind();
    }
 
 
  
    protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
    {
       

        Response.Redirect("~/zCliente/MenuP.aspx");
    }

}