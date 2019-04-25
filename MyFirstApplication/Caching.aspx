<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Caching.aspx.cs" Inherits="MyFirstApplication.Caching" %>
<%@ OutputCache Duration="20" VaryByParam="none"  %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Caching Example</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h2>Caching Example</h2>
            <hr />
            <br />
            <asp:Label Text="" ID="lblDateTime" runat="server" />
            <br />
            <asp:Button Text="Submit" ID="btnSubmit" OnClick="btnSubmit_Click" runat="server" />
        </div>
    </form>
</body>
</html>
