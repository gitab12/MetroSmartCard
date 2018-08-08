<%@ Page Language="C#" AutoEventWireup="true" CodeFile="CustTranDetails.aspx.cs" Inherits="CustTranDetails" %>

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
            Style="z-index: 101; left: 0px; position: absolute; top: 651px" />
        <asp:HyperLink ID="HyperLink1" runat="server" Font-Bold="False" Font-Names="Arial Black"
            Style="z-index: 102; left: 159px; position: absolute; top: 189px" 
            ForeColor="white" Width="884px" Font-Size="X-Large">Card Transaction List</asp:HyperLink>
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False"
            BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px"
            CellPadding="3" Style="z-index: 103; left: 99px;
            position: absolute; top: 336px" Width="890px" CellSpacing="2" 
            DataSourceID="SqlDataSource1"  >
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
                <asp:BoundField DataField="DbAmt" HeaderText="DbAmt" SortExpression="DbAmt" />
                <asp:BoundField DataField="CrAmt" HeaderText="CrAmt" SortExpression="CrAmt" />
            </Columns>


        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:CSMetroTrain %>"
            SelectCommand="SELECT [rNo], [rDate], [CardNo], [tDetails], [DbAmt], [CrAmt] FROM [SmartcardTranTab] WHERE ([CardNo] = @CardNo) ORDER BY [rNo] DESC">
            <SelectParameters>
                <asp:ControlParameter ControlID="TextBox1" Name="CardNo" PropertyName="Text" Type="Double" />
            </SelectParameters>
        </asp:SqlDataSource>




        <asp:HyperLink ID="HyperLink3" runat="server" Font-Bold="False" Font-Names="Arial Black"
            ForeColor="#C04000" NavigateUrl="~/CustMainPage.aspx" Style="z-index: 104; left: 1px;
            position: absolute; top: 200px">Home</asp:HyperLink>
        &nbsp;
        <asp:Button ID="Button1" runat="server" PostBackUrl="~/CustMainPage.aspx" Style="z-index: 105;
            left: 773px; position: absolute; top: 347px" Text="Back" Width="113px" 
            Height="32px" />
        &nbsp;&nbsp;
        <asp:TextBox ID="TextBox1" runat="server" Style="z-index: 106; left: 278px; position: absolute;
            top: 255px"></asp:TextBox>
        <asp:Button ID="Button2" runat="server" Height="35px" Style="z-index: 107; left: 538px;
            position: absolute; top: 247px" Text="Display" Width="171px" />
        <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Names="Verdana" ForeColor="white"
            Style="z-index: 109; left: 100px; position: absolute; top: 256px" Text="Enter Card No"
            Width="173px"></asp:Label>
    
    </div>
    </form>
</body>
</html>

