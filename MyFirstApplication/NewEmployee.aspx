<%@ Page Language="C#" MasterPageFile="~/HomePage.Master" AutoEventWireup="true" CodeBehind="NewEmployee.aspx.cs" Inherits="MyFirstApplication.NewEmployee" %>

<asp:Content ID="Content1" runat="server" ContentPlaceHolderID="ContentPlaceHolder1">
    <div class="center">
        <h2>Employee Registration
        </h2>
        <table>
            <tr>
                <td>
                    <label>First Name</label>
                </td>
                <td>
                    <asp:TextBox ID="txtFirstName" runat="server" />
                </td>
                <td></td>

            </tr>
            <tr>
                <td>
                    <label>Last Name</label>
                </td>
                <td>
                    <asp:TextBox ID="txtLastName" runat="server" />
                </td>
                <td></td>

            </tr>
            <tr>
                <td>
                    <label>Age</label>
                </td>
                <td>
                    <asp:TextBox ID="txtAge" runat="server" />
                </td>
                <td></td>

            </tr>
            <tr>
                <td>
                    <label>Email Address</label>
                </td>
                <td>
                    <asp:TextBox ID="txtEmailID" runat="server" />
                </td>
                <td></td>

            </tr>
            <tr>
                <td></td>
            </tr>
            <tr>
                <td colspan="3" align="center">
                    <asp:Button Text="Submit" OnClick="cmdSubmit_Click" ID="cmdSubmit" runat="server" />
                    &nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Button Text="Reset" ID="btnReset" CausesValidation="false" runat="server" />
                </td>
            </tr>
            <tr>
                <td colspan="3">
                    <asp:Label Text="" ID="lblMessage" runat="server" />
                </td>
            </tr>
        </table>
    </div>
</asp:Content>
