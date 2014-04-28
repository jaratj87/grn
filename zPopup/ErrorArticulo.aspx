<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ErrorArticulo.aspx.cs" Inherits="zPopup_Error" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="../Styles/style.css" rel="stylesheet" type="text/css" />
    <script src="../Scripts/ModalPopupWindow.js" type="text/javascript"></script>
 
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div align="center" style="width: 615px">
    
        <asp:ScriptManager ID="ScriptManager1" runat="server">
        </asp:ScriptManager>
        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
            <ContentTemplate>
                <asp:Timer ID="Timer1" runat="server" Interval="3000" ontick="Timer1_Tick">
                </asp:Timer>
            </ContentTemplate>
            <Triggers>
                <asp:AsyncPostBackTrigger ControlID="Timer1" EventName="Tick" />
            </Triggers>
        </asp:UpdatePanel>
    
        <br />
    
        <br />
    
    </div>
    <div id="banner" style="position: absolute; height: 95px; width: 475px; top: 120px;
            left: 445px;" align="center">
    
        <asp:Label ID="Label1" runat="server" Font-Names="Arial" Text="Error" 
            CssClass="labelTipoletra" Font-Size="XX-Large" Font-Bold="True" 
            ForeColor="Red" ></asp:Label>
            <br />
    
        <asp:Label ID="Label2" runat="server" Font-Names="Arial" 
            Text="Debes de añadir un Articulo" 
            CssClass="labelTipoletra"></asp:Label>

            <br />
     
        <asp:Label ID="Label3" runat="server" Font-Names="Arial" 
            Text="(Sera Redirigido a esa pagina)" 
            CssClass="labelTipoletra" ForeColor="#000099"></asp:Label>
     
        </div>
    </form>
</body>
</html>
