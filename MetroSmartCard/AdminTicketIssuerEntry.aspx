<%@ Page Language="C#" AutoEventWireup="false" CodeFile="AdminTicketIssuerEntry.aspx.cs" Inherits="AdminTicketIssuerEntry" %>

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
        <asp:HyperLink ID="HyperLink3" runat="server" Font-Bold="False" Font-Names="Arial Black"
            ForeColor="#C04000" NavigateUrl="~/AdminMainPage.aspx" Style="z-index: 101; left: -3px;
            position: absolute; top: 119px">Home</asp:HyperLink>
        <asp:Image ID="Image2" runat="server" ImageAlign="Left" ImageUrl="~/Files/bLogo.GIF"
            Style="z-index: 102; left: 0px; position: absolute; top: 571px" />
        <asp:HyperLink ID="HyperLink1" runat="server" Font-Bold="False" Font-Names="Arial Black"
            Style="z-index: 103; left: 141px; position: absolute; top: 119px" BackColor="Maroon" Font-Size="X-Large" ForeColor="#FF80FF" Width="421px">Ticket Issuer Entry</asp:HyperLink>
        <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Names="Verdana" ForeColor="Teal"
            Style="z-index: 104; left: 147px; position: absolute; top: 176px" Text="UserName"></asp:Label>
        &nbsp;&nbsp;
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\MetroCardData.mdf;Integrated Security=True;User Instance=True"
            SelectCommand="Select TrainName from TrainDetailsTab order by TrainName" ProviderName="System.Data.SqlClient"></asp:SqlDataSource>
        &nbsp; &nbsp;&nbsp;
        <asp:TextBox ID="TextBox1" runat="server" Style="z-index: 107; left: 301px; position: absolute;
            top: 171px" Width="172px"></asp:TextBox>
        &nbsp;&nbsp;
        <asp:TextBox ID="TextBox2" runat="server" Style="z-index: 108; left: 303px; position: absolute;
            top: 213px" Width="170px" Enabled="False" TextMode="Password"></asp:TextBox>
        <asp:Button ID="Button1" runat="server" Font-Names="Verdana" Font-Size="12pt" Style="z-index: 109;
            left: 304px; position: absolute; top: 342px" Text="Save" Width="178px" OnClick="Button1_Click" />
        <asp:Label ID="Label3" runat="server" Font-Bold="True" Font-Names="Verdana" ForeColor="Teal"
            Style="z-index: 110; left: 147px; position: absolute; top: 269px" Text="Issueing Station"></asp:Label>
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
        <asp:DropDownList ID="DropDownList2" runat="server" DataSourceID="SqlDataSource2"
            DataTextField="StationName" DataValueField="StationName" Font-Names="Verdana" Font-Size="Medium"
            Style="z-index: 122; left: 301px; position: absolute; top: 264px" Width="181px">
        </asp:DropDownList>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\MetroCardData.mdf;Integrated Security=True;User Instance=True"
            SelectCommand="SELECT [StationName] FROM [StationNameTab] ORDER BY [StationName]" ProviderName="System.Data.SqlClient"></asp:SqlDataSource>
        &nbsp; &nbsp;&nbsp;
        <asp:Label ID="Label11" runat="server" Font-Bold="True" Font-Names="Verdana" ForeColor="Teal"
            Style="z-index: 126; left: 147px; position: absolute; top: 219px" Text="Password"
            Width="140px"></asp:Label>
        &nbsp;
    
    </div>
    </form>
</body>
</html>

