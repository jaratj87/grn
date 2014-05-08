<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ModEmp.aspx.cs" Inherits="ModEmp" %>
<!DOCTYPE html>
<%@ Register TagPrefix="My" TagName="UserInfoBoxControl" Src="~/Zwebcontrols/WebUserControlMenuUser.ascx" %>
<%@  Register TagPrefix="Me" TagName="UserInfoBoxFooter" Src="~/Zwebcontrols/footer.ascx"%>
<%@  Register TagPrefix="Mr" TagName="UserInfoBoxMenuRapido" Src="~/Zwebcontrols/menurapido.ascx"%>
<html lang="es">
<head>
    <title>GRN | Registrar Empresa</title> 
    <script src="../Scripts/jquery.min.js" type="text/javascript"></script>
    <script src="../Scripts/jquery.numeric.js" type="text/javascript"></script>
    <link href="//netdna.bootstrapcdn.com/font-awesome/4.0.3/css/font-awesome.css" rel="stylesheet">
    <link href="../Styles/grn-styles.css" rel="stylesheet" type="text/css" />
    <script type="text/javascript">
    $(document).ready(function () {
        var valorSpan = $("#LbIndice").text();
        switch (valorSpan) {
            case "1":
                $("#Wizard1_sideBarList_sideBarButton_0").addClass("activo");
                $("#Wizard1_sideBarList_sideBarButton_1").addClass("");
                $("#Wizard1_sideBarList_SideBarButton_2").addClass("");
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
    <form id="form1" runat="server"> 
        <My:UserInfoBoxControl runat="server" />
        <div class="colleft">
            <h1 id="tituloPagina" runat="server"><i class="fa fa-building-o"></i> Modificar Empresa</h1>
            <div id="DivmensajeError">
                <asp:Label ID="Lberror" runat="server" CssClass="errores" />
                <asp:Label id="LbIndice" runat="server" class="oculto">0</asp:Label>
            </div>
            <asp:Wizard ID="Wizard1" runat="server" CssClass="wizardContainer" 
                OnFinishButtonClick="Wizard1_FinishButtonClick" 
                OnNextButtonClick="Wizard1_NextButtonClick"   SkipLinkText="" 
                onpreviousbuttonclick="Wizard1_PreviousButtonClick">
                <LayoutTemplate>
                    <div class="titulos">
                        <asp:PlaceHolder id="headerPlaceHolder" runat="server" />
                    </div>
                    <div id="DIVpasos" class="pasos">
                        <asp:PlaceHolder id="sideBarPlaceHolder" runat="server" />
                    </div>
                    <div class="wiz">
                        <asp:PlaceHolder id="WizardStepPlaceHolder" runat="server" />
                    </div>
                    <div id="DIVnavegacion" class="navegacion">
                        <asp:PlaceHolder id="navigationPlaceHolder" runat="server" />
                    </div>
                </LayoutTemplate>
                <SideBarTemplate>
                    <asp:ListView ID="sideBarList" runat="server">
                        <LayoutTemplate>
                            <div id="ItemPlaceHolder" runat="server" />
                        </LayoutTemplate>
                        <ItemTemplate>
                            <asp:LinkButton ID="sideBarButton" runat="server" Text="Button" OnClientClick="return false;" />
                        </ItemTemplate>
                        <SelectedItemTemplate>
                            <asp:LinkButton ID="SideBarButton" runat="server" CssClass="activo" OnClientClick="return false;" />
                        </SelectedItemTemplate>
                    </asp:ListView>
                </SideBarTemplate>
                <NavigationButtonStyle />
                <WizardSteps>
                    <asp:WizardStep ID="HPaso1" runat="server" Title="La empresa">
                        <fieldset>
                            <legend>
                                <asp:Label ID="inforcli" runat="server" Text="Información de la Empresa"></asp:Label>
                            </legend>
                            <div>
                                <asp:Label ID="lbRfc" AssociatedControlID="txtRfc" runat="server" Text="RFC:" />
                                <asp:RequiredFieldValidator ID="RFVRFC" runat="server" ControlToValidate="txtRfc" ErrorMessage="Debes de capturar el RFC" CssClass="txterror">Debes de Capturar el RFC</asp:RequiredFieldValidator>
                                <asp:TextBox ID="txtRfc" runat="server" ToolTip="RFC de la empresa" />
                            </div>
                            <div>
                                <asp:Label ID="Label1" runat="server" Text="Régimen Fiscal:" AssociatedControlID="DLRegimenFiscal"></asp:Label>
                                <asp:DropDownList ID="DLRegimenFiscal" class="regimen" runat="server"  OnPreRender="DLRegimenFiscal_PreRender" >
                                </asp:DropDownList>
                            </div>
                            <div>
                                <asp:Label ID="lbEmpresa" AssociatedControlID="txtEmpresa" runat="server" Text="Razón Social:" />
                                <asp:RequiredFieldValidator ID="RFVRFC0" runat="server" ControlToValidate="txtEmpresa" ErrorMessage="*" CssClass="txterror">Captura el nombre de la Empresa</asp:RequiredFieldValidator>
                                <asp:TextBox runat="server" ToolTip="Nombre de la empresa" ID="txtEmpresa" />
                            </div>
                            <div>
                                <asp:Label ID="lbDomicilio" AssociatedControlID="txtDomicilio" runat="server" Text="Domicilio:" />
                                <asp:RequiredFieldValidator ID="RFVDomicilio" runat="server" ControlToValidate="txtDomicilio" ErrorMessage="*" CssClass="txterror">Debes capturar el Domicilio</asp:RequiredFieldValidator>
                                <asp:TextBox ID="txtDomicilio" runat="server" ToolTip="Domicilio de la empresa" />
                            </div>
                            <div class="trescol">
                                <div>
                                    <asp:Label ID="lbNumExt" AssociatedControlID="txtNumExt" runat="server" Text="Número exterior:" ToolTip="Número Exterior del domicilio" />
                                    <asp:TextBox ID="txtNumExt" runat="server" ToolTip="Número Exterior del domicilio" /><%--CssClass="positive-integer"--%>
                                    <asp:RequiredFieldValidator ID="RFVNoExt" runat="server" ControlToValidate="txtNumExt" ErrorMessage="*" ForeColor="Red" ToolTip="Debes capturar el No.Ext" Font-Bold="True" Font-Size="X-Large">*</asp:RequiredFieldValidator>
                                </div>
                                <div>
                                    <asp:Label ID="lbNumInte" AssociatedControlID="txtNumInt" runat="server" Text="Número interior:" ToolTip="Número Interior del domicilio" />
                                    <asp:TextBox ID="txtNumInt" runat="server" ToolTip="Número Interior del domicilio" />
                                </div>
                                <div>
                                    <asp:Label ID="lbCp" AssociatedControlID="TxtCP" runat="server" Text="Código Postal:" ToolTip="Codigopostal" />
                                    <asp:TextBox ID="TxtCp" runat="server" class="integer" ToolTip="Código Postal" />
                                </div>
                            </div>
                            <div>
                                <asp:Label ID="lbClienteColonia" AssociatedControlID="txtColonia" runat="server" Text="Colonia:" />
                                <asp:RequiredFieldValidator ID="RFVColonia" runat="server" ControlToValidate="txtDomicilio" ErrorMessage="*" CssClass="txterror">Debes capturar la colonia</asp:RequiredFieldValidator>
                                <asp:TextBox ID="txtColonia" runat="server" ToolTip="Colonia" />
                            </div>
                            <div class="trescol">
                                <div>
                                    <asp:Label ID="lbClienteMunicipio" AssociatedControlID="txtClienteMunicipio" runat="server" Text="Municipio o Delegación:" />
                                    <asp:TextBox ID="txtClienteMunicipio" runat="server" ToolTip="Municipio donde se encuentr ala empresa" />
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtClienteMunicipio" ErrorMessage="*" ForeColor="Red" ToolTip="El municipio es requerido" Font-Bold="True" Font-Size="X-Large">*</asp:RequiredFieldValidator>
                                </div>
                                <div>
                                    <asp:Label ID="lbCiudad" AssociatedControlID="txtCiudad" runat="server" Text="Ciudad:" />
                                    <asp:TextBox ID="txtCiudad" runat="server" ToolTip="Ciudad donde se encuentra la empresa" />
                                </div>
                                <div>
                                    <asp:Label ID="lbClienteEstado" AssociatedControlID="DDEstado" runat="server" Text="Estado:" />
                                    <asp:DropDownList ID="DDEstado" runat="server" CssClass="estado"  OnPreRender="DDEstado_PreRender">
                                    </asp:DropDownList>
                                </div>
                            </div>
                            <div class="doscol">
                                <div>
                                    <asp:Label ID="lbPais" AssociatedControlID="DDPais" runat="server" Text="País:" />
                                    <asp:DropDownList ID="DDPais"  runat="server" OnPreRender="DDPais_PreRender">
                                        <asp:ListItem Value="0">Selecciona...</asp:ListItem>
                                    </asp:DropDownList>
                                </div>
                                <div class="wizmoneda">
                                    <asp:Label ID="LbMoneda" AssociatedControlID="DDmoneda" runat="server" Text="Moneda:" />
                                    <asp:Label ID="lbClienteEstado0" runat="server" Text="(Moneda prederterminada para facturar)" CssClass="leyenda" />
                                    <asp:DropDownList ID="DDmoneda" runat="server" OnPreRender="DDmoneda_PreRender" ToolTip="Moneda predeterminada para Facturar">
                                        <asp:ListItem Value="P">Pesos</asp:ListItem>
                                        <asp:ListItem Value="D">Dólares</asp:ListItem>
                                    </asp:DropDownList>
                                </div>
                            </div>
                        </fieldset>
                    </asp:WizardStep>
                    <asp:WizardStep ID="HPaso2" runat="server" Title="Otros datos">
                        <fieldset>
                            <legend>
                                <asp:Label ID="LbClienteInfo" runat="server" Text="Otros datos" />
                            </legend>
                            <div>
                                <asp:Label ID="lbNombreEmpresa" AssociatedControlID="txtNombreComercialEmpresa" runat="server" Text="Nombre Comercial :" />
                                <asp:TextBox runat="server" ID="txtNombreComercialEmpresa" />
                            </div>
                            <div>
                                <asp:Label ID="lbEmpresaTelefono" AssociatedControlID="txtTelefono" runat="server" Text="Telefono:" />
                                <br />
                                <asp:TextBox ID="txtTelefono" runat="server" class="integer" />
                            </div>
                            <div>
                                <asp:Label ID="LbCorreoElectronico" AssociatedControlID="txtCorreoElectronico" runat="server" Text="Correo electronico de la empresa:" />
                                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtCorreoELectronico"
                                    ErrorMessage="Debe de ser un correo válido" ForeColor="Red" ToolTip="Debe de ser un correo válido" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" CssClass="txterror"></asp:RegularExpressionValidator>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtCorreoELectronico" ErrorMessage="*" CssClass="txterror">Debes de capturar el correo</asp:RequiredFieldValidator>
                                <asp:TextBox ID="txtCorreoELectronico" runat="server" />
                            </div>
                            <div class="txglobal">
                                <asp:Label ID="lbEmpresaidGlobal" AssociatedControlID="txIdGlobal" runat="server" Text="Empresa id global:" />
                                <asp:Label ID="Label7" runat="server" Text="(No requerido)" CssClass="leyenda" />
                                <asp:TextBox ID="txIdGlobal" runat="server" />
                            </div>
                            <div class="doscol">
                                <div>
                                    <asp:Label ID="LbTipodecambio" AssociatedControlID="txtTipoCambio" runat="server" Text="Tipo de Cambio:" />
                                    <asp:RequiredFieldValidator ID="RFVNoExt0" runat="server" ControlToValidate="txtTipoCambio" ErrorMessage="*" CssClass="txterror">Captura el tipo de cambio</asp:RequiredFieldValidator>
                                    <asp:TextBox ID="txtTipoCambio" runat="server" onkeypress="return validar_monto(event)" />
                                </div>
                                <div>
                                    <asp:Label ID="lbInteresMonetario" AssociatedControlID="txtInteresMonetario" runat="server" Text="Interes Monetario(%):" />
                                    <asp:TextBox ID="txtInteresMonetario" runat="server" class="positive" />
                                </div>
                            </div>
                            <div>
                                <asp:Label ID="LbIva" runat="server" AssociatedControlID="DdlIva" Text="Iva:" Visible="False" />
                                <asp:DropDownList runat="server" ID="DdlIva" Visible="False">
                                </asp:DropDownList><%--OnPreRender="DdlIva_PreRender"--%>
                                <asp:Label ID="lbClienteEstado1" runat="server" Text="(Iva prederterminada para facturar)" Visible="False" />
                            </div>
                        </fieldset>
                    </asp:WizardStep>
                    <asp:WizardStep runat="server" Title="impuestos y pagos" ID="HPaso3">
                        <div id="InformacionImpuestosPagos">
                            <fieldset>
                                <legend>
                                    <asp:Label ID="Label6" runat="server" Text="Informacion de impuestos y pagos" />
                                </legend>
                                <div class="trescol">
                                    <div>
                                        <asp:Label ID="Label8" AssociatedControlID="txtRetencionIsr" runat="server" Text="Retencion Isr:" />
                                        <asp:TextBox ID="txtRetencionIsr" runat="server" class="positive">0</asp:TextBox>
                                        <asp:Label ID="Label11" runat="server" Text="%" />
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtRetencionIsr" ErrorMessage="*" ToolTip="El campo Retencion Isr Es necesario capturar"></asp:RequiredFieldValidator>
                                    </div>
                                    <div>
                                        <asp:Label ID="Label10" AssociatedControlID="txtRetencionVenta" runat="server" Text="Retencion Venta:" />
                                        <asp:TextBox ID="txtRetencionVenta" runat="server" class="positive">0</asp:TextBox>
                                        <asp:Label ID="Label12" runat="server" Text="%" />
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtRetencionVenta" ErrorMessage="*" ToolTip="El campo Retencion Venta es necesario capturar"></asp:RequiredFieldValidator>
                                    </div>
                                    <div>
                                        <asp:Label ID="Label9" AssociatedControlID="CbRetencionIva" runat="server" Text="Retencion iva:" />
                                        <asp:CheckBox ID="CbRetencionIva" runat="server" />
                                    </div>
                                </div>
                            </fieldset>
                        </div>
                    </asp:WizardStep>
                    <asp:WizardStep ID="HPaso4" runat="server" Title="Logo Empresa">
                        <div id="LogoEmpresa" align="center">
                            <fieldset>
                                <legend>
                                    <asp:Label ID="Label2" runat="server" Text="Logo Empresa" />
                                </legend>
                                <div class="imagen">
                                    <asp:Image ID="Image1" runat="server" Height="125px" Width="275px" />
                                </div>
                                <div class="subirarchivo boton btn-primario">
                                    <span>Subir Logo</span>
                                    <asp:FileUpload ID="FileUpload1" runat="server" CssClass="subir" />
                                </div>
                            </fieldset>
                        </div>
                    </asp:WizardStep>
                </WizardSteps>
            </asp:Wizard>
            <div class="guardar">
                <div class="botoneraActualiza">
                    <asp:LinkButton ID="BtnActulizaEmpresa" runat="server" Font-Size="Medium" 
                        onclick="BtnActulizaEmpresa_Click">Finalizar</asp:LinkButton>
                </div>
            </div>
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
    <script type="text/javascript">
        $(document).keypress(function (e) {
            if (e.keyCode === 13) {
                e.preventDefault();
                return false;
            }
        });
    </script>
</body>
</html>