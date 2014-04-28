<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AltaConfigFolio.aspx.cs"
    Inherits="zConfigFolio_AltaConfigFolio" %>
<!DOCTYPE html>
<%@ Register TagPrefix="My" TagName="UserInfoBoxControl" Src="~/Zwebcontrols/WebUserControlMenuUser.ascx" %>
<%@  Register TagPrefix="Me" TagName="UserInfoBoxFooter" Src="~/Zwebcontrols/footer.ascx"%>
<%@  Register TagPrefix="Mr" TagName="UserInfoBoxMenuRapido" Src="~/Zwebcontrols/menurapido.ascx"%>
<html lang="es">
<head runat="server">
    <title>GRN | Configuración de Folios Electrónicos</title>
    <link href="//netdna.bootstrapcdn.com/font-awesome/4.0.3/css/font-awesome.css" rel="stylesheet">
    <link href="../Styles/grn-styles.css" rel="stylesheet" type="text/css" />
    <script type="text/javascript">
        $(document).keypress(function (e) {
            if (e.keyCode === 13) {
                e.preventDefault();
                return false;
            }
        });
    </script>
    <script type="text/javascript">
    $(document).ready(function () {
        var valorSpan = $("#LbIndice").text();
        switch (valorSpan) {
            case "1":
                $("#Wizard1_sideBarList_sideBarButton_0").addClass("activo");
                $("#Wizard1_sideBarList_sideBarButton_1").addClass("");
                $("#Wizard1_sideBarList_sideBarButton_2").addClass("");
                $("#Wizard1_sideBarList_sideBarButton_3").addClass("");
                $("#Wizard1_sideBarList_sideBarButton_4").addClass("");
                break;
            case "2":
                $("#Wizard1_sideBarList_sideBarButton_0").addClass("activo");
                $("#Wizard1_sideBarList_sideBarButton_1").addClass("activo");
                $("#Wizard1_sideBarList_sideBarButton_2").addClass("");
                $("#Wizard1_sideBarList_sideBarButton_3").addClass("");
                $("#Wizard1_sideBarList_sideBarButton_4").addClass("");
                break;
            case "3":
                $("#Wizard1_sideBarList_sideBarButton_0").addClass("activo");
                $("#Wizard1_sideBarList_sideBarButton_1").addClass("activo");
                $("#Wizard1_sideBarList_sideBarButton_2").addClass("activo");
                $("#Wizard1_sideBarList_sideBarButton_3").addClass("");
                $("#Wizard1_sideBarList_sideBarButton_4").addClass("");
                break;
            case "4":
                $("#Wizard1_sideBarList_sideBarButton_0").addClass("activo");
                $("#Wizard1_sideBarList_sideBarButton_1").addClass("activo");
                $("#Wizard1_sideBarList_sideBarButton_2").addClass("activo");
                $("#Wizard1_sideBarList_sideBarButton_3").addClass("activo");
                $("#Wizard1_sideBarList_sideBarButton_4").addClass("");
                break;
            case "5":
                $("#Wizard1_sideBarList_sideBarButton_0").addClass("activo");
                $("#Wizard1_sideBarList_sideBarButton_1").addClass("activo");
                $("#Wizard1_sideBarList_sideBarButton_2").addClass("activo");
                $("#Wizard1_sideBarList_sideBarButton_3").addClass("activo");
                $("#Wizard1_sideBarList_sideBarButton_4").addClass("activo");
                break;
        }
    });
    </script>
</head>
<body>
    <form id="fcontacto" runat="server" enctype="multipart/form-data">
        <My:UserInfoBoxControl ID="UserInfoBoxControl1" runat="server" />
        <div class="colleft">
            <h1 id="tituloPagina" runat="server"><i class="fa fa-barcode"></i> Configuración de Folios Electrónicos</h1>
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
                    <asp:WizardStep ID="HPaso1" runat="server" Title="Almacenar Su sello" StepType="Start">
                        <fieldset>
                            <legend>
                                <asp:Label ID="inforcli0" runat="server" Text="Datos Sello" />
                            </legend>
                            <div>
                                <asp:Label ID="Label1" AssociatedControlId="FileUpload1" runat="server" Text="Sello csd (.Cer):" />
                                <asp:RequiredFieldValidator ID="RfvCer" runat="server" ControlToValidate="FileUpload1" ErrorMessage="*" ToolTip="No seleccionaste el certificado .Cer" CssClass="txterror"></asp:RequiredFieldValidator>
                                <asp:FileUpload ID="FileUpload1" runat="server" />
                            </div>
                            <div>
                                <asp:Label ID="Label31" AssociatedControlId="FileUpload2" runat="server" Text="Key (.Key):" />
                                <asp:RequiredFieldValidator ID="RfvKey" runat="server" ControlToValidate="FileUpload2" ErrorMessage="*" ToolTip="No seleccionastearchivo .Key" CssClass="txterror"></asp:RequiredFieldValidator>
                                <asp:FileUpload ID="FileUpload2" runat="server" />
                            </div>
                            <div>
                                <asp:Label ID="Label32" runat="server" Text="Numero de Versión:" CssClass="bold" Visible="false" />
                                <asp:DropDownList ID="DDVersion" runat="server" Visible="False">
                                    <asp:ListItem>3.2</asp:ListItem>
                                </asp:DropDownList>
                            </div>
                            <div>
                                <asp:Label ID="Label33" AssociatedControlId="txtPassCertificado" runat="server" Text="Contraseña del csd:" />
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator15" runat="server" ControlToValidate="txtPassCertificado" ErrorMessage="*" ToolTip="Debes de propociar la contraseña del .key" CssClass="txterror"></asp:RequiredFieldValidator>
                                <asp:TextBox ID="txtPassCertificado" runat="server" />
                            </div>
                            <div>
                                <asp:Button ID="BtnValida" runat="server" Text="Valida Sello" OnClick="BtnValida_Click" />
                            </div>
                            <div>
                                <asp:Label ID="LbMensajeValidacion" runat="server" />
                            </div>
                            <div>
                                <asp:Label ID="LbmensajeRFC" runat="server" />
                                <asp:Label ID="LbmensajeRFCORI" runat="server" Text="" />
                                <asp:RadioButton ID="RBrfcCer" runat="server" GroupName="RFC" Text="" Visible="True" Checked="True" />
                                <asp:RadioButton ID="RBrfcOri" runat="server" GroupName="RFC" Text="" Visible="True" />
                            </div>
                            <div>
                                <asp:Label ID="LbMensajeNombreEmp" runat="server" Text="" />
                                <asp:Label ID="LbMensajeNombreEmpORI" runat="server" Text="" />
                                <asp:RadioButton ID="RbNombreCer" runat="server" GroupName="NOMBRE" Text="" Visible="True" Checked="True" />
                                <asp:RadioButton ID="RbNombreOri" runat="server" GroupName="NOMBRE" Text="" Visible="True" />
                            </div>
                            <div id="DivBotonValida" align="center">
                                <div id="DivcbAceptar" runat="server" align="left">
                                    <asp:CheckBox ID="CBacepto" runat="server" Text="Acepto que GRN haga uso  de mis datos en la creacion de  CFDI´S." AutoPostBack="True" OnCheckedChanged="CBacepto_CheckedChanged" />
                                </div>
                            </div>
                        </fieldset>
                    </asp:WizardStep>
                    <asp:WizardStep ID="HPaso2" runat="server" Title="Folios en Pesos">
                        <fieldset>
                            <legend>
                                <asp:Label ID="Label8" runat="server" Text="Documentos en Pesos" />
                            </legend>
                            <div>
                                <asp:Label ID="Lbfact" AssociatedControlId="cbfacturas" runat="server" Text="Facturas:" ToolTip="Facturas" />
                                <asp:CheckBox ID="cbfacturas" runat="server" ToolTip="Elegir facturas para agregar folios" OnCheckedChanged="cbfacturas_CheckedChanged" AutoPostBack="True" Checked="True" />
                            </div>
                            <div id="DivFacturasInfo" class="trescol" runat="server">
                                <div>
                                    <asp:Label ID="Label13" AssociatedControlId="txtfacserie" runat="server" Text="Serie" />
                                    <asp:RequiredFieldValidator ID="RFtxtseriefac" runat="server" ControlToValidate="txtfacserie" ErrorMessage="*" ToolTip="Este campo Serie es necesario" CssClass="txterror"></asp:RequiredFieldValidator>
                                    <asp:TextBox ID="txtfacserie" runat="server">F</asp:TextBox>
                                </div>
                                <div>
                                    <asp:Label ID="Label12" AssociatedControlId="txtfactfolioini" runat="server" Text="Folio inicial" />
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtfactfolioini" ErrorMessage="*" ToolTip="El campo Folio inicial en factura es necesario" CssClass="txterror"></asp:RequiredFieldValidator>
                                    <asp:TextBox ID="txtfactfolioini" class="integer" runat="server" ToolTip="Folio en particular en el que quiere iniciar">1</asp:TextBox>
                                </div>
                                <div>
                                    <asp:Label ID="Label2" AssociatedControlId="txtxdescripcionfactura" runat="server" Text="Descripción" />
                                    <asp:RequiredFieldValidator ID="RFdescripcionFactura" runat="server" ControlToValidate="txtxdescripcionfactura" ErrorMessage="*" ToolTip="La descripcion del documento debe de registrarse." CssClass="txterror"></asp:RequiredFieldValidator>
                                    <asp:TextBox ID="txtxdescripcionfactura" runat="server" ToolTip="comentario por el tipo de documento">Comentario</asp:TextBox>
                                </div>
                            </div>
                            <div>
                                <asp:Label ID="LbNcredito" AssociatedControlId="cbNcredito" runat="server" Text="Notas de credito:" ToolTip="Notas de credito" />
                                <asp:CheckBox ID="cbNcredito" runat="server" ToolTip="Elegir Notas de credito  para agregar folios" OnCheckedChanged="cbNcredito_CheckedChanged" AutoPostBack="True" />
                            </div>
                            <div id="DivNotasCredPesos" class="trescol" runat="server">
                                <div>
                                    <asp:Label ID="Label4" AssociatedControlId="txtncreditoserie" runat="server" Text="Serie" />
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtncreditoserie" ErrorMessage="*" ToolTip="El campo serie de las Notas de credito es necesario capturar" CssClass="txterror"></asp:RequiredFieldValidator>
                                    <asp:TextBox ID="txtncreditoserie" runat="server" Enabled="False">B</asp:TextBox>
                                </div>
                                <div>
                                    <asp:Label ID="Label5" AssociatedControlId="txtncreditofolioinicial" runat="server" Text="Folio inicial" />
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtncreditofolioinicial" ErrorMessage="*" ToolTip="El campo serie de las Notas de cargo es necesario capturar" CssClass="txterror"></asp:RequiredFieldValidator>
                                    <asp:TextBox ID="txtncreditofolioinicial" runat="server" class="integer" Enabled="False" ToolTip="Folio en particular en el que quiere iniciar la Nota de credito">1</asp:TextBox>
                                </div>
                                <div>
                                    <asp:Label ID="Label14" AssociatedControlId="txtDescripcionNotasCredito" runat="server" Text="Descripción" />
                                    <asp:RequiredFieldValidator ID="RFNotasCredito" runat="server" ControlToValidate="txtDescripcionNotasCredito" ErrorMessage="*" ToolTip="La descripción del documento debe de registrarse." CssClass="txterror"></asp:RequiredFieldValidator>
                                    <asp:TextBox ID="txtDescripcionNotasCredito" runat="server" Enabled="False" ToolTip="comentario por el tipo de documento">Comentario</asp:TextBox>
                                </div>
                            </div>
                            <div>
                                <asp:Label ID="LbNcargo" AssociatedControlId="cbNcargo" runat="server" Text="Notas de cargo:" ToolTip="Notas de cargo" />
                                <asp:CheckBox ID="cbNcargo" runat="server" ToolTip="Elegir Notas de cargo para agregar folios" OnCheckedChanged="cbNcargo_CheckedChanged" AutoPostBack="True" />
                            </div>
                            <div id="DivNcPesos" class="trescol" runat="server">
                                <div>
                                    <asp:Label ID="Label18" AssociatedControlId="txtncargoserie" runat="server" Text="Serie" />
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtncargoserie" ErrorMessage="*" ToolTip="El campo serie de las Notas de cargo es necesario capturar" CssClass="txterror"></asp:RequiredFieldValidator>
                                    <asp:TextBox ID="txtncargoserie" runat="server" Enabled="False">C</asp:TextBox>
                                </div>
                                <div>
                                    <asp:Label ID="Label20" AssociatedControlId="txtncargofolioinicial" runat="server" Text="Folio inicial" />
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txtncargofolioinicial" ErrorMessage="*" ToolTip="El campo serie de las Notas de cargo es necesario capturar" CssClass="txterror"></asp:RequiredFieldValidator>
                                    <asp:TextBox ID="txtncargofolioinicial" runat="server" class="integer" Enabled="False" ToolTip="Folio en particular en el que quiere iniciar la Nota de Cargo">1</asp:TextBox>
                                </div>
                                <div>
                                    <asp:Label ID="Label23" AssociatedControlId="TxtDescripcionNotascargo" runat="server" Text="Descripción" />
                                    <asp:RequiredFieldValidator ID="RFNotasCargo" runat="server" ControlToValidate="TxtDescripcionNotascargo" ErrorMessage="*" ToolTip="La descripcion del documento desbe de registrarse." CssClass="txterror"></asp:RequiredFieldValidator>
                                    <asp:TextBox ID="TxtDescripcionNotascargo" runat="server" Enabled="False" 
                                    ToolTip="comentario por el tipo de documento">Comentario</asp:TextBox>
                                </div>
                            </div>
                        </fieldset>
                    </asp:WizardStep>
                    <asp:WizardStep runat="server" Title="Folios en dolares" ID="HPaso3">
                        <fieldset>
                            <legend>
                                <asp:Label ID="Label25" runat="server" Text="Documentos Dolares" />
                            </legend>
                            <div>
                                <asp:Label ID="Label22" AssociatedControlId="cbdlls" runat="server" Text="Facturas:" ToolTip="Facturas en dolares" />
                                <asp:CheckBox ID="cbdlls" runat="server" ToolTip="Elegir facturas para agregar folios" OnCheckedChanged="cbdlls_CheckedChanged" AutoPostBack="True" />
                            </div>
                            <div id="DivFacturasDlls" class="trescol" runat="server">
                                <div>
                                    <asp:Label ID="Label9" AssociatedControlId="txtdllsfacturaserie" runat="server" Text="Serie" />
                                    <asp:RequiredFieldValidator ID="RFtxtfacturaserie" runat="server" ControlToValidate="txtdllsfacturaserie" ErrorMessage="*" ToolTip="El campo serie de las facturas es necesario capturar" CssClass="txterror"></asp:RequiredFieldValidator>
                                    <asp:TextBox ID="txtdllsfacturaserie" runat="server" Enabled="False">AA</asp:TextBox>
                                </div>
                                <div>
                                   <asp:Label ID="Label19" AssociatedControlId="txtdllFolioInicial" runat="server" Text="Folio inicial" />
                                   <asp:TextBox ID="txtdllFolioInicial" class="integer" runat="server" Enabled="False" ToolTip="Folio en particular en el que quiere iniciar">1</asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RFdllsFolioInicial" runat="server" ControlToValidate="txtdllFolioInicial" ErrorMessage="*" ToolTip="El campo serie de las Notas de cargo es necesario capturar" CssClass="txterror"></asp:RequiredFieldValidator>
                                </div>
                                <div>
                                    <asp:Label ID="Label27" AssociatedControlId="txtDllsDescripcionFacturas" runat="server" Text="Descripción" />
                                    <asp:TextBox ID="txtDllsDescripcionFacturas" runat="server" Enabled="False">Comentario</asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RF" runat="server" ErrorMessage="*"
                                    ControlToValidate="txtDllsDescripcionFacturas" ToolTip="Debes de añadir una descripcion a facturas en dolares" CssClass="txterror"></asp:RequiredFieldValidator>
                                </div>
                            </div>
                            <div>
                                <asp:Label ID="Label24" AssociatedControlId="cbDllsNcredito" runat="server" Text="Notas de credito:" ToolTip="Notas de credito" />
                                <asp:CheckBox ID="cbDllsNcredito" runat="server" ToolTip="Elegir Notas de credito  para agregar folios" OnCheckedChanged="cbDllsNcredito_CheckedChanged" AutoPostBack="True" />
                            </div>
                            <div id="DivNcredDlls" class="trescol" runat="server">
                                <div>
                                    <asp:Label ID="Label28" AssociatedControlId="txtdllncreditoserie" runat="server" Text="Serie" />
                                    <asp:RequiredFieldValidator ID="rfNcreditoserie" runat="server" ControlToValidate="txtdllncreditoserie" Enabled="False" ErrorMessage="*" ToolTip="El campo serie de las Notas de credito es necesario capturar" CssClass="txterror"></asp:RequiredFieldValidator>
                                    <asp:TextBox ID="txtdllncreditoserie" runat="server" Enabled="False">BB</asp:TextBox>
                                </div>
                                <div>
                                    <asp:Label ID="Label29" AssociatedControlId="TxtdllsNcreditoFoInicial" runat="server" Text="Folio inicial" />
                                    <asp:RequiredFieldValidator ID="RFdllsNcreditoFoInicial" runat="server" ControlToValidate="TxtdllsNcreditoFoInicial" Enabled="False" ErrorMessage="*" ToolTip="El campo serie de las Notas de cargo es necesario capturar"></asp:RequiredFieldValidator>
                                    <asp:TextBox ID="TxtdllsNcreditoFoInicial" runat="server" class="integer" Enabled="False" ToolTip="Folio en particular en el que quiere iniciar la Nota de credito">1</asp:TextBox>
                                </div>
                                <div>
                                    <asp:Label ID="Label30" AssociatedControlId="txtDllsNotasCreditoDescripcion" runat="server" Text="Descripción" />
                                    <asp:TextBox ID="txtDllsNotasCreditoDescripcion" runat="server" Width="179px" Enabled="False">Comentario</asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ControlToValidate="txtDllsNotasCreditoDescripcion" ErrorMessage="*" ToolTip="Debes de llenar las notas de credito en dolares"></asp:RequiredFieldValidator>
                                </div>
                            </div>
                            <div>
                                <asp:Label ID="Label26" AssociatedControlId="cbDllsNcargo" runat="server" Text="Notas de cargo:" ToolTip="Notas de cargo" />
                                <asp:CheckBox ID="cbDllsNcargo" runat="server" ToolTip="Elegir Notas de cargo para agregar folios" OnCheckedChanged="cbDllsNcargo_CheckedChanged" AutoPostBack="True" />
                            </div>
                            <div id="DivNcargoDll" class="trescol" runat="server">
                                <div>
                                   <asp:Label ID="Label34" AssociatedControlId="txtdllncargoserie" runat="server" Text="Serie" />
                                    <asp:RequiredFieldValidator ID="RFnCargoSerie" runat="server" ControlToValidate="txtdllncargoserie" Enabled="False" ErrorMessage="*" ToolTip="El campo serie de las Notas de cargo es necesario capturar"></asp:RequiredFieldValidator>
                                    <asp:TextBox ID="txtdllncargoserie" runat="server" Enabled="False">CC</asp:TextBox>
                                </div>
                                <div>
                                    <asp:Label ID="Label35" AssociatedControlId="txtdllsNcargoFoInicial" runat="server" Text="Folio inicial" />
                                    <asp:RequiredFieldValidator ID="RFddlsNcargo" runat="server" ControlToValidate="txtdllsNcargoFoInicial" Enabled="False" ErrorMessage="*" ToolTip="El campo serie de las Notas de cargo es necesario capturar"></asp:RequiredFieldValidator>
                                    <asp:TextBox ID="txtdllsNcargoFoInicial" runat="server" class="integer"
                                    Enabled="False" ToolTip="Folio en particular en el que quiere iniciar la Nota de Cargo">1</asp:TextBox>
                                </div>
                                <div>
                                    <asp:Label ID="Label36" AssociatedControlId="txtDllaNotasCargoDescripcion" runat="server" Text="Descripción" />
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" ControlToValidate="txtDllaNotasCargoDescripcion" ErrorMessage="*" ToolTip="Debes de llenar la descripcion de notas cargo en dolares"></asp:RequiredFieldValidator>
                                    <asp:TextBox ID="txtDllaNotasCargoDescripcion" runat="server" Enabled="False">Comentario</asp:TextBox>
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
    <script src="../Scripts/jquery.numeric.js" type="text/javascript"></script>
    <script type="text/javascript">
        $(".numeric").numeric();
        $(".integer").numeric(false, function () { alert("Integers only"); this.value = ""; this.focus(); });
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
