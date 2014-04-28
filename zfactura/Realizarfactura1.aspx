<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Realizarfactura1.aspx.cs"
    Inherits="zfactura_Realizarfactura" %>
<!DOCTYPE html>
<%@ Register TagPrefix="My" TagName="UserInfoBoxControl" Src="~/Zwebcontrols/WebUserControlMenuUser.ascx" %>
<%@  Register TagPrefix="Me" TagName="UserInfoBoxFooter" Src="~/Zwebcontrols/footer.ascx"%>
<%@  Register TagPrefix="Mr" TagName="UserInfoBoxMenuRapido" Src="~/Zwebcontrols/menurapido.ascx"%>
<html lang="es">
<head id="Head1" runat="server">
    <title>GRN | Generar Factura</title>
    <script src="../Scripts/jquery.min.js" type="text/javascript"></script>
    <script src="../Scripts/ModalPopupWindow.js" type="text/javascript"></script>
    <link href="../Styles/tooltipster.css" rel="stylesheet" type="text/css" />
    <link href="//netdna.bootstrapcdn.com/font-awesome/4.0.3/css/font-awesome.css" rel="stylesheet">
    <link href="../Styles/grn-styles.css" rel="stylesheet" type="text/css" />
    <script type="text/javascript">
        $(document).ready(function () {
            //                alert('le dio click al boton ');
            var valorSpan = $("#apuntador").text();

            //                Div_InfoArticulos
            switch (valorSpan) {
                case "0":
                    //                        scrollToAnchor('Div_InfoArticulos');
                    break;
                case "1":
                    scrollToAnchor('Div_InfoArticulos');
                    focusCampo('#txtBusquedaArticulo');
                    break;
            }
        });
    </script>
    <script type="text/javascript">
        function scrollToAnchor(aid) {
            var aTag = $("div[id='" + aid + "']");
            $('html,body').animate({ scrollTop: aTag.offset().top }, 'slow');
        }
  </script>
    <script type="text/javascript">
        $(document).ready(function () {
            $("table#advanced_search_options tr").click(function () {
                var SearchSelection = $(this).children("td:last-of-type").html();
                var SearchInput = $('#Search');
                SearchInput.val(SearchInput.val() + SearchSelection);
                return false;
                alert(SearchSelection);
            });
        }
    </script>
    <script type="text/javascript">
        function chngtxtbxval6() {

            $("#Button3").click();
            var textBox = $("#txtBusquedaArticulo");
            //                txtBusquedaArticulo.focus();
            //                //                txtBusquedaArticulo.val(textBox.val());

            focusCampo('#txtBusquedaArticulo');

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
            scrollToAnchor('divFrameParent');
        }
        function mensaje() {
            scrollToAnchor('Div_InfoArticulos');
        }
        function mandarDivArticulos() {
            scrollToAnchor('DivGridBusquedaArticulos');
        }
        function mandarDivBusClientes() {
            scrollToAnchor('DivBuscarCliente');
        }
        function mandarInfoGen() {
            scrollToAnchor('infomedia');
        }
        function mensaje2() {

            //             scrollToAnchor('DivGridBusquedaArticulos');
            var valorSpan = $("#txtCantidadArt").text();
            if (valorSpan.length > 0) {
                document.getElementById("txtCantidadArt").focus();
            }
            else {
                var valorSpan = $("#TxtNombreCli").text();
                if (valorSpan.length > 0) {
                    document.getElementById("txtCodOnombre").focus();
                }

            }
        }
        function Action1() {
            //                        alert('sucks digs');
            $('#btnAceptar1').trigger('click');
            //                        modalWin.HideModalPopUp();
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
            modalWin.ShowConfirmationMessage('¿Desea dar de alta este Documento?', 200, 400, 'Importante', null, 'Aceptar', Action1, 'Cancelar', Action2);
            scrollToAnchor('divFrameParent');
        }

        function CerrarPopUp() {
//            alert("entro");
            window.parent.document.getElementById('divOverlay').style.display = 'none';
            window.parent.document.getElementById('divFrameParent').style.display = 'none';
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
<body onload="mensaje2()">
    <form id="form1" runat="server">
        <My:UserInfoBoxControl ID="UserInfoBoxControl1" runat="server" />
        <div class="colleft factura">
            <h1 id="tituloPagina" runat="server"><i class="fa fa-file-text-o"></i> Generar Factura</h1>
            <asp:ScriptManager ID="ScriptManager1" runat="server" EnablePartialRendering="true"></asp:ScriptManager>
            <div class="infoempresa">
                <div>
                    <asp:Button ID="Nopostweb" runat="server" ViewStateMode="Enabled" CssClass="oculto" />
                    <asp:Button ID="ButtonDDpago" runat="server" Text="" CssClass="oculto" />
                    <asp:Button ID="btnBusCli" runat="server" Text="" CssClass="oculto" />
                    <asp:Button ID="btnBusArt" runat="server" Text="Button" CssClass="oculto" />
                    <asp:Button ID="btnCalculoImporte" runat="server" Text="Button" CssClass="oculto" />
                </div>
            </div>
             <asp:Label ID="apuntador" runat="server"  Text="0" CssClass="oculto" />
            <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                <ContentTemplate>
                    <div class="erroresdiv">
                        <asp:Label ID="ErrorLbfOLIO" runat="server" CssClass="txterror" Visible="False" />
                    </div>
                    <div class="opcionesgenerales">
                        <div>
                            <asp:Label ID="Label58" AssociatedControlId="ddMoneda"  runat="server" Text="Moneda:" />
                            <asp:DropDownList ID="ddMoneda" runat="server" AutoPostBack="True" OnPreRender="ddMoneda_PreRender" OnTextChanged="ddMoneda_TextChanged" OnSelectedIndexChanged="ddMoneda_SelectedIndexChanged">
                                <asp:ListItem Value="P">Pesos</asp:ListItem>
                                <asp:ListItem Value="D">Dolares</asp:ListItem>
                            </asp:DropDownList>
                        </div>
                        <div>
                            <asp:Label ID="Label7" AssociatedControlId="TxtTipoCambioVenta" runat="server" Text="Tipo de Cambio :" />
                            <asp:TextBox ID="TxtTipoCambioVenta" runat="server" ToolTip="Tipo de cambio para esta Factura" onkeypress="return validar_monto(event)" />
                        </div>
                        <div>
                            <asp:Label ID="LbNumCertificado3" AssociatedControlId="txtOrden" runat="server" Text="Orden de compra:" />
                            <asp:TextBox ID="txtOrden" runat="server" />
                        </div>
                        <div>
                            <asp:Label ID="TituloFecha" runat="server" Text="Fecha" CssClass="negritas" /><br />
                            <asp:Label ID="LbFecha" runat="server" Text="28/04/2014" CssClass="negritas fecha" />
                        </div>
                    </div>
                    <div class="infomedia">
                        <div id="DivInfoFolio" runat="server">
                            <h2>Folio</h2>
                            <div>
                                <asp:Label ID="Label33" runat="server" CssClass="negritas" Text="Informacion del folio en :" />
                                <asp:Label ID="lbMoneda" runat="server" Text="No elegido" />
                            </div>
                            <div>
                                <asp:Label ID="Label34" runat="server" CssClass="negritas" Text="Folio :" />
                                <asp:Label ID="LbfolioINi" runat="server" />
                            </div>
                            <div>
                                <asp:Label ID="lbSerieIni0" runat="server" CssClass="negritas" Text="Serie Inicial:" />
                                <asp:Label ID="lbSerieIni" runat="server" />
                            </div>
                            <div>
                                <asp:Label ID="LbNumCertificado4" runat="server" CssClass="negritas" Text="Certificado:" />
                                <asp:Label ID="LbNumCertificado" runat="server" />
                            </div>
                            <div>
                                <asp:Label ID="LbFechaEmision0" runat="server" CssClass="negritas" Text="Fecha emision csd:" />
                                <asp:Label ID="LbFechaEmision" runat="server" />
                            </div>
                            <div>
                                <asp:Label ID="LbFechaVencimiento1" runat="server" CssClass="negritas" Text="Fecha vencimiento csd:" />
                                <asp:Label ID="LbFechaVencimiento" runat="server" />
                            </div>
                        </div>
                        <div id="Div_infoCliente" runat="server" original-title="Busca por Cliente, Código o da click en la lupa" class="tooltip">
                            <h2>Cliente</h2>
                            <div>
                                <asp:Label ID="ErrorCliente" runat="server" class="txterror" original-title="Puedes buscar por COD o Click en la lupa" />
                            </div>
                            <div>
                                <asp:Label ID="Label26" AssociatedControlId="TxtNombreCli" runat="server" Text="Nombre :" />
                                <asp:TextBox ID="TxtNombreCli" runat="server" placeholder="Enter para aceptar" CssClass="tbBusqueda" OnTextChanged="TxtNombreCli_TextChanged" />
                                <span id="butonBuscar1" class="buscar" onclick="return activabotontimer1()" tooltip="Click para que elija Cliente"><i class="fa fa-search"></i> Buscar</span>
                                <asp:Button ID="botonACtivarTimer1" runat="server" Text="Button" OnClick="botonACtivarTimer1_Click" Style="display: none;" />
                            </div>
                            <div>
                                <asp:Label ID="Label27" runat="server" Text="RFC:" CssClass="negritas" />
                                <asp:Label ID="LbRfcCli" runat="server" />
                            </div>
                            <div>
                                <asp:Label ID="Label28" runat="server" Text="Telefono:" CssClass="negritas" />
                                <asp:Label ID="LbCliTelefono" runat="server" />
                            </div>
                            <div>
                                <asp:Label ID="Label30" runat="server" Text="Direccion:" CssClass="negritas" />
                                <asp:Label ID="LbCliDireccion" runat="server" />
                                <asp:Label ID="lbdireccion2" runat="server" />
                            </div>
                        </div>
                    </div>                    
                    <div id="DivBuscarCliente" runat="server">
                        <div class="buscacliente">
                            <asp:Label ID="Lbbuscar" AssociatedControlId="txtBusquedaCliente" runat="server" Text="Buscar:" />
                            <asp:TextBox ID="txtBusquedaCliente" runat="server" OnTextChanged="txtBusquedaCliente_TextChanged" ToolTip="COD para buscar Empresa" />
                        </div>
                        <div id="Divgrid">
                            <asp:GridView ID="GridViewClientes" runat="server" AutoGenerateColumns="False" 
                                CellPadding="15" CssClass="tablasgrid" DataKeyNames="IdCliente" 
                                GridLines="None" ShowHeaderWhenEmpty="True" 
                                OnRowCommand="GridViewClientes_RowCommand" PageSize="7" 
                                onrowdeleting="GridViewClientes_RowDeleting" onrowdatabound="GridViewClientes_RowDataBound1" 
                               >
                                <AlternatingRowStyle BackColor="#ffffff" />
                                <Columns>
                                    <asp:BoundField DataField="IdCliente">
                                        <ItemStyle Width="0px" Font-Size="0px" />
                                    </asp:BoundField>
                                    <asp:BoundField DataField="codigo" HeaderText="Codigo" />
                                    <asp:BoundField DataField="Nombrecliente" HeaderText="Nombre" NullDisplayText="*" SortExpression="Contacto" />
                                    <asp:BoundField DataField="telefonocliente" HeaderText="Telefono" NullDisplayText="*" SortExpression="Descripcion" />
                                    <asp:BoundField DataField="Email" HeaderText="" NullDisplayText="*" SortExpression="FeLlamada">
                                        <ItemStyle Width="0px" Font-Size="0px" />
                                    </asp:BoundField>
                                    <asp:ButtonField ButtonType="Image" CommandName="Seleccionar" DataTextFormatString="Seleccionar"  HeaderText="Seleccionar" ImageUrl="~/Images/select.png" Text="Seleccionar" />
                                </Columns>
                                <EditRowStyle BackColor="#999999" />
                                <HeaderStyle BackColor="#dc4a2d" Font-Bold="True" ForeColor="#ffffff" />
                                <RowStyle BackColor="#f2f2f2" HorizontalAlign="Center" />
                                <SortedAscendingCellStyle BackColor="#E9E7E2" />
                                <SortedAscendingHeaderStyle BackColor="#506C8C" />
                                <SortedDescendingCellStyle BackColor="#FFFDF8" />
                                <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
                            </asp:GridView>
                            <asp:Button ID="Button2" runat="server" Height="0px" Text="Button" Width="12px" OnClick="Button2_Click" Style="display: none" />
                            <div class="paginador">
                                <div>
                                    <asp:Label ID="Label4" runat="server" Text="Página:" />
                                    <asp:Label ID="LbNumeroPaginas" runat="server" Text="1" ></asp:Label>
                                </div>
                                <div class="elementospaginador">
                                    <div>
                                        <asp:LinkButton ID="BtnAnteriorCliente" runat="server" onclick="BtnAnteriorCliente_Click"><i class="fa fa-chevron-left"></i></asp:LinkButton>
                                    </div>
                                    <div class="paginas">
                                        <asp:TextBox ID="TextBox1Cli" runat="server">1</asp:TextBox>
                                    </div>
                                    <div>
                                        <asp:LinkButton ID="BtnSiguienteCliente" runat="server" onclick="BtnSiguienteCliente_Click"><i class="fa fa-chevron-right"></i></asp:LinkButton>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div id="Div_InfoArticulos" runat="server" original-title="Busca por Artículo, Código o da click en la lupa" class="tooltip">
                        <h2>Artículos</h2>
                        <div>
                            <asp:Label ID="LbErrorArt" runat="server" class="errores"/>
                        </div>
                        <div align="center">
                        <asp:Label ID="LbMensajeMod" Visible="False" runat="server" class="verde">Modificando Articulo</asp:Label>
                        <asp:Label ID="LbaddGrid" runat="server" Visible="false" CssClass="verde" Text="Agregar Articulo:"></asp:Label>
                        </div>
                        <div class="subtitulo"> 
                            
                        </div>
                        <div >
                            <asp:Label ID="Lbidart" runat="server" Visible="false"  />
                            <asp:Label ID="LbivaFactor" runat="server" Visible="false" Text="0" />
                            <asp:Label ID="LbIdPresentacion" runat="server" Visible="false"   />
                            <asp:Label ID="LbFilamod" runat="server" Visible="false"  />
                            <asp:Label ID="txtImporteConIva" runat="server" Visible="false" >0</asp:Label>
                            <asp:Label ID="lbIeps" runat="server" Text="Ieps" Visible="false"   />
                            <asp:Label ID="txtMoneda0" runat="server" Visible="false"   />
                            <asp:Label ID="txtImporte0" runat="server" Visible="false"   />
                            <asp:Label ID="EventoMoneda" runat="server" Visible="false"   />
                            
                            <asp:Button ID="botonACtivarTimer2" runat="server" Text="Button" Style="display: none;" OnClick="botonACtivarTimer2_Click" />
                        </div>                        
                        <div id="DivCapArt">
                            <div>
                                <span id="butonBuscar" class="buscar" onclick="return activabotontimer2()" tooltip="Click para que elija Cliente"><i class="fa fa-search"></i> Buscar Artículo</span>
                            </div>
                            <div class="producto">
                                <div class="codigo">
                                    <asp:Label ID="Label36" AssociatedControlId="txtCodOnombre" runat="server" Text="Codigo" />
                                    <asp:TextBox ID="txtCodOnombre" runat="server" ToolTip="Cod o nombre del Articulo para bucarlo con ENTER" OnTextChanged="txtCodOnombre_TextChanged" placeholder="Enter para aceptar" />
                                </div>
                                <div class="nombre">
                                    <asp:Label ID="LbNombreART0" AssociatedControlId="LbNombreART" runat="server" CssClass="negritas" Text="Nombre del Artículo" />
                                    <%-- <asp:Label ID="LbNombreART1" runat="server" CssClass="datosarticulo" Text="" Visible="False" /> --%>
                                    <asp:TextBox ID="LbNombreART" runat="server" Visible="true"></asp:TextBox>
                                </div>
                                <div class="cantidad">
                                    <asp:Label ID="Label49" AssociatedControlId="txtCantidadArt" runat="server" Text="Cantidad" />
                                    <asp:TextBox ID="txtCantidadArt" runat="server" OnTextChanged="txtCantidadArt_TextChanged" onkeypress="return validar_monto(event)" />
                                </div>
                                <div class="precio">
                                    <asp:Label ID="Label38" AssociatedControlId="txtPrecioArt" runat="server" Text="Precio" />
                                    <asp:TextBox ID="txtPrecioArt" runat="server" onkeypress="return validar_monto(event)" OnTextChanged="txtPrecioArt_TextChanged" />
                                </div>
                                <div class="medida">
                                    <asp:Label ID="Label59" runat="server" CssClass="negritas" Text="U/M" ToolTip="Unidad de medida del Producto" /><br />
                                    <asp:Label ID="txtPresentacion0" runat="server" CssClass="datosarticulo" Text="" />
                                </div>
                            </div>
                            <div class="comentario">
                                <asp:CheckBox ID="CheckBox1" runat="server" AutoPostBack="True" OnCheckedChanged="CheckBox1_CheckedChanged" Text="Agrega Comentario" />
                            </div>
                            <div id="DivComment" runat="server">
                                <asp:Label ID="Label6" AssociatedControlId="TxtComment" runat="server" Text="Comentario:" />
                                <asp:TextBox ID="TxtComment" runat="server" TextMode="MultiLine" />
                            </div>
                            <div class="agregar">
                                <asp:LinkButton ID="ButtonAddgrid" runat="server" CausesValidation="False" OnClick="ButtonAddgrid_Click">LinkButton</asp:LinkButton>
<%--                                <a id="A1" href="#" runat="server" onclick="return AddGrid()">Agregar Artículo</a>--%>
                                <a id="A2" href="#" runat="server" onclick="return AddGrid()" visible="False">Actualizar</a>
                            </div>
                        </div>
                        <div id="Div_Busca_Articulos" runat="server">
                            <div class="cerrar">
                                <asp:LinkButton ID="ImgBuCerrarDivArticulos" runat="server" class="fa fa-times" 
                                    Text="Cerrar Búsqueda" onclick="ImgBuCerrarDivArticulos_Click"></asp:LinkButton>
                            </div>
                            <div class="buscaarticulo">
                                <asp:Label ID="Label5" runat="server" Text="Búsqueda Articulo:" CssClass="negritas" />
                                <asp:TextBox ID="txtBusquedaArticulo" runat="server" ToolTip="Cod para buscar articulo" OnTextChanged="txtBusquedaArticulo_TextChanged" CssClass="tbBusqueda" AutoPostBack="True" />
                                <asp:Button ID="Button1" runat="server" Height="0px" Text="Button" Width="12px" OnClick="Button2_Click" Style="display: none" />
                            </div>
                            <div id="DivGridBusquedaArticulos">
                                <asp:GridView ID="GridBuscaArticulos" runat="server" AutoGenerateColumns="False"
                                    CellPadding="15" GridLines="None" OnRowCommand="GridBuscaArticulos_RowCommand" CssClass="tablasgrid">
                                    <AlternatingRowStyle BackColor="#ffffff" />
                                    <Columns>
                                        <asp:BoundField DataField="idArticulo">
                                            <ItemStyle Font-Size="0px" Width="0px" Wrap="False" />
                                        </asp:BoundField>
                                        <asp:BoundField DataField="IvaFactor">
                                            <ItemStyle Font-Size="0px" Width="0px" Wrap="False" />
                                        </asp:BoundField>
                                        <asp:BoundField DataField="codigo" HeaderText="Codigo" />
                                        <asp:BoundField DataField="NombreArt" HeaderText="Nombre" />
                                        <asp:BoundField DataField="Articulo_PrecioA" HeaderText="Precio" />
                                        <asp:BoundField DataField="Articulo_Nacional" HeaderText="Moneda" />
                                        <asp:BoundField DataField="PRESENTACION" HeaderText="Presentacion" />
                                        <asp:BoundField DataField="IdPresentacion" />
                                        <asp:BoundField DataField="Articulo_Ieps" />
                                        <asp:ButtonField ButtonType="Image" HeaderText="Selecionar" ImageUrl="~/Images/select.png" Text="Botón" />
                                    </Columns>
                                    <EditRowStyle BackColor="#999999" />
                                    <HeaderStyle BackColor="#dc4a2d" Font-Bold="True" ForeColor="#ffffff" />
                                    <RowStyle BackColor="#f2f2f2" HorizontalAlign="Center" />
                                    <SortedAscendingCellStyle BackColor="#E9E7E2" />
                                    <SortedAscendingHeaderStyle BackColor="#506C8C" />
                                    <SortedDescendingCellStyle BackColor="#FFFDF8" />
                                    <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
                                </asp:GridView>
                                <div class="paginador">
                                    <div>
                                        <asp:Label ID="Lbpaginas" runat="server" Text="Página:" />
                                        <asp:Label ID="LbnumerodePagiansArt" runat="server" Text="1" ></asp:Label>
                                    </div>
                                    <div class="elementospaginador">
                                        <div>
                                            <asp:LinkButton ID="BtnAnteriorArticulo" runat="server" onclick="BtnAnteriorArticulo_Click"><i class="fa fa-chevron-left"></i></asp:LinkButton>
                                            <asp:Button ID="Button3" runat="server" Text="Button" Style="display: none" />
                                        </div>
                                        <div class="paginas">
                                            <asp:TextBox ID="TextBox1A" runat="server">1</asp:TextBox>
                                        </div>
                                        <div>
                                            <asp:LinkButton ID="BtnNextArticulo" runat="server" onclick="BtnNextArticulo_Click"><i class="fa fa-chevron-right"></i></asp:LinkButton>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div id="Div_Art_Ventas" runat="server">
                            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                                CellPadding="15" GridLines="None" OnRowCommand="GridView1_RowCommand" 
                                NullDisplayText="Empty" 
                                OnSelectedIndexChanged="GridView1_SelectedIndexChanged1" CssClass="tablasgrid" 
                                onrowdatabound="GridView1_RowDataBound">
                                <AlternatingRowStyle BackColor="#ffffff" />
                                <Columns>
                                    <asp:BoundField DataField="Articulo_Id" NullDisplayText="&quot;&quot;" >
                                        <ItemStyle Width="0px" Wrap="False" Font-Size="0px" />
                                    </asp:BoundField>
                                    <asp:BoundField DataField="Articulo_Cod" HeaderText="COD" NullDisplayText="&quot;&quot;" />
                                    <asp:BoundField DataField="Articulo_Nombre" HeaderText="Nombre" />
                                    <asp:BoundField DataField="Articulo_PrecioA" HeaderText="Precio" NullDisplayText="&quot;&quot;" />
                                    <asp:BoundField DataField="Cantidad" HeaderText="Cantidad" />
                                    <asp:BoundField HeaderText="Iva" DataField="ImporteConIva" />
                                    <asp:BoundField DataField="ImporteIeps" HeaderText="Ieps" />
                                    <asp:BoundField DataField="Importe" HeaderText="Importe" />
                                    <asp:BoundField DataField="Articulo_Nacional" HeaderText="Moneda" NullDisplayText="&quot;&quot;" />
                                    <asp:BoundField DataField="Comentario" HeaderText="Comentario" NullDisplayText="  " />
                                    <asp:BoundField DataField="Iva" />
                                    <asp:BoundField DataField="Idpresentacion" />
                                    <asp:BoundField DataField="PresentacionTexto" HeaderText="Presentacion" />
                                    <asp:BoundField DataField="Factor_Ieps" >
                                      <ItemStyle Width="0px" Font-Size="0px" />
                                        </asp:BoundField>
                                    <asp:ButtonField ButtonType="Image" ImageUrl="~/Images/remove.gif" Text="Botón" HeaderText="Remover" CommandName="Borrar" />
                                    <asp:ButtonField ButtonType="Image" CommandName="Modificar" HeaderText="Modificar" ImageUrl="~/Images/ModReArt.png" Text="Botón"  HeaderStyle-CssClass="oculto">
                                     <HeaderStyle CssClass="oculto" />
                                     <ItemStyle  CssClass="oculto" />
                                    </asp:ButtonField>
                                </Columns>
                                <EditRowStyle BackColor="#999999" />
                                <HeaderStyle BackColor="#dc4a2d" Font-Bold="True" ForeColor="#ffffff" />
                                <RowStyle BackColor="#f2f2f2" HorizontalAlign="Center" />
                                <SortedAscendingCellStyle BackColor="#E9E7E2" />
                                <SortedAscendingHeaderStyle BackColor="#506C8C" />
                                <SortedDescendingCellStyle BackColor="#FFFDF8" />
                                <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
                            </asp:GridView>
                        </div>
                        <div id="MenuDatosFactura" align="center">
                            <div>
                                <asp:Label ID="LbError" runat="server" CssClass="txterror" />
                            </div>
                            <div id="MonedaReferencia" runat="server" class="monedaref">
                                <div>
                                    <asp:Label ID="lbClienteFormaPago" AssociatedControlId="DDLFormaPago" runat="server" Text="Pago Mxn:" />
                                    <asp:DropDownList ID="DDLFormaPago" runat="server" OnPreRender="DDLFormaPago_PreRender" />
                                </div>
                                <div>
                                    <asp:Label ID="lbClienteReferenciaPago" AssociatedControlId="txtClienteReferenciaPago" runat="server" Text="Referencia:" />
                                    <asp:TextBox ID="txtClienteReferenciaPago" runat="server" placeholder="Últimos 4 numeros " />
                                </div>
                            </div>
                            <div class="gravables">
                                <div>
                                    <asp:Label ID="LbExento0" runat="server" Text="Exento:" CssClass="negritas" />
                                    <asp:Label ID="LbExento" runat="server" Text="0" />
                                </div>
                                <div>
                                    <asp:Label ID="Tasa00" runat="server" Text="Tasa0%:" CssClass="negritas" />
                                    <asp:Label ID="LbTasa0" runat="server" Text="0" />
                                </div>
                                <div>
                                    <asp:Label ID="LbTasa100" runat="server" Text="Gravable:" CssClass="negritas" />
                                    <asp:Label ID="LbTasa10" runat="server" Text="0" />
                                </div>
                            </div>
                            <div class="resultados">
                                <div>
                                    <asp:Label ID="Label73" runat="server" Text="SubTotal:" CssClass="negritas" />
                                    <asp:Label ID="LbSubtotal0" runat="server" >0</asp:Label>
                                </div>
                                <div>
                                    <asp:Label ID="Label74" runat="server" Text="IVA:" CssClass="negritas" />
                                    <asp:Label ID="LbIva" runat="server" />
                                   
                                    <asp:Label ID="LbIvaDinero0" runat="server"  Text="0"></asp:Label>
                                </div>
                                <div>
                                    <asp:Label ID="Label8" runat="server" Text="Ieps:" CssClass="negritas" />
                                    <asp:Label ID="LbIepsDinero" runat="server" Text="0"></asp:Label>
                                </div>
                                <div>
                                    <asp:Label ID="lbSiRV" runat="server" Text="" CssClass="negritas" />
                                    <asp:Label ID="LblRetencionVenta" runat="server" Text="Retencion Venta:" Visible="False" />
                                </div>
                                <div>
                                    <asp:Label ID="LbRetencionVentavalor" runat="server" Visible="False" CssClass="negritas" />
                                    <asp:Label ID="LbretencionIvaFactor" runat="server" Visible="False" CssClass="negritas" />
                                    <asp:Label ID="LbRetencionVentaDinero" runat="server" Text="0"  Visible="False" CssClass="negritas" />
                                </div>
                                <div>
                                    <asp:Label ID="lbSiIva" runat="server" Text=""  CssClass="oculto"  />
                                    <asp:Label ID="lblRi" runat="server" Text="Retencion Iva:" Visible="False" /> 
                                    <asp:Label ID="LbRetencionIvaValor" runat="server" Visible="False" CssClass="oculto"  />
                                    <asp:Label ID="LbretencionIvaDinero" runat="server" Text="0" Visible="False" />
                                </div>
                                <div>
                                    <asp:Label ID="lbSiRisr" runat="server" Text=""  CssClass="oculto" />
                                    <asp:Label ID="lblRisr" runat="server" Text="Retencion Isr:" Visible="False" />
                                    <asp:Label ID="LbRetencionIsrValor" runat="server" Visible="False" />
                                    <asp:Label ID="LbRetencionIsrFactor" runat="server" Visible="False" />
                                    <asp:Label ID="LbRetencionIsrDinero" runat="server" Text="0" Visible="False"/>
                                </div>
                                <div>
                                    <asp:Label ID="Label75" runat="server" Text="Total:" CssClass="negritas" />
                                    <asp:Label ID="LbTotal" runat="server" >0</asp:Label>
                                </div>
                            </div>
                        </div>
                        <div class="botones">
                                <div class="guardar">
                                    <asp:LinkButton ID="IbRegresar" runat="server" PostBackUrl="~/zfactura/MenuFactura.aspx">Regresar</asp:LinkButton>
                                </div>
                                <div class="guardar">
                                    <asp:LinkButton ID="LbuNuevaFactura" runat="server" 
                                        PostBackUrl="~/zfactura/Realizarfactura1.aspx" onclick="LbuNuevaFactura_Click">Nueva Factura</asp:LinkButton>
                                </div>
                                <div class="guardar">
                                    <a href="#" ID="ImageButton12" runat="server" OnClick="return popupNotas()" ToolTip="Capturar notas para esta factura">Insertar Notas</a>
                                </div>
                                <div class="guardar">
                                    <a href="#" ID="ImageButton9" runat="server" OnClick="return ShowMessageWithAction()" ToolTip="Se almacena la factura">Guardar</a>
                                    <asp:Button ID="btnAceptar1" runat="server" Height="22px" Width="127px" Font-Size="0px" OnClick="Button1_Click" Style="display: none" />
                                </div>
                            </div>
                    </div>
                </ContentTemplate>
                <Triggers>
                    <asp:AsyncPostBackTrigger ControlID="ddMoneda" EventName="TextChanged" />
                    <asp:AsyncPostBackTrigger ControlID="TxtNombreCli" EventName="DataBinding" />
                    <asp:AsyncPostBackTrigger ControlID="TxtNombreCli" EventName="TextChanged" />
                    <asp:AsyncPostBackTrigger ControlID="txtCantidadArt" EventName="TextChanged" />
                    <asp:AsyncPostBackTrigger ControlID="ButtonDDpago" EventName="Click" />
                    <asp:AsyncPostBackTrigger ControlID="btnBusCli" EventName="Click" />
                    <asp:AsyncPostBackTrigger ControlID="btnBusArt" EventName="Click" />
                    <asp:AsyncPostBackTrigger ControlID="btnCalculoImporte" EventName="Click" />
                    <asp:AsyncPostBackTrigger ControlID="botonACtivarTimer1" EventName="Click" />
                    <asp:AsyncPostBackTrigger ControlID="txtBusquedaCliente" EventName="TextChanged" />
                    <asp:AsyncPostBackTrigger ControlID="Button1" EventName="Click" />
                    <asp:AsyncPostBackTrigger ControlID="Button2" EventName="Click" />
                    <asp:AsyncPostBackTrigger ControlID="Button3" EventName="Click" />
                    <asp:AsyncPostBackTrigger ControlID="botonACtivarTimer1" EventName="Click" />
                    <asp:AsyncPostBackTrigger ControlID="botonACtivarTimer2" EventName="Click" />
                    <asp:AsyncPostBackTrigger ControlID="txtBusquedaArticulo" EventName="TextChanged" />
                    <asp:AsyncPostBackTrigger ControlID="CheckBox1" EventName="CheckedChanged" />
                    <asp:AsyncPostBackTrigger ControlID="GridViewClientes" EventName="RowCommand" />
                </Triggers>
            </asp:UpdatePanel>
             <asp:Label ID="LbIvaNumero" runat="server"  Visible="false" ></asp:Label>
        </div>
        <div class="colright">
            <Mr:UserInfoBoxMenuRapido ID="UserInfoBoxMenuRapido" runat="server" />
        </div>
    </form>
    <Me:UserInfoBoxFooter ID="UserInfoBoxFooter" runat="server" />
</body>
</html>

