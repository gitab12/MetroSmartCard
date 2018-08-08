<%@ Page Language="C#" AutoEventWireup="false" CodeFile="AdminCustApproval.aspx.cs" Inherits="AdminCustApproval" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Metro Train Smart Card</title>
</head>
<body bgcolor="purple">
    <form id="form1" runat="server">
    <div>
        <asp:Image ID="Image1" runat="server" ImageUrl="~/Files/back3.jpg" Style="z-index: 100;
            left: 0px; position: absolute; top: 0px" />
        <asp:Image ID="Image2" runat="server" ImageAlign="Left" ImageUrl="~/Files/bLogo.GIF"
            Style="z-index: 101; left: 0px; position: absolute; top: 587px" />
        <asp:HyperLink ID="HyperLink1" runat="server" Font-Bold="False" Font-Names="Arial Black"
            Style="z-index: 102; left: 254px; position: absolute; top: 199px" 
            ForeColor="white" Width="341px" Font-Size="X-Large">New Customer Approval</asp:HyperLink>
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False"
            BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px"
            CellPadding="3" DataSourceID="SqlDataSource1" Style="z-index: 103; left: 70px;
            position: absolute; top: 268px" Width="807px" 
            OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
            <RowStyle ForeColor="#000066" />
            <Columns>
                <asp:CommandField ShowSelectButton="True" />
                <asp:BoundField DataField="uName" HeaderText="uName" SortExpression="uName" />
                <asp:BoundField DataField="cName" HeaderText="cName" SortExpression="cName" />
                <asp:BoundField DataField="cAdd" HeaderText="cAdd" SortExpression="cAdd" />
                <asp:BoundField DataField="eMail" HeaderText="eMail" SortExpression="eMail" />
                <asp:BoundField DataField="dlNo" HeaderText="Address Proof" SortExpression="PassportNo" />
                <asp:BoundField DataField="MobileNo" HeaderText="Mobile" SortExpression="Mobile" />
            </Columns>
            <FooterStyle BackColor="White" ForeColor="#000066" />
            <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
            <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:CSMetroTrain %>"
            SelectCommand="SELECT [uName], [cName], [cAdd], [eMail], [dlNo], [MobileNo] FROM [CustomerTab] Where Approved='N'" ProviderName="<%$ ConnectionStrings:CSMetroTrain.ProviderName %>">
        </asp:SqlDataSource>
        &nbsp;
        <asp:HyperLink ID="HyperLink3" runat="server" Font-Bold="False" Font-Names="Arial Black"
            ForeColor="#C04000" NavigateUrl="~/AdminMainPage.aspx" Style="z-index: 104; left: 14px;
            position: absolute; top: 189px">Home</asp:HyperLink>
        <asp:HyperLink ID="HyperLink2" runat="server" Font-Bold="False" Font-Names="Arial Black"
            ForeColor="white" Height="26px" Style="z-index: 105; left: 49px; position: absolute;
            top: 532px" Width="584px">Click on "Select" option to approve the customer.</asp:HyperLink>
        <asp:Button ID="Button1" runat="server" PostBackUrl="~/AdminMainPage.aspx" Style="z-index: 106;
            left: 747px; position: absolute; top: 531px" Text="Back" Width="113px" />
        <asp:Button ID="Button2" runat="server" Style="z-index: 108; left: 609px; position: absolute;
            top: 532px" Text="Refresh List" Width="113px" OnClick="Button2_Click"  />
    
    </div>
    </form>
</body>
</html>