<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DataCache.aspx.cs" Inherits="MyFirstApplication.DataCache" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h2>Data Caching</h2>
            <label>User name</label>
            <asp:TextBox ID="txtUserID" runat="server" />
            <asp:Button Text="Store" ID="btnSubmit" OnClick="btnSubmit_Click" runat="server" />
        </div>
    </form>
</body>
</html>
