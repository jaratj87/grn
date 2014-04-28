<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AltaConfigFolio.aspx.cs"
    Inherits="zConfigFolio_AltaConfigFolio" %>
<!DOCTYPE html>
<%@ Register TagPrefix="My" TagName="UserInfoBoxControl" Src="~/Zwebcontrols/WebUserControlMenuUser.ascx" %>
<%@  Register TagPrefix="Me" TagName="UserInfoBoxFooter" Src="~/Zwebcontrols/footer.ascx"%>
<%@  Register TagPrefix="Mr" TagName="UserInfoBoxMenuRapido" Src="~/Zwebcontrols/menurapido.ascx"%>
<html lang="es">
<head runat="server">
    <title>GRN | Modificar Folios Electrónicos</title>
    <link href="//netdna.bootstrapcdn.com/font-awesome/4.0.3/css/font-awesome.css" rel="stylesheet">
    <link href="../Styles/grn-styles.css" rel="stylesheet" type="text/css" />
    <script src="../Scripts/jquery-1.9.1.js" type="text/javascript"></script>
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
    <script type="text/javascript">
        $(document).ready(function () {
            $('#cbSello').click(function () {
                if ($(this).is(":checked"))
                    $("#FileUpload1").removeAttr("disabled");
                else
                    $("#FileUpload1").atte("disabled", "disabled");
            });
        });
    </script>
    <script type="text/javascript">
        $(document).ready(function () {
            $('#cbSello').click(function () {
                if ($(this).is(":checked"))
                    $("#FileUpload2").removeAttr("disabled");
                else
                    $("#FileUpload2").atte("disabled", "disabled");
            });
        });
    </script>
    <script type="text/javascript">
        $(document).ready(function () {
            $('#cbDoc').click(function () {
                if ($(this).is(":checked"))
                    $("#ddDocumento").removeAttr("disabled");
                else
                    $("#ddDocumento").atte("disabled", "disabled");
            });
        });
    </script>
    <script type="text/javascript">
        $(document).ready(function () {
            $('#cbINfoFO').click(function () {
                if ($(this).is(":checked"))
                    $("#txtserieactual").removeAttr("disabled");
                else
                    $("#txtserieactual").atte("disabled", "disabled");
            });
        });
    </script>
    <script type="text/javascript">
        $(document).ready(function () {
            $('#cbINfoFO').click(function () {
                if ($(this).is(":checked"))
                    $("#txtFolioiniAct").removeAttr("disabled");
                else
                    $("#txtFolioiniAct").atte("disabled", "disabled");
            });
        });
    </script>
    <script type="text/javascript">
        $(document).ready(function () {
            $('#cbDescripcion').click(function () {
                if ($(this).is(":checked"))
                    $("#txtDescripcion").removeAttr("disabled");
                else
                    $("#txtDescripcion").atte("disabled", "disabled");
            });
        });
    </script>
    <script type="text/javascript">
        $(document).ready(function () {
            $('#cbInfo').click(function () {
                if ($(this).is(":checked"))
                    $("#DDlempresa").removeAttr("disabled");
                else
                    $("#DDlempresa").atte("disabled", "disabled");
            });
        });
    </script>
    <script type="text/javascript">
        $(document).ready(function () {
            $('#cbInfo').click(function () {
                if ($(this).is(":checked"))
                    $("#DdCambio").removeAttr("disabled");
                else
                    $("#DdCambio").atte("disabled", "disabled");
            });
        });
    </script>
    <script type="text/javascript">
        $(document).ready(function () {
            $('#cbInfo').click(function () {
                if ($(this).is(":checked"))
                    $("#txtCodFea").removeAttr("disabled");
                else
                    $("#txtCodFea").atte("disabled", "disabled");
            });
        });
    </script>
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
              $('#CBPass').click(function () {
                  if ($(this).is(":checked"))
                      $("#txtNewpass").removeAttr("disabled");
                  else
                      $("#txtNewpass").atte("disabled", "disabled");
              });
          });
    </script>
       <script type="text/javascript">
           $(document).ready(function () {
               $('#CBPass').click(function () {
                   if ($(this).is(":checked"))
                       $("#txtRepeatpass").removeAttr("disabled");
                   else
                       $("#txtRepeatpass").atte("disabled", "disabled");
               });
           });
    </script>

</head>
<body>
    <form id="form1" runat="server" enctype="multipart/form-data">
        <My:UserInfoBoxControl runat="server" />
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
                            <asp:LinkButton ID="sideBarButton" runat="server" Text="Button" OnClientClick="return false;" />
                        </ItemTemplate>
                        <SelectedItemTemplate>
                            <asp:LinkButton id="SideBarButton" runat="server" CssClass="activo" OnClientClick="return false;" />
                        </SelectedItemTemplate>
                    </asp:ListView>
                </SideBarTemplate>
                <NavigationButtonStyle />
                <WizardSteps>
                    <asp:WizardStep ID="HPaso1" runat="server" Title="Informacion de  Su folio"
                        EnableTheming="True" AllowReturn="False">
                        <fieldset>
                            <legend>
                                <asp:Label ID="Label13" runat="server" Text="Informacion Folio y Serie " />
                            </legend>
                            <div>
                                <asp:Label ID="Label22" runat="server" CssClass="negritas" Text="Tipo de Documento:" />
                                <asp:Label ID="Lbdoc" runat="server" Text="Serie actual" />
                            </div>
                            <div>
                                <asp:Label ID="Label1" runat="server" CssClass="negritas" Text="Moneda:" />
                                <asp:Label ID="LbMoneda" runat="server" Text="Serie" />
                            </div>
                            <div>
                                <asp:Label ID="Label19" AssociatedControlId="txtSerieActual" runat="server" Text="Serie actual" />
                                <asp:TextBox ID="txtSerieActual" runat="server" ReadOnly="True" />
                            </div>
                            <div>
                                <asp:Label ID="Label20" AssociatedControlId="txtFolioInicialActual" runat="server" Text="Folio Inicial actual" />
                                <asp:TextBox ID="txtFolioInicialActual" runat="server" ReadOnly="True" />
                            </div>
                            <div>
                                <asp:Label ID="Label23" AssociatedControlId="txtDescripcion" runat="server" Text="Descripción" />
                                <asp:TextBox ID="txtDescripcion" runat="server" TextMode="MultiLine" ReadOnly="True" />
                            </div>
                            <div>
                                <asp:Label ID="Label21" AssociatedControlId="CbDo" runat="server" Text="Folio Inactivo" />
                                <asp:Label ID="Label2" runat="server" Text="" />
                                <asp:CheckBox ID="CbDo" runat="server" ToolTip="Si esta palomeado Esta inactivo" Enabled="False" />
                                <asp:Label ID="LbfechaInactividad" runat="server" Text="" />
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
