<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm3.aspx.cs" Inherits="MyFirstApplication.WebForm3" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="Content/bootstrap.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
            <div class="row">
                 <div class="col-sm-4"></div>
                <div class="col-sm-3">
                    <h2>Login Details</h2>
                </div>
                 <div class="col-sm-5"></div>
            </div>
            <div class="row">
                <div class="col-sm-3"></div>
                <div class="col-sm-6">
                    <div class="form-group">
                        <label>First Name</label>
                        <asp:TextBox CssClass="form-control" ID="txtFirstName" runat="server" />
                    </div>
                    <div class="form-group">
                        <label>Last Name</label>
                        <asp:TextBox ID="txtLastName" CssClass="form-control" runat="server" />
                    </div>
                    <div class="form-group">
                        <asp:Button CssClass="btn btn-primary" Text="Submit" ID="cmdSubmit" runat="server" />
                        <asp:Button CssClass="btn btn-danger" Text="Reset" ID="btnReset" runat="server" />
                    </div>
                </div>
                <div class="col-sm-3"></div>
            </div>
        </div>
    </form>
</body>
</html>
