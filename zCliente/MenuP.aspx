<%@ Page Language="C#"   AutoEventWireup="true" CodeFile="MenuP.aspx.cs" Inherits="altacli" %>
<!DOCTYPE html>
<%@ Register TagPrefix="My" TagName="UserInfoBoxControl" Src="~/Zwebcontrols/WebUserControlMenuUser.ascx" %>
<%@  Register TagPrefix="Me" TagName="UserInfoBoxFooter" Src="~/Zwebcontrols/footer.ascx"%>
<%@  Register TagPrefix="Mr" TagName="UserInfoBoxMenuRapido" Src="~/Zwebcontrols/menurapido.ascx"%>
<html lang="es">
<head runat="server">
    <title>GRN | Clientes</title>
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
        <My:UserInfoBoxControl runat="server" />
        <div class="colleft">
            <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
            <h1 id="tituloPagina" runat="server">
                <i class="fa fa-users"></i> Clientes
                <div id="divBuscar" class="busqueda">
                    <asp:Label ID="Lbbuscar" runat="server" Text="Buscar:" />
                    <asp:TextBox ID="txtBusqueda" runat="server" ToolTip="COD para buscar Empresa" ontextchanged="txtBusqueda_TextChanged"></asp:TextBox>
                </div>
            </h1>
            <div class="btnnuevo">
                <asp:LinkButton ID="ImageButton1" runat="server" onclick="ImageButton1_Click">Nuevo Cliente</asp:LinkButton>
            </div>
            <asp:UpdatePanel ID="PanelGrid" runat="server" UpdateMode="Conditional">
                <ContentTemplate>
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="15"
                        GridLines="None" ShowHeaderWhenEmpty="True" DataKeyNames="IdCliente" OnSelectedIndexChanged="GridView1_SelectedIndexChanged"
                        OnSelectedIndexChanging="GridView1_SelectedIndexChanging" OnRowCommand="GridView1_RowCommand" OnRowDeleting="GridView1_RowDeleting" CssClass="tablasgrid">
                        <AlternatingRowStyle BackColor="#ffffff" />
                        <Columns>
                            <asp:BoundField DataField="IdCliente" />
                            <asp:BoundField DataField="codigo" HeaderText="Código" />
                            <asp:BoundField DataField="Nombrecliente" HeaderText="Nombre" NullDisplayText="*" SortExpression="Contacto" />
                            <asp:BoundField DataField="telefonocliente" HeaderText="Teléfono" NullDisplayText="*" SortExpression="Descripción" />
                            <asp:TemplateField HeaderText="Email">
                                <ItemTemplate>
                                    <asp:TextBox ID="TxtEmails" runat="server" Text="" TextMode="MultiLine" ReadOnly="true"></asp:TextBox>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:BoundField DataField="Email" HeaderText="" NullDisplayText="*" SortExpression="FeLlamada" ReadOnly="true" />
                            <asp:TemplateField HeaderText="Facturar">
                                <ItemTemplate>
                                    <asp:LinkButton ID="btnFacturar" runat="server"><i class="fa fa-file-text-o"></i></asp:LinkButton>
                                </ItemTemplate>
                            </asp:TemplateField>  
                            <%-- <asp:ButtonField ButtonType="Image" CommandName="Facturar" HeaderText="Facturar" ImageUrl="~/Images/fact_cliente.png" Text="Botón" /> --%>
                            <asp:TemplateField HeaderText="Modificar">
                                <ItemTemplate>
                                    <asp:LinkButton ID="btnModificar" runat="server"><i class="fa fa-pencil"></i></asp:LinkButton>
                                </ItemTemplate>
                            </asp:TemplateField> 
                            <%-- <asp:ButtonField Text="Modificar" DataTextFormatString="modificar" ButtonType="Image" HeaderText="Modificar" ImageUrl="~/Images/mod.png" CommandName="Modificar" /> --%>
                            <asp:TemplateField ShowHeader="False" HeaderText="Eliminar">
                                <ItemTemplate>
                                    <asp:LinkButton ID="btnEliminar" runat="server" OnClientClick="return confirm('¿Está seguro que desea eliminar el registro?');"><i class="fa fa-trash-o"></i></asp:LinkButton>
                                    <%-- <asp:ImageButton ID="ImageButton1" runat="server" CausesValidation="False" CommandName="Delete" ImageUrl="~/Images/del.png" Text="Delete" OnClientClick="return confirm('¿Esta seguro que desea eliminar el registro?');" /> --%>
                                </ItemTemplate>
                                <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
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
                    <asp:Button ID="Button2" runat="server" Text="Button" OnClick="Button2_Click" Style="display: none" />
                </ContentTemplate>
                <Triggers>
                    <asp:AsyncPostBackTrigger ControlID="GridView1" EventName="DataBinding" />
                    <asp:AsyncPostBackTrigger ControlID="BtnSiguiente" EventName="DataBinding" />
                    <asp:AsyncPostBackTrigger ControlID="BtnAnterior" EventName="Click" />
                    <asp:AsyncPostBackTrigger ControlID="txtBusqueda" EventName="TextChanged" />
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
        <Me:UserInfoBoxFooter ID="UserInfoBoxFooter" runat="server" />
    </form>
</body>
</html>
