<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ModCli.aspx.cs" Inherits="ModCli" %>
<!DOCTYPE html>
<%@ Register TagPrefix="My" TagName="UserInfoBoxControl" Src="~/Zwebcontrols/WebUserControlMenuUser.ascx" %>
<%@  Register TagPrefix="Me" TagName="UserInfoBoxFooter" Src="~/Zwebcontrols/footer.ascx"%>
<%@  Register TagPrefix="Mr" TagName="UserInfoBoxMenuRapido" Src="~/Zwebcontrols/menurapido.ascx"%>
<html lang="es">
<head runat="server">
    <title>GRN | Editar Cliente</title>
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
                $("#Wizard1_sideBarList_sideBarButton_1").addClass("1");
                $("#Wizard1_sideBarList_sideBarButton_2").addClass("1");
                $("#Wizard1_sideBarList_sideBarButton_3").addClass("1");
                $("#Wizard1_sideBarList_sideBarButton_4").addClass("1");
                break;
            case "2":
                $("#Wizard1_sideBarList_sideBarButton_0").addClass("activo");
                $("#Wizard1_sideBarList_sideBarButton_1").addClass("activo");
                $("#Wizard1_sideBarList_sideBarButton_2").addClass("");
                $("#Wizard1_sideBarList_sideBarButton_3").addClass("");
                $("#Wizard1_sideBarList_sideBarButton_4").addClass("1");
                break;
            case "3":
                $("#Wizard1_sideBarList_sideBarButton_0").addClass("activo");
                $("#Wizard1_sideBarList_sideBarButton_1").addClass("activo");
                $("#Wizard1_sideBarList_sideBarButton_2").addClass("activo");
                $("#Wizard1_sideBarList_sideBarButton_3").addClass("");
                $("#Wizard1_sideBarList_sideBarButton_4").addClass("1");
                break;
            case "4":
                $("#Wizard1_sideBarList_sideBarButton_0").addClass("activo");
                $("#Wizard1_sideBarList_sideBarButton_1").addClass("activo");
                $("#Wizard1_sideBarList_sideBarButton_2").addClass("activo");
                $("#Wizard1_sideBarList_sideBarButton_3").addClass("activo");
                $("#Wizard1_sideBarList_sideBarButton_4").addClass("1");
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
<body style="height: 703px">
    <form id="form1" runat="server">
        <My:UserInfoBoxControl runat="server" />
        <div class="colleft">
            <h1 id="tituloPagina" runat="server"><i class="fa fa-users"></i> Registrar Cliente</h1>
            <div id="DivmensajeError">
                <asp:Label ID="Lberror" runat="server" CssClass="errores" />
                <asp:Label id="LbIndice" runat="server" class="oculto">0</asp:Label> 
            </div>
            <asp:Wizard ID="Wizard1" runat="server" CssClass="wizardContainer" 
                OnFinishButtonClick="Wizard1_FinishButtonClick"   SkipLinkText="" 
                onnextbuttonclick="Wizard1_NextButtonClick" 
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
                    <asp:WizardStep ID="HPaso1" runat="server" Title="El Cliente">
                        <fieldset>
                            <legend>
                                <asp:Label ID="inforcli" runat="server" Text="Información del cliente" />
                            </legend>
                            <div>
                                <asp:Label ID="lbClienteRfc" AssociatedControlId="txtClienteRfc" runat="server" Text="RFC:" />
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtClienteRfc" ErrorMessage="*" ToolTip="El RFC del cliente es necesario" CssClass="txterror"></asp:RequiredFieldValidator>
                                <asp:TextBox ID="txtClienteRfc" runat="server" />
                            </div>
                            <div>
                                <asp:Label ID="lbClienteCod" AssociatedControlId="txtClienteCod" runat="server" Text="Codigo:" />
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="*" ControlToValidate="txtClienteCod" ToolTip="Campo requerido" CssClass="txterror"></asp:RequiredFieldValidator>
                                <asp:TextBox ID="txtClienteCod" runat="server" ToolTip="Este campo permite Para hacer busquedas mas rapidas"  />
                            </div>
                            <div>
                                <asp:Label ID="lbClienteNombre" AssociatedControlId="txtClienteNombre" runat="server" Text="Razón Social:" />
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtClienteNombre" ErrorMessage="*" ToolTip="Campo requerido" CssClass="txterror"></asp:RequiredFieldValidator>
                                <asp:TextBox ID="txtClienteNombre" runat="server" />
                            </div>
                            <div>
                                <asp:Label ID="lbClienteContacto" AssociatedControlId="txtClienteContacto" runat="server" Text="Contacto:" />
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtClienteContacto" ErrorMessage="*" ToolTip="Este campo es requerido" CssClass="txterror"></asp:RequiredFieldValidator>
                                <asp:TextBox ID="txtClienteContacto" runat="server" />
                            </div>
                        </fieldset>
                    </asp:WizardStep>
                    <asp:WizardStep ID="HPaso3" runat="server" Title="Domicilio">
                        <fieldset>
                            <legend>
                                <asp:Label ID="Label1" runat="server" Text="Dirección del Cliente" />
                            </legend>
                            <div>
                                <asp:Label ID="lbClienteDomicilio" AssociatedControlId="txtClienteDomicilio" runat="server" Text="Domicilio:" />
                                <asp:TextBox ID="txtClienteDomicilio" runat="server" />
                            </div>
                            <div class="doscol">
                                <div>
                                    <asp:Label ID="lbClienteNumExt" AssociatedControlId="txtClienteNumExt" runat="server" Text="Numero Exterior:" ToolTip="Numero Exterior del domicilio" />
                                    <asp:TextBox ID="txtClienteNumExt" runat="server" class="integer" ToolTip="Numero Exterior del domicilio" />
                                </div>
                                <div>
                                    <asp:Label ID="lbClienteNumInte" AssociatedControlId="txtClienteNumInt" runat="server" Text="Numero Interior:" ToolTip="Numero Interior del domicilio" />
                                    <asp:TextBox ID="txtClienteNumInt" runat="server" ToolTip="Numero Interior del domicilio" />
                                </div>
                            </div>
                            <div>
                                <asp:Label ID="lbClienteColonia" AssociatedControlId="txtClienteColonia" runat="server" Text="Colonia:" />
                                <asp:TextBox ID="txtClienteColonia" runat="server" />
                            </div>
                            <div class="doscol">
                                <div>
                                    <asp:Label ID="lbClienteCiudad" AssociatedControlId="txtClienteCiudad" runat="server" Text="Ciudad:" />
                                    <asp:TextBox ID="txtClienteCiudad" runat="server" />
                                </div>
                                <div>
                                    <asp:Label ID="lbClienteMunicipio" AssociatedControlId="txtClienteMunicipio" runat="server" Text="Municipio:" />
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="txtClienteMunicipio" ErrorMessage="*" ToolTip="Este campo es requerido" CssClass="txterror"></asp:RequiredFieldValidator>
                                    <asp:TextBox ID="txtClienteMunicipio" runat="server" />
                                </div>
                            </div>
                            <div class="trescol">
                                <div>
                                    <asp:Label ID="lbClienteEstado" AssociatedControlId="DDEstado"  runat="server" Text="Estado:"  OnLoad="DDEstado_PreRender1"/>
                                    <asp:DropDownList ID="DDEstado" runat="server">
                                        <asp:ListItem>Seleccione...</asp:ListItem>
                                    </asp:DropDownList>
                                </div>
                                <div>
                                    <asp:Label ID="lbClientepais" AssociatedControlId="DDPais" runat="server" Text="Pais:" OnLoad="DDPais_PreRender" />
                                    <asp:DropDownList ID="DDPais" runat="server">
                                        <asp:ListItem>Seleccione...</asp:ListItem>
                                    </asp:DropDownList>
                                </div>
                                <div>
                                    <asp:Label ID="lbClienteCp" AssociatedControlId="txtClienteCp" runat="server" Text="CP:" />
                                    <asp:TextBox ID="txtClienteCp" runat="server" class="integer" ToolTip="Codigo postal" />
                                </div>
                            </div>
                        </fieldset>
                    </asp:WizardStep>
                    <asp:WizardStep ID="HPaso2" runat="server" Title="Forma de Pago">
                        <fieldset>
                            <legend>
                                <asp:Label ID="LbClienteInfo" runat="server" Text="Información cliente forma de pago" />
                            </legend>
                            <div class="doscol">
                                <div>
                                    <asp:Label ID="lbClienteFormaPago" AssociatedControlId="DDLFormaPago" runat="server" Text="Pago Mxn:" />
                                    <asp:DropDownList ID="DDLFormaPago" runat="server" OnLoad="DDLFormaPago_PreRender" OnPreRender="DDLFormaPago_PreRender" />
                                </div>
                                <div>
                                    <asp:Label ID="lbClienteReferenciaPago" AssociatedControlId="txtClienteReferenciaPago" runat="server" Text="Referencia:" />
                                    <asp:TextBox ID="txtClienteReferenciaPago" runat="server" placeholder="Últimos 4 numeros " />
                                </div>
                            </div>
                            <div class="doscol">
                                <div>
                                    <asp:Label ID="lbClienteFormaPagoDlls" AssociatedControlId="DDLFormaPagoDlls" runat="server" Text="Pago Dlls:" />
                                    <asp:DropDownList ID="DDLFormaPagoDlls" runat="server"  OnLoad="DDLFormaPagoDlls_PreRender" />
                                </div>
                                <div>
                                    <asp:Label ID="lbClienteRefereciaPagoDlls" AssociatedControlId="txtClienteReferenciaPagoDlls" runat="server" Text="Referencia:" />
                                    <asp:TextBox ID="txtClienteReferenciaPagoDlls" runat="server" placeholder="Últimos 4 numeros" />
                                </div>
                            </div>
                            <div class="doscol">
                                <div>
                                    <asp:Label ID="Iva" AssociatedControlId="DDLIva" runat="server" Text="Iva:" />
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="*" ToolTip="Es necesario capturar Iva" ControlToValidate="DDLIva" CssClass="txterror"></asp:RequiredFieldValidator>
                                    <asp:DropDownList ID="DDLIva" runat="server">
                                        <asp:ListItem>Seleccione...</asp:ListItem>
                                    </asp:DropDownList>
                                </div>
                                <div>
                                    <asp:CheckBox ID="CBRetencion" runat="server" Text="Retencion IVA" />
                                    <asp:CheckBox ID="CBRetencionIsr" runat="server" Text="Retencion ISR" />
                                </div>
                            </div>
                        </fieldset>
                    </asp:WizardStep>
                    <asp:WizardStep ID="HPaso4" runat="server" Title="Información de Contacto">
                        <fieldset>
                            <legend>
                                <asp:Label ID="LbInfoContacto" runat="server" Text="Información de Contacto" />
                            </legend>
                            <div>
                                <asp:Label ID="lbClienteTelefono" AssociatedControlId="txtClienteTelefono" runat="server" Text="Teléfono:" />
                                <asp:TextBox ID="txtClienteTelefono" runat="server" />
                            </div>
                            <div>
                                <asp:Label ID="lbClienteCel" AssociatedControlId="txtClienteCel" runat="server" Text="Celular:" />
                                <asp:TextBox ID="txtClienteCel" runat="server" />
                            </div>
                            <div>
                                <asp:Label ID="lbClienteCorreo" AssociatedControlId="txtClienteCorreo" runat="server" Text="Correo Electronico:" />
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtClienteCorreo" ErrorMessage="*" ToolTip="Este campo es requerido" CssClass="txterror"></asp:RequiredFieldValidator>
                                <asp:TextBox ID="txtClienteCorreo" runat="server" placeholder="Para correos multiples separar con ',' O ';'" />
                            </div>
                            <div>
                                <asp:Label ID="Label2" AssociatedControlId="txtclicomment" runat="server" Text="Comentarios:" />
                                <asp:TextBox ID="txtclicomment" runat="server" Height="80px" TextMode="MultiLine" />
                            </div>
                        </fieldset>
                    </asp:WizardStep>
                </WizardSteps>
            </asp:Wizard>
                 <div class="guardar" >
                 <div class="botoneraActualiza">
                    <asp:LinkButton ID="BtnActulizaCliente" runat="server" 
                         onclick="ImageButton2_Click" Font-Size="Medium" >Finalizar</asp:LinkButton>
                    </div>
                </div>
        </div>
        <div class="colright">
            <Mr:UserInfoBoxMenuRapido ID="UserInfoBoxMenuRapido" runat="server" />
        </div>
    </form>
    <Me:UserInfoBoxFooter ID="UserInfoBoxFooter" runat="server" />
    <%-- Jquery code--%>
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
 <%--   <script type="text/javascript">
        $(document).keypress(function (e) {
            if (e.keyCode === 13) {
                e.preventDefault();
                return false;
            }
        });
    </script>--%>
</body>
</html>
