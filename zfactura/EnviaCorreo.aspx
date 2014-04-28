<%@ Page Language="C#" AutoEventWireup="true" CodeFile="EnviaCorreo.aspx.cs" Inherits="zfactura_Download" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            width: 50px;
            height: 51px;
        }
       
    </style>
    <link href="../Styles/style.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    <div align="center">
        <asp:ScriptManager ID="ScriptManager1" runat="server">
        </asp:ScriptManager>
        <asp:UpdateProgress ID="UpdateProgress1" dDynamicLayout="true" runat="server">
            <ProgressTemplate>
                 <asp:Image ID="imgWaitIcon" runat="server" ImageAlign="AbsMiddle" 
                     ImageUrl="~/Images/loading.gif" alt="Loading" Height="107px" 
                     Width="113px" />
                     <br />
            </ProgressTemplate>
        </asp:UpdateProgress>
        <asp:Label ID="Lbmensaje" runat="server" CssClass="labelTipoletra" 
            Font-Bold="True" Font-Size="X-Large"></asp:Label>
        <br />
        <asp:Button ID="btnAceptar" runat="server" Text="Aceptar" 
            CssClass="TextboxBlockTimbrado" UseSubmitBehavior="False" Height="41px" onclick="btnAceptar_Click" 
            Width="65px" Visible="False" />
    </div>
    </form>
</body>
</html>
