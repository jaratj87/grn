<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="ZLogins_Default" %>
<%--<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>--%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%--<%@ Register TagPrefix="My" TagName="UserInfoBoxControl" Src=" ~/Zwebcontrols/EncabezadoPrincipal.ascx" %>--%>
<%@  Register TagPrefix="My" TagName="UserInfoBoxControl" Src="~/Zwebcontrols/EncabezadoPrincipal.ascx"%>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script src="Scripts/jquery-1.9.0.js" type="text/javascript"></script>
    <script src="Scripts/jquery-ui.js" type="text/javascript"></script>
    <link href="../Styles/style.css" rel="stylesheet" type="text/css" />
 <%--   <script src="../Scripts/jquery-1.3.2.min.js" type="text/javascript"></script>--%>
    <link href="Styles/style.css" rel="stylesheet" type="text/css" />
     <script type="text/javascript">
    function showConfirm(event) {
  event.stopPropagation();
  return false;
}
</script>
  <script type="text/javascript">
      $(document).ready(function () {
          $('#LinkButton1').click(function (evento) {
              $('#argumentos').fadeIn(2000);
          });
      });
</script>


</head>
<body style="height: 500px">
<My:UserInfoBoxControl ID="UserInfoBoxControl" runat="server" /> 
    <form id="form1" runat="server">


    <div id="contenido" class="Contenido"><%-- class="Contenido"--%>
        <%--<div id="Div1" style="position: absolute; height: 145px; width: 235px; top: 150px;
        left: 70px;">--%>

        <div id="mensaje" align="center">
            <asp:Label ID="Label2" runat="server" Text="Se ha registrado Exitosamente" 
                Visible="False" Font-Bold="True" ForeColor="#333399" 
                CssClass="labelTipoletra"></asp:Label>
        </div>
    <div id="formularioLogin" style="width: 235px; height: 160px;"  >
        <asp:Label ID="lbNombreUsuario" runat="server" Text="Correo:" 
                        CssClass="labeBlock"></asp:Label>
        <asp:TextBox ID="txtCorreo" runat="server" ForeColor="Black" Width="217px" 
            CssClass="tb5" placeholder="Correo Electronico" Height="25px"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                        ErrorMessage="Campo vacio" ForeColor="Red" ControlToValidate="txtpass" 
                        ToolTip="No puedes dejar el campo nombre en vacio" 
            ValidationGroup="FormularioLogin">*</asp:RequiredFieldValidator>
        <asp:Label ID="Lbpass" runat="server" Text="Contraseña:" CssClass="labeBlock"></asp:Label>
        <asp:TextBox ID="txtpass" runat="server" Width="217px" TextMode="Password" 
            CssClass="tb5" placeholder="Contraseña" Height="25px"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Campo vacio"
            ForeColor="Red" ControlToValidate="txtpass" 
            ToolTip="No puedes dejar el campo correo vacio" 
            ValidationGroup="FormularioLogin">*</asp:RequiredFieldValidator>
            <br />
                        <br />
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" 
            Text="Iniciar Sesion" CssClass="TextboxBlock" 
            ValidationGroup="FormularioLogin" />
        <asp:Label ID="Label1" runat="server" CssClass="labelTipoletraEnmedio" Text="Registrarse:"></asp:Label>
         
        <asp:LinkButton ID="LinkButton1" runat="server"  UseSubmitBehavior="False" 
            CausesValidation="False" OnClientClick="return showConfirm(event);" CssClass="labelTipoletraEnmedio">(Nuevo usuario)</asp:LinkButton>
        &nbsp;</div>
    <div id="Horizontal" class="div-borderWFDefault">
</div>
        <div id="argumentos" style="position: absolute; height: 165px; width: 440px; top: 25px;
            left: 405px; display:none;  " align="center" >
            <table style="width: 100%;">
                <tr>
                    <td class="style1" align="justify">
                        <asp:Label ID="Label3" runat="server" Text="Nombre:" CssClass="labelTipoletra"></asp:Label>
                    </td>
                    <td class="style2">
                        <asp:TextBox ID="txtNombre" runat="server" ForeColor="Black" Width="197px" CssClass="tb5"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Campo vacio"
                            ForeColor="Red" ControlToValidate="txtNombre" 
                            ToolTip="No puedes dejar el campo nombre en vacio" 
                            ValidationGroup="FormularioNuevoRegistro">*</asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="style1" align="justify">
                        <asp:Label ID="Lbtelefono" runat="server" Text="Telefono:" CssClass="labelTipoletra"></asp:Label>
                    </td>
                    <td class="style2">
                        <asp:TextBox ID="txtCodAreaTel" runat="server" Width="38px" ToolTip="Area del telefono a proporcioanar"
                            CssClass="tb5solonumeros" class="integer" placeholder="Area"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="*"
                            ControlToValidate="txtCodAreaTel" ForeColor="Red" 
                            ToolTip="No se captura el codigo de area de su telefono" 
                            ValidationGroup="FormularioNuevoRegistro"></asp:RequiredFieldValidator>
                        <asp:TextBox ID="txtelefono" runat="server" Width="141px" 
                            CssClass="tb5solonumeros" ToolTip="Numero telefonico a proporcionar"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Campo vacio"
                            ForeColor="Red" ControlToValidate="txtelefono" 
                            ToolTip="No puedes dejar el campo Telefono vacio" 
                            ValidationGroup="FormularioNuevoRegistro">*</asp:RequiredFieldValidator>
                </tr>
                <tr>
                    <td class="style1" align="justify">
                        <asp:Label ID="LbCorreo" runat="server" Text="Correo:" CssClass="labelTipoletra"></asp:Label>
                    </td>
                    <td class="style2">
                        <asp:TextBox ID="txtCorreoR" runat="server" Width="200px" AutoCompleteType="Disabled"
                            ToolTip="Correo electronico" CssClass="tb5"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" ErrorMessage="Campo vacio"
                            ForeColor="Red" ControlToValidate="txtCorreoR" 
                            ToolTip="No puedes dejar el campo correo vacio" 
                            ValidationGroup="FormularioNuevoRegistro">*</asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator11" 
                            runat="server" ControlToValidate="txtCorreoR"
                            ErrorMessage="*" ForeColor="Red" ToolTip="El correo proporcionado no contiene un formato apropiado"
                            ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" 
                            ValidationGroup="FormularioNuevoRegistro"></asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td class="style1" align="justify">
                        <asp:Label ID="Label4" runat="server" Text="Contraseña" CssClass="labelTipoletra"></asp:Label>
                    </td>
                    <td class="style2">
                        <asp:TextBox ID="txtpass1" runat="server" Width="200px" TextMode="Password" AutoCompleteType="Disabled" CssClass="tb5"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="Campo vacio"
                            ForeColor="Red" ControlToValidate="txtpass1" 
                            ToolTip="No puedes dejar la Contraseña en vacio" 
                            ValidationGroup="FormularioNuevoRegistro">*</asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="style1" align="justify">
                        <asp:Label ID="LbConfirmaContraseña" runat="server" Text="Confirma Contraseña:" CssClass="labelTipoletra"></asp:Label>
                    </td>
                    <td class="style2">
                        <asp:TextBox ID="txtpass2" runat="server" Width="200px" TextMode="Password" Height="20px" CssClass="tb5"></asp:TextBox>
                        <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txtpass1"
                            ControlToValidate="txtpass2" ErrorMessage="*" ForeColor="Red" 
                            ToolTip="Las Contraseña deben coincidir" 
                            ValidationGroup="FormularioNuevoRegistro"></asp:CompareValidator>
                    </td>
                </tr>
            </table>
            <asp:Label ID="LbError" runat="server" Text="Error:Ya existe un registro con ese correo"
                Font-Bold="True" ForeColor="Red" Visible="False"></asp:Label>
                <br />
            <asp:Button ID="Button2" runat="server"  Text="Crear Cuenta"
                Style="height: 26px" onclick="Button2_Click" CssClass="TextboxBlock" 
                ValidationGroup="FormularioNuevoRegistro" />
        
        </div>
        
    </div>
    </form>
    <script src="Scripts/jquery.numeric.js" type="text/javascript"></script>
    <script type="text/javascript">
        $(".numeric").numeric();
        $(".tb5solonumeros").numeric(false, function () { alert("Integers only"); this.value = ""; this.focus(); });
        $(".positive").numeric({ negative: false }, function () { alert("No negative values"); this.value = ""; this.focus(); });
        $(".positive-integer").numeric({ decimal: false, negative: false }, function () { alert("Positive integers only"); this.value = ""; this.focus(); });
        $("#remove").click(
		function (e) {
		    e.preventDefault();
		    $(".numeric,.integer,.positive").removeNumeric();
		}
	);

    </script>
</body>
</html>
