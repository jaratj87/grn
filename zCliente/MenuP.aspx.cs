using System;
using System.Data;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;


public partial class altacli : System.Web.UI.Page
{
    DataTable dt1 = new DataTable();
    private void gridViewData()
    {

        dt1.Columns.Add("IdCliente", typeof(string));//[0,0]
        dt1.Columns.Add("codigo", typeof(string));//[1,0]
        dt1.Columns.Add("Nombrecliente", typeof(string));//[2,0]
        dt1.Columns.Add("telefonocliente", typeof(string));//[3,0]
        dt1.Columns.Add("Email", typeof(string));//[5,0]
        Session["dtInSession"] = dt1;     //Saving Datatable To Session 
    }
    protected void Page_Load(object sender, EventArgs e)
    {
        gridViewData();
        DataRow dr = dt1.NewRow();
        dr["IdCliente"] = "";
        dr["codigo"] = "1";
        dr["NombreCliente"] = "Mi Primer Cliente";
        dr["telefonocliente"] = "1234567890";
        dr["Email"] = "";
        dt1.Rows.Add(dr);
        GridView1.DataSource = dt1;
        GridView1.DataBind();
        DataRow dr2 = dt1.NewRow();
        dr2["IdCliente"] = "";
        dr2["codigo"] = "1";
        dr2["NombreCliente"] = "Mi Primer Cliente";
        dr2["telefonocliente"] = "1234567890";
        dr2["Email"] = "";
        dt1.Rows.Add(dr2);
        GridView1.DataSource = dt1;
        GridView1.DataBind();
    
    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
      
    }   
    protected void GridView1_SelectedIndexChanging(object sender, GridViewSelectEventArgs e)
    {
      
    }

    public void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
    {
  
    }
    protected void ImageButton1_Click(object sender, EventArgs e)
    {
        Response.Redirect("AddClient.aspx");
    }


    protected void Button2_Click(object sender, EventArgs e)
    {

    }
    protected void txtBusqueda_TextChanged(object sender, EventArgs e)
    {
     
    }


    protected void BtnSiguiente_Click(object sender, EventArgs e)
    {
     
    }

    protected void BtnAnterior_Click(object sender, EventArgs e)
    {
  
    }
    protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
     
    }
}