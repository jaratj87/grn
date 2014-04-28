<%@ Page Language="C#" AutoEventWireup="true" CodeFile="MenuFolios.aspx.cs" Inherits="zConfigFolio_MenuFolios" %>
<!DOCTYPE html>
<%@ Register TagPrefix="My" TagName="UserInfoBoxControl" Src="~/Zwebcontrols/WebUserControlMenuUser.ascx" %>
<%@  Register TagPrefix="Me" TagName="UserInfoBoxFooter" Src="~/Zwebcontrols/footer.ascx"%>
<%@  Register TagPrefix="Mr" TagName="UserInfoBoxMenuRapido" Src="~/Zwebcontrols/menurapido.ascx"%>
<html lang="es">
<head runat="server">
    <title>GRN | Folios</title>
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
            <h1 id="tituloPagina" runat="server">
                <i class="fa fa-barcode"></i> Folios
                <div id="divBuscar" class="busqueda">
                    <asp:Label ID="Lbbuscar" runat="server" Text="Buscar:" />
                    <asp:TextBox ID="txtBusqueda" runat="server" ToolTip="COD para buscar Empresa" ontextchanged="txtBusqueda_TextChanged"></asp:TextBox>
                </div>
            </h1>
            <div class="btnfolios">
                <div class="btnnuevo">
                    <asp:LinkButton ID="ImageButton1" runat="server" onclick="ImageButton1_Click1">Modificar Sello</asp:LinkButton>
                </div>
                <div class="btnnuevo">
                    <asp:LinkButton ID="ImageButton3" runat="server" onclick="ImageButton1_Click">Nuevos Folios</asp:LinkButton>
                </div>
            </div>
            <asp:UpdatePanel ID="PanelGrid" runat="server" UpdateMode="Conditional">
                <ContentTemplate>
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="15" GridLines="None" OnRowCommand="GridView1_RowCommand" CssClass="tablasgrid">
                        <AlternatingRowStyle BackColor="#ffffff" />
                        <Columns>
                            <asp:BoundField DataField="FEA_Id" />
                            <asp:BoundField DataField="FEA_Descripcion" HeaderText="Descripción" />
                            <asp:BoundField DataField="FEA_SerieFactura" HeaderText="Serie" />
                            <asp:BoundField DataField="FEA_FolioFacturaIni" HeaderText="Folio Inicial" />
                            <asp:BoundField DataField="FEA_Documento" HeaderText="Documento" />
                            <asp:TemplateField HeaderText="Modificar">
                                <ItemTemplate>
                                    <asp:LinkButton ID="btnModificar" runat="server"><i class="fa fa-pencil"></i></asp:LinkButton>
                                </ItemTemplate>
                            </asp:TemplateField> 
                            <%-- <asp:ButtonField ButtonType="Image" HeaderText="Modificar" ImageUrl="~/Images/modFo.png" Text="Botón" CommandName="Modificar" /> --%>
                        </Columns>
                        <EditRowStyle BackColor="#999999" />
                        <HeaderStyle BackColor="#dc4a2d" Font-Bold="True" ForeColor="#ffffff" />
                        <RowStyle BackColor="#f2f2f2" HorizontalAlign="Center" />
                        <SortedAscendingCellStyle BackColor="#E9E7E2" />
                        <SortedAscendingHeaderStyle BackColor="#506C8C" />
                        <SortedDescendingCellStyle BackColor="#FFFDF8" />
                        <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
                    </asp:GridView>
                    <asp:Button ID="Button2" runat="server" Height="0px" Text="Button" Width="12px" OnClick="Button2_Click"
                        Style="display: none" />
                </ContentTemplate>
                <Triggers>
                    <asp:AsyncPostBackTrigger ControlID="GridView1" EventName="DataBinding" />
                    <asp:AsyncPostBackTrigger ControlID="txtBusqueda" EventName="TextChanged" />
                    <asp:AsyncPostBackTrigger ControlID="BtnAnterior" EventName="Click" />
                    <asp:AsyncPostBackTrigger ControlID="BtnSiguiente" EventName="Click" />
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
                        <asp:LinkButton ID="BtnSiguiente" runat="server" onclick="BtnSiguiente_Click"><i class="fa fa-chevron-right"></i></asp:LinkButton>
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