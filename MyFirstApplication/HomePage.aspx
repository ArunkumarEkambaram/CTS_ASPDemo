<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="HomePage.aspx.cs" Inherits="MyFirstApplication.HomePage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1>
                Home Page
            </h1>
            <h3>Welcome, <asp:Label Text="Guest" ID="lblUser" runat="server" /> </h3>
            <br />
            <asp:Button Text="Sign Out" ID="cmdSignOut" runat="server" OnClick="cmdSignOut_Click" />
        </div>
    </form>
</body>
</html>
