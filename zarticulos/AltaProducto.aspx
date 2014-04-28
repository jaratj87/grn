<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AltaProducto.aspx.cs" Inherits="AltaProducto" %>
<!DOCTYPE html>
<%@ Register TagPrefix="My" TagName="UserInfoBoxControl" Src="~/Zwebcontrols/WebUserControlMenuUser.ascx" %>
<%@  Register TagPrefix="Me" TagName="UserInfoBoxFooter" Src="~/Zwebcontrols/footer.ascx"%>
<%@  Register TagPrefix="Mr" TagName="UserInfoBoxMenuRapido" Src="~/Zwebcontrols/menurapido.ascx"%>
<html lang="es">
<head runat="server">
    <title>GRN | Nuevo Producto</title>
    <script src="../Scripts/jquery.min.js" type="text/javascript"></script>
    <link href="//netdna.bootstrapcdn.com/font-awesome/4.0.3/css/font-awesome.css" rel="stylesheet">
    <link href="../Styles/grn-styles.css" rel="stylesheet" type="text/css" />
     <script type="text/javascript">
         $(document).keypress(function (e) {
             if (e.keyCode === 96) {
                 e.preventDefault();
                 return false;
             }

         });
    </script>
    <script type="text/javascript">
    (document).ready(function(){ 
        //for IE use keydown, for Mozilla keypress  
        //as described in scr: http://www.codeproject.com/KB/scripting/PreventDropdownBackSpace.aspx
        $('select').keypress(function(event){if (event.keyCode == 8) {return false;}});
        $('select').keydown(function(event){if (event.keyCode == 8) {return false;}});
    }
    </script>
    <script type="text/javascript">
        function validar_monto(evt) {
            var charCode = (evt.which) ? evt.which : event.keyCode
            if (charCode === 190)
            { }
            else {
                if (charCode > 46 && (charCode < 48 || charCode > 57))
                    return false;
                return true;
            }
        }
    </script>
    <script type="text/javascript">
        function chngtxtbxval() {
            $('#txtPrecioART').live("keypress", function (e) {
                if (e.keyCode == 13) {
                    //                     alert("Enter pressed");
                    return false; // prevent the button click from happening
                    $("#Button2").click();
                }
            });
    }
    </script>
</head>
<body>
    <form id="form1" runat="server" autocomplete="off">
        <My:UserInfoBoxControl runat="server" />
        <div class="colleft">
            <asp:ScriptManager ID="ScriptManager1" runat="server" EnablePartialRendering="true"></asp:ScriptManager>
            <h1 id="tituloPagina" runat="server"><i class="fa fa-tags"></i> Registrar Artículo</h1>
            <asp:UpdatePanel ID="UpdatePanel1" runat="server" UpdateMode="Conditional" RenderMode="Inline">
                <ContentTemplate>
                <div class="erroresdiv">
                    <asp:Label ID="LbMensaje" runat="server" CssClass="errores"  />
                </div>
                <fieldset>
                    <legend>
                        <asp:Label ID="Label1" runat="server" Text="Información Articulo"></asp:Label>
                    </legend>
                    <div>
                        <asp:Label ID="LbCodArticulo" AssociatedControlId="txtcodigoarticulo" runat="server" Text="Código artículo:" />
                        <asp:CheckBox ID="CbCOD" runat="server" AutoPostBack="True" oncheckedchanged="CbCOD_CheckedChanged" ToolTip="Click para cambiar el codigo del articulo" />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtcodigoarticulo" ErrorMessage="*" ToolTip="El campo codigo articulo es necesario" ></asp:RequiredFieldValidator>
                        <asp:TextBox ID="txtcodigoarticulo" runat="server" Enabled="False" />
                    </div>
                    <div>
                        <asp:Label ID="LbtNombrearticulo" AssociatedControlId="txtArticulonombre" runat="server" Text="Nombre del artículo:" />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtArticulonombre" ErrorMessage="*" ></asp:RequiredFieldValidator>
                        <asp:TextBox ID="txtArticulonombre" runat="server" />
                    </div>
                    <div>
                        <asp:Label ID="LbprecioArt" AssociatedControlId="txtPrecioART" runat="server" Text="Precio(sin iva):" />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtPrecioART" ErrorMessage="*" ></asp:RequiredFieldValidator>
                        <asp:Button ID="Button2" runat="server" Height="0px" OnClick="Button2_Click" Style="visibility: hidden;" Text="Button" Width="0px" BorderStyle="None" />
                        <asp:Label ID="LbprecioArt0" runat="server" />
                        <asp:Label ID="LbPrecioMasIva" runat="server" />
                        <asp:TextBox ID="txtPrecioART" runat="server" onkeypress="return validar_monto(event)"
                        OnTextChanged="txtPrecioART_TextChanged" ToolTip="Valor del Articulo sin IVA" placeholder="Enter para calcular Iva" />
                    </div>
                    <div class="doscolsolo">
                        <div>
                            <asp:Label ID="Lbnacional" AssociatedControlId="Ddpago" runat="server" Text="Moneda:" />
                            <asp:DropDownList ID="Ddpago" runat="server" >
                                <asp:ListItem Value="P">Pesos</asp:ListItem>
                                <asp:ListItem Value="D">Dolares</asp:ListItem>
                            </asp:DropDownList>
                        </div>
                        <div>
                           <asp:Label ID="Label2" AssociatedControlId="DDpresentacion" runat="server" Text="Presentación:" />
                           <asp:DropDownList ID="DDpresentacion" runat="server"></asp:DropDownList> 
                        </div>
                    </div>
                    <div>
                        <asp:Label ID="LbIva" AssociatedControlId="DdlIva" runat="server" Text="Iva:" />
                        <asp:DropDownList ID="DdlIva" runat="server" AutoPostBack="True" OnTextChanged="DdlIva_TextChanged">
                            <asp:ListItem Value="1">Con Iva</asp:ListItem>
                            <asp:ListItem Value="0">Iva 0%</asp:ListItem>
                            <asp:ListItem Value="2">Exento</asp:ListItem>
                        </asp:DropDownList>
                    </div>
                    <div>
                        <asp:CheckBox ID="CbIeps" runat="server" Text="IEPS" OnCheckedChanged="CbIeps_CheckedChanged" AutoPostBack="True" />
                    </div>
                    <div id="DivIeps" runat="server">
                        <asp:DropDownList ID="DDIeps" runat="server" AutoPostBack="True" OnTextChanged="DdlIva_TextChanged"></asp:DropDownList>
                    </div>
                    <div class="comentario">
                        <asp:Label ID="Lbcomentario" AssociatedControlId="txtclicomment" runat="server" Text="Comentario:" />
                        <asp:Label ID="Lbcomentario0" AssociatedControlId="txtclicomment" runat="server" Text="Inactivo:" />
                        <asp:CheckBox ID="CbActivo" runat="server" TextAlign="Left" />
                        <asp:TextBox ID="txtclicomment" runat="server" TextMode="MultiLine" />
                    </div>       
                </fieldset>
                </ContentTemplate>
                <Triggers>
                    <asp:AsyncPostBackTrigger ControlID="Button2" EventName="Click" />
                    <asp:AsyncPostBackTrigger ControlID="DdlIva" EventName="SelectedIndexChanged" />
                    <asp:AsyncPostBackTrigger ControlID="DdlIva" EventName="TextChanged" />
                    <asp:AsyncPostBackTrigger ControlID="txtPrecioART" EventName="TextChanged" />
                    <asp:AsyncPostBackTrigger ControlID="DDIeps" EventName="SelectedIndexChanged" />
                    <asp:AsyncPostBackTrigger ControlID="DDIeps" EventName="TextChanged" />
                </Triggers>
            </asp:UpdatePanel>
            <div class="botonera">
                <div class="cancelar">
                    <asp:LinkButton ID="IbRegresar" runat="server" UseSubmitBehavior="False" CausesValidation="False" OnClick="ImageButton1_Click">Cancelar</asp:LinkButton>
                </div>
                <div class="guardar">
                    <asp:LinkButton ID="ImageButton2" runat="server" UseSubmitBehavior="False" CausesValidation="False" OnClick="ImageButton2_Click">Guardar</asp:LinkButton>
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
