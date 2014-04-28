<%@ Page Language="C#" AutoEventWireup="true" CodeFile="PopUpPass.aspx.cs" Inherits="usuario_RecuperarPassword" %>
<!DOCTYPE html>
<html lang="es">
<head runat="server">
    <title></title>
    <link href="../Styles/normalize.css" rel="stylesheet" type="text/css" />
    <link href="../Styles/grn-styles.css" rel="stylesheet" type="text/css" />
</head>
<body style="width: 335px">
    <form id="form1" runat="server">
    <div align="center" style="width: 335px; height: 95px">
        <br />
        <br />
        <asp:Label ID="Label1" runat="server" CssClass="labelTipoletra" 
            Text="Proporcione Correo Electrónico:" Font-Bold="True"></asp:Label>
           <br />
           <br />
        <asp:TextBox ID="txtCorreoUsuario" runat="server" Width="209px" CssClass="tb5" 
            Height="24px"></asp:TextBox>
      <br />
      <br />
  
          <asp:Label ID="LbError" runat="server" CssClass="labelTipoletra" 
            Font-Bold="True" ForeColor="Red"></asp:Label>

        <asp:Button ID="BtnrecuperarPass" runat="server" Text="Aceptar" OnClick="BtnrecuperarPass_Click" />
    
    </div>
    </form>
</body>
</html>
