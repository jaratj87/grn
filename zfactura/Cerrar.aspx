<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Cerrar.aspx.cs" Inherits="zfactura_Cerrar" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script src="../Scripts/jquery.js" type="text/javascript"></script>
    <script src="../Scripts/jquery.min.js" type="text/javascript"></script>
<script type="text/javascript">
    $(document).ready(function () {

        window.parent.document.getElementById('divOverlay').style.display = 'none';
        window.parent.document.getElementById('divFrameParent').style.display = 'none';
    });
</script>

</head>
<body>
    <form id="form1" runat="server">
    </form>
</body>
</html>
