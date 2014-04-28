<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ModificarPass.aspx.cs" Inherits="usuario_ModificarPass" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="../Styles/style.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server" autocomplete="off" >
    <div style="width: 260px">
         <asp:Label ID="LbId" runat="server" Text="fallo"></asp:Label>
     <br />
   <asp:Label ID="Label1" runat="server" Text="Proporcione los siguientes Datos" 
             CssClass="labelTipoletra" Font-Bold="True"></asp:Label>
   <br />
    <asp:Label ID="Label2" runat="server" Text="Clave:" CssClass="labelTipoletra"></asp:Label>
     <br />
    <asp:TextBox ID="txtClave" runat="server" Width="180px" autocomplete="off"></asp:TextBox>

        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="*"
            ControlToValidate="txtClave" Font-Bold="True" Font-Size="X-Large" ForeColor="Red"
            ToolTip="Debes de proporcionar clave enviada en tu correo"></asp:RequiredFieldValidator>

     <br />
    <asp:Label ID="Label3" runat="server" Text="Nueva Contraseña" 
             CssClass="labelTipoletra"></asp:Label>
     <br />
    <asp:TextBox ID="txtPass1" runat="server" Width="180px" TextMode="Password" autocomplete="off" AutoCompleteType="Disabled"></asp:TextBox>
  
             <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="*"
            ControlToValidate="txtPass1" Font-Bold="True" Font-Size="X-Large" ForeColor="Red"
            ToolTip="Debes Capturar la nueva contraseña"></asp:RequiredFieldValidator>
     <br />

    <asp:Label ID="Label4" runat="server" Text="Repite Contraseña" 
             CssClass="labelTipoletra"></asp:Label>
     <br />
    <asp:TextBox ID="txtPass2" runat="server" Width="180px" TextMode="Password" autocomplete="off"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="*"
            ControlToValidate="txtPass2" Font-Bold="True" Font-Size="X-Large" ForeColor="Red"
            ToolTip="Debes Capturar la nueva contraseña"></asp:RequiredFieldValidator>
         <asp:CompareValidator ID="CompareValidator1" runat="server" 
             ControlToCompare="txtPass1" ControlToValidate="txtPass2" ErrorMessage="*" 
             Font-Bold="True" Font-Size="X-Large" ForeColor="Red" 
             ToolTip="Debes de capturar la misma Contraseña en ambos campos"></asp:CompareValidator>
     <br />
     <asp:Button ID="BtnCambiaPass" runat="server" Height="47px" Text="Cambiar" Width="100px"
            CssClass="TextboxBlock" onclick="BtnCambiaPass_Click" />
    </div>
    </form>
</body>
</html>
