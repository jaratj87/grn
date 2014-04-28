using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Security.Cryptography;

public partial class ZLogins_Default : System.Web.UI.Page
{
    
    string saltphrase = "arussystem";
    DataClassesDataContext dc = new DataClassesDataContext();
    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {
            if (Session["Alta"].ToString() == "1")
            {
                Session["Alta"] = 0;
                Label2.Text="Se ha registrado Exitosamente";
                Label2.ForeColor = System.Drawing.Color.Blue;
                Label2.Visible = true;
            }
        }
        catch { }
 
    }
    public static string md5method(string textoPlano)
    {
        byte[] data = System.Text.UTF8Encoding.ASCII.GetBytes(textoPlano);
        MD5CryptoServiceProvider md5 = new MD5CryptoServiceProvider();
        byte[] hashbyte = md5.ComputeHash(data, 0, data.Length);
        return BitConverter.ToString(hashbyte);
    }
    int ValidaSiUsuarioExiste(int ExisteUser)
    {

        try
        {
            var traer_si_Facturo = (from ComparaDatos in dc.Usuario_tbl
                                    where ComparaDatos.Usuario_Email == txtCorreoR.Text
                                    select ComparaDatos).Count();
            ExisteUser = int.Parse(traer_si_Facturo.ToString());
        }
        catch
        {
            ExisteUser = 0;

        }
        return (ExisteUser);
    }
    void llenaCokie()
    { 
        int horas=24;
     Response.Cookies["Idusuario"].Value = Session["Idusuario"].ToString();
     Response.Cookies["Idusuario"].Expires = DateTime.Now.AddHours(horas);

     Response.Cookies["NombreUsuario"].Value = Session["NombreUsuario"].ToString();
     Response.Cookies["NombreUsuario"].Expires = DateTime.Now.AddHours(horas);

     Response.Cookies["NombreEmpresa"].Value = Session["NombreEmpresa"].ToString();
     Response.Cookies["NombreEmpresa"].Expires = DateTime.Now.AddHours(horas); 

     Response.Cookies["IdEmpresa"].Value = Session["IdEmpresa"].ToString();
     Response.Cookies["IdEmpresa"].Expires = DateTime.Now.AddHours(horas);

     Response.Cookies["Usuario_Stat"].Value = Session["Usuario_Stat"].ToString();
     Response.Cookies["Usuario_Stat"].Expires = DateTime.Now.AddHours(horas);

     Response.Cookies["Idcampomod"].Value = "0";
     Response.Cookies["Idcampomod"].Expires = DateTime.Now.AddHours(horas);

    Response.Cookies["vali"].Value = "0";
    Response.Cookies["vali"].Expires = DateTime.Now.AddHours(horas);


    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        #region query par dar pass ala pagina
        string _temprasheconvert;
        _temprasheconvert = md5method(saltphrase);

        string a;
       a= md5method(txtpass.Text + _temprasheconvert);
        try
        {
            DataClassesDataContext dc = new DataClassesDataContext();
            var usuarioInfo = (from ComparaDatos in dc.Usuario_tbl
                           where ComparaDatos.Usuario_Email == txtCorreo.Text
                              && ComparaDatos.Usuario_Contrasena == md5method(txtpass.Text + _temprasheconvert)
                           select ComparaDatos).Single();
           
            ////traer datos y comparar y mandar al menu principal
            Session["Idusuario"] = usuarioInfo.Usuario_Id;
            Session["NombreUsuario"] = usuarioInfo.Usuario_Nombre;
            Session["NombreEmpresa"] = "";
            Session["IdEmpresa"] = 0;
            Session["Usuario_Stat"] = usuarioInfo.Usuario_stat;
            llenaCokie();
            if (int.Parse(Session["Usuario_Stat"].ToString()) == 0)
            {
                Response.Redirect("~/zEmpresa/AltaEmpresasFirts.aspx");
            }
            else
            {
                Response.Redirect("~/usuario/PrincipalUsuario.aspx");
            }
        }
        catch
        {

            Response.Write("<script language=javascript>alert('Usuario o Pass incorrecto');</script>");
        
        }
#endregion
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        RequiredFieldValidator1.Enabled = false;
        RequiredFieldValidator3.Enabled = false;
        int Existe = 0;

        Existe = ValidaSiUsuarioExiste(0);
        if (Existe > 0)
        {
            //Response.Redirect("~/zPopup/ErrorClienteExistente.aspx");
            Label2.Text = "Error:usuario ya registrado";
            Label2.ForeColor = System.Drawing.Color.Red;
            Label2.Visible = true;
            LbError.Visible = true;
            //Response.Write("<script language=javascript>alert('Ya existe un usuario con ese correo favor de proporcionar otro')</script>");

        }
        else
        {
            try
            {
                string _temprasheconvert;
                DateTime Hoy = DateTime.Today;
                string fecha_actual = Hoy.ToString("dd/MM/yy");
                //Propiedades_tbl alta = new Propiedades_tbl();
                Usuario_tbl alta = new Usuario_tbl();

                alta.Usuario_Nombre = txtNombre.Text;
                alta.Usuario_Telefono = txtCodAreaTel.Text + txtelefono.Text;
                alta.Usuario_Email = txtCorreoR.Text;

                _temprasheconvert = md5method(saltphrase);
                alta.Usuario_Contrasena = md5method(txtpass2.Text + _temprasheconvert); //txtpass2.Text;

                //string temp = md5method(txtpass2.Text + _temprasheconvert);
                alta.Usuario_Fecha = Hoy;
                alta.Usuario_Inactivo = false;
                alta.Usuario_stat = 0;
                dc.Usuario_tbl.InsertOnSubmit(alta);
                dc.SubmitChanges();
                Response.Write("<script language=javascript>alert('Tu has Registrado satifactoriamente Para ver si esta registrado Abre tu correo electronico')</script>");
                Session["Alta"] = 1;
                Response.Redirect("~/Default.aspx");
                
                //Label2.Visible = true;
            }
            catch (Exception ex)
            {
                LbError.Text = ex.Message;
                try
                {
                    int numeroError = ((System.Data.SqlClient.SqlException)(ex)).Number;

                    LbError.Text = numeroError.ToString();

                    LbError.Visible = true;

                    switch (numeroError)
                    {
                        case 8152: LbError.Text = "No debes de capturar un texto muy largo";
                            break;
                        case 2627: LbError.Text = "No puedes repetir el Codigo del articulo";
                            break;
                    }
                }
                catch { }
            }
        }
    }
}