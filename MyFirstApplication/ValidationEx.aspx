<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ValidationEx.aspx.cs" Inherits="MyFirstApplication.ValidationEx" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            User Name : <asp:TextBox ID="txtUserId" runat="server" />
           <asp:RequiredFieldValidator ForeColor="Red" ID="rfvUserId" ErrorMessage="Username is required" ControlToValidate="txtUserId" runat="server" />
        </div>
        <div>
            Password :<asp:TextBox ID="txtPassword" runat="server" TextMode="Password" />
        </div>
        <div>
            Confirm Password :<asp:TextBox ID="txtCPassword" runat="server" TextMode="Password" />
            <asp:CompareValidator ForeColor="Red" ID="cvConfirmPassword" runat="server" ErrorMessage="Password and confirm Password doesn't match" ControlToValidate="txtCPassword" ControlToCompare="txtPassword" />
        </div>
        <div>
            Age : <asp:TextBox ID="txtAge" runat="server" />
            <asp:RangeValidator ForeColor="Red" ID="rvAge" ErrorMessage="Age should be between 10 and 20" ControlToValidate="txtAge" runat="server" MinimumValue="10" MaximumValue="20" Type="Integer" /> 
        </div>
        <div>
            Email ID :<asp:TextBox ID="txtEmail" runat="server" />
            <asp:RegularExpressionValidator ForeColor="Red" ErrorMessage="Please enter proper email id" ControlToValidate="txtEmail" ID="rgvEmail" runat="server" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" />
        </div>
        <div>
            <asp:Button Text="Submit" ID="cmdSubmit" runat="server" />
        </div>
    </form>
</body>
</html>
