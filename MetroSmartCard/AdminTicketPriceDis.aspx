<%@ Page Language="C#" AutoEventWireup="false" CodeFile="AdminTicketPriceDis.aspx.cs" Inherits="AdminTicketPriceDis" %>

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
            Style="z-index: 101; left: 0px; position: absolute; top: 571px" />
        <asp:HyperLink ID="HyperLink1" runat="server" Font-Bold="False" Font-Names="Arial Black"
            Style="z-index: 102; left: 97px; position: absolute; top: 120px" ForeColor="Green" Width="884px" Font-Size="X-Large">Ticket Price List</asp:HyperLink>
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False"
            BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px"
            CellPadding="3" DataSourceID="SqlDataSource1" Style="z-index: 103; left: 98px;
            position: absolute; top: 168px" Width="890px">
            <RowStyle ForeColor="#000066" />
            <Columns>
                <asp:BoundField DataField="TrainType" HeaderText="TrainType" SortExpression="TrainType" />
                <asp:BoundField DataField="fromStation" HeaderText="FromStation" SortExpression="fromStation" />
                <asp:BoundField DataField="Tostation" HeaderText="ToStation" SortExpression="Tostation" />
                <asp:BoundField DataField="rPrice" HeaderText="rPrice" SortExpression="rPrice" />
                <asp:BoundField DataField="dPrice" HeaderText="dPrice" SortExpression="dPrice" />
            </Columns>
            <FooterStyle BackColor="White" ForeColor="#000066" />
            <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
            <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:CSMetroTrain %>"
            SelectCommand="select TrainType,fromStation,Tostation,rPrice,dPrice from TicketPriceTab order by TrainType,fromStation,toStation">
        </asp:SqlDataSource>
        Customer&nbsp;
        <asp:HyperLink ID="HyperLink3" runat="server" Font-Bold="False" Font-Names="Arial Black"
            ForeColor="#C04000" NavigateUrl="~/AdminMainPage.aspx" Style="z-index: 104; left: 1px;
            position: absolute; top: 114px">Home</asp:HyperLink>
        &nbsp;
        <asp:Button ID="Button1" runat="server" PostBackUrl="~/AdminMainPage.aspx" Style="z-index: 106;
            left: 876px; position: absolute; top: 531px" Text="Back" Width="113px" />
        &nbsp;
    
    </div>
    </form>
</body>
</html>

