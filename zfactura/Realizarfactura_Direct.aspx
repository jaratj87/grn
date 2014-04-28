<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Realizarfactura_Direct.aspx.cs"
    Inherits="zfactura_Realizarfactura" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ Register TagPrefix="My" TagName="UserInfoBoxControl" Src="~/Zwebcontrols/WebUserControlMenuUser.ascx" %>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style2
        {
        }
        .style3
        {
            width: 74px;
        }
    
        #TextArea1
        {
            height: 42px;
            width: 219px;
        }
        .style39
        {
            width: 91px;
            height: 22px;
        }
        .style40
        {
            height: 22px;
            width: 358px;
        }
        .style44
        {
            width: 358px;
        }
        .style60
        {
            width: 198px;
        }
        .style62
        {
            height: 31px;
            width: 442px;
        }
        .style71
        {
            width: 442px;
        }
        .style72
        {
            height: 32px;
        }
        .style73
        {
        }
        .style114
        {
            width: 108px;
        }
        .style117
        {
            width: 92px;
        }
        #CLickPopupCliente
        {
            width: 31px;
        }
        #Resultados
        {
            height: 223px;
        }
        #DivRsultados2
        {
            height: 224px;
        }
        </style>
    <link href="../Styles/style.css" rel="stylesheet" type="text/css" />
    <script src="../Scripts/jquery.min.js" type="text/javascript"></script>
    <script src="../Scripts/ModalPopupWindow.js" type="text/javascript"></script>
    <link href="../Styles/tooltipster.css" rel="stylesheet" type="text/css" />

        <script type="text/javascript">
        
    </script>
    <script type="text/javascript">
        function chngtxtbxval6() {
            $("#Button3").click();
//            var textBox = $("#txtBusquedaArticulo");
//            textBox.focus();
//            textBox.val(textBox.val());
        }
    </script>
    <script type="text/javascript">
        function chngtxtbxval5() {

            $("#Button2").click();
        }
    </script>
    <script type="text/javascript">
        var modalWin = new CreateModalPopUpObject();
        modalWin.SetLoadingImagePath("../Images/loading.gif");
        modalWin.SetCloseButtonImagePath("../Images/remove.gif");

        function activabotontimer1() {
            $("#botonACtivarTimer1").click();
        }
        function activabotontimer2() {
            $("#botonACtivarTimer2").click();
        }
        function popupArticulo() {
            $("#botonACtivarTimer2").click();
            var callbackFunctionArray = new Array(EnrollNow, EnrollLater);
            modalWin.ShowURL('popelegirArticulo.aspx', 500, 900, 'Seleccione Articulo', null, callbackFunctionArray);
        }
        function AddGrid() {
            $("#ButtonAddgrid").click();
        }
        function popupNotas() {
            var callbackFunctionArray = new Array(EnrollNow, EnrollLater);
            modalWin.ShowURL('popNotas.aspx', 250, 285, 'Capture Nota', null, callbackFunctionArray);

        }
        function Action1() {
            //            alert('Action1 is excuted');
            $('#btnAceptar1').trigger('click');
            //            modalWin.HideModalPopUp();
        }

        function Action2() {

            modalWin.HideModalPopUp();
        }
        function EnrollNow(msg) {
            modalWin.HideModalPopUp();

            modalWin.ShowMessage(msg, 200, 400, 'User Information', null, null);

        }

        function EnrollLater() {
            //            modalWin.HideModalPopUp();
            modalWin.ShowMessage(msg, 200, 400, 'User Information', null, null);


        }
        function ShowMessageWithAction() {
            //ShowConfirmationMessage(message, height, width, title,onCloseCallBack, firstButtonText, onFirstButtonClick, secondButtonText, onSecondButtonClick);
            modalWin.ShowConfirmationMessage('¿Desea dar de alta esta Factura?', 200, 400, 'Importante', null, 'Aceptar', Action1, 'Cancelar', Action2);
        }
    </script>
    <script type="text/javascript">
        $(document).keypress(function (e) {
            if (e.keyCode === 96) {
                e.preventDefault();
                return false;
            }

        });
    </script>
  

    <script type="text/javascript">
        function chngtxtbxval() {
            $("#ButtonDDpago").click();
        }
    </script>
    <%--    <script type="text/javascript">
        function chngtxtbxval2() {

            $('#TxtNombreCli').live("keypress", function (e) {
                if (e.keyCode == 13) {
                    //                     alert("Enter pressed");
                    // prevent the button click from happening
                    //$("#btnEnter").click();
                    $("#btnBusCli").click();
                    e.preventDefault();
                    return false;
                }
            });
        }
    </script>--%><%--    <script type="text/javascript">
        // Reference the textbox
        var txt = document.getElementById("#TxtNombreCli");

        // If the textbox was found, call its focus function
        if (txt != null)
            txt.focus();
</script>--%><%--    <script type="text/javascript">
        function chngtxtbxval3() {

            $('#txtCodOnombre').live("keypress", function (e) {
                if (e.keyCode == 13) {

                    $("#btnBusArt").click();

                    return false;
                }
                else
                { }
            });
        }
    </script>--%>    <%-- <script type="text/javascript">
        function chngtxtbxval4() {

            $('#txtCantidadArt').live("keypress", function (e) {
                if (e.keyCode == 13) {
                    $("#btnCalculoImporte").click();
                    return false; 
                }
            });
        }
    </script>--%><%--  <script type="text/javascript">
            function chngtxtbxval4() {
                $('#txtBusquedaCliente').live("keypress", function (e) {
                    if (e.keyCode == 8) {
                   
                        return false;
                    }
                });
            }
    </script>--%>
    <script type="text/javascript">
        function chngtxtbxval4() {

            $('#txtBusquedaArticulo').live("keypress", function (e) {
                if (e.keyCode == 8) {
                    return false;
                }
            });
        }
    </script>
    <script type="text/javascript">
        function validar_monto(evt) {
            var charCode = (evt.which) ? evt.which : event.keyCode
            if (charCode === 190)
            { }
            else {
                if (charCode > 46 && (charCode < 48 || charCode > 57))
                    return false;
                return true;
            }
        }
    </script>
</head>
<body style="height: 1655px; width: 1270px;">
    <form id="form1" runat="server">
    <My:UserInfoBoxControl runat="server" />
    <%--<div id="ContenidoAltas" class="ContenidoMenuAltas">--%>
    <div id="ContenidoAltas" class="">
        <div id="Div1" style="position: absolute; top: -230px; left: -360px; height: 93px;
            width: 15px; right: 825px;">
            <asp:Button ID="Nopostweb" runat="server" BackColor="White" BorderColor="White" ForeColor="White"
                Height="0px" ViewStateMode="Enabled" Width="0px" />
        </div>
        <asp:ScriptManager ID="ScriptManager1" runat="server">
        </asp:ScriptManager>
        <div style="height: 1147px">
            <div id="titulobanner" style="position: absolute; top: 150px; left: 510px; height: 93px;
                width: 325px; right: 440px;">
                <asp:Image ID="Image2" runat="server" ImageUrl="~/Images/facturaform.png" Height="89px"
                    Width="331px" />
            </div>
            <div id="DivInfoCompañia" style="position: absolute; top: 235px; left: 255px; height: 45px;
                width: 910px;">
                <table style="width: 98%; height: 35px;">
                    <tr>
                        <td align="left" class="style60">
                            <asp:Label ID="LbNomEmp" runat="server" Text="NOM" CssClass="labelTipoletra" Font-Bold="True"></asp:Label>
                        </td>
                        <td align="center" class="style3">
                            <asp:Label ID="LbFecha" runat="server" Text="NOM" CssClass="labelTipoletra" Font-Bold="True"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td align="left">
                            <%--  <asp:Button ID="btnEnter" runat="server" OnClick="btnEnter_Click" Style="display:"
                                Text="" Width="50px"/>--%>
                            <asp:Button ID="ButtonDDpago" runat="server" Height="0px" Style="visibility: hidden"
                                Text="" Width="0px" />
                            <asp:Button ID="btnBusCli" runat="server" Height="0px" Style="visibility: hidden"
                                Text="" Width="0px" />
                            <asp:Button ID="btnBusArt" runat="server" Height="0px" Style="visibility: hidden"
                                Text="Button" Width="50px" />
                            <asp:Button ID="btnCalculoImporte" runat="server" Height="0px" Style="visibility: hidden"
                                Text="Button" Width="50px" />
                        </td>
                        <td align="center" class="style3">
                        </td>
                    </tr>
                </table>
            </div>

            <asp:UpdatePanel ID="UpdatePanel1" runat="server" RenderMode="Inline">
                <ContentTemplate>

                <div id="divOpcionesGenerales" style="position: absolute; top: 290px; left: 255px; height: 45px;
                width: 910px;">
                <asp:Label ID="ErrorLbfOLIO" runat="server" class="labelTipoletra" CssClass="labelTipoletra"
                    Font-Bold="True" ForeColor="#FF3300" Visible="False" ></asp:Label>
                    <br />
                    <%--tabla encabezado--%>
                    <br />
                <asp:Label ID="Label58" runat="server" CssClass="labelTipoletra" Font-Bold="True"
                    Text="Moneda:"></asp:Label>
                <asp:DropDownList ID="ddMoneda" runat="server" AutoPostBack="True" Height="35px"
                    OnPreRender="ddMoneda_PreRender" OnTextChanged="ddMoneda_TextChanged" Width="120px"
                    Font-Size="Large" OnSelectedIndexChanged="ddMoneda_SelectedIndexChanged" Style="margin-right:130px;">
                    <asp:ListItem Value="P">Pesos</asp:ListItem>
                    <asp:ListItem Value="D">Dolares</asp:ListItem>
                </asp:DropDownList>
                <asp:Label ID="Label7" runat="server" Text="Tipo de Cambio :" CssClass="labelTipoletra"
                    Font-Bold="True"></asp:Label>
                <asp:TextBox ID="TxtTipoCambioVenta" runat="server" CssClass="tb5" Width="80px" ToolTip="Tipo de cambio para esta Factura"
                    onkeypress="return validar_monto(event)" Font-Size="Large" Height="27px" style="margin-right:50px;"></asp:TextBox>
                <asp:Label ID="LbNumCertificado3" runat="server" CssClass="labelTipoletra" Font-Bold="True"
                    Text="Orden de compra:"></asp:Label>
                <asp:TextBox ID="txtOrden" runat="server" CssClass="tb5" Width="156px" Height="30px"></asp:TextBox>
                </div>
                    <div id="DivInfoFolio" runat="server" style="position: absolute; top: 375px; left: 255px;
                        height: 260px; width: 465px;">
                        <table style="width: 98%; margin-bottom: 9px;">
                            <tr>

                                <td align="center" bgcolor="#0099FF" class="style62" colspan="2" 
                                    style="border-style: groove;">
                                    &nbsp;
                                    <asp:Label ID="Label1" runat="server" CssClass="labelTipoletra" 
                                        Font-Bold="True" Font-Underline="True" Text="Folio a utilizar"></asp:Label>
                                    &nbsp;
                                </td>
                                </strong></legend>
                                <tr>
                                    <td align="center" class="style71" colspan="2" style="border-left-style: groove;
                                            border-right-style: groove">
                                        &nbsp; &nbsp;
                                        <asp:Label ID="Label33" runat="server" CssClass="labelTipoletra" 
                                            Font-Bold="True" Text="Informacion del folio en :"></asp:Label>
                                        <asp:Label ID="lbMoneda" runat="server" CssClass="labelTipoletra" 
                                            Font-Bold="False" Text="No elegido"></asp:Label>
                                    </td>
                                </tr>
                            </tr>
                            <tr>

                                <td align="right" class="style71" style="border-left-style: groove;">
                                    <asp:Label ID="Label34" runat="server" CssClass="labelTipoletra" 
                                        Font-Bold="True" Text="Folio :"></asp:Label>
                                </td>
                                <td align="left" class="style71" style="border-right-style: groove">
                                    <asp:Label ID="LbfolioINi" runat="server" CssClass="labelTipoletra" 
                                        Font-Bold="False"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td align="right" class="style71" style="border-left-style: groove">
                                    <asp:Label ID="lbSerieIni0" runat="server" CssClass="labelTipoletra" 
                                        Font-Bold="True" Text="Serie Inicial:"></asp:Label>
                                </td>
                                <td align="left" class="style71" style="border-right-style: groove">
                                    <asp:Label ID="lbSerieIni" runat="server" CssClass="labelTipoletra" 
                                        Font-Bold="False"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td align="right" class="style71" style="border-left-style: groove">
                                    <asp:Label ID="LbNumCertificado4" runat="server" CssClass="labelTipoletra" 
                                        Font-Bold="True" Text="Certificado:"></asp:Label>
                                </td>
                                <td align="left" class="style71" style="border-right-style: groove">
                                    <asp:Label ID="LbNumCertificado" runat="server" CssClass="labelTipoletra" 
                                        Font-Bold="False"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td align="right" class="style71" style="border-left-style: groove">
                                    <asp:Label ID="LbFechaEmision0" runat="server" CssClass="labelTipoletra" 
                                        Font-Bold="True" Text="Fecha emision csd:"></asp:Label>
                                </td>
                                <td align="left" class="style71" style="border-right-style: groove">
                                    <asp:Label ID="LbFechaEmision" runat="server" CssClass="labelTipoletra" 
                                        Font-Bold="False"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td align="right" class="style71" style="border-rightstyle: groove; border-bottom-style: groove;
                                        border-left-style: groove;">
                                    <asp:Label ID="LbFechaVencimiento1" runat="server" CssClass="labelTipoletra" 
                                        Font-Bold="True">Fecha vencimiento csd:</asp:Label>
                                </td>
                                <td align="left" class="style71" 
                                    style="border-right-style: groove; border-bottom-style: groove;">
                                    <asp:Label ID="LbFechaVencimiento" runat="server" CssClass="labelTipoletra" 
                                        Font-Bold="False"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td align="left" colspan="2">
                                    &nbsp;
                                    <br />
                                </td>
                            </tr>
                            </tr>
                        </table>
                    </div>
                    <%--  ========================================div datos Clientes===============================================--%>
                     <div id="Div_infoCliente" runat="server" original-title="Buscar cliente por Cod o Click en la lupa"
                        class="tooltip" style="position: absolute; top: 340px; left: 750px; height: 249px;
                        width: 480px;" align="center">
                        <table style="width: 100%; height: 30px;">
                            <tr>
                                <td align="center" class="style72">
                                    &nbsp;
                                </td>
                            </tr>
                            <tr>
                                <td align="center" bgcolor="#0099FF" style="border-style: groove">
                                    &nbsp;
                                    <asp:Label ID="Label23" runat="server" CssClass="labelTipoletra" Font-Bold="True"
                                        Font-Underline="True" Text="Cliente a Facturar"></asp:Label>
                                    &nbsp;
                                </td>
                            </tr>
                        </table>
                        <table style="width: 100%;">
                            <tr>
                                <td class="style33" style="border-left-style: groove; border-right-style: groove;"
                                    align="center" colspan="2">
                                    <asp:Label ID="ErrorCliente" runat="server" class="tooltip" ForeColor="Red" original-title="Puedes buscar por COD o Click en la lupa"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td align="right" class="style33" style="border-left-style: groove;">
                                    &nbsp;
                                    <asp:Label ID="Label26" runat="server" CssClass="labelTipoletra" Font-Bold="True"
                                        Text="Nombre :"></asp:Label>
                                </td>
                                <td align="left" class="style44" style="border-right-style: groove;">
                              
                                        <asp:Label ID="TxtNombreCli" runat="server" CssClass="labelTipoletra"></asp:Label>
                                
                         
                                </td>
                            </tr>
                            <tr>
                                <td class="style33" align="right" style="border-left-style: groove;">
                                    &nbsp;
                                    <asp:Label ID="Label27" runat="server" Text="RFC:" CssClass="labelTipoletra" Font-Bold="True"></asp:Label>
                                </td>
                                <td style="border-right-style: groove;" class="style44" align="left">
                                    &nbsp;
                                    <asp:Label ID="LbRfcCli" runat="server" CssClass="labelTipoletra"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td class="style33" style="border-left-style: groove;" align="right">
                                    &nbsp;
                                    <asp:Label ID="Label28" runat="server" Text="Telefono:" CssClass="labelTipoletra"
                                        Font-Bold="True"></asp:Label>
                                </td>
                                <td style="border-right-style: groove;" class="style44" align="left">
                                    &nbsp;
                                    <asp:Label ID="LbCliTelefono" runat="server" CssClass="labelTipoletra"></asp:Label>
                                </td>
                            </tr>
                         
                            <tr>
                                <td class="style39" style="border-left-style: groove;" align="right">
                                    &nbsp;
                                    <asp:Label ID="Label30" runat="server" Text="Direccion:" CssClass="labelTipoletra"
                                        Font-Bold="True"></asp:Label>
                                </td>
                                <td style="border-right-style: groove;" class="style40" align="left">
                                    &nbsp;
                                    <asp:Label ID="LbCliDireccion" runat="server" CssClass="labelTipoletra"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td class="style6" align="left" colspan="2" style="border-right-style: groove; border-bottom-style: groove;
                                    border-left-style: groove;">
                                    &nbsp; &nbsp;
                                    <asp:Label ID="lbdireccion2" runat="server" CssClass="labelTipoletra"></asp:Label>
                                </td>
                            </tr>
                        </table>
                        <table style="width: 100%;">
                            <tr>
                                <td align="center" class="style73">
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td align="center" class="style73">
                                    &nbsp;</td>
                            </tr>
                        </table>
                    </div>
                    <%--  ======================================================DivBuscar Cliente================================================--%>
                    <%--      ===============================================DIv3 Grid===============================================--%>
                   <div id="Div_InfoArticulos" original-title="Buscar Articulo Por Cod O click en la Lupa"
                        class="tooltip" style="position: absolute; top: 560px; left: 160px; height: 600px;
                        width: 1095px;" align="center">
                        <table style="width: 98%;">
                            <tr>
                                <td align="left" class="style2">
                                    &nbsp;
                                </td>
                                <tr>
                                    <td align="center" class="style2">
                                        &nbsp;
                                    </td>
                                    <tr>
                                        <td align="center" bgcolor="#0099FF" class="style2" style="border-style: groove;">
                                            &nbsp;
                                            <asp:Label ID="Label2" runat="server" CssClass="labelTipoletra" Font-Bold="True"
                                                Font-Underline="True" Text="Articulos a vender"></asp:Label>
                                            &nbsp;
                                        </td>
                                        </strong></legend>
                                        <tr>
                                            <td align="center">
                                                <asp:Label ID="LbErrorArt" runat="server" ForeColor="Red" Font-Bold="True"></asp:Label><br />
                                                <asp:Label ID="LbMensajeMod" runat="server" CssClass="labelTipoletra" ForeColor="#00CC00"
                                                    Font-Bold="True" Visible="False" Font-Size="X-Large">Modificando Articulo</asp:Label><br />
                                                
                                                
                                            </td>
                                        </tr>
                                    </tr>
                                </tr>
                            </tr>
                        </table>
                        <asp:Label ID="Lbidart" runat="server" CssClass="labelTipoletra" 
                                        Font-Bold="True" Visible="False"></asp:Label>
                                        <asp:Label ID="LbivaFactor" runat="server" CssClass="labelTipoletra" 
                                        Font-Bold="True" Visible="False" >IvaFactor</asp:Label>
                                          <asp:Label ID="LbIdPresentacion" runat="server" CssClass="labelTipoletra" 
                                        Font-Bold="True" Visible="False"></asp:Label>
                                          <asp:Label ID="LbFilamod" runat="server" CssClass="labelTipoletra" 
                                        Font-Bold="True" Visible="False"></asp:Label>
                                        <asp:Label ID="txtImporteConIva" runat="server" CssClass="labelTipoletra" 
                                        Font-Bold="True" Visible="False">Sin valor</asp:Label>
                                         <asp:Label ID="lbIeps" runat="server" CssClass="labelTipoletra" 
                                        Font-Bold="True" Text="Ieps" Visible="False"></asp:Label>
                                        <asp:Label ID="txtMoneda0" runat="server" 
                            CssClass="labelTipoletra" Visible="False"></asp:Label>
                                        <asp:Label ID="txtImporte0" runat="server" 
                            CssClass="labelTipoletra" Visible="False"></asp:Label>
                                              <asp:Button ID="botonACtivarTimer2" runat="server" Text="Button" Style="display: none"
                                        OnClick="botonACtivarTimer2_Click" />
                                        <br />
                        <div id="DivCapArt" align="left">
                            <asp:Label ID="lbClienteEstado0" runat="server" Text="(Click para buscar Articulo)"
                                CssClass="labelTipoletra" Font-Size="Small" ForeColor="#666666" style="margin-right:50px;"></asp:Label>

                                <asp:Label ID="Label36" runat="server" CssClass="labelTipoletra" Text="Codigo" 
                                        Font-Bold="True"  style="margin-right:115px;" Font-Size="Large"></asp:Label>

                                        <asp:Label ID="Label49" runat="server" CssClass="labelTipoletra" 
                                        Text="Cantidad" Font-Bold="True" style="margin-right:70px;" 
                                Font-Size="Large"></asp:Label>

                                        <asp:Label ID="Label38" runat="server" CssClass="labelTipoletra" Text="Precio"
                                        Font-Bold="True" Font-Size="Large" style="margin-right:60px;"></asp:Label>

                                        <asp:Label ID="Label59" runat="server" CssClass="labelTipoletra" Text="U/M"
                                        Font-Bold="True" Font-Size="Large" 
                                ToolTip="Unidad de medida del Producto" style="margin-right:200px;"></asp:Label>

                                <asp:Label ID="LbaddGrid" runat="server" CssClass="labelTipoletra" Text="Agregar Articulo:"
                                        Font-Bold="True"></asp:Label>
                                <br />
                            <img id="ImgBuscarArticulo" style="cursor: pointer; margin-left:50px; margin-right:50px; " alt="" height="50" width="50"
                                onclick="return activabotontimer2()" src="../Images/buscarART.png"  />
                            <asp:TextBox ID="txtCodOnombre" runat="server" CssClass="tbBusqueda" Width="167px"
                                ToolTip="Cod o nombre del Articulo para bucarlo con ENTER" OnTextChanged="txtCodOnombre_TextChanged"
                                placeholder="Enter para aceptar" Height="25px" style="margin-right:20px;" ></asp:TextBox>
                            <asp:TextBox ID="txtCantidadArt" runat="server" CssClass="tb5solonumeros" OnTextChanged="txtCantidadArt_TextChanged"
                                Style="margin-right:20px;" Width="110px" onkeypress="return validar_monto(event)"
                                Height="25px" ></asp:TextBox>
                            <asp:TextBox ID="txtPrecioArt" runat="server" CssClass="tb5" onkeypress="return validar_monto(event)"
                                Width="110px" OnTextChanged="txtPrecioArt_TextChanged" Height="30px" Style="margin-right:80px;"></asp:TextBox>
                                <asp:Label ID="txtPresentacion0" runat="server" CssClass="labelTipoletra" Style="margin-right:20px;"></asp:Label>
                                <asp:CheckBox ID="CheckBox1" runat="server" AutoPostBack="True" 
                                oncheckedchanged="CheckBox1_CheckedChanged" Text="Agrega Comentario" Style="margin-right:50px;" />
                                     <img id="ImgGriadd" runat="server" alt="" src="../Images/gridadd.png" style="cursor: pointer" onclick="return AddGrid()"
                                        height="35" width="85" />

                                    <img id="ImgGrimod" runat="server" alt="" src="~/Images/AddmodGriArt.png" style="cursor: pointer" onclick="return AddGrid()"
                                    height="85" width="85" visible="False" />

                                    <asp:Button ID="ButtonAddgrid" runat="server" Text="Button" Style="display: none"
                                        OnClick="ButtonAddgrid_Click" />
                                    <br />
                                    <asp:Label ID="LbNombreART0" runat="server" CssClass="labelTipoletra" ForeColor="Black"
                                                    Font-Bold="True">Nombre del articulo:</asp:Label>
                                                    <asp:Label ID="LbNombreART" runat="server" CssClass="labelTipoletra"></asp:Label>
                              
                                
                                <br />
                                <div id="DivComment" runat="server" align="center">
                                <asp:Label ID="Label6" runat="server" CssClass="labelTipoletra" Font-Bold="True"
                                        Text="Comentario:"></asp:Label>
                                        <br />
                                <asp:TextBox ID="TxtComment" runat="server" Height="45px" TextMode="MultiLine" Style="resize: none;"
                                        CssClass="tb5" Width="980px"></asp:TextBox>
                                </div>
                        </div>
                        <br />
                        <div id="Div_Busca_Articulos" runat="server" align="center" class="DivArticulos">
                            <div id="div2" style="display: inline-block; width: 357px; height: 40px;">
                                <table style="width: 51%;">
                                    <tr>
                                        <td class="style3" align="left">
                                            <asp:Label ID="Label5" runat="server" Text="Buscar:" CssClass="labelTipoletra"></asp:Label>
                                        </td>
                                        <td class="" align="center">
                                            <asp:TextBox ID="txtBusquedaArticulo" runat="server" ForeColor="#0066FF" ToolTip="Cod para buscar articulo"
                                                OnTextChanged="txtBusquedaArticulo_TextChanged" CssClass="tbBusqueda" Height="22px"
                                                Width="179px" AutoPostBack="True"></asp:TextBox>
                                            <asp:Button ID="Button1" runat="server" Height="0px" Text="Button" Width="12px" OnClick="Button2_Click"
                                                Style="display: none" />
                                        </td>
                                        <td class="style3" align="center">
                                            &nbsp;
                                        </td>
                                    </tr>
                                </table>
                            </div>
                            <div id="Div3" style="display: inline-block; width: 327px; height: 45px;">
                                <table style="width: 55%;">
                                    <tr>
                                        <td class="" align="center">
                                            <asp:Label ID="Lbpaginas" runat="server" Text="Paginas:" CssClass="labelTipoletra"></asp:Label>
                                            <asp:Label ID="LbnumerodePagiansArt" runat="server" Text="1"></asp:Label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="" align="center">
                                            <asp:Button ID="Button3" runat="server" Text="Button" Style="display: none" />
                                            <asp:ImageButton ID="BtnAnteriorArticulo" runat="server" Height="25px" ImageUrl="~/Images/Back.png"
                                                Width="34px" ToolTip="Anterior" OnClick="BtnAnteriorArticulo_Click" />
                                            <asp:TextBox ID="TextBox1A" runat="server" Width="27px" Style="text-align: center"
                                                ReadOnly="True">1</asp:TextBox>
                                            <asp:ImageButton ID="BtnNextArticulo" runat="server" Height="25px" ImageUrl="~/Images/Next.png"
                                                Width="34px" ToolTip="Siguiente" OnClick="BtnNextArticulo_Click" />
                                        </td>
                                    </tr>
                                </table>
                            </div>
                            <div id="Div4" style="display: inline-block; width: 284px; height: 59px;" 
                                align="right">
                                <asp:ImageButton ID="ImgBuCerrarDivArticulos" runat="server" Height="34px" ImageUrl="~/Images/remove.gif"
                                    Width="34px" ToolTip="Cerrar" onclick="ImgBuCerrarDivArticulos_Click"/>  
                            </div>
                         
                            <div id="DivGridBusquedaArticulos">
                                <asp:GridView ID="GridBuscaArticulos" runat="server" AutoGenerateColumns="False"
                                    CellPadding="4" Font-Names="Arial" ForeColor="#333333" GridLines="None" OnRowCommand="GridBuscaArticulos_RowCommand"
                                    Style="text-align: center" Width="850px">
                                    <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                                    <Columns>
                                        <asp:BoundField DataField="idArticulo">
                                            <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                                       <%--     <ItemStyle Font-Size="0px" Width="0px" Wrap="False" />--%>
                                        </asp:BoundField>
                                        <asp:BoundField DataField="IvaFactor">
                                           <%--    <ItemStyle Font-Size="0px" Width="0px" Wrap="False" />--%>
                                        </asp:BoundField>
                                        <asp:BoundField DataField="codigo" HeaderText="Codigo">
                                            <HeaderStyle HorizontalAlign="Center" />
                                            <ItemStyle HorizontalAlign="Center" Width="120px" />
                                        </asp:BoundField>
                                        <asp:BoundField DataField="NombreArt" HeaderText="Nombre">
                                            <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                                        </asp:BoundField>
                                        <asp:BoundField DataField="Articulo_PrecioA" HeaderText="Precio">
                                            <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                                        </asp:BoundField>
                                        <asp:BoundField DataField="Articulo_Nacional" HeaderText="Moneda">
                                            <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                                        </asp:BoundField>
                                        <asp:BoundField DataField="PRESENTACION" HeaderText="Presentacion" />
                                        <asp:BoundField DataField="IdPresentacion" >
                                       <%-- <ItemStyle Font-Size="0px" Width="0px" Wrap="False" />--%>
                                         </asp:BoundField>
                                        <asp:BoundField DataField="Articulo_Ieps" />
                                        <asp:ButtonField ButtonType="Image" HeaderText="Selecionar" ImageUrl="~/Images/select.png"
                                            Text="Botón">
                                            <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                                        </asp:ButtonField>
                                    </Columns>
                                    <EditRowStyle BackColor="#999999" />
                                    <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                                    <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                                    <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                                    <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                                    <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                                    <SortedAscendingCellStyle BackColor="#E9E7E2" />
                                    <SortedAscendingHeaderStyle BackColor="#506C8C" />
                                    <SortedDescendingCellStyle BackColor="#FFFDF8" />
                                    <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
                                </asp:GridView>
                            </div>
                        </div>
                        <div id="Div_Art_Ventas" runat="server" style="height: 200px; overflow: auto;">
                            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="8"
                                ForeColor="#333333" GridLines="None" Width="890px" OnRowCommand="GridView1_RowCommand"
                                NullDisplayText="Empty" 
                                onselectedindexchanged="GridView1_SelectedIndexChanged1" >
                                <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                                <Columns>
                                    <%--   <asp:TemplateField HeaderText="Comentario">
                                    <ItemTemplate>
                                        <asp:TextBox ID="TxtComent" runat="server" Text="" TextMode="MultiLine" Style="resize: none;
                                            height: 43px;" Font-Underline="False" ToolTip="Inserte un Comentario por articulo"></asp:TextBox>
                                    </ItemTemplate>
                                    <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                                    <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                                </asp:TemplateField>--%>
                                    <asp:BoundField DataField="Articulo_Id" NullDisplayText="&quot;&quot;">
                                        <%--<ItemStyle HorizontalAlign="Center" Font-Size="0px" Width="0px" Wrap="False" />--%>
                                    </asp:BoundField>
                                    <asp:BoundField DataField="Articulo_Cod" HeaderText="COD" NullDisplayText="&quot;&quot;">
                                        <ItemStyle HorizontalAlign="Center" />
                                    </asp:BoundField>
                                    <asp:BoundField DataField="Articulo_Nombre" HeaderText="Nombre">
                                        <ItemStyle HorizontalAlign="Center" />
                                    </asp:BoundField>
                                    <asp:BoundField DataField="Articulo_PrecioA" HeaderText="Precio" NullDisplayText="&quot;&quot;">
                                        <ItemStyle HorizontalAlign="Center" />
                                    </asp:BoundField>
                                    <asp:BoundField DataField="Cantidad" HeaderText="Cantidad">
                                        <ItemStyle HorizontalAlign="Center" />
                                    </asp:BoundField>
                                    <asp:BoundField HeaderText="Iva" DataField="ImporteConIva">
                                    <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                                    <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                                    </asp:BoundField>
                                    <asp:BoundField DataField="ImporteIeps" HeaderText="Ieps" />
                                    <asp:BoundField DataField="Importe" HeaderText="Importe">
                                        <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                                    </asp:BoundField>
                                    <asp:BoundField DataField="Articulo_Nacional" HeaderText="Moneda" 
                                        NullDisplayText="&quot;&quot;">
                                        <ItemStyle HorizontalAlign="Center" />
                                    </asp:BoundField>
                                    <asp:BoundField DataField="Comentario" HeaderText="Comentario" NullDisplayText="---------">
                                        <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                                    </asp:BoundField>
                                    <asp:BoundField DataField="Iva" >
                                    <%-- <ItemStyle Font-Size="0px" Width="0px" Wrap="False" />--%>
                                       </asp:BoundField>
                                    <asp:BoundField DataField="Idpresentacion">
                                    <%-- <ItemStyle Font-Size="0px" Width="0px" Wrap="False" />--%>
                                    </asp:BoundField>
                                    <asp:BoundField DataField="PresentacionTexto" HeaderText="Presentacion">
                                    <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                                    </asp:BoundField>
                                    <asp:BoundField DataField="Factor_Ieps" />
                                    <asp:ButtonField ButtonType="Image" ImageUrl="~/Images/remove.gif" Text="Botón" HeaderText="Remover"
                                        CommandName="Borrar">
                                        <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                                    </asp:ButtonField>
                                    <asp:ButtonField ButtonType="Image" CommandName="Modificar" HeaderText="Modificar"
                                        ImageUrl="~/Images/ModReArt.png" Text="Botón">
                                        <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                                    </asp:ButtonField>
                                </Columns>
                                <EditRowStyle BackColor="#999999" />
                                <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                                <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                                <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                                <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                                <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                                <SortedAscendingCellStyle BackColor="#E9E7E2" />
                                <SortedAscendingHeaderStyle BackColor="#506C8C" />
                                <SortedDescendingCellStyle BackColor="#FFFDF8" />
                                <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
                                <SortedAscendingCellStyle BackColor="#E9E7E2" />
                                <SortedAscendingHeaderStyle BackColor="#506C8C" />
                                <SortedDescendingCellStyle BackColor="#FFFDF8" />
                                <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
                            </asp:GridView>
                        </div>
                        <div id="MenuDatosFactura" align="center">
                        <table>
                            <tr>
                                <td align="center" colspan="6">
                                    <asp:Label ID="LbError" runat="server" CssClass="labelTipoletra" 
                                        ForeColor="Red" Font-Bold="True"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td align="center">
                                    <div align="center" class="BotonGuardar">
                                        <asp:ImageButton ID="IbRegresar" runat="server" Height="43px" ImageUrl="~/Images/flechaBack.png"
                                            OnClick="IbRegresar_Click" ToolTip="Regresar al menu de factura" Width="68px" />
                                        <br />
                                        <asp:Label ID="Label70" runat="server" CssClass="labelTipoletra" Font-Bold="True"
                                            Font-Italic="False" Text="Regresar"></asp:Label>
                                    </div>
                                </td>
                                <td align="center" class="style117">
                                    <div align="center" class="BotonNuevFactura">
                                        <asp:ImageButton ID="ImageButton11" runat="server" Height="43px" ImageUrl="~/Images/NewFact.png"
                                            OnClick="ImageButton11_Click" ToolTip="Capturar notas para esta factura" Width="68px" />
                                        <br />
                                        <asp:Label ID="Label69" runat="server" CssClass="labelTipoletra" Font-Bold="True"
                                            Font-Italic="False" Text="Nueva"></asp:Label>
                                    </div>
                                </td>
                                <td align="center">
                                    <div align="center" class="BotonGuardar">
                                        <asp:ImageButton ID="ImageButton12" runat="server" Height="43px" ImageUrl="~/Images/Note.png"
                                            OnClientClick="return popupNotas()" ToolTip="Capturar notas para esta factura"
                                            Width="68px" />
                                        <br />
                                        <asp:Label ID="Label76" runat="server" CssClass="labelTipoletra" Font-Bold="True"
                                            Font-Italic="False" Text="Notas"></asp:Label>
                                    </div>
                                </td>
                                <td align="center">
                                    <div align="center" class="BotonGuardar">
                                        <asp:ImageButton ID="ImageButton9" runat="server" Height="43px" ImageUrl="~/Images/ButtonOK.png"
                                            OnClientClick="return ShowMessageWithAction()" ToolTip="Se almacena la factura"
                                            Width="68px"   />
                                        <br />
                                        <asp:Label ID="Label67" runat="server" CssClass="labelTipoletra" Font-Bold="True"
                                            Font-Italic="False" Text="Guardar"></asp:Label>
                                    </div>
                                    <asp:Button ID="btnAceptar1" runat="server" Height="22px" Width="127px" Font-Size="0px"
                                        OnClick="Button1_Click" Style="display: none" />
                                </td>
                                <td  width="300px" align="center" >

                                    <div id="Resultados" align="right">
                                     <asp:Label ID="LbExento0" runat="server"   Text="Exento:" 
                                        CssClass="labelTipoletra" Font-Bold="True"></asp:Label>
                                        <asp:Label ID="LbExento" runat="server"   Text="0" 
                                        CssClass="labelTipoletra" ></asp:Label>



                                        <br />

                                        <asp:Label ID="Tasa00" runat="server"   Text="Tasa0%:" 
                                        CssClass="labelTipoletra" Font-Bold="True"></asp:Label>
                                        <asp:Label ID="LbTasa0" runat="server"   Text="0" 
                                        CssClass="labelTipoletra" ></asp:Label>
                                        <br />

                                        <asp:Label ID="LbTasa100" runat="server"   Text="Gravable:" 
                                        CssClass="labelTipoletra" Font-Bold="True"></asp:Label>
                                        <asp:Label ID="LbTasa10" runat="server"   Text="0" 
                                        CssClass="labelTipoletra" ></asp:Label>
                                        <br />
                                    </div>
                                   

                                </td>
                                <td align="center">
                                <div id="DivRsultados2" align="left">
                                                                        <asp:Label ID="Label73" runat="server" CssClass="labelTipoletra" Text="SubTotal:"
                                                    Font-Bold="True"></asp:Label>
                                        <asp:Label ID="LbSubtotal0" runat="server" CssClass="labelTipoletra" Text="0"></asp:Label>
                                        <br />

                                          <asp:Label ID="Label74" runat="server" CssClass="labelTipoletra" Text="Iva:" Font-Bold="True"></asp:Label>
                                                <asp:Label ID="LbIva" runat="server" CssClass="labelTipoletra"></asp:Label>
                                                <asp:Label ID="LbIvaNumero" runat="server" CssClass="labelTipoletra" Style="display: "></asp:Label>
                                                <asp:Label ID="LbIvaDinero0" runat="server" CssClass="labelTipoletra" Text="0"></asp:Label>
                                                <br />
                                                <asp:Label ID="Label8" runat="server" CssClass="labelTipoletra" Text="Ieps:" Font-Bold="True"></asp:Label>
                                                <asp:Label ID="LbIepsDinero" runat="server" CssClass="labelTipoletra" Text="0" ></asp:Label>
                                                <br />
                                                <asp:Label ID="lbSiRV" runat="server" CssClass="labelTipoletra" Text="" Font-Bold="True"></asp:Label>
                                                     <asp:Label ID="LblRetencionVenta" runat="server" CssClass="labelTipoletra" Text="Retencion Venta:" 
                                                                            Font-Bold="True" Visible="False"></asp:Label>
                                             <asp:Label ID="LbRetencionVentavalor" runat="server" CssClass="labelTipoletra" 
                                                    Visible="False"></asp:Label>
                                             <asp:Label ID="LbretencionIvaFactor" runat="server" CssClass="labelTipoletra" Visible="False">0</asp:Label>
                                                    <asp:Label ID="LbRetencionVentaDinero" runat="server" CssClass="labelTipoletra" Text="0" 
                                                                            Visible="False" ></asp:Label>
                                                    <br />
                                                    <asp:Label ID="lbSiIva" runat="server" CssClass="labelTipoletra" Text="" Font-Bold="True"></asp:Label>
                                                    <asp:Label ID="lblRi" runat="server" CssClass="labelTipoletra" 
                                                    Font-Bold="True" Text="Retencion Iva:" Visible="False"></asp:Label>
                                                      <asp:Label ID="LbRetencionIvaValor" runat="server" CssClass="labelTipoletra" Text="False" 
                                                                            Visible="False" ></asp:Label>
                                                        <asp:Label ID="LbretencionIvaDinero" runat="server" CssClass="labelTipoletra" Text="0" 
                                                                            Visible="False" ></asp:Label>
                                                    <br />
                                                    <asp:Label ID="lbSiRisr" runat="server" CssClass="labelTipoletra" Text="" Font-Bold="True"></asp:Label>
                                                    <asp:Label ID="lblRisr" runat="server" CssClass="labelTipoletra" 
                                                    Font-Bold="True" Text="Retencion Isr:" Visible="False"></asp:Label>
                                                    <asp:Label ID="LbRetencionIsrValor" runat="server" CssClass="labelTipoletra" 
                                                    Visible="False"></asp:Label>
                                                    <asp:Label ID="LbRetencionIsrFactor" runat="server" CssClass="labelTipoletra" 
                                                    Visible="False">0</asp:Label>
                                                    <asp:Label ID="LbRetencionIsrDinero" runat="server" CssClass="labelTipoletra" Text="0" 
                                                                            Visible="False" ></asp:Label>
                                                    <br />
                                                    <asp:Label ID="Label3" runat="server" CssClass="labelTipoletra" 
                                                    Font-Bold="True" Text="Retencion Isr:" Visible="False"></asp:Label>
                                                    <asp:Label ID="LbTotalRetenciones" runat="server" CssClass="labelTipoletra" Text="0" 
                                                                            Visible="False" ></asp:Label>

                                                    <br />
                                                    <asp:Label ID="Label75" runat="server" CssClass="labelTipoletra" Text="Total:" Font-Bold="True"></asp:Label>
                                                    <asp:Label ID="LbTotal" runat="server" CssClass="labelTipoletra" Text="0" 
                                                    Font-Bold="True" Font-Size="X-Large"></asp:Label>
                                </div>

                                  </td>
                            </tr>
                        </table>
                        </div>
                    </div>
                </ContentTemplate>
                <Triggers>
                    <asp:AsyncPostBackTrigger ControlID="txtCodOnombre" EventName="DataBinding" />
                    <asp:AsyncPostBackTrigger ControlID="ddMoneda" EventName="TextChanged" />
                    <asp:AsyncPostBackTrigger ControlID="txtCodOnombre" EventName="TextChanged" />
                    <asp:AsyncPostBackTrigger ControlID="txtCantidadArt" EventName="TextChanged" />
                    <asp:AsyncPostBackTrigger ControlID="ButtonDDpago" EventName="Click" />
                    <asp:AsyncPostBackTrigger ControlID="btnBusCli" EventName="Click" />
                    <asp:AsyncPostBackTrigger ControlID="btnBusArt" EventName="Click" />
                    <asp:AsyncPostBackTrigger ControlID="btnCalculoImporte" EventName="Click" />
               
                    <asp:AsyncPostBackTrigger ControlID="Button1" EventName="Click" />
                    <asp:AsyncPostBackTrigger ControlID="Button3" EventName="Click" />
                    <asp:AsyncPostBackTrigger ControlID="botonACtivarTimer2" EventName="Click" />
                    <asp:AsyncPostBackTrigger ControlID="txtBusquedaArticulo" EventName="TextChanged" />
                    <asp:AsyncPostBackTrigger ControlID="ddMoneda" EventName="PreRender" />
                    
                </Triggers>
            </asp:UpdatePanel>
        </div>
    </div>
    </form>
</body>
</html>
