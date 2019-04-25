<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Page1.aspx.cs" Inherits="MyFirstApplication.Page1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1>Welcome to ASP.NET</h1>
            <h4>Complex Control</h4>
            <hr />            
            <asp:GridView ID="gvPosition" runat="server"></asp:GridView>
        </div>        
    </form>
</body>
</html>
