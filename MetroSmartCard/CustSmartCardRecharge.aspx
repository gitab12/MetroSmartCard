<%@ Page Language="C#" AutoEventWireup="false" CodeFile="CustSmartCardRecharge.aspx.cs" Inherits="CustSmartCardRecharge" %>

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
        <asp:HyperLink ID="HyperLink3" runat="server" Font-Bold="False" Font-Names="Arial Black"
            ForeColor="#C04000" NavigateUrl="~/CustMainPage.aspx" Style="z-index: 101; left: 7px;
            position: absolute; top: 191px">Home</asp:HyperLink>
        <asp:Image ID="Image2" runat="server" ImageAlign="Left" ImageUrl="~/Files/bLogo.GIF"
            Style="z-index: 102; left: 0px; position: absolute; top: 571px" />
        <asp:HyperLink ID="HyperLink1" runat="server" Font-Bold="False" Font-Names="Arial Black"
            Style="z-index: 103; left: 141px; position: absolute; top: 192px" 
            BackColor="" Font-Size="X-Large" ForeColor="white" Width="421px">SmartCard Recharge</asp:HyperLink>
        <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Names="Verdana" ForeColor="white"
            Style="z-index: 104; left: 136px; position: absolute; top: 288px" 
            Text="CardNo"></asp:Label>
        &nbsp;&nbsp;
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\MetroCardData.mdf;Integrated Security=True;User Instance=True"
            SelectCommand="Select TrainName from TrainDetailsTab order by TrainName" ProviderName="System.Data.SqlClient"></asp:SqlDataSource>
        &nbsp; &nbsp;&nbsp;
        <asp:TextBox ID="TextBox1" runat="server" Style="z-index: 107; left: 301px; position: absolute;
            top: 294px" Width="172px"></asp:TextBox>
        &nbsp;&nbsp;
        <asp:TextBox ID="TextBox2" runat="server" Style="z-index: 108; left: 301px; position: absolute;
            top: 333px" Width="80px"></asp:TextBox>
        <asp:Button ID="Button1" runat="server" Font-Names="Verdana" Font-Size="12pt" Style="z-index: 109;
            left: 452px; position: absolute; top: 492px" Text="Save" Width="111px" 
            OnClick="Button1_Click" />
        <asp:Label ID="Label3" runat="server" Font-Bold="True" Font-Names="Verdana" ForeColor="white"
            Style="z-index: 110; left: 132px; position: absolute; top: 334px" 
            Text="Amount"></asp:Label>
        <asp:TextBox ID="TextBox3" runat="server" Style="z-index: 111; left: 301px; position: absolute;
            top: 411px" Width="255px" Height="56px" TextMode="MultiLine"></asp:TextBox>
        &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;
        <asp:Label ID="Label8" runat="server" Font-Bold="True" Font-Names="Verdana" ForeColor="white"
            Style="z-index: 120; left: 131px; position: absolute; top: 371px" Text="Payment Type"
            Width="143px"></asp:Label>
        &nbsp;
        <asp:DropDownList ID="DropDownList2" runat="server"
            DataTextField="StationName" DataValueField="StationName" 
            Font-Names="Verdana" Font-Size="Medium"
            Style="z-index: 122; left: 302px; position: absolute; top: 369px" 
            Width="181px">
            <asp:ListItem>CreditCard</asp:ListItem>
            <asp:ListItem>DebitCard</asp:ListItem>
            <asp:ListItem>MetroCard</asp:ListItem>
            <asp:ListItem>DD</asp:ListItem>
            <asp:ListItem>Cheque</asp:ListItem>
        </asp:DropDownList>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\MetroCardData.mdf;Integrated Security=True;User Instance=True"
            SelectCommand="SELECT [StationName] FROM [StationNameTab] ORDER BY [StationName]" ProviderName="System.Data.SqlClient"></asp:SqlDataSource>
        &nbsp; &nbsp;
        <asp:Label ID="Label10" runat="server" Font-Bold="True" Font-Names="Verdana" ForeColor="white"
            Style="z-index: 125; left: 127px; position: absolute; top: 414px" Text="Payment Details"
            Width="159px"></asp:Label>
        &nbsp; &nbsp;
    
    </div>
    </form>
</body>
</html>

