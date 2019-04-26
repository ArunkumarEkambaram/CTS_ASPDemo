<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AuthenticationEx.aspx.cs" Inherits="MyFirstApplication.AuthenticationEx" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="Content/bootstrap.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
      <div class="container">
        
        <div class="row" style="margin-top:10%">
            <div class="col-sm-4"></div>
            <div class="col-sm-3">
                <h2>Login Details</h2>
            </div>
            <div class="col-sm-5"></div>
        </div>
        <div class="row">
            <div class="col-sm-4"></div>
            <div class="col-sm-4">
                <div class="form-group">
                    <label>Email ID</label>
                    <asp:RequiredFieldValidator Text="*" ID="rfvEmailId" ForeColor="Red" SetFocusOnError="true" ErrorMessage="Email address is required" ControlToValidate="txtEmailId" runat="server" />
                    <asp:TextBox CssClass="form-control" ID="txtEmailId" runat="server" />
                </div>
                <div class="form-group">
                    <label>Password</label><asp:RequiredFieldValidator Text="*" ID="rfvPassword" ForeColor="Red" SetFocusOnError="true" ErrorMessage="Password is required" ControlToValidate="txtPassword" runat="server" />
                    <asp:TextBox ID="txtPassword" CssClass="form-control" runat="server" />
                </div>
                <div class="form-group">
                    <asp:Button CssClass="btn btn-info" Text="Log In" ID="cmdLogIn" OnClick="cmdLogIn_Click" runat="server" />
                </div>
            </div>
            <div class="col-sm-4"></div>
        </div>
        <div class="row">
            <div class="col-sm-4"></div>
            <div class="col-sm-4">
                <asp:ValidationSummary ID="ValidationSummary1" runat="server" ForeColor="Red" />
            </div>
            <div class="col-sm-4"></div>
        </div>
    </div>
    </form>
</body>
</html>
