<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PostBackEx.aspx.cs" Inherits="MyFirstApplication.PastBackEx" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1>Postback Example</h1>
            <hr />
            <asp:Button Text="Click Here" ID="btnClick" runat="server" OnClick="btnClick_Click" />
            <br />
            <br />
          State:  <asp:DropDownList ID="ddlState" runat="server" OnSelectedIndexChanged="ddlState_SelectedIndexChanged" AutoPostBack="True">
                <asp:ListItem Text="--Select--" Value="0" />
                <asp:ListItem Text="TamilNadu" Value="1" />
                <asp:ListItem Text="Andhra Pradesh" Value="2" />
            </asp:DropDownList>
            <br /><br />
          City:  <asp:DropDownList ID="ddlCity" runat="server">               
            </asp:DropDownList>
        </div>

    </form>
</body>
</html>
