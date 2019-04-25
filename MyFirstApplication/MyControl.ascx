<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="MyControl.ascx.cs" Inherits="MyFirstApplication.MyControl" %>
<%@ OutputCache Duration="20" VaryByParam="label" %>

<h3>User Control</h3>
<asp:Label Text="" ID="lblDateTime" runat="server" />
<asp:Button Text="Change Time" ID="btnChange" OnClick="btnChange_Click" runat="server" />