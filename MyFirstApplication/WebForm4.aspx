<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm4.aspx.cs" Inherits="MyFirstApplication.WebForm4" %>

<%@ Register Src="~/MyControl.ascx" TagPrefix="abc" TagName="MyControl" %>


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <abc:MyControl runat="server" ID="MyControl" />
        </div>
        <br />
       <hr />
        <h2>Current Date and Time</h2>
        <asp:Label Text="" ID="lblDateTime" runat="server" />
        <asp:Button Text="Change Date and Time" ID="btnChange" OnClick="btnChange_Click" runat="server" />
    </form>
</body>
</html>
