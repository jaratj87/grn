using System;
using System.Data;
using System.IO;
using System.Linq;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml.Linq;

public partial class MenuEmp : System.Web.UI.Page
{
    DataTable dt1 = new DataTable();
    private void gridVIEWData()
    {

        dt1.Columns.Add("idempresa", typeof(string));//[0,0]
        dt1.Columns.Add("Nombreempresa", typeof(string));//[1,0]
        dt1.Columns.Add("telefono", typeof(string));//[2,0]
        dt1.Columns.Add("rfc", typeof(string));//[3,0]
        Session["dtInSession"] = dt1;     //Saving Datatable To Session 
    }
    protected void Page_Load(object sender, EventArgs e)
    {
        gridVIEWData();
        DataRow dr = dt1.NewRow();
        dr["idempresa"] = "26";
        dr["Nombreempresa"] = "Juan Perez";
        dr["telefono"] = "01 664 35 61 887";
        dr["rfc"] = "klasjdklajhdkasgd";
        dt1.Rows.Add(dr);
        GridView1.DataSource = dt1;
        GridView1.DataBind();
        DataRow dr2 = dt1.NewRow();
        dr2["idempresa"] = "26";
        dr2["Nombreempresa"] = "Juan Perez";
        dr2["telefono"] = "01 664 35 61 887";
        dr2["rfc"] = "klasjdklajhdkasgd";
        dt1.Rows.Add(dr2);
        GridView1.DataSource = dt1;
        GridView1.DataBind();

    }

    protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
    {
      
    }


    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        
    }
    protected void txtBusqueda_TextChanged(object sender, EventArgs e)
    {

    }
    protected void ImageButton1_Click12(object sender, EventArgs e)
    {
        Response.Redirect("AltaEmpresas.aspx");
    }
    protected void btnNext0_Click(object sender, EventArgs e)
    {
       
    }

    protected void BtnAnterior_Click(object sender, EventArgs e)
    {
       
    }
    protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        
            Response.Redirect("MenuEmp.aspx", false);
    }
}