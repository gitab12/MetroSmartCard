<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AdminUsageList.aspx.cs" Inherits="AdminUsageList" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head id="Head1" runat="server">
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
            Style="z-index: 102; left: 195px; position: absolute; top: 190px" 
            ForeColor="white" Width="884px" Font-Size="X-Large">Smart Recharge List</asp:HyperLink>
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False"
            BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px"
            CellPadding="3" Style="z-index: 103; left: 97px;
            position: absolute; top: 256px" Width="890px" CellSpacing="2" 
            DataSourceID="SqlDataSource1" >
            <RowStyle ForeColor="#8C4510" BackColor="#FFF7E7" />

            <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
            <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
            <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
            <Columns>
                <asp:BoundField DataField="rNo" HeaderText="rNo" SortExpression="rNo" />
                <asp:BoundField DataField="rDate" DataFormatString="{0:d}" HeaderText="rDate" SortExpression="rDate" />
                <asp:BoundField DataField="CardNo" HeaderText="CardNo" SortExpression="CardNo" />
                <asp:BoundField DataField="tDetails" HeaderText="tDetails" SortExpression="tDetails" />
                <asp:BoundField DataField="CrAmt" HeaderText="CrAmt" SortExpression="CrAmt" />
            </Columns>

        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:CSMetroTrain %>"
            SelectCommand="SELECT [rNo], [rDate], [CardNo], [tDetails], [CrAmt] FROM [SmartcardTranTab] where crAmt>0 ORDER BY [rNo] DESC">
        </asp:SqlDataSource>



        <asp:HyperLink ID="HyperLink3" runat="server" Font-Bold="False" Font-Names="Arial Black"
            ForeColor="#C04000" NavigateUrl="~/AdminMainPage.aspx" Style="z-index: 104; left: 21px;
            position: absolute; top: 185px">Home</asp:HyperLink>
        &nbsp;
        &nbsp;
    
    </div>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
        <asp:Button ID="Button1" runat="server" PostBackUrl="~/AdminMainPage.aspx" Style="z-index: 106;
            left: 997px; position: absolute; top: 463px" Text="Back" 
        Width="113px" />
    </form>
</body>
</html>

