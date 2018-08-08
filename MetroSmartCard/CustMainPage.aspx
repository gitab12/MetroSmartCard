
<%@ Page Language="C#" AutoEventWireup="false" CodeFile="CustMainPage.aspx.cs" Inherits="CustMainPage" %>

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
            Style="z-index: 101; left: 0px; position: absolute; top: 634px" />
            
        <asp:HyperLink ID="HyperLink1" runat="server" Font-Bold="False" Font-Names="Arial Black"
            Style="z-index: 102; left: 149px; position: absolute; top: 377px" NavigateUrl="~/CustCheckBalance.aspx" BackColor="#C0C0FF" BorderColor="#000040" BorderStyle="Solid" BorderWidth="1px" Font-Size="16pt" Height="32px" Width="449px">Check Balance</asp:HyperLink>
        <asp:HyperLink ID="HyperLink4" runat="server" BackColor="#C0C0FF" BorderColor="#000040"
            BorderStyle="Solid" BorderWidth="1px" Font-Bold="False" Font-Names="Arial Black"
            Font-Size="16pt" Height="32px" NavigateUrl="~/CustSwapCard.aspx" Style="z-index: 103;
            left: 149px; position: absolute; top: 427px" Width="449px">Swipe Card</asp:HyperLink>
        <asp:HyperLink ID="HyperLink5" runat="server" BackColor="#C0C0FF" BorderColor="#000040"
            BorderStyle="Solid" BorderWidth="1px" Font-Bold="False" Font-Names="Arial Black"
            Font-Size="16pt" Height="32px" NavigateUrl="~/CustTranDetails.aspx" Style="z-index: 110;
            left: 149px; position: absolute; top: 480px" Width="449px">Transaction Details</asp:HyperLink>
        &nbsp;
        &nbsp;&nbsp;
         
        <asp:HyperLink ID="HyperLink2" runat="server" Font-Bold="False" Font-Names="Arial Black"
            Style="z-index: 105; left: 149px; position: absolute; top: 212px" NavigateUrl="~/CustTrainTimingsDis.aspx" BackColor="#C0C0FF" BorderColor="#000040" BorderStyle="Solid" BorderWidth="1px" Font-Size="16pt" Height="32px" Width="449px">Check Train Timings</asp:HyperLink>
        <asp:HyperLink ID="HyperLink3" runat="server" Font-Bold="False" Font-Names="Arial Black"
            ForeColor="#C04000" NavigateUrl="~/Default.aspx" Style="z-index: 106; left: 16px;
            position: absolute; top: 184px">Home</asp:HyperLink>
            <h2>WELCOME<asp:Label ID="Label1" runat="server" Text=""></asp:Label></h2>
        &nbsp;
        <asp:HyperLink ID="HyperLink7" runat="server" Font-Bold="False" Font-Names="Arial Black"
            Style="z-index: 107; left: 149px; position: absolute; top: 322px" NavigateUrl="~/CustSmartCardRecharge.aspx" BackColor="#C0C0FF" BorderColor="#000040" BorderStyle="Solid" BorderWidth="1px" Font-Size="16pt" Height="32px" Width="449px">Recharge Smart Card</asp:HyperLink>
        <asp:HyperLink ID="HyperLink6" runat="server" Font-Bold="False" Font-Names="Arial Black"
            Style="z-index: 108; left: 149px; position: absolute; top: 267px" NavigateUrl="~/CustSmartCardBuy.aspx" BackColor="#C0C0FF" BorderColor="#000040" BorderStyle="Solid" BorderWidth="1px" Font-Size="16pt" Height="32px" Width="449px">Buy Smart Card</asp:HyperLink>
        &nbsp;
        <asp:HyperLink ID="HyperLink8" runat="server" BackColor="#C0C0FF" BorderColor="#000040"
            BorderStyle="Solid" BorderWidth="1px" Font-Bold="False" Font-Names="Arial Black"
            Font-Size="16pt" Height="32px" NavigateUrl="~/Default.aspx" Style="z-index: 109;
            left: 148px; position: absolute; top: 548px" Width="449px">Logout</asp:HyperLink>
    
    </div>
    </form>
</body>
</html>

