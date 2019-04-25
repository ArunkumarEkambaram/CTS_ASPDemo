<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Page2.aspx.cs" Inherits="MyFirstApplication.Page2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1>Page2</h1>
            <hr />
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:HRConnectionString %>" SelectCommand="SELECT [cEmployeeCode], [vFirstName], [vLastName], [cCity], [cState] FROM [Employee]"></asp:SqlDataSource>
            <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="cEmployeeCode" DataSourceID="SqlDataSource1" PageSize="5">
                <Columns>
                    <asp:BoundField DataField="cEmployeeCode" HeaderText="cEmployeeCode" ReadOnly="True" SortExpression="cEmployeeCode" />
                    <asp:BoundField DataField="vFirstName" HeaderText="vFirstName" SortExpression="vFirstName" />
                    <asp:BoundField DataField="vLastName" HeaderText="vLastName" SortExpression="vLastName" />
                    <asp:BoundField DataField="cCity" HeaderText="cCity" SortExpression="cCity" />
                    <asp:BoundField DataField="cState" HeaderText="cState" SortExpression="cState" />
                </Columns>
            </asp:GridView>
        </div>
    </form>
</body>
</html>
