<%@ Page Language="C#" AutoEventWireup="true" CodeFile="MenuArt.aspx.cs" Inherits="MenuArt" %>
<!DOCTYPE html>
<%@ Register TagPrefix="My" TagName="UserInfoBoxControl" Src="~/Zwebcontrols/WebUserControlMenuUser.ascx" %>
<%@  Register TagPrefix="Me" TagName="UserInfoBoxFooter" Src="~/Zwebcontrols/footer.ascx"%>
<%@  Register TagPrefix="Mr" TagName="UserInfoBoxMenuRapido" Src="~/Zwebcontrols/menurapido.ascx"%>
<html lang="es">
<head runat="server">
    <title>GRN | Artículos</title>
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
                <i class="fa fa-tags"></i> Artículos
                <div id="divBuscar" class="busqueda">
                    <asp:Label ID="Lbbuscar" runat="server" Text="Buscar:" />
                    <asp:TextBox ID="txtBusqueda" runat="server" ToolTip="COD para buscar Empresa" ontextchanged="txtBusqueda_TextChanged"></asp:TextBox>
                </div>
            </h1>
            <div class="btnnuevo">
                <asp:LinkButton ID="ImageButton1" runat="server" onclick="ImageButton1_Click">Nuevo Artículo</asp:LinkButton>
            </div>
            <asp:UpdatePanel ID="PanelGrid" runat="server" UpdateMode="Conditional" RenderMode="Inline">
                <ContentTemplate>
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="15" GridLines="None" OnRowCommand="GridView1_RowCommand" onrowdeleting="GridView1_RowDeleting" CssClass="tablasgrid">
                        <AlternatingRowStyle BackColor="White" />
                        <Columns>
                            <asp:BoundField DataField="idArticulo" />
                            <asp:BoundField DataField="codigo" HeaderText="Código" />
                            <asp:BoundField DataField="NombreArt" HeaderText="Descripción" />
                            <asp:BoundField DataField="Articulo_PrecioA" HeaderText="Precio" />
                            <asp:BoundField DataField="Articulo_Nacional" HeaderText="Nacional" />
                            <asp:BoundField DataField="Presentacion" HeaderText="Presentación" />
                            <asp:TemplateField HeaderText="Modificar">
                                <ItemTemplate>
                                    <asp:LinkButton ID="btnModificar" runat="server"><i class="fa fa-pencil"></i></asp:LinkButton>
                                </ItemTemplate>
                            </asp:TemplateField>  
                            <%-- <asp:ButtonField ButtonType="Image" HeaderText="Modificar" ImageUrl="~/Images/ModArt.png" Text="Botón" CommandName="Modificar" /> --%>
                            <asp:TemplateField ShowHeader="False" HeaderText="Eliminar">
                                <ItemTemplate>
                                    <asp:LinkButton ID="btnEliminar" runat="server" OnClientClick="return confirm('¿Está seguro que desea eliminar el registro?');"><i class="fa fa-trash-o"></i></asp:LinkButton>
                                    <%-- <asp:ImageButton ID="ImageButton1" runat="server"  CausesValidation="False" CommandName="Delete" ImageUrl="~/Images/DeArt.png" Text="Delete" OnClientClick="return confirm('¿Esta seguro que desea eliminar el registro?');" /> --%>
                                </ItemTemplate>
                            </asp:TemplateField>
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
                </ContentTemplate>
                <Triggers>
                    <asp:AsyncPostBackTrigger ControlID="GridView1" EventName="DataBinding" />
                    <asp:AsyncPostBackTrigger ControlID="txtBusqueda" EventName="TextChanged" />
                    <asp:AsyncPostBackTrigger ControlID="BtnNext" EventName="Click" />
                    <asp:AsyncPostBackTrigger ControlID="BtnAnterior" EventName="Click" />
                    <asp:AsyncPostBackTrigger ControlID="BtnAnterior" EventName="DataBinding" />
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
                        <asp:LinkButton ID="BtnNext" runat="server" onclick="BtnNext_Click"><i class="fa fa-chevron-right"></i></asp:LinkButton>
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
