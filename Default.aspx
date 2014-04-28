<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="ZLogins_Default" %>
<!DOCTYPE html>
<%@  Register TagPrefix="My" TagName="UserInfoBoxControl" Src="~/Zwebcontrols/EncabezadoPrincipal.ascx"%>
<%@  Register TagPrefix="Me" TagName="UserInfoBoxFooter" Src="~/Zwebcontrols/footer.ascx"%>
<html lang="es">
<head runat="server">
    <meta charset="utf-8">
    <title>GRN | Login</title>
    <link href="Styles/normalize.css" rel="stylesheet" type="text/css" />
    <link href="Styles/grn-styles.css" rel="stylesheet" type="text/css" />
    <script src="Scripts/jquery-1.9.0.js" type="text/javascript"></script>
    <script src="Scripts/jquery-ui.js" type="text/javascript"></script>
    <script src="Scripts/ModalPopupWindow.js" type="text/javascript"></script>
    <script type="text/javascript">
     function showConfirm(event) {
        event.stopPropagation();
        return false;
    }
    </script>
    <script type="text/javascript">
    $(document).ready(function() {
        var tabs = $('ul.menulogin li a');
        tabs.bind('click',function(event){
            var $anchor = $(this);
            var ids = tabs.each(function(){
               $($(this).attr('href')).hide();   
            });
            $($anchor.attr('href')).fadeIn('slow');
            event.preventDefault();
        });
    });
    </script>
    <script type="text/javascript">
    var modalWin = new CreateModalPopUpObject();
    modalWin.SetLoadingImagePath("Images/loading.gif");
    modalWin.SetCloseButtonImagePath("Images/remove.gif");

    function popupPass() {
        var callbackFunctionArray = new Array(EnrollNow, EnrollLater);
        //heigth , y width
        modalWin.ShowURL('usuario/PopUpPass.aspx', 300, 350, 'Recuperación de Contraseña', null, callbackFunctionArray); //Local

        return false;
    }

    function EnrollNow(msg) {
        //HttpContext.Current.Session["Articulo_Id"] = "-1";
        modalWin.HideModalPopUp();
        modalWin.ShowMessage(msg, 200, 400, 'User Information', null, null);
    }
    
    function EnrollLater() {
        modalWin.HideModalPopUp();
        modalWin.ShowMessage(msg, 200, 400, 'User Information', null, null);
    }
    </script>
</head>
<body>
    <My:UserInfoBoxControl ID="UserInfoBoxControl" runat="server" /> 
    <div class="botones">
        <ul class="menulogin">
            <li>
                <div class="agregar">
                    <a href="#login" onclick="return showConfirm(event);">Login</a>
                </div>
            </li>
            <li>
                <div class="agregar">
                    <a href="#crearcuenta" onclick="return showConfirm(event);">Crear Cuenta</a>
                </div>
            </li>
        </ul>
    </div>
    <form id="form1" runat="server" autocomplete="off" class="formlogin">
    <div id="contenido" class="Contenido">
        <div id="mensaje" align="center">
            <asp:Label ID="Label2" runat="server" Text="Se ha registrado Exitosamente" Visible="False" />
        </div>
        <div id="login">
            <div>
                <asp:Label ID="lbNombreUsuario" AssociatedControlId="txtCorreo" runat="server" Text="Correo:" />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Campo vacio" ControlToValidate="txtpass" ToolTip="No puedes dejar el campo nombre en vacio" ValidationGroup="FormularioLogin" CssClass="txterror">*</asp:RequiredFieldValidator>
                <asp:TextBox ID="txtCorreo" runat="server" />
            </div>
            <div>
                <asp:Label ID="Lbpass" AssociatedControlId="txtpass" runat="server" Text="Contraseña:" />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Campo vacio" ControlToValidate="txtpass" ToolTip="No puedes dejar el campo correo vacio" ValidationGroup="FormularioLogin" CssClass="txterror">*</asp:RequiredFieldValidator>
                <asp:TextBox ID="txtpass" runat="server" TextMode="Password"></asp:TextBox>
            </div>
            <div class="btn">
                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Iniciar Sesión" ValidationGroup="FormularioLogin" />
            </div>      
            <div class="links">
                <%-- <asp:LinkButton ID="LinkButton1" runat="server"  UseSubmitBehavior="False" CausesValidation="False" OnClientClick="return showConfirm(event);">Crear nuevo usuario</asp:LinkButton><br> --%>
                <asp:LinkButton ID="LinkButton2" runat="server"  UseSubmitBehavior="False" CausesValidation="False" OnClientClick="return popupPass();">¿No recuerdas tu contraseña?</asp:LinkButton>
            </div>
        </div>
        <div id="crearcuenta" style="display: none;">
        <div>
            <asp:Label ID="Label3" AssociatedControlId="txtNombre" runat="server" Text="Nombre:" />
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Campo vacio" ControlToValidate="txtNombre" ToolTip="No puedes dejar el campo nombre en vacio" ValidationGroup="FormularioNuevoRegistro" CssClass="txterror">*</asp:RequiredFieldValidator>
            <asp:TextBox ID="txtNombre" runat="server" />
        </div>
        <div class="coldos">
            <div class="area">
                <asp:Label ID="Lbtelefono" AssociatedControlId="txtCodAreaTel" runat="server" Text="Teléfono: (Área)" />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="*" ControlToValidate="txtCodAreaTel" ToolTip="No se captura el codigo de area de su telefono" ValidationGroup="FormularioNuevoRegistro" CssClass="txterror">*</asp:RequiredFieldValidator>
                <asp:TextBox ID="txtCodAreaTel" runat="server" class="integer" />
            </div>
            <div class="tel">
                <asp:Label ID="Lbtelefono2" AssociatedControlId="txtelefono" runat="server" Text="(Número)" />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Campo vacio" ControlToValidate="txtelefono" ToolTip="No puedes dejar el campo Telefono vacio" ValidationGroup="FormularioNuevoRegistro" CssClass="txterror">*</asp:RequiredFieldValidator>
                <asp:TextBox ID="txtelefono" runat="server" />
            </div>
        </div>
        <div>
            <asp:Label ID="LbCorreo" AssociatedControlId="txtCorreoR" runat="server" Text="Correo:" />
            <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" ErrorMessage="Campo vacio" ControlToValidate="txtCorreoR" ToolTip="No puedes dejar el campo correo vacio" ValidationGroup="FormularioNuevoRegistro" CssClass="txterror">*</asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator11" runat="server" ControlToValidate="txtCorreoR" ErrorMessage="*" ToolTip="El correo proporcionado no contiene un formato apropiado" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ValidationGroup="FormularioNuevoRegistro"></asp:RegularExpressionValidator>
            <asp:TextBox ID="txtCorreoR" runat="server" AutoCompleteType="Disabled" />
        </div>
        <div>
            <asp:Label ID="Label4" AssociatedControlId="txtpass1" runat="server" Text="Contraseña" />
            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="Campo vacio" ControlToValidate="txtpass1" ToolTip="No puedes dejar la Contraseña vacio" ValidationGroup="FormularioNuevoRegistro" CssClass="txterror">*</asp:RequiredFieldValidator>
            <asp:TextBox ID="txtpass1" runat="server" TextMode="Password" AutoCompleteType="Disabled" />
        </div>
        <div>
            <asp:Label ID="LbConfirmaContraseña" AssociatedControlId="txtpass2" runat="server" Text="Confirmar Contraseña:" />
            <asp:TextBox ID="txtpass2" runat="server" TextMode="Password" />
            <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txtpass1" ControlToValidate="txtpass2" ErrorMessage="*" ToolTip="Las Contraseña deben coincidir" ValidationGroup="FormularioNuevoRegistro" CssClass="txterror"></asp:CompareValidator>
        </div>
        <div class="btn">
            <asp:Button ID="Button2" runat="server"  Text="Crear Cuenta" onclick="Button2_Click" ValidationGroup="FormularioNuevoRegistro" />
        </div>
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
    <Me:UserInfoBoxFooter ID="UserInfoBoxFooter" runat="server" />
</body>
</html>