<%@ Control Language="C#" AutoEventWireup="true" CodeFile="EncabezadoPrincipal.ascx.cs" Inherits="WebUserControlMenuUser" %>
<script type="text/javascript">
(function(d, s, id) {
  var js, fjs = d.getElementsByTagName(s)[0];
  if (d.getElementById(id)) return;
  js = d.createElement(s); js.id = id;
  js.src = "//connect.facebook.net/es_LA/all.js#xfbml=1&appId=229808283701768";
  fjs.parentNode.insertBefore(js, fjs);
}(document, 'script', 'facebook-jssdk'));
</script>
<div id="wrapper">
  <header class="paglogin">
    <div class="logologin">
      <asp:Image ID="Image11" runat="server" ImageUrl="~/Images/logo-sistema.jpg" />
    </div>
    <div class="fblike">
      <div class="fb-like" data-href="https://www.facebook.com/pages/Facturacion-electronica-GRN/715648885122941" data-width="200px" data-layout="button" data-action="like" data-show-faces="false" data-share="false"></div>
    </div>
  </header>