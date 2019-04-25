<%@ Page Theme="BlueTheme" Language="C#" AutoEventWireup="true" CodeBehind="ThemesEx.aspx.cs" Inherits="MyFirstApplication.ThemesEx" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Themes Example</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:TextBox EnableTheming="false" ID="txt1" runat="server" />
            <br />
            <asp:Label Text="Theme Example" ID="lblTheme" runat="server" />
        </div>
    </form>
</body>
</html>
