<%@ Page Language="C#" AutoEventWireup="false" CodeFile="CustSmartcardbuyRes.aspx.cs" Inherits="CustSmartcardbuyRes" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head id="Head1" runat="server">
    <title>Metro Train Smart Card</title>
</head>
<body bgcolor="purple">
    <form id="form1" runat="server">
    <div>
        <asp:Image ID="Image1" runat="server" ImageUrl="~/Files/back3.jpg" Style="z-index: 100;
            left: 0px; position: absolute; top: 0px" />
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Style="z-index: 108;
            left: 549px; position: absolute; top: 396px" Text="Card No" 
            Width="145px" />
        <asp:Image ID="Image2" runat="server" ImageAlign="Left" ImageUrl="~/Files/bLogo.GIF"
            Style="z-index: 102; left: 0px; position: absolute; top: 603px" />
        &nbsp; &nbsp; &nbsp;
        <asp:HyperLink ID="HyperLink5" runat="server" Font-Bold="False" Font-Names="Arial Black"
            ForeColor="#C000C0" NavigateUrl="~/CustMainPage.aspx" Style="z-index: 103; left: 498px;
            position: absolute; top: 538px" Width="84px">Back</asp:HyperLink>
        &nbsp;
        &nbsp;&nbsp;
        <asp:HyperLink ID="HyperLink3" runat="server" Font-Bold="False" Font-Names="Arial Black"
            ForeColor="#C04000" NavigateUrl="~/CustMainPage.aspx" Style="z-index: 104; left: 1px;
            position: absolute; top: 189px">Home</asp:HyperLink>
        &nbsp;
        <asp:HyperLink ID="HyperLink4" runat="server" Font-Bold="False" Font-Names="Arial Black"
            ForeColor="white" Height="52px" Style="z-index: 105; left: 32px; position: absolute;
            top: 481px" Width="551px" Font-Size="Small">If you want to know more details, then please call 080 23232323</asp:HyperLink>
        &nbsp;
        <asp:HyperLink ID="HyperLink1" runat="server" Font-Bold="False" Font-Names="Arial Black"
            Font-Size="XX-Large" ForeColor="white" Height="52px" Style="z-index: 106; left: 31px;
            position: absolute; top: 221px" Width="662px">Your Submission is successfull, We will send you the card soon.</asp:HyperLink><br />
        <asp:HyperLink ID="HyperLink2" runat="server" Font-Bold="False" Font-Names="Arial Black"
            Font-Size="XX-Large" ForeColor="blue" Height="52px" Style="z-index: 107; left: 32px;
            position: absolute; top: 303px" Width="662px">.</asp:HyperLink>
    
    </div>
    </form>
</body>
</html>