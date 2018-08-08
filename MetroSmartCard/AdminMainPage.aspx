<%@ Page Language="C#" AutoEventWireup="false" CodeFile="AdminMainPage.aspx.cs" Inherits="AdminMainPage" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>MetroTrain Administration</title>
</head>
<body bgcolor="purple">
    <form id="form1" runat="server">
    <div>
        <asp:Image ID="Image1" runat="server" ImageUrl="~/Files/back3.jpg" Style="z-index: 100;
            left: 0px; position: absolute; top: 1px" />
        <asp:Image ID="Image2" runat="server" ImageAlign="Left" ImageUrl="~/Files/bLogo.GIF"
            Style="z-index: 101; left: 0px; position: absolute; top: 800px" />
        <asp:HyperLink ID="HyperLink1" runat="server" Font-Bold="False" Font-Names="Arial Black"
            Style="z-index: 102; left: 260px; position: absolute; top: 245px" 
            NavigateUrl="~/AdminTrainDetails.aspx" BackColor="#FFE0C0" 
            BorderColor="#804040" BorderStyle="Solid" BorderWidth="1px" Width="289px" 
            Height="27px">Train Details</asp:HyperLink>
        <asp:HyperLink ID="HyperLink6" runat="server" Font-Bold="False" Font-Names="Arial Black"
            NavigateUrl="~/AdminTrainSchedule.aspx" Style="z-index: 103; left: 260px; position: absolute;
            top: 281px" BackColor="#FFE0C0" BorderColor="#804040" BorderStyle="Solid" 
            BorderWidth="1px" Width="289px" Height="27px">Train Schedule</asp:HyperLink>
        <asp:HyperLink ID="HyperLink7" runat="server" Font-Bold="False" Font-Names="Arial Black"
            NavigateUrl="~/AdminTicketPriceEntry.aspx" Style="z-index: 104; left: 260px; position: absolute;
            top: 317px" BackColor="#FFE0C0" BorderColor="#804040" BorderStyle="Solid" 
            BorderWidth="1px" Width="289px" Height="27px">Ticket Price</asp:HyperLink>
        &nbsp;
        <asp:HyperLink ID="HyperLink3" runat="server" Font-Bold="False" Font-Names="Arial Black"
            ForeColor="#C04000" NavigateUrl="~/Default.aspx" Style="z-index: 105; left: 24px;
            position: absolute; top: 192px">Home</asp:HyperLink>
        <asp:HyperLink ID="HyperLink4" runat="server" Font-Bold="False" Font-Names="Arial Black"
            NavigateUrl="~/AdminSationName.aspx" Style="z-index: 106; left: 260px; position: absolute;
            top: 208px" BackColor="#FFE0C0" BorderColor="#804040" BorderStyle="Solid" 
            BorderWidth="1px" Width="289px" Height="27px">Station Details</asp:HyperLink>
        &nbsp; &nbsp;&nbsp;
        <asp:HyperLink ID="HyperLink9" runat="server" Font-Bold="False" Font-Names="Arial Black"
            NavigateUrl="~/AdminCustApproval.aspx" Style="z-index: 107; left: 260px; position: absolute;
            top: 352px" BackColor="#FFE0C0" BorderColor="#804040" BorderStyle="Solid" 
            BorderWidth="1px" Width="289px" Height="27px">Customer Approval</asp:HyperLink>
        <asp:HyperLink ID="HyperLink11" runat="server" BackColor="#FFE0C0" BorderColor="#804040"
            BorderStyle="Solid" BorderWidth="1px" Font-Bold="False" Font-Names="Arial Black"
            NavigateUrl="~/Default.aspx" Style="z-index: 108; left: 260px; position: absolute;
            top: 570px" Width="289px" Height="27px">Logout</asp:HyperLink>
        <asp:HyperLink ID="HyperLink2" runat="server" BackColor="#FFE0C0" BorderColor="#804040"
            BorderStyle="Solid" BorderWidth="1px" Font-Bold="False" Font-Names="Arial Black"
            Height="27px" NavigateUrl="~/AdminSmartCardList.aspx" Style="z-index: 109; left: 260px;
            position: absolute; top: 388px" Width="289px">Smart Card List</asp:HyperLink>
        <asp:HyperLink ID="HyperLink8" runat="server" BackColor="#FFE0C0" BorderColor="#804040"
            BorderStyle="Solid" BorderWidth="1px" Font-Bold="False" Font-Names="Arial Black"
            Height="27px" NavigateUrl="~/AdminRechargeList.aspx" Style="z-index: 110; left: 260px;
            position: absolute; top: 423px" Width="289px">Recharge List</asp:HyperLink>
        <asp:HyperLink ID="HyperLink10" runat="server" BackColor="#FFE0C0" BorderColor="#804040"
            BorderStyle="Solid" BorderWidth="1px" Font-Bold="False" Font-Names="Arial Black"
            Height="27px" NavigateUrl="~/AdminUsageList.aspx" Style="z-index: 111; left: 260px;
            position: absolute; top: 460px" Width="289px">Card Usage List</asp:HyperLink>
        <asp:HyperLink ID="HyperLink5" runat="server" BackColor="#FFE0C0" BorderColor="#804040"
            BorderStyle="Solid" BorderWidth="1px" Font-Bold="False" Font-Names="Arial Black"
            Height="27px" NavigateUrl="~/AdminBlock.aspx" Style="z-index: 112; left: 260px;
            position: absolute; top: 496px" Width="289px">Block Card</asp:HyperLink>
        <asp:HyperLink ID="HyperLink12" runat="server" BackColor="#FFE0C0" BorderColor="#804040"
            BorderStyle="Solid" BorderWidth="1px" Font-Bold="False" Font-Names="Arial Black"
            Height="27px" NavigateUrl="~/AdminBlockUn.aspx" Style="z-index: 114; left: 260px;
            position: absolute; top: 532px" Width="289px">Unblock Card</asp:HyperLink>
    
    </div>
    </form>
</body>
</html>

