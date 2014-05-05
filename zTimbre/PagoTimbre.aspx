<%@ Page Language="C#" AutoEventWireup="true" CodeFile="PagoTimbre.aspx.cs" Inherits="usuario_Miperfil" %>
<!DOCTYPE html>
<%@ Register TagPrefix="My" TagName="UserInfoBoxControl" Src="~/Zwebcontrols/WebUserControlMenuUser.ascx" %>
<%@  Register TagPrefix="Me" TagName="UserInfoBoxFooter" Src="~/Zwebcontrols/footer.ascx"%>
<%@  Register TagPrefix="Mr" TagName="UserInfoBoxMenuRapido" Src="~/Zwebcontrols/menurapido.ascx"%>
<html lang="es">
<head runat="server">
    <title>GRN | Pago de Timbres</title>
    <script src="../Scripts/jquery-1.3.2.min.js" type="text/javascript"></script>
    <link href="//netdna.bootstrapcdn.com/font-awesome/4.0.3/css/font-awesome.css" rel="stylesheet">
    <link href="../Styles/grn-styles.css" rel="stylesheet" type="text/css" />
    <script type="text/javascript">
        (function () { function $MPBR_load() { window.$MPBR_loaded !== true && (function () { var s = document.createElement("script"); s.type = "text/javascript"; s.async = true; s.src = ("https:" == document.location.protocol ? "https://www.mercadopago.com/org-img/jsapi/mptools/buttons/" : "http://mp-tools.mlstatic.com/buttons/") + "render.js"; var x = document.getElementsByTagName('script')[0]; x.parentNode.insertBefore(s, x); window.$MPBR_loaded = true; })(); } window.$MPBR_loaded !== true ? (window.attachEvent ? window.attachEvent('onload', $MPBR_load) : window.addEventListener('load', $MPBR_load, false)) : null; })();
</script>

</head>
<body>
    <form id="form1" runat="server" autocomplete="off">
   <My:UserInfoBoxControl ID="UserInfoBoxControl1" runat="server" />
        <div class="colleft">
            <h1 id="tituloPagina" runat="server"><i class="fa fa-shopping-cart"></i> Pago de Timbres</h1>

                <div class="leyendas">
          
                    <asp:Label ID="Lmensaje30timbres" runat="server" Text="30 Timbres $348 M.N" CssClass="Lbpaquete"></asp:Label>

                    <asp:Label ID="Lmensaje50timbres" runat="server" Text="50 Timbres $464 M.N     "
                        CssClass="Lbpaquete"></asp:Label>
                    <asp:Label ID="Lmensaje100timbres" runat="server" Text="100 Timbres $580 M.N     "
                        CssClass="Lbpaquete"></asp:Label>
                    <asp:Label ID="Lmensaje300timbres" runat="server" Text="300 Timbres $696 M.N     "
                        CssClass="Lbpaquete"></asp:Label>
                    <asp:Label ID="Lmensaje500timbres" runat="server" Text="500 Timbres $1102 M.N     "
                        CssClass="Lbpaquete"></asp:Label>
                    <asp:Label ID="Lmensaje1000timbres" runat="server" Text="1000 Timbres $1972 M.N"
                        CssClass="Lbpaquete"></asp:Label>
                    <asp:Label ID="Lmensaje2500timbres" runat="server" Text="2500 Timbres $4350 M.N"
                        CssClass="Lbpaquete"></asp:Label>
                    <asp:Label ID="Lmensaje5000timbres" runat="server" Text="5000 Timbres $7540 M.N"
                        CssClass="Lbpaquete"></asp:Label>
                </div>
                <div class="cantidades">
                <div class="">
                    <asp:LinkButton ID="LkB30" runat="server" href="https://www.mercadopago.com/mlm/checkout/pay?pref_id=157939012-2358f5c1-34f7-4d3f-af94-0c01a687f3dc"  name="MP-payButton" class="orange-tr-m-rn" >Comprar 30</asp:LinkButton>
                    </div>
  
                        <div class="">
                    <asp:LinkButton ID="LinkButton2" runat="server" href="https://www.mercadopago.com/mlm/checkout/pay?pref_id=157939012-5dd92196-65c1-4383-945b-3f5054c7c351" name="MP-payButton" class="orange-tr-m-rn">Comprar 50</asp:LinkButton>
                    </div>
            
                        <div class="">
                    <asp:LinkButton ID="LinkButton3" runat="server" href="https://www.mercadopago.com/mlm/checkout/pay?pref_id=157939012-17baf9d5-ea3a-4500-97dc-0f4357238b96" name="MP-payButton" class="orange-tr-m-rn">Comprar 100</asp:LinkButton>
                    </div>
          
                            <div class="">
                    <asp:LinkButton ID="LKB300" runat="server" href="https://www.mercadopago.com/mlm/checkout/pay?pref_id=157939012-622cad3e-d6e7-499b-afae-df8da8aba2b4" name="MP-payButton" class="orange-tr-m-rn">Comprar 300</asp:LinkButton>
                    </div>
                
                        <div class="">
                    <asp:LinkButton ID="LinkButton4" runat="server" href="https://www.mercadopago.com/mlm/checkout/pay?pref_id=157939012-2a2af1fa-6e5b-43cb-a2cd-e91da6ca8218" name="MP-payButton" class="orange-tr-m-rn">Comprar 500</asp:LinkButton>
                    </div>
            
                        <div class="">
                    <asp:LinkButton ID="LinkButton5" runat="server" href="https://www.mercadopago.com/mlm/checkout/pay?pref_id=157939012-6b73e936-4ec1-4e79-8054-04dd80192dd6" name="MP-payButton" class="orange-tr-m-rn">Comprar 1000</asp:LinkButton>
                    </div>
  
                        <div class="">
                    <asp:LinkButton ID="LinkButton6" runat="server" href="https://www.mercadopago.com/mlm/checkout/pay?pref_id=157939012-6e83e9ff-4d34-45a2-9677-33fa27d13366" name="MP-payButton" class="orange-tr-m-rn">Comprar 2500</asp:LinkButton>
                    </div>

                        <div class="">
                    <asp:LinkButton ID="LinkButton7" runat="server" href="https://www.mercadopago.com/mlm/checkout/pay?pref_id=157939012-5cd59557-22a7-4e22-a6bd-fabde30420fc" name="MP-payButton" class="orange-tr-m-rn" >Comprar 5000</asp:LinkButton>
                    </div>
                </div>
            <div class="erroresdiv">
                <asp:Label ID="LbMensaje" runat="server" CssClass="errores"  />
            </div>
            <div class="botonera">

                <div class="guardar">

                </div>
            </div>
        </div>
    </form>
    <Me:UserInfoBoxFooter ID="UserInfoBoxFooter" runat="server" />
</body>
</html>
