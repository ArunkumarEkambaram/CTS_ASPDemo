<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ViewStateEx.aspx.cs" Inherits="MyFirstApplication.ViewStateEx" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>

            <asp:Label ID="lbl1" runat="server" style="z-index: 1; left: 93px; top: 121px; position: absolute" Text="Default Value"></asp:Label>
            <asp:Label ID="lbl2" runat="server" style="z-index: 1; left: 368px; top: 135px; position: absolute" Text="State Management" EnableViewState="False"></asp:Label>
            <asp:Button ID="btnChange" runat="server" style="z-index: 1; left: 101px; top: 229px; position: absolute" Text="Change Text" OnClick="btnChange_Click" />
            <asp:Button ID="btnNothing" runat="server" style="z-index: 1; left: 365px; top: 227px; position: absolute" Text="Change Nothing" OnClick="btnNothing_Click" />

        </div>
    </form>
</body>
</html>
