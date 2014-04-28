<%@ Control Language="C#" AutoEventWireup="true" CodeFile="WebUserControlMenuUserPrincipal.ascx.cs" Inherits="WebUserControlMenuUser" %>


<script src="../Scripts/jquery.min.js" type="text/javascript"></script>
<link href="../Styles/style.css" rel="stylesheet" type="text/css" />
<%--<asp:ScriptManager ID="ScriptManager1" runat="server">
</asp:ScriptManager>--%>

      <script type="text/javascript">
          $(document).ready(function () {
              $("#miperfil").click(function () {
                  location.href = "../usuario/Miperfil.aspx";
              });
          });
    </script>
      <script type="text/javascript">
          $(document).ready(function () {
              $("#Select_Empresa").click(function () {
                  location.href = "../usuario/PrincipalUsuario.aspx";
              });
          });
    </script>
      <script type="text/javascript">
          $(document).ready(function () {
              $("#Menu_Emp").click(function () {
                  location.href = "../zEmpresa/MenuEmp.aspx";
              });
          });
    </script>

       <script type="text/javascript">
           $(document).ready(function () {
               $("#Div_Articulos").click(function () {
                   location.href = "../zarticulos/MenuArt.aspx";
               });
           });
    </script>

           <script type="text/javascript">
               $(document).ready(function () {
                   $("#Div_cfdi").click(function () {
                       location.href = "../zConfigFolio/MenuFolios.aspx";
                   });
               });
    </script>

     <script type="text/javascript">
         $(document).ready(function () {
             $("#Div_clientes").click(function () {
                 location.href = "../zCliente/MenuP.aspx";
             });
         });
    </script>
 
         <script type="text/javascript">
             $(document).ready(function () {
                 $("#Div_Factura").click(function () {
                     location.href = "../zfactura/MenuFactura.aspx";
                 });
             });
    </script>
      <script type="text/javascript">
          $(document).ready(function () {
              $("#Div_Salir").click(function () {
                  location.href = "../ZLogins/Logout.aspx";
              });
          });
    </script>




 <h2 id="Encabezado" class="header2" runat="server" style="height: 120px;  top: -10px; left: 0px;"  >
          <asp:Image ID="Image11" runat="server" ImageUrl="~/Images/logogrn.png" 
              Width="320px" Height="95px" Style="margin-right: 500px"/>
        
                  <a class="PosLabelFacturar" style="font-size: 62px;">Factura Grn</a>
  </h2>

      <div id="DivDatosUsuario"  
    
    style="position: absolute; height: 25px; top: 130px; left: 10px; width: 1180px;" 
    align="right">
                              <asp:Label ID="Label10" runat="server" CssClass="labelTipoletra" 
                        Font-Bold="True" Text="Usuario:" Style="margin-right: "></asp:Label>
                    <asp:Label ID="LbuserName" runat="server" CssClass="labelTipoletra" 
                        Text="Label" Style="margin-right: 60px"></asp:Label>
                               <asp:Label ID="Label11" runat="server" CssClass="labelTipoletra" 
                        Font-Bold="True" Text="Empresa:"></asp:Label>
                    <asp:Label ID="LbEmpresaTrabajando" runat="server" CssClass="labelTipoletra"></asp:Label>
   </div>







