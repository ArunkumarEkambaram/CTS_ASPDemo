<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DataControls.aspx.cs" Inherits="MyFirstApplication.DataControls" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <label>Select a City :</label>
            <asp:DropDownList ID="ddlCity" runat="server">                
            </asp:DropDownList>
            &nbsp;&nbsp;&nbsp;
            <asp:Button Text="Search" ID="btnSearch" runat="server" OnClick="btnSearch_Click" />
            <br /><br />
            <asp:GridView ID="gvDisplayEmployee" runat="server">

            </asp:GridView>
            <br />
            
        </div>
    </form>
</body>
</html>
