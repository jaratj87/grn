<%@ Page Language="C#" AutoEventWireup="true" CodeFile="PrincipalUsuario.aspx.cs" Inherits="usuario_PrincipalUsuario" %>
<!DOCTYPE html>
<%@ Register TagPrefix="My" TagName="UserInfoBoxControl" Src="~/Zwebcontrols/EncabezadoError.ascx" %>
<%@  Register TagPrefix="Me" TagName="UserInfoBoxFooter" Src="~/Zwebcontrols/footer.ascx"%>
<%@  Register TagPrefix="Mr" TagName="UserInfoBoxMenuRapido" Src="~/Zwebcontrols/menurapido.ascx"%>
<html lang="es">
<head runat="server">
    <title>GRN | Seleccionar Empresa</title>
    <link href="//netdna.bootstrapcdn.com/font-awesome/4.0.3/css/font-awesome.css" rel="stylesheet">
    <link href="../Styles/grn-styles.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
        <My:UserInfoBoxControl ID="UserInfoBoxControl1" runat="server" />
        <div ID="DivColumnaIzquierda" runat="server">
            <asp:ScriptManager ID="ScriptManager2" runat="server"></asp:ScriptManager>
            <h1 id="tituloPagina" runat="server"><i class="fa fa-building-o"></i> Seleccionar Empresa</h1>
            <div class="subtitulopagina">
                <asp:Label ID="Label1" runat="server" Text="¿Empresa en la que desea Trabajar?" />
            </div>
            <asp:UpdatePanel ID="UpdatePanel1" runat="server" UpdateMode="Conditional">
                <ContentTemplate>
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="15" GridLines="None" OnRowCommand="GridView1_RowCommand" CssClass="tablasgrid">
                        <AlternatingRowStyle BackColor="#ffffff" />
                        <Columns>
                            <asp:BoundField DataField="Propiedades_Id">
                                <ItemStyle Width="0px" Wrap="False" Font-Size="0px" />
                            </asp:BoundField>
                            <asp:BoundField DataField="Propiedades_Empresa" HeaderText="Nombre de la empresa" />
                            <asp:BoundField DataField="RFC" HeaderText="RFC" />
                            <asp:BoundField DataField="Usuario_Stat1">
                                <ItemStyle Width="0px" Wrap="False" Font-Size="0px" />
                            </asp:BoundField>
                            <asp:BoundField DataField="RegimenFiscal" HeaderText="Régimen Fiscal" />
                            <asp:ButtonField ButtonType="Button" Text="Seleccionar" ItemStyle-CssClass="btnseleccion" />
                        </Columns>
                        <HeaderStyle BackColor="#dc4a2d" Font-Bold="True" ForeColor="#ffffff" />
                        <RowStyle BackColor="#f2f2f2" HorizontalAlign="Center" />
                        <SortedAscendingCellStyle BackColor="#E9E7E2" />
                        <SortedAscendingHeaderStyle BackColor="#506C8C" />
                        <SortedDescendingCellStyle BackColor="#FFFDF8" />
                        <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
                    </asp:GridView>
                </ContentTemplate>
                <Triggers>
                    <asp:AsyncPostBackTrigger ControlID="GridView1" EventName="DataBinding" />
                    <asp:AsyncPostBackTrigger ControlID="GridView1" EventName="DataBound" />
                    <asp:AsyncPostBackTrigger ControlID="GridView1" EventName="RowCommand" />
                </Triggers>
            </asp:UpdatePanel>
        </div>
        <div class="colright">
            <Mr:UserInfoBoxMenuRapido ID="UserInfoBoxMenuRapido" runat="server" />
        </div>
    </form>
    <Me:UserInfoBoxFooter ID="UserInfoBoxFooter" runat="server" />
</body>
</html>
