<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ModificaSello.aspx.cs" Inherits="zConfigFolio_ModificaSello" %>
<!DOCTYPE html>
<%@ Register TagPrefix="My" TagName="UserInfoBoxControl" Src="~/Zwebcontrols/WebUserControlMenuUser.ascx" %>
<%@  Register TagPrefix="Me" TagName="UserInfoBoxFooter" Src="~/Zwebcontrols/footer.ascx"%>
<%@  Register TagPrefix="Mr" TagName="UserInfoBoxMenuRapido" Src="~/Zwebcontrols/menurapido.ascx"%>
<html lang="es">
<head runat="server">
    <title>GRN | Modificar Sello Digital</title>
    <link href="../Scripts/jquery-filestyle/css/jquery-filestyle.css">
    <link href="//netdna.bootstrapcdn.com/font-awesome/4.0.3/css/font-awesome.css" rel="stylesheet">
    <link href="../Styles/grn-styles.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
        <My:UserInfoBoxControl runat="server" />
        <div class="colleft">
            <h1 id="tituloPagina" runat="server"><i class="fa fa-barcode"></i> Modificar Sello Digital</h1>
            <div id="DivmensajeError">
                <asp:Label ID="Lberror" runat="server" CssClass="errores" />
                <asp:Label id="LbIndice" runat="server" class="oculto">0</asp:Label>
            </div>
            <asp:Wizard ID="Wizard1" runat="server" CssClass="wizardContainer" OnFinishButtonClick="Wizard1_FinishButtonClick" OnNextButtonClick="Wizard1_NextButtonClick" OnPreviousButtonClick="Wizard1_PreviousButtonClick" onsidebarbuttonclick="Wizard1_SideBarButtonClick" SkipLinkText="">
                <LayoutTemplate>
                    <div class="titulos">
                        <asp:PlaceHolder id="headerPlaceHolder" runat="server" />
                    </div>
                    <div id="DIVpasos" class="pasos">
                        <asp:PlaceHolder id="sideBarPlaceHolder" runat="server" />
                    </div>
                    <div class="wiz sellos">
                        <asp:PlaceHolder id="WizardStepPlaceHolder" runat="server" />
                    </div>
                    <div id="DIVnavegacion" class="navegacion">
                        <asp:PlaceHolder id="navigationPlaceHolder" runat="server" />
                    </div>
                </LayoutTemplate>
                <SideBarTemplate>
                    <asp:ListView id="sideBarList" runat="server">
                        <LayoutTemplate>
                            <div id="ItemPlaceHolder" runat="server" />
                        </LayoutTemplate>
                        <ItemTemplate>
                            <asp:LinkButton ID="sideBarButton" runat="server" Text="Button" OnClientClick="return false;" /><%--Visible="false" --%>
                        </ItemTemplate>
                        <SelectedItemTemplate>
                            <asp:LinkButton id="SideBarButton" runat="server" CssClass="activo" OnClientClick="return false;" />
                        </SelectedItemTemplate>
                    </asp:ListView>
                </SideBarTemplate>
                <NavigationButtonStyle />
                <WizardSteps>
                    <asp:WizardStep ID="HPaso1" runat="server" Title="Almacenar Su sello">
                        <fieldset>
                            <legend>
                                <asp:Label ID="inforcli0" runat="server" CssClass="labelTipoletra" Text="Datos Sello" />
                            </legend>
                            <div>
                                <asp:Label ID="Label1" AssociatedControlId="FileUpload1" runat="server" Text="Sello csd (.Cer):" />
                                <asp:RequiredFieldValidator ID="RfvCer" runat="server" ControlToValidate="FileUpload1" ErrorMessage="*" ToolTip="No seleccionaste el certificado .Cer" CssClass="txterror"></asp:RequiredFieldValidator>
                                <div class="subirarchivo boton btn-primario">
                                    <span>Subir Archivo</span>
                                    <asp:FileUpload ID="FileUpload1" runat="server" CssClass="subir" />
                                </div>
                            </div>
                            <div>
                                <asp:Label ID="Label31" AssociatedControlId="FileUpload2" runat="server" Text="Key (.Key):" />
                                <asp:RequiredFieldValidator ID="RfvKey" runat="server" ControlToValidate="FileUpload2" ErrorMessage="*" ToolTip="No seleccionastearchivo .Key" CssClass="txterror"></asp:RequiredFieldValidator>
                                <asp:FileUpload ID="FileUpload2" runat="server" CssClass="jfilestyle" data-buttonText="Find file"  />
                            </div>
                            <div>
                                <asp:Label ID="Label32" runat="server" Text="Numero de Versión:" CssClass="bold" />
                                <asp:Label ID="LbVersionCfdi" runat="server" Text="Falló" />
                            </div>
                            <div>
                                <asp:Label ID="Label33" AssociatedControlId="txtPassCertificado" runat="server" Text="Contraseña del csd:" />
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator15" runat="server" ControlToValidate="txtPassCertificado" ErrorMessage="*" ToolTip="Debes de propociar la contraseña del .key" CssClass="txterror"></asp:RequiredFieldValidator>
                                <asp:TextBox ID="txtPassCertificado" runat="server" />
                            </div>
                            <div>
                                <asp:Button ID="BtnValida" runat="server" Text="Valida Sello" OnClick="BtnValida_Click" />
                                <asp:Label ID="LbMensajeValidacion" runat="server" />
                            </div>
                            <div>
                                <asp:Label ID="LbmensajeRFC" runat="server" />
                                <asp:Label ID="LbmensajeRFCORI" runat="server" Text="" />
                                <asp:RadioButton ID="RBrfcCer" runat="server" GroupName="RFC" Text="" Visible="False" Checked="True" />
                                <asp:RadioButton ID="RBrfcOri" runat="server" GroupName="RFC" Text="" Visible="False" />
                            </div>
                            <div>
                                <asp:Label ID="LbMensajeNombreEmp" runat="server" Text="" />
                                <asp:Label ID="LbMensajeNombreEmpORI" runat="server" Text="" />
                                <asp:RadioButton ID="RbNombreCer" runat="server" GroupName="NOMBRE" Text="" Visible="False" Checked="True" />
                                <asp:RadioButton ID="RbNombreOri" runat="server" GroupName="NOMBRE" Text="" Visible="False" />
                            </div>
                            <div id="DivBotonValida" align="center">
                                <div id="DivcbAceptar" runat="server" align="left">
                                    <asp:CheckBox ID="CBacepto" runat="server" Text="Acepto que GRN haga uso  de mis datos en la creacion de  CFDI´S." AutoPostBack="True" OnCheckedChanged="CBacepto_CheckedChanged" />
                                </div>
                            </div>
                        </fieldset>
                    </asp:WizardStep>
                </WizardSteps>
            </asp:Wizard>
        </div>
        <div class="colright">
            <Mr:UserInfoBoxMenuRapido ID="UserInfoBoxMenuRapido" runat="server" />
        </div>
    </form>
    <Me:UserInfoBoxFooter ID="UserInfoBoxFooter" runat="server" />
    <script src="../Scripts/jquery.min.js"></script>
    <script src="../Scripts/jquery-filestyle/js/jquery-filestyle.min.js"></script>
</body>
</html>
