<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UserDetails.aspx.cs" Inherits="MyFirstApplication.UserDetails" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
        div {
            margin: auto;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table>
                <tr>
                    <td>
                        <label>User name</label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtUserId" runat="server" autocomplete="off" />
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ForeColor="Red" SetFocusOnError="true" ID="rfvUserId" ErrorMessage="Username cannot be empty" ControlToValidate="txtUserId" runat="server" />
                    </td>
                </tr>
                <tr>
                    <td>
                        <label>Password </label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtPassword" runat="server" autocomplete="off" />
                    </td>
                     <td>
                        <asp:RequiredFieldValidator ForeColor="Red" SetFocusOnError="true" ID="rfvPassword" ErrorMessage="Password cannot be empty" ControlToValidate="txtUserId" runat="server" />
                    </td>
                </tr>
                <tr>
                    <td colspan="2">
                        <asp:CheckBox Text="Remember Me" ID="chkRemember" runat="server" />
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Button Text="Sign In" runat="server" ID="cmdSignIn" OnClick="cmdSignIn_Click" />
                    </td>
                    <td>
                        <asp:Button OnClick="btnReset_Click" CausesValidation="false" Text="Reset" ID="btnReset" runat="server" />
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
