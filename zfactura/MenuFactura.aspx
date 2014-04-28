<%@ Page Language="C#" AutoEventWireup="true" CodeFile="MenuFactura.aspx.cs" Inherits="zConfigFolio_MenuFolios" %>
<!DOCTYPE html>
<%@ Register TagPrefix="My" TagName="UserInfoBoxControl" Src="~/Zwebcontrols/WebUserControlMenuUser.ascx" %>
<%@  Register TagPrefix="Me" TagName="UserInfoBoxFooter" Src="~/Zwebcontrols/footer.ascx"%>
<%@  Register TagPrefix="Mr" TagName="UserInfoBoxMenuRapido" Src="~/Zwebcontrols/menurapido.ascx"%>
<html lang="es">
<head runat="server">
    <title>GRN | Facturas</title>
    <script src="../Scripts/jquery.min.js" type="text/javascript"></script>
    <link href="//netdna.bootstrapcdn.com/font-awesome/4.0.3/css/font-awesome.css" rel="stylesheet">
    <link href="../Styles/grn-styles.css" rel="stylesheet" type="text/css" />
    <script type="text/javascript">
        function chngtxtbxval() {
            $("#Button2").click();
        }
    </script>
</head>
<body>
    <form id="form1" runat="server">
        <My:UserInfoBoxControl ID="UserInfoBoxControl1" runat="server" />
        <div class="colleft">
            <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
            <div class="titulofactura">
                <h1 id="tituloPagina" runat="server"><i class="fa fa-file-text-o"></i> Facturas</h1>
                <div id="divBuscar" class="busqueda">
                    <asp:Label ID="Lbbuscar" runat="server" Text="Buscar:" />
                    <asp:TextBox ID="txtBusqueda" runat="server" ToolTip="COD para buscar Empresa" ontextchanged="txtBusqueda_TextChanged"></asp:TextBox>
                </div>
            </div>
            <div class="btnfacturas">
                <div class="btnnuevo">
                    <asp:LinkButton ID="ImageButton3" runat="server" onclick="ImageButton1_Click">Nueva Factura</asp:LinkButton>
                </div>
                <div class="colores">
                    <div class="timbradas">Timbrada</div>
                    <div class="notimbradas">No Timbrada</div>
                    <div class="canceladas">Cancelada</div>
                </div>
            </div>
            <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                <ContentTemplate>
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="10" GridLines="None" OnRowCommand="GridView1_RowCommand" CssClass="tablasgrid">
                        <AlternatingRowStyle BackColor="White" />
                        <Columns>
                            <asp:BoundField DataField="Factura_Id" />
                            <asp:BoundField DataField="Factura_Serie" HeaderText="Serie" />
                            <asp:BoundField DataField="Factura_Folio" HeaderText="Folio" />
                            <asp:BoundField DataField="Cliente" HeaderText="Cliente" />
                            <asp:BoundField DataField="Documento" HeaderText="Documento" />
                            <asp:BoundField DataField="Factura_Moneda" HeaderText="Moneda" />
                            <asp:BoundField DataField="Comentario" HeaderText="Comentario" />
                            <asp:BoundField DataField="Factura_TotalFactura" HeaderText="Total" />
                            <asp:BoundField DataField="Factura_FechaTimbrado" />
                            <asp:BoundField DataField="Factura_FechaCancelada" />
                            <asp:TemplateField HeaderText="Visualizar">
                                <ItemTemplate>
                                    <asp:LinkButton ID="btnVerFactura" runat="server"><i class="fa fa-eye"></i></asp:LinkButton>
                                </ItemTemplate>
                            </asp:TemplateField> 
                            <%-- <asp:ButtonField ButtonType="Image" HeaderText="Visualizar Factura" ImageUrl="~/Images/verFactura.png" Text="Botón" CommandName="VerFactura" /> --%>
                            <asp:TemplateField HeaderText="Descargar">
                                <ItemTemplate>
                                    <asp:LinkButton ID="btnDescargar" runat="server"><i class="fa fa-download"></i></asp:LinkButton>
                                </ItemTemplate>
                            </asp:TemplateField> 
                            <%-- <asp:ButtonField ButtonType="Image" HeaderText="Descargar Pdf/Xml" ImageUrl="~/Images/download.png" Text="Botón" CommandName="Descargar" /> --%>
                            <asp:BoundField HeaderText="Status" DataField="Factura_EmailEnviadoOriginal" />
                        </Columns>
                        <EditRowStyle BackColor="#999999" />
                        <HeaderStyle BackColor="#dc4a2d" Font-Bold="True" ForeColor="#ffffff" />
                        <RowStyle BackColor="#f2f2f2" HorizontalAlign="Center" />
                        <SortedAscendingCellStyle BackColor="#E9E7E2" />
                        <SortedAscendingHeaderStyle BackColor="#506C8C" />
                        <SortedDescendingCellStyle BackColor="#FFFDF8" />
                        <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
                    </asp:GridView>
                    <asp:Button ID="Button2" runat="server" Text="Button" OnClick="Button2_Click" Style="display: none" />
                </ContentTemplate>
                <Triggers>
                    <asp:AsyncPostBackTrigger ControlID="GridView1" EventName="DataBinding" />
                    <asp:AsyncPostBackTrigger ControlID="txtBusqueda" EventName="TextChanged" />
                    <asp:AsyncPostBackTrigger ControlID="GridView1" EventName="RowCommand" />
                </Triggers>
            </asp:UpdatePanel>
            <div class="erroresdiv">
                <asp:Label ID="LbError" runat="server" Text="LbError" CssClass="errores" />
            </div>
            <div class="paginador">
                <div>
                    <asp:Label ID="Lbpaginas" runat="server" Text="Página:" />
                </div>
                <div class="elementospaginador">
                    <div>
                        <asp:LinkButton ID="BtnAnterior" runat="server" onclick="BtnAnterior_Click"><i class="fa fa-chevron-left"></i></asp:LinkButton>
                    </div>
                    <div class="paginas">
                        <asp:TextBox ID="TextBox1" runat="server">1</asp:TextBox>
                    </div>
                    <div>
                        <asp:LinkButton ID="BtnSiguiente" runat="server" onclick="btnNext_Click"><i class="fa fa-chevron-right"></i></asp:LinkButton>
                    </div>
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
