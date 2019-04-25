<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DataControlsEx2.aspx.cs" Inherits="MyFirstApplication.DataControlsEx2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1>DataList Example</h1>
            <hr />
            <div style="text-align:center">
                <asp:DataList ID="dlProducts" GridLines="Both" runat="server" RepeatColumns="4" RepeatDirection="Horizontal" OnItemCommand="dlProducts_ItemCommand">
                    <ItemTemplate>
                        <div>
                            Image
                        </div>
                        <div>
                            <asp:Label Text='<%#Eval("vFirstName") %>' ID="lblProductName" runat="server" />
                        </div>
                        <div>
                            <asp:Label Text='<%#Eval("cCity") %>' ID="lblCity" runat="server" />
                        </div>
                        <div>
                            <asp:Button Text="Details" ID="btnDetails" runat="server" CommandName="Details" CommandArgument='<%#Eval("cEmployeeCode") %>' />
                            <asp:Button Text="Buy Now" ID="btnBuyNow" runat="server" CommandName="BuyNow" CommandArgument='<%#Eval("cEmployeeCode") %>' />
                        </div>
                    </ItemTemplate>
                </asp:DataList>
            </div>
        </div>
    </form>
</body>
</html>
