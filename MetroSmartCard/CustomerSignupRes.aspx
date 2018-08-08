<%@ Page Language="C#" AutoEventWireup="false" CodeFile="CustomerSignupRes.aspx.cs" Inherits="CustomerSignupRes" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>MetroTrain Administration</title>
</head>
<body bgcolor="purple">
    <form id="form1" runat="server">
    <div>
        <asp:Image ID="Image1" runat="server" ImageUrl="~/Files/back3.jpg." Style="z-index: 100;
            left: 0px; position: absolute; top: 0px" />
        <asp:Image ID="Image2" runat="server" ImageAlign="Left" ImageUrl="~/Files/bLogo.GIF"
            Style="z-index: 101; left: 0px; position: absolute; top: 571px" />
        <asp:HyperLink ID="HyperLink1" runat="server" Font-Bold="False" Font-Names="Arial Black"
            Style="z-index: 102; left: 28px; position: absolute; top: 276px" ForeColor="white" Width="341px">Customer Signup is Successful</asp:HyperLink>
        Customer&nbsp;
        <asp:HyperLink ID="HyperLink3" runat="server" Font-Bold="False" Font-Names="Arial Black"
            ForeColor="#C04000" NavigateUrl="~/Default.aspx" Style="z-index: 103; left: 7px;
            position: absolute; top: 191px">Home</asp:HyperLink>
        <asp:HyperLink ID="HyperLink2" runat="server" Font-Bold="False" Font-Names="Arial Black"
            ForeColor="white" Height="97px" Style="z-index: 105; left: 30px; position: absolute;
            top: 337px" Width="341px">We will check your details and approve your membership to this site soon.....you can login within an hour. </asp:HyperLink>
    
    </div>
    </form>
</body>
</html>

