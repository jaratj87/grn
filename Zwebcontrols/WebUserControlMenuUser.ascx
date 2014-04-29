<%@ Control Language="C#" AutoEventWireup="true" CodeFile="WebUserControlMenuUser.ascx.cs" Inherits="WebUserControlMenuUser" %>
<div id="wrapper">
  <header>
    <div class="logo">
      <asp:Image ID="Image11" runat="server" ImageUrl="~/Images/logo-sistema.jpg" />
    </div>
    <div class="logoempresa">
      <div class="empresa">
        <span class="negritas"><asp:Label ID="LbEmpresaTrabajando" runat="server" Text="GRN Factura Electrónica prueba de empresa seleccionada" /></span>
      </div>
    </div>
    <div class="datosuser">
      <div class="usuario">
        <span class="negritas">Usuario: <asp:Label ID="LbuserName" runat="server" Text="Benjamín Ramírez Herrera" /></span>
      </div>
      <div class="logout">
          <a href="../ZLogins/Logout.aspx">Cerrar Sesión</a>
      </div>
    </div>
  </header>
  <div id="DivMenu" class="menugral" runat="server">
    <ul>
      <li>
        <asp:LinkButton ID="LinkMiperfil" runat="server" OnClick="LinkMiperfil_Click" CausesValidation="False"><i class="fa fa-user"></i> Perfil</asp:LinkButton>
      </li>
      <li>
        <asp:LinkButton ID="LinkMisEmpresas" runat="server" OnClick="LinkMisEmpresas_Click" CausesValidation="False"><i class="fa fa-building-o"></i> Empresas</asp:LinkButton>
      </li>
      <li>
        <asp:LinkButton ID="LinkClientes" runat="server" OnClick="LinkClientes_Click" CausesValidation="False"><i class="fa fa-users"></i> Clientes</asp:LinkButton>
      </li>
      <li>
        <asp:LinkButton ID="LinkArticulos" runat="server" OnClick="LinkArticulos_Click" CausesValidation="False"><i class="fa fa-tags"></i> Artículos</asp:LinkButton>
      </li>
      <li>
        <asp:LinkButton ID="LinkFolios" runat="server" OnClick="LinkFolios_Click" CausesValidation="False"><i class="fa fa-barcode"></i> Folios</asp:LinkButton>
      </li>
      <li>
        <asp:LinkButton ID="LinkBF" runat="server" onclick="LinkBF_Click" CausesValidation="False"><i class="fa fa-file-text-o"></i> Facturas</asp:LinkButton>
      </li>
      <li>
        <asp:LinkButton ID="LinkBN" runat="server" onclick="LinkBN_Click" CausesValidation="False"><i class="fa fa-edit"></i> Notas de Cargo</asp:LinkButton>
      </li>
      <li>
        <asp:LinkButton ID="LinkBuNE" runat="server" onclick="LinkBuNE_Click" CausesValidation="False"><i class="fa fa-edit"></i> Notas de Crédito</asp:LinkButton>
      </li>
    </ul>
  </div>