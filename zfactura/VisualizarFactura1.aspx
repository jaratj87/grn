<%@ Page Language="C#" AutoEventWireup="true" CodeFile="VisualizarFactura1.aspx.cs"
    Inherits="zfactura_VisualizarFactura" EnableEventValidation="false"%>
<!DOCTYPE html>
<%@ Register TagPrefix="My" TagName="UserInfoBoxControl" Src="~/Zwebcontrols/WebUserControlMenuUser.ascx" %>
<%@  Register TagPrefix="Me" TagName="UserInfoBoxFooter" Src="~/Zwebcontrols/footer.ascx"%>
<%@  Register TagPrefix="Mr" TagName="UserInfoBoxMenuRapido" Src="~/Zwebcontrols/menurapido.ascx"%>
<html lang="es">
<head runat="server">
    <title>GRN | Visualizar Factura</title>
    <link href="//netdna.bootstrapcdn.com/font-awesome/4.0.3/css/font-awesome.css" rel="stylesheet">
    <link href="../Styles/grn-styles.css" rel="stylesheet" type="text/css" />
    <script src="../Scripts/jquery.min.js" type="text/javascript"></script>
    <script src="../Scripts/ModalPopupWindow.js" type="text/javascript"></script>
    <script type="text/javascript">
        var modalWin = new CreateModalPopUpObject();
        modalWin.SetLoadingImagePath("../Images/loading.gif");
        modalWin.SetCloseButtonImagePath("../Images/remove.gif");
       
        function popupNotas() {
            var callbackFunctionArray = new Array(EnrollNow, EnrollLater);
            modalWin.ShowURL('popNotas.aspx', 250, 285, 'Recuperacion de contraseña', null, callbackFunctionArray);

        }
        function Action1() {
            $('#BtnTimbrar').trigger('click');
        }
        function Action1Correo() {
            $('#BtnEnviaCorreo').trigger('click');
            //            modalWin.HideModalPopUp();
            var callbackFunctionArray = new Array(EnrollNow, EnrollLater);
//            modalWin.ShowURL('EnviaCorreo.aspx', 150, 400, 'Enviando Correo', null, callbackFunctionArray);
      
        }

        function Action2() {

            modalWin.HideModalPopUp();
        }
        function EnrollNow(msg)
         {
            modalWin.HideModalPopUp();

            modalWin.ShowMessage(msg, 200, 400, 'User Information', null, null);

        }

        function EnrollLater() {
            //            modalWin.HideModalPopUp();
            modalWin.ShowMessage(msg, 200, 400, 'User Information', null, null);
        }
        function ShowMessageWithAction() {
            modalWin.ShowConfirmationMessage('¿     Desea Timbrar Este Documento?', 200, 400, 'Importante', null, 'Aceptar', Action1, 'Cancelar', Action2);
        }
        function ShowMessageWithActionCorreo() {
            var text1 = $('#<%=LbCorreoCliente.ClientID%>').html();
            modalWin.ShowConfirmationMessage(' <div id="cont">¿ Desea enviar esta factura al cliente con los   correo(os) registrado(os) ?' + ' <div id="DivOverSellodigitalCfdi2" runat="server" style=" overflow: auto; width: 582px;">' + text1 + ' </div></div>', 250, 700, 'Importante', null, 'Aceptar', Action1Correo, 'Cancelar', Action2);
           modalWin.ShowURL('Cerrar.aspx', 200, 500, 'Enviando Correo', null, callbackFunctionArray);
        }
    </script>
          <script type="text/javascript">
              function PaginaPrevPdf() {

                                    window.open("CreaPdfPre.aspx", "cal", "scrollbars=no,menubar=no,status=no,width=500 top=500,left=500,top=-300,right=0,height=650,resizable=yes");
//                  window.open("CreaPdfPreArrendamiento.aspx", "cal", "scrollbars=no,menubar=no,status=no,width=500 top=500,left=500,top=-300,right=0,height=650,resizable=yes");
                  
              }

</script>
</head>
<body>
    <form id="formVisualizaFactura" runat="server">
    <My:UserInfoBoxControl ID="UserInfoBoxControl1" runat="server" />
    <div class="colleft">
        <div id="ContenidoAltas" class="visfactura">
            <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
            <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                <ContentTemplate>
                    <div class="ffilasiete">
                        <div class="filas">
                            <div class="botonesup">
                                <div class="guardar">
                                    <asp:LinkButton ID="LinkButtonDownloadPdf_Up" runat="server" Text="Previsualizar PDF"  OnClick="LinkButton1_Click" OnClientClick="PaginaPrevPdf()" />
                                </div>
                                <div class="guardar">
                                    <asp:LinkButton ID="btnMensajeTimbrar_Up" runat="server" Text="Timbrar" 
                                        onclick="btnMensajeTimbrar_Up_Click" />
                                </div>
                                <div id="DivBtnMensajeCorreo_Up" runat="server" class="guardar" >
                                    <asp:LinkButton ID="BtnMensajeCorreo_Up" runat="server" Text="Mandar por correo"    />
                                </div>
                            </div>
                            <div class="estatus">
                                <asp:Label ID="Label80" runat="server" CssClass="negritas" Text="Estatus:" />
                                <asp:Label ID="LbStatusFactura" runat="server" Text="Estatus:"  />
                            </div>
                        </div>
                    </div>
                    <div class="ffilauno">
                        <div class="colizquierda">
                            <div class="izqtop">
                                <div class="izqizquierda">
                                    <asp:Image ID="ImageLogo" runat="server" Height="115px" ImageUrl="" Width="205px" />
                                </div>
                                <div class="izqderecha">
                                    <div class="filas">
                                        <asp:Label ID="LbNomEmpComercial" runat="server" CssClass="negritas" Text="NombreComercial" />
                                    </div>
                                    <div class="filas">
                                        <asp:Label ID="LbRfcUsuario0" runat="server" CssClass="negritas" Text="RFC" />
                                        <asp:Label ID="LbRfcUsuario" runat="server" />
                                    </div>
                                     <div class="filas">
                                    <asp:Label ID="LbRazonSocial" runat="server" CssClass="negritas" Text="Razon Social"></asp:Label>
                                    </div>
                                </div>
                            </div>
                            <div>
                                <div class="filas">
                                    <asp:Label ID="LbDireccion" runat="server" Text="Dirección:" CssClass="negritas" /><br>
                                    <asp:Label ID="Lbcalle" runat="server" />
                                    <asp:Label ID="LbNumeroDir" runat="server" />
                                    <asp:Label ID="LbNumeroInt" runat="server" />
                                    <asp:Label ID="LbColonia" runat="server" />
                                    <asp:Label ID="LbCiudad" runat="server" />
                                    <asp:Label ID="LbEstado" runat="server" />
                                    <asp:Label ID="LbCpusuario" runat="server" />
                                </div>
                                <div class="filas">
                                    <asp:Label ID="Label1" runat="server" CssClass="negritas" Text="Tel:" />
                                    <asp:Label ID="LbTelUsuario" runat="server" />
                                </div>
                                <div class="filas">
                                    <asp:Label ID="Label61" runat="server" CssClass="negritas" Text="Lugar de Expedición:" />
                                    <asp:Label ID="LbCalle2" runat="server" />
                                    <asp:Label ID="LbNumeroDir2" runat="server" />
                                    <asp:Label ID="LbColonia2" runat="server" />
                                    <asp:Label ID="LbPais" runat="server" />
                                    <asp:Label ID="LbCpusuario2" runat="server" />
                                </div>
                                <div class="filas">
                                    <asp:Label ID="LbTxtEmailUsuario" runat="server" CssClass="negritas" Text="Email: " />
                                    <asp:Label ID="LbEmailUsuario" runat="server" />
                                </div>
                            </div>
                        </div>
                        <div class="colderecha">
                            <div class="filas">
                                <div>
                                    <asp:Label ID="lbTipoDocumento" runat="server" CssClass="negritas" Text="Factura" />
                                    <asp:Label ID="LbSerie" runat="server" Text="falta" />
                                    <asp:Label ID="LbFolioFactura" runat="server" Text="fallo" />
                                    <asp:Label ID="LbFacturaCliente" runat="server" Text="fallo" Visible="False" />
                                    <asp:Label ID="LbNombreArchivoPdf" runat="server" Text="fallo" Visible="False" />
                                    <asp:Label ID="LbTipoComprobante" runat="server" Text="fallo" Visible="False" />
                                </div>
                            </div>
                            <div class="filas naranja">
                                <asp:Label ID="Label4" runat="server" Text="Folio Fiscal:" />
                            </div>
                            <div class="filas">
                                <asp:Label ID="LbFolioFiscal" runat="server" Text="No asignado" />
                            </div>
                            <div class="filas naranja">
                                <asp:Label ID="Label62" runat="server" Text="No. de Serie del Certificado del SAT:" />
                            </div>
                            <div class="filas">
                                <asp:Label ID="LbCertificadoSat" runat="server" Text="No asignado" />
                            </div>
                            <div class="filas naranja">
                                <asp:Label ID="Label63" runat="server" Text="Fecha y hora de certificacion:" />
                            </div>
                            <div class="filas">
                                <asp:Label ID="LbHoraCertificado" runat="server" Text="No asignado" />
                            </div>
                            <div class="filas naranja">
                                <asp:Label ID="Label64" runat="server" Text="No. de Serie del Certificado del CSD:" />
                            </div>
                            <div class="filas">
                                <asp:Label ID="LbCertificadocsd" runat="server" Text="No asignado" />
                            </div>
                            <div id="LUExp" runat="server" class="filas naranja">
                                <asp:Label ID="Label65" runat="server" Text="Lugar de Expedición:" />
                                <asp:Label ID="LbLugarExpedicion" runat="server" Text="Falta" />
                            </div>
                        </div>
                    </div>
                    <div class="ffilados">
                        <div class="filas">
                            <asp:Label ID="Label66" runat="server" CssClass="negritas" Text="Regimen Fiscal:" />
                            <asp:Label ID="LbRegimenFiscal" runat="server" Text="Falta" />
                        </div>
                        <div class="filas">
                            <div class="fversion">
                                <asp:Label ID="Label58" runat="server" CssClass="negritas" Text="Versión:" />
                                <asp:Label ID="Lbversion" runat="server" Text="Falta" />
                            </div>
                            <div class="ffecha">
                                <asp:Label ID="Label59" runat="server" CssClass="negritas" Text="Fecha:" />
                                <asp:Label ID="LbFechaFactura" runat="server" Text="Label" />
                            </div>
                            <div class="fhora">
                                <asp:Label ID="Label6" runat="server" CssClass="negritas" Text="Hora:" />
                                <asp:Label ID="LbHoraFacturo" runat="server" Text="Label" />
                            </div>
                        </div>
                        <div class="filas naranja">
                            <div class="fcliente">
                                <asp:Label ID="Label67" runat="server" Text="Cliente:" />
                            </div>
                            <div class="fnocliente">
                                <asp:Label ID="Label7" runat="server" Text="No.Cliente:" />
                            </div>
                            <div class="fmoneda">
                                <asp:Label ID="Label8" runat="server" Text="Moneda:" />
                            </div>
                            <div class="fcambio">
                                <asp:Label ID="Lbcambio" runat="server" Text="T.C.:" />
                            </div>
                        </div>
                        <div class="filas">
                            <div class="fcliente">
                                <asp:Label ID="LbRfcCli" runat="server" Text="XAXX010101000" />
                            </div>
                            <div class="fnocliente">
                                <asp:Label ID="LbNoCliente" runat="server" Text="Falta" />
                            </div>
                            <div class="fmoneda">
                                <asp:Label ID="LbMoneda" runat="server" Text="Falta" />
                            </div>
                            <div class="fcambio">
                                <asp:Label ID="LbTipoCAmbio" runat="server" Text="Fallo" />
                            </div>
                        </div>
                        <div class="filas">
                            <asp:Label ID="LbNombreCliente" runat="server" CssClass="labelTipoletra" Font-Bold="False"
                                        Text="Nombre"></asp:Label>
                        </div>
                        <div class="filas">
                            <asp:Label ID="Lbcallecli" runat="server" />
                            <asp:Label ID="LbNumeroDirCli" runat="server" />
                            <asp:Label ID="LbNumeroExtCli" runat="server" />
                            <asp:Label ID="LbNumeroIntCli" runat="server" />
                        </div>
                        <div class="filas">
                            <asp:Label ID="LbColoniaCli" runat="server" />
                        </div>
                        <div class="filas">
                            <div class="fciuest">
                                <asp:Label ID="LbCiudadCli" runat="server" Text="Tijuana, " />
                                <asp:Label ID="LbEstadoCli" runat="server" Text="Baja California, " />
                                <asp:Label ID="LbPaisCli" runat="server" Text="México" />
                            </div>
                            <div class="fcp">
                                <asp:Label ID="Label9" runat="server" CssClass="negritas" Text="Cp:" />
                                <asp:Label ID="LbCpCli" runat="server" />
                            </div>
                            <div class="ftelefono">
                                <asp:Label ID="Label10" runat="server" CssClass="negritas" Text="Telefono:" />
                                <asp:Label ID="LbTelCli" runat="server" />
                            </div>
                        </div>
                        <div class="filas">
                            <asp:Label ID="Label12" runat="server" CssClass="negritas" Text="Correo:" />
                            <div id="DivOverSellodigitalCfdi" runat="server">
                                <asp:Label ID="LbCorreoCliente" runat="server" Text="fallo" Visible="" />
                            </div>
                        </div>
                    </div>
                    <div class="ffilatres">
                        <div id="Div_Art_Ventas" runat="server">
                            <asp:GridView ID="GridView1" runat="server" CellPadding="15" GridLines="None" PageSize="15" AutoGenerateColumns="False" CssClass="tablasgrid">
                                <AlternatingRowStyle BackColor="#ffffff" />
                                <Columns>
                                    <asp:BoundField DataField="Articulo_id" HeaderStyle-CssClass="oculto">
                                        <ItemStyle Width="0px" Font-Size="0px" CssClass="oculto" />
                                    </asp:BoundField>
                                    <asp:BoundField DataField="Articulo_cantidad" HeaderText="Cantidad" />
                                    <asp:BoundField DataField="Presenta_Cod" HeaderText="U/M" />
                                    <asp:BoundField DataField="Articulo_codigo" HeaderText="Codigo" />
                                    <asp:BoundField DataField="Articulo_nombre" HeaderText="Descripcion" />
                                    <asp:BoundField DataField="FDetalle_Preciopublico" HeaderText="Precio" />
                                    <asp:BoundField DataField="FDetalle_Iva" HeaderText="Iva "  HeaderStyle-CssClass="oculto">
                                     <ItemStyle  CssClass="oculto" />
                                    </asp:BoundField>
                                    <asp:BoundField DataField="FDetalle_Ieps" HeaderText="Ieps " HeaderStyle-CssClass="oculto">
                                             <ItemStyle  CssClass="oculto" />
                                    </asp:BoundField>
                                    <asp:BoundField DataField="Importe" HeaderText=" Importe" />
                                    <asp:BoundField DataField="Comentario" HeaderText="Comentario" 
                                        NullDisplayText="No comentario" />
                                    <asp:BoundField DataField="TipoCambio" HeaderText="TIPO DE CAMBIO"  HeaderStyle-CssClass="oculto"  >
                                        <ItemStyle Width="0px" Wrap="False" Font-Size="0px"  CssClass="oculto" />
                                      </asp:BoundField>
                                    <asp:BoundField DataField="Moneda" HeaderText="Moneda"  HeaderStyle-CssClass="oculto"  >
                                        <ItemStyle Width="0px" Wrap="False" Font-Size="0px"  CssClass="oculto" />
                                    </asp:BoundField>
                                    <asp:BoundField DataField="FactorIeps" HeaderStyle-CssClass="oculto"  HeaderText="Factor Ieps">
                                        <ItemStyle Width="0px" Wrap="False" Font-Size="0px" CssClass="oculto" />
                                    </asp:BoundField>
                                </Columns>
                                <EditRowStyle BackColor="#999999" />
                                <HeaderStyle BackColor="#dc4a2d" Font-Bold="True" ForeColor="#ffffff" />
                                <RowStyle BackColor="#f2f2f2" HorizontalAlign="Center" />
                                <SortedAscendingCellStyle BackColor="#E9E7E2" />
                                <SortedAscendingHeaderStyle BackColor="#506C8C" />
                                <SortedDescendingCellStyle BackColor="#FFFDF8" />
                                <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
                            </asp:GridView>
                        </div>
                        <div id="DivNotas" runat="server" class="filas">
                            <asp:Label ID="Label74" runat="server" CssClass="negritas" Text="Nota: "/>
                            <asp:Label ID="LbNota" runat="server" Text="Nota:" />
                        </div>
                        <div class="filas">
                            <asp:Label ID="LabelmensajeImporte0" runat="server" CssClass="negritas" Text="Importe con Letra: " />
                            <asp:Label ID="LabelmensajeImporte" runat="server" CssClass="labelTipoletra" Font-Size="Medium">falta</asp:Label>
                        </div>
                        <div class="filas">
                            <div id="DivDerecha" class="totales">
                                <asp:Label ID="lbSiIva" runat="server" CssClass="oculto" />
                                <asp:Label ID="lbSiRisr" runat="server" CssClass="oculto" />
                                <asp:Label ID="LbRetencionIvaValor" runat="server" Text="False" CssClass="oculto" />
                                <asp:Label ID="LbRetencionIsrFactor" runat="server" CssClass="oculto" />
                                <div class="leyendas">
                                    <asp:Label ID="Label68" runat="server" CssClass="negritas" Text="Subtotal: $" />
                                    <asp:Label ID="Label3" runat="server" CssClass="negritas" Text="Ieps: $" />
                                    <asp:Label ID="LbivaFactor" runat="server" CssClass="negritas" Text="Ivafactor" />
                                    <asp:Label ID="lblRi" runat="server"  Visible="false" CssClass="negritas" Text="Retencion Iva: $" />
                                    <asp:Label ID="LbRetencionIsrValor" runat="server" CssClass="negritas" />
                                    <asp:Label ID="lbSiRV" runat="server" CssClass="negritas" Visible="false" />
                                    <asp:Label ID="LblRetencionVenta" runat="server" CssClass="negritas" Text="Retencion Venta:"
                                        Visible="False" />
                                    <asp:Label ID="LbRetencionVentavalor" runat="server" CssClass="negritas" Visible="False" />
                                    <asp:Label ID="Label71" runat="server" CssClass="negritas" Text="Total: $" />
                                </div>
                                <div class="cantidades">
                                    <asp:Label ID="LbSubtotal" runat="server" Text="Fallo" />                  
                                    <asp:Label ID="LbIepsDinero" runat="server" Text="0" />            
                                    <asp:Label ID="LbIvaDinero" runat="server" Text="Fallo"  />
                                    <asp:Label ID="LbretencionIvaDinero" runat="server" Text="0"  Visible="false"/>
                                    <asp:Label ID="LbRetencionIsrDinero"  runat="server" Text="0" Visible="false"  />
                                    <asp:Label ID="LbRetencionVentaDinero" runat="server" Text="0" Visible="False" />
                                    <asp:Label ID="LbTotal" runat="server" Text="Fallo" />                                   
                                </div>
                            </div>
                            <div id="DivsIvas" runat="server" class="totales">
                                <div class="leyendas">
                                    <asp:Label ID="Tasa00" runat="server" Text="Tasa0%:" CssClass="negritas" />
                                    <asp:Label ID="LbExento0" runat="server"  Text="Exento:" CssClass="negritas" />
                                    <asp:Label ID="LbTasa100" runat="server" Text="Gravable:" CssClass="negritas" />
                                </div>
                                <div class="cantidades">
                                    <asp:Label ID="LbTasa0" runat="server" Text="0" />
                                    <asp:Label ID="LbExento" runat="server" Text="0" />
                                    <asp:Label ID="LbTasa10" runat="server" Text="0" />
                                </div>
                            </div>
                            <div Id="DivRetenciones" runat="server" class="totales">
                         
                                <asp:Label ID="LbretencionIvaFactor" runat="server" CssClass="negritas" Visible="False" />
                                
                            </div>
                        </div>
                    </div>
                    <div class="ffilacuatro">
                        <div id="DivCadenaoriginal"  runat="server" class="filas">
                            <asp:Label ID="Label76" runat="server" CssClass="labelTipoletra" Font-Bold="True"
                                Text="Cadena Original Del complemento de certificacion digital del sat:"></asp:Label>
                            <asp:Label ID="LbCadenaOrinal" runat="server" CssClass="txtsmall" />
                        </div>
                        <div class="filas">
                            <asp:Label ID="Label2" runat="server" CssClass="negritas" Text="Sello Digital cfdi:" /><br />
                            <asp:Label ID="LbselloCfdi" runat="server" CssClass="txtsmall" />
                        </div>
                        <div class="filas">
                            <asp:Label ID="Label77" runat="server" CssClass="negritas" Text="Sello Digital del SAT:" /><br />
                            <asp:Label ID="Lbsellodigitalsat" runat="server" CssClass="txtsmall" />
                        </div>
                        <div class="filas">
                            <asp:Label ID="Label79" runat="server" CssClass="negritas" Text="Cadena original del complemento de certificacion digital del SAT:" />
                            <asp:Label ID="LbSelloDigital" runat="server" CssClass="txtsmall" />
                        </div>
                    </div>
                    <div class="ffilacinco">
                        <div id="DivIzquierda" style="  float:left; width: 280px;">
                            <asp:Image ID="ImageQr" runat="server" Height="200px" Width="200px" />
                        </div>
                        <div id="DivCentro" style=" width:465px; float:left; margin-bottom:20px;" align="center">
                            <asp:Label ID="LabelMensaje1" runat="server" CssClass="labelTipoletra" Font-Bold="True"
                                Font-Size="Small"></asp:Label>
                            <br />
                            <br />
                            <asp:Label ID="LabelMensaje2" runat="server" Text="Metodo de pago:" CssClass="labelTipoletra"
                                Font-Bold="True" Font-Size="Small"></asp:Label>
                            <asp:Label ID="LbMetodopago" runat="server" Text="Falta" CssClass="labelTipoletra"
                                Font-Bold="false" Font-Size="Small"></asp:Label>
                            <br />
                            <asp:Label ID="LabelMensaje3" runat="server" Text="Número de Cuenta:" CssClass="labelTipoletra"
                                Font-Bold="True" Font-Size="Small"></asp:Label>
                            <asp:Label ID="LbNumeroCuenta" runat="server" Text="Falta" CssClass="labelTipoletra"
                                Font-Bold="False" Font-Size="Small"></asp:Label>
                            <asp:Label ID="LbinteresMoratorio" runat="server" Text="Falta" CssClass="labelTipoletra"
                                Font-Bold="False" Font-Size="Small" Visible="False"></asp:Label>
                        </div>
                    </div>
                    <div class="ffilaseis">
                        <div class="filas">
                            <asp:Label ID="LbMensaje" runat="server" CssClass="labelTipoletra" Font-Bold="True"
                                Font-Italic="False" ForeColor="Red"></asp:Label>
                        </div>
                        <div class="filas">
                            <div class="guardar">
                                <asp:LinkButton ID="LinkButtonDownloadPdf" runat="server" Text="Previsualizar PDF"  OnClick="LinkButton1_Click" OnClientClick="PaginaPrevPdf()"  />
                            </div>
                            <div class="guardar">
                                <asp:LinkButton ID="btnMensajeTimbrar" runat="server" Text="Timbrar" onclick="btnMensajeTimbrar_Up_Click" />
                            </div>
                            <div id="DivBtnMensajeCorreo" runat="server" class="guardar" >
                                <asp:LinkButton ID="BtnMensajeCorreo" runat="server" Text="Mandar por correo"   OnClientClick="return ShowMessageWithActionCorreo()" />
                            </div>
                            <div>
                                <asp:Button ID="BtnTimbrar" runat="server" OnClick="BtnTimbrar_Click" Text="Button" Style="display:none " />
                            </div>
                            <div>
                                <asp:Button ID="BtnEnviaCorreo" runat="server" Text="Button" OnClick="BtnEnviaCorreo_Click" Style="display: none" />
                            </div>
                        </div>
                    </div>
                </ContentTemplate>
            </asp:UpdatePanel>
        </div>
    </div>
    <div class="colright">
        <Mr:UserInfoBoxMenuRapido ID="UserInfoBoxMenuRapido" runat="server" />
    </div>
    </form>
    <Me:UserInfoBoxFooter ID="UserInfoBoxFooter" runat="server" />
</body>
</html>
