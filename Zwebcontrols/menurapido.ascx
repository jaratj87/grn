<%@ Control Language="C#" AutoEventWireup="true" CodeFile="menurapido.ascx.cs" Inherits="WebUserControlMenuUser" %>
<div class="menurapido">
	<h2>Acceso Rápido</h2>
	<ul>
		<li><asp:LinkButton ID="LinkBuGeFact" runat="server" Text="Generar Documento" onclick="LinkBuGeFact_Click" CausesValidation="False"><i class="fa fa-file-o"></i> Generar Documento</asp:LinkButton></li>
		<li><asp:LinkButton ID="LinkBuSelectEmpresa" runat="server" Text="Seleccionar Empresa" onclick="LinkBuSelectEmpresa_Click" CausesValidation="False"><i class="fa fa-file-o"></i> Seleccionar Empresa</asp:LinkButton></li>
		<li><asp:LinkButton ID="LinkBuReEmp" runat="server" Text="Registro de Empresa" onclick="LinkBuReEmp_Click" CausesValidation="False"><i class="fa fa-file-o"></i> Registro de Empresa</asp:LinkButton></li>
		<li><asp:LinkButton ID="LinkBuNuevoCli" runat="server" Text="Nuevo Cliente" onclick="LinkBuNuevoCli_Click" CausesValidation="False"><i class="fa fa-file-o"></i> Nuevo Cliente</asp:LinkButton></li>
		<li><asp:LinkButton ID="LinkBuNuevoProd" runat="server" Text="Nuevo Producto" onclick="LinkBuNuevoProd_Click" CausesValidation="False"><i class="fa fa-file-o"></i> Nuevo Producto</asp:LinkButton></li>
	</ul>
</div>