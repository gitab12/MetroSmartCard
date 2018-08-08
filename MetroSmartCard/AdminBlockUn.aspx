<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AdminBlockUn.aspx.cs" Inherits="AdminBlockUn" %>

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
        <asp:Image ID="Image2" runat="server" ImageAlign="Left" ImageUrl="~/Files/bLogo.GIF"
            Style="z-index: 101; left: 3px; position: absolute; top: 620px" />
        <asp:HyperLink ID="HyperLink1" runat="server" Font-Bold="False" Font-Names="Arial Black"
            Style="z-index: 102; left: 164px; position: absolute; top: 195px" 
            ForeColor="white" Width="341px" Font-Size="X-Large">Unblock the card</asp:HyperLink>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:CSMetroTrain %>"
            SelectCommand="SELECT [rNo], [rDate], [cardNo], [uName], [Reasons] FROM [BlockCardTab] WHERE ([bStatus] = @bStatus) ORDER BY [rNo]">
            <SelectParameters>
                <asp:Parameter DefaultValue="Y" Name="bStatus" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
      
        &nbsp;
        <asp:HyperLink ID="HyperLink3" runat="server" Font-Bold="False" Font-Names="Arial Black"
            ForeColor="#C04000" NavigateUrl="~/AdminMainPage.aspx" Style="z-index: 104; left: 12px;
            position: absolute; top: 189px">Home</asp:HyperLink>
        <asp:HyperLink ID="HyperLink2" runat="server" Font-Bold="False" Font-Names="Arial Black"
            ForeColor="white" Height="26px" Style="z-index: 105; left: 91px; position: absolute;
            top: 546px" Width="584px">Click on "Select" to unblock the card</asp:HyperLink>
        <asp:Button ID="Button1" runat="server" PostBackUrl="~/AdminMainPage.aspx" Style="z-index: 106;
            left: 732px; position: absolute; top: 547px" Text="Back" Width="113px" />
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False"
            BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px"
            CellPadding="3"  Style="z-index: 103; left: 94px;
            position: absolute; top: 265px" Width="807px" 
            OnSelectedIndexChanged="GridView1_SelectedIndexChanged" CellSpacing="2" 
            DataSourceID="SqlDataSource1">
            <RowStyle ForeColor="#8C4510" BackColor="#FFF7E7" />
            <Columns>
                <asp:CommandField ShowSelectButton="True" />
                <asp:BoundField DataField="rNo" HeaderText="rNo" SortExpression="rNo" />
                <asp:BoundField DataField="rDate" DataFormatString="{0:d}" HeaderText="BlockDate" SortExpression="rDate" />
                <asp:BoundField DataField="cardNo" HeaderText="cardNo" SortExpression="cardNo" />
                
                <asp:BoundField DataField="Reasons" HeaderText="Reasons" SortExpression="Reasons" />
            </Columns>
            <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
            <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
            <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
        </asp:GridView>
        <asp:Button ID="Button2" runat="server" Style="z-index: 108; left: 596px; position: absolute;
            top: 547px" Text="Refresh List" Width="113px" OnClick="Button2_Click"  />
    
    </div>
    </form>
</body>
</html>
