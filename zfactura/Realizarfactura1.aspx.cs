using System;
using System.Data;
using System.IO;
using System.Linq;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml.Linq;


public partial class zfactura_Realizarfactura : System.Web.UI.Page
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

    DataTable dt2 = new DataTable();
    private void gridViewDataArt()
    {

        dt2.Columns.Add("idArticulo", typeof(string));//[0,0]
        dt2.Columns.Add("IvaFactor", typeof(string));//[0,0]
        dt2.Columns.Add("codigo", typeof(string));//[1,0]
        dt2.Columns.Add("NombreArt", typeof(string));//[2,0]
        dt2.Columns.Add("Articulo_PrecioA", typeof(string));//[3,0]
        dt2.Columns.Add("Articulo_Nacional", typeof(string));//[5,0]
        dt2.Columns.Add("Presentacion", typeof(string));//[5,0]
        dt2.Columns.Add("IdPresentacion", typeof(string));//[0,0]
        dt2.Columns.Add("Articulo_Ieps", typeof(string));//[0,0]
        Session["dtInSession"] = dt2;     //Saving Datatable To Session 
    }

    protected void botonACtivarTimer2_Click(object sender, EventArgs e)
    {
        Div_Busca_Articulos.Visible = true;
    }
    protected void Page_Load(object sender, EventArgs e)
    {
        DivBuscarCliente.Visible = true;
        Div_Busca_Articulos.Visible = true;
        DivComment.Visible = true;

        gridViewData();
        DataRow dr = dt1.NewRow();
        dr["IdCliente"] = "";
        dr["codigo"] = "1";
        dr["NombreCliente"] = "Mi Primer Cliente";
        dr["telefonocliente"] = "1234567890";
        dr["Email"] = "";
        dt1.Rows.Add(dr);
        GridViewClientes.DataSource = dt1;
        GridViewClientes.DataBind();
        DataRow dr2 = dt1.NewRow();
        dr2["IdCliente"] = "";
        dr2["codigo"] = "1";
        dr2["NombreCliente"] = "Mi Primer Cliente";
        dr2["telefonocliente"] = "1234567890";
        dr2["Email"] = "";
        dt1.Rows.Add(dr2);
        GridViewClientes.DataSource = dt1;
        GridViewClientes.DataBind();

        gridViewDataArt();
        DataRow da = dt2.NewRow();
        da["idArticulo"] = "";
        da["codigo"] = "1";
        da["NombreArt"] = "Pesos + ieps + iva";
        da["Articulo_PrecioA"] = "13";
        da["Articulo_Nacional"] = "Pesos";
        da["Presentacion"] = "Pieza";
        dt2.Rows.Add(da);
        GridBuscaArticulos.DataSource = dt2;
        GridBuscaArticulos.DataBind();
        DataRow da2 = dt2.NewRow();
        da2["idArticulo"] = "";
        da2["codigo"] = "1";
        da2["NombreArt"] = "Pesos + ieps + iva";
        da2["Articulo_PrecioA"] = "13";
        da2["Articulo_Nacional"] = "Pesos";
        da2["Presentacion"] = "Pieza";
        dt2.Rows.Add(da2);
        GridBuscaArticulos.DataSource = dt2;
        GridBuscaArticulos.DataBind();
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


    protected void BtnAnteriorArticulo_Click(object sender, EventArgs e)
    {

    }
    protected void BtnNextArticulo_Click(object sender, EventArgs e)
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
    protected void ImgBuCerrarDivArticulos_Click(object sender, EventArgs e)
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
    protected void TxtNombreCli_TextChanged(object sender, EventArgs e)
    {
    }
      protected void botonACtivarTimer1_Click(object sender, EventArgs e)
    {
        DivInfoFolio.Visible = false;
        Div_infoCliente.Visible = false;
        DivBuscarCliente.Visible = true;
    }
    protected void txtBusquedaCliente_TextChanged(object sender, EventArgs e)
    {
    }
     protected void BtnAnteriorCliente_Click(object sender, EventArgs e)
    {
    }
    protected void BtnSiguienteCliente_Click(object sender, EventArgs e)
    {
    }
     protected void GridViewClientes_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        
    }
     protected void GridViewClientes_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        
    }
     protected void GridViewClientes_RowDataBound1(object sender, GridViewRowEventArgs e)
     {

     }
     protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)
     {

     }
     protected void LbuNuevaFactura_Click(object sender, EventArgs e)
     {

     }
     protected void DDLFormaPago_PreRender(object sender, EventArgs e)
     {

     }
}