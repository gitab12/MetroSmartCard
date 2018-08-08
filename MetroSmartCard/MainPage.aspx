<%@ Page Language="C#" AutoEventWireup="false" CodeFile="MainPage.aspx.cs" Inherits="MainPage" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>MetroTrain Administration</title>
</head>
<body bgcolor="purple">
    <form id="form1" runat="server">
    <div>
        <asp:Image ID="Image1" runat="server" ImageUrl="~/Files/back3.jpg" Style="z-index: 100;
            left: 0px; position: absolute; top: 0px" />
        <asp:Image ID="Image2" runat="server" ImageAlign="Left" ImageUrl="~/Files/bLogo.GIF"
            Style="z-index: 101; left: 0px; position: absolute; top: 800px" />
        <asp:HyperLink ID="HyperLink1" runat="server" Font-Bold="False" Font-Names="Arial"
            Style="z-index: 102; left: 204px; position: absolute; top: 261px" NavigateUrl="~/CustomerLoginPage.aspx" BackColor="#FFC0FF" BorderColor="#400040" BorderStyle="Solid" BorderWidth="2px" Font-Size="X-Large" Width="361px" Height="30px">Customer Login</asp:HyperLink>
        &nbsp;
        <asp:HyperLink ID="HyperLink2" runat="server" Font-Bold="False" Font-Names="Arial"
            Style="z-index: 103; left: 204px; position: absolute; top: 211px" NavigateUrl="~/AdminLoginPage.aspx" BackColor="#FFC0FF" BorderColor="#400040" BorderStyle="Solid" BorderWidth="2px" Font-Size="X-Large" Width="361px" Height="30px">Admin Login</asp:HyperLink>
        <asp:HyperLink ID="HyperLink4" runat="server" Font-Bold="False" Font-Names="Arial"
            NavigateUrl="~/CustomerSignUp.aspx" Style="z-index: 104; left: 204px; position: absolute;
            top: 311px" BackColor="#FFC0FF" BorderColor="#400040" BorderStyle="Solid" BorderWidth="2px" Font-Size="X-Large" Width="361px" Height="30px">Customer Signup</asp:HyperLink>
        <asp:HyperLink ID="HyperLink3" runat="server" Font-Bold="False" Font-Names="Arial Black"
            ForeColor="#C04000" NavigateUrl="~/Default.aspx" Style="z-index: 105; left: 0px;
            position: absolute; top: 187px">Home</asp:HyperLink>
        <asp:HyperLink ID="HyperLink5" runat="server" BackColor="#FFC0FF" BorderColor="#400040"
            BorderStyle="Solid" BorderWidth="2px" Font-Bold="False" Font-Names="Arial"
            Font-Size="X-Large" NavigateUrl="~/Default.aspx" Style="z-index: 107; left: 204px;
            position: absolute; top: 361px" Width="361px" Height="30px">Main Page</asp:HyperLink>
    
    </div>
    </form>
</body>
</html>

