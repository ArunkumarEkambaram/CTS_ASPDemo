<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Exercise1.aspx.cs" Inherits="MyFirstApplication.Exercise1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>    
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table>
                <tr>
                    <td>
                        <label>Fullname</label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtFullName" runat="server" />
                        <br />
                        <asp:RequiredFieldValidator ForeColor="Red" SetFocusOnError="true" Display="Dynamic" ID="rfvFullName" ErrorMessage="Fullname cannot be blank" ControlToValidate="txtFullName" runat="server" />
                    </td>
                </tr>
                <tr>
                    <td>
                        <label>Email ID</label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtEmailID" runat="server" />
                        <br />
                        <asp:RequiredFieldValidator ForeColor="Red" SetFocusOnError="true" Display="Dynamic" ID="RequiredFieldValidator1" ErrorMessage="Email ID cannot be blank" ControlToValidate="txtEmailID" runat="server" />
                        <asp:RegularExpressionValidator ForeColor="Red" ID="rgvEmail" ErrorMessage="Email ID is not proper" ControlToValidate="txtEmailID" runat="server" SetFocusOnError="True" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" />
                    </td>
                </tr>
                <tr>
                    <td>
                        <label>Re-Enter Email ID</label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtREmailID" runat="server" />
                        <br />
                        <asp:CompareValidator ForeColor="Red" SetFocusOnError="true" Display="Dynamic" ID="cvEmailID" ErrorMessage="Email ID and Re-enter Email ID cannot be blank" ControlToValidate="txtREmailID" ControlToCompare="txtEmailID" runat="server" />
                    </td>
                </tr>
                <tr>
                    <td>
                        <label>Password</label>
                        
                    </td>
                    <td>
                        <asp:TextBox ID="txtPassword" TextMode="Password" runat="server" />
                        <br />
                        <asp:RequiredFieldValidator ForeColor="Red" SetFocusOnError="true" Display="Dynamic" ID="rfvPassword" ErrorMessage="Password cannot be blank" ControlToValidate="txtPassword" runat="server" />
                    </td>
                </tr>
                <tr>
                    <td>
                        <label>Date of Birth</label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtDOB" TextMode="Date" runat="server" />
                        <br />
                        <asp:RequiredFieldValidator ForeColor="Red" SetFocusOnError="true" Display="Dynamic" ID="rfvDOB" ErrorMessage="Date of Birth cannot be blank" ControlToValidate="txtDOB" runat="server" />
                    </td>
                </tr>
                <tr>
                    <td>
                        <label>Deposit Amount</label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtAmount" runat="server" />
                        <br />
                        <asp:RequiredFieldValidator ForeColor="Red" SetFocusOnError="true" Display="Dynamic" ID="rfvAmount" ErrorMessage="Deposit Amount cannot be blank" ControlToValidate="txtAmount" runat="server" />
                        <br />
                        <asp:RangeValidator ID="rvDeposit" ErrorMessage="Deposit amount should be greater than 5000" ControlToValidate="txtAmount" runat="server" MinimumValue="5000" MaximumValue="9999999" />
                    </td>
                </tr>
                <tr>
                    <td colspan="3">
                        <asp:Button Text="Submit" ID="cmdSubmit"  runat="server" OnClick="cmdSubmit_Click" />
                    </td>
                </tr>
                <tr>
                    <td colspan="3">
                        <asp:Label Text="My Result" ID="lblMessage" runat="server" />
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
