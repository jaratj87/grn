<%@ Page Language="C#" AutoEventWireup="true" CodeFile="MenuEmp.aspx.cs" Inherits="MenuEmp" %>
<!DOCTYPE html>
<%@ Register TagPrefix="My" TagName="UserInfoBoxControl" Src="~/Zwebcontrols/WebUserControlMenuUser.ascx" %>
<%@  Register TagPrefix="Me" TagName="UserInfoBoxFooter" Src="~/Zwebcontrols/footer.ascx"%>
<%@  Register TagPrefix="Mr" TagName="UserInfoBoxMenuRapido" Src="~/Zwebcontrols/menurapido.ascx"%>
<html lang="es">
<head runat="server">
    <script src="../Scripts/jquery.min.js" type="text/javascript"></script>
     <link href="//netdna.bootstrapcdn.com/font-awesome/4.0.3/css/font-awesome.css" rel="stylesheet">
    <link href="../Styles/grn-styles.css" rel="stylesheet" type="text/css" />
    <title>GRN | Empresas</title>
    <script type="text/javascript">
        function chngtxtbxval() 
        {
            $("#Button2").click();
        }
    </script>
</head>
<body>
    <form id="form1" runat="server">
        <My:UserInfoBoxControl ID="UserInfoBoxControl" runat="server"  />
        <div class="colleft">
            <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
             <h1 id="tituloPagina" runat="server">
                <i class="fa fa-building-o"></i> Empresas
                <div id="divBuscar" class="busqueda">
                    <asp:Label ID="Lbbuscar" runat="server" Text="Buscar:" />
                    <asp:TextBox ID="txtBusqueda" runat="server" ToolTip="COD para buscar Empresa" ontextchanged="txtBusqueda_TextChanged"></asp:TextBox>
                </div>
            </h1>
            <div class="btnnuevo">
                <asp:LinkButton ID="ImageButton12" runat="server" onclick="ImageButton1_Click12">Nueva Empresa</asp:LinkButton>
            </div>
            <asp:UpdatePanel ID="PanelGrid" runat="server" UpdateMode="Conditional">
                <ContentTemplate>
                    <asp:GridView ID="GridView1" runat="server" CellPadding="15" GridLines="None" onrowcommand="GridView1_RowCommand" onselectedindexchanged="GridView1_SelectedIndexChanged" onrowdeleting="GridView1_RowDeleting" AutoGenerateColumns="False" CssClass="tablasgrid">
                        <AlternatingRowStyle BackColor="#ffffff" />
                        <Columns>
                            <asp:BoundField DataField="idempresa" NullDisplayText="==" />
                            <asp:BoundField DataField="Nombreempresa" HeaderText="Empresa" />
                            <asp:BoundField DataField="telefono" HeaderText="Teléfono" />
                            <asp:BoundField DataField="rfc" HeaderText="RFC" />
                            <asp:TemplateField HeaderText="Modificar">
                                <ItemTemplate>
                                    <asp:LinkButton ID="btnModificar" runat="server"><i class="fa fa-pencil"></i></asp:LinkButton>
                                </ItemTemplate>
                            </asp:TemplateField>   
                            <%-- <asp:ButtonField ButtonType="Button" HeaderText="Modificar" Text="Test" CommandName="Modificar" ItemStyle-CssClass="btnseleccion" /> --%>
                            <asp:TemplateField HeaderText="Eliminar">
                                <ItemTemplate>
                                    <asp:LinkButton ID="btnEliminar" runat="server" OnClientClick="return confirm('¿Está seguro que desea eliminar el registro de la empresa?  Se borrarán todos los registro de cliente y artículos de esta empresa');"><i class="fa fa-trash-o"></i></asp:LinkButton>
                                    <%-- <asp:ImageButton ID="ImageButton1" runat="server"  CausesValidation="False" CommandName="Delete" ImageUrl="~/Images/DEmp.png" Text="Delete" OnClientClick="return confirm('¿Esta seguro que desea eliminar el registro de la empresa?  Se borraran todos los registro de cliente y Articulos de esta empresa');" ItemStyle-CssClass="btnseleccion" /> --%>
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
                     <asp:Button ID="Button2" runat="server" Text="Button" OnClick="Button2_Click" Style="display:none" />
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
                        <asp:LinkButton ID="btnNext0" runat="server" onclick="btnNext0_Click"><i class="fa fa-chevron-right"></i></asp:LinkButton>
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