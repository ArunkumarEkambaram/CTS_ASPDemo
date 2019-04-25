<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CachingExample.aspx.cs" Inherits="MyFirstApplication.CachingExample" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            Welcome, <asp:Label Text="" ID="lblUser" runat="server" />
        </div>
        <div>
            <asp:GridView ID="gvEmp" runat="server">

            </asp:GridView>

        </div>
    </form>
</body>
</html>
