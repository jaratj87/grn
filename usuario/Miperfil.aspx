<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Miperfil.aspx.cs" Inherits="usuario_Miperfil" %>
<!DOCTYPE html>
<%@ Register TagPrefix="My" TagName="UserInfoBoxControl" Src="~/Zwebcontrols/WebUserControlMenuUser.ascx" %>
<%@  Register TagPrefix="Me" TagName="UserInfoBoxFooter" Src="~/Zwebcontrols/footer.ascx"%>
<%@  Register TagPrefix="Mr" TagName="UserInfoBoxMenuRapido" Src="~/Zwebcontrols/menurapido.ascx"%>
<html lang="es">
<head runat="server">
    <title>GRN | Mi Perfil</title>
    <script src="../Scripts/jquery-1.3.2.min.js" type="text/javascript"></script>
    <link href="//netdna.bootstrapcdn.com/font-awesome/4.0.3/css/font-awesome.css" rel="stylesheet">
    <link href="../Styles/grn-styles.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server" autocomplete="off">
        <My:UserInfoBoxControl ID="UserInfoBoxControl1" runat="server" />
        <div class="colleft">
            <h1 id="tituloPagina" runat="server"><i class="fa fa-user"></i> Perfil</h1>
            <div id="InfoUsuario" class="infousuario">
                <fieldset>
                    <legend>
                        <asp:Label ID="inforcli" runat="server" Text="Información Básica" />
                    </legend>
                    <div>
                        <asp:Label ID="lbNombreUsuario" AssociatedControlId="txtNombre" runat="server" Text="Nombre:" />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtNombre" ErrorMessage="*" ToolTip="El campo Nombre es un campo necesario" CssClass="txterror"></asp:RequiredFieldValidator>
                        <asp:TextBox ID="txtNombre" runat="server" />

                    </div>
                    <div>
                        <asp:Label ID="lbtelefono" AssociatedControlId="txtTelefono" runat="server" Text="Teléfono:" />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtTelefono" ErrorMessage="*" ToolTip="El campo Telefono es requerido" CssClass="txterror"></asp:RequiredFieldValidator>
                        <asp:TextBox ID="txtTelefono" runat="server" />
                    </div>
                    <div>
                        <asp:Label ID="lbEmail" AssociatedControlId="txtEmail" runat="server" Text="Correo:" />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txtEmail" ErrorMessage="*" ToolTip="El campo correo electrónico es requerido" CssClass="txterror"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtEmail" ErrorMessage="*" ToolTip="El campo Correo no tiene el formato correcto" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" CssClass="txterror"></asp:RegularExpressionValidator>
                        <asp:TextBox ID="txtEmail" runat="server" AutoCompleteType="Disabled" />
                    </div>
                    <div class="check-pass">
                        <asp:CheckBox ID="cbpass" runat="server" Text="Cambiar contraseña:" CausesValidation="True" CssClass="labelTipoletra" ToolTip="Seleccionar si quiere cambiar contraseña" OnCheckedChanged="cbpass_CheckedChanged" AutoPostBack="True" />
                    </div>
                </fieldset>
            </div>
            <div id="esconder" runat="server" class="esconder">
                <fieldset>
                    <legend>
                        <asp:Label ID="Label1" runat="server" Text="Contraseña" />
                    </legend>
                    <div>
                        <asp:Label ID="lbcontrasenia" AssociatedControlId="txtActualpass" runat="server" Text="Contraseña Actual:" />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtActualpass" ErrorMessage="*" Enabled="False" ToolTip="Este campo es requerido" CssClass="txterror"></asp:RequiredFieldValidator>
                        <asp:TextBox ID="txtActualpass" runat="server" TextMode="Password" />
                    </div>
                    <div>
                        <asp:Label ID="Label2" AssociatedControlId="txtrepeatPass" runat="server" Text="Repita Contraseña:" />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtrepeatPass" Enabled="False" ErrorMessage="*" ToolTip="Este campo es requerido" CssClass="txterror">*</asp:RequiredFieldValidator>
                        <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txtActualpass" ControlToValidate="txtrepeatPass" ErrorMessage="*" ToolTip="Debes de ser la misma contraseña que la actual" CssClass="txterror"></asp:CompareValidator>
                        <asp:TextBox ID="txtrepeatPass" runat="server" TextMode="Password" />
                    </div>
                    <div>
                        <asp:Label ID="Label3" AssociatedControlId="txtnewpass" runat="server" Text="Nueva Contraseña:" />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtnewpass" Enabled="False" ErrorMessage="*" ToolTip="EL campo de nueva contraseña es requerido" CssClass="txterror"></asp:RequiredFieldValidator>
                        <asp:TextBox ID="txtnewpass" runat="server" TextMode="Password" />
                    </div>
                </fieldset>
            </div>
            <div class="erroresdiv">
                <asp:Label ID="LbMensaje" runat="server" CssClass="errores"  />
            </div>
            <div class="botonera">
                <div class="cancelar">
                    <asp:LinkButton ID="Button1" runat="server" UseSubmitBehavior="False" CausesValidation="False" OnClick="Button1_Click">Cancelar</asp:LinkButton>
                </div>
                <div class="guardar">
                    <asp:LinkButton ID="Button2" runat="server" UseSubmitBehavior="False" CausesValidation="False" OnClick="Button2_Click">Guardar</asp:LinkButton>
                </div>
            </div>
        </div>
        <div class="colright">
            <Mr:UserInfoBoxMenuRapido ID="UserInfoBoxMenuRapido" runat="server" />
        </div>
    </form>
    <Me:UserInfoBoxFooter ID="UserInfoBoxFooter" runat="server" />
</body>
</html>