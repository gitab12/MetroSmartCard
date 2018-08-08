<%@ Page Language="C#" AutoEventWireup="false" CodeFile="AdminTicketPriceEntry.aspx.cs" Inherits="AdminTicketPriceEntry" %>

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
            ForeColor="#C04000" NavigateUrl="~/AdminMainPage.aspx" Style="z-index: 101; left: 6px;
            position: absolute; top: 189px">Home</asp:HyperLink>
        <asp:Image ID="Image2" runat="server" ImageAlign="Left" ImageUrl="~/Files/bLogo.GIF"
            Style="z-index: 102; left: 0px; position: absolute; top: 571px" />
        <asp:HyperLink ID="HyperLink1" runat="server" Font-Bold="False" Font-Names="Arial Black"
            Style="z-index: 103; left: 141px; position: absolute; top: 184px" 
            BackColor="" Font-Size="X-Large" ForeColor="white" Width="494px">Ticket Price Entry Form</asp:HyperLink>
        &nbsp;
        <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Names="Verdana" ForeColor="white"
            Style="z-index: 104; left: 139px; position: absolute; top: 258px" 
            Text="Train Type" Visible="True"></asp:Label>
        <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1"
            DataTextField="TrainType" DataValueField="TrainType" Font-Names="Verdana" Font-Size="Medium"
            Style="z-index: 105; left: 302px; position: absolute; top: 255px" 
            Width="181px" Visible="True" 
            onselectedindexchanged="DropDownList1_SelectedIndexChanged">
        </asp:DropDownList>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\MetroCardData.mdf;Integrated Security=True;User Instance=True"
            SelectCommand="Select TrainType from TrainTypeTab order by TrainType" ProviderName="System.Data.SqlClient"></asp:SqlDataSource>
        &nbsp; &nbsp;&nbsp; &nbsp; &nbsp;
        &nbsp;&nbsp;
        <asp:TextBox ID="TextBox2" runat="server" Style="z-index: 106; left: 304px; position: absolute;
            top: 391px; height: 23px;" Width="97px"></asp:TextBox>
        <asp:Button ID="Button1" runat="server" Font-Names="Verdana" Font-Size="12pt" Style="z-index: 107;
            left: 371px; position: absolute; top: 494px" Text="Save" Width="111px" 
            OnClick="Button1_Click" />
        <asp:TextBox ID="TextBox3" runat="server" Style="z-index: 109; left: 305px; position: absolute;
            top: 437px" Width="94px"></asp:TextBox>
        &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;
        <asp:Label ID="Label8" runat="server" Font-Bold="True" Font-Names="Verdana" ForeColor="white"
            Style="z-index: 110; left: 137px; position: absolute; top: 350px" Text="To Station"
            Width="143px"></asp:Label>
        &nbsp;
        <asp:DropDownList ID="DropDownList2" runat="server" DataSourceID="SqlDataSource2"
            DataTextField="StationName" DataValueField="StationName" 
            Font-Names="Verdana" Font-Size="Medium"
            Style="z-index: 111; left: 302px; position: absolute; top: 300px" 
            Width="181px">
        </asp:DropDownList>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\MetroCardData.mdf;Integrated Security=True;User Instance=True"
            SelectCommand="SELECT [StationName] FROM [StationNameTab] ORDER BY [StationName]" ProviderName="System.Data.SqlClient"></asp:SqlDataSource>
        <asp:DropDownList ID="DropDownList3" runat="server" DataSourceID="SqlDataSource2"
            DataTextField="StationName" DataValueField="StationName" 
            Font-Names="Verdana" Font-Size="Medium"
            Style="z-index: 112; left: 303px; position: absolute; top: 346px" 
            Width="181px">
        </asp:DropDownList>
        &nbsp;
        <asp:Label ID="Label10" runat="server" Font-Bold="True" Font-Names="Verdana" ForeColor="white"
            Style="z-index: 113; left: 139px; position: absolute; top: 423px" Text="Discounted Price"
            Width="140px"></asp:Label>
        <asp:Label ID="Label11" runat="server" Font-Bold="True" Font-Names="Verdana" ForeColor="white"
            Style="z-index: 114; left: 140px; position: absolute; top: 390px" Text="Price"
            Width="140px"></asp:Label>
        &nbsp;&nbsp;
        <asp:Button ID="Button2" runat="server" Font-Names="Verdana" Font-Size="12pt" Style="z-index: 116;
            left: 145px; position: absolute; top: 492px" Text="Display List" 
            Width="141px" PostBackUrl="~/AdminTicketPriceDis.aspx" />
    
    </div>
    <p>
        <asp:Label ID="Label3" runat="server" Font-Bold="True" Font-Names="Verdana" ForeColor="white"
            Style="z-index: 108; left: 138px; position: absolute; top: 306px" 
            Text="From Station"></asp:Label>
        </p>
    </form>
</body>
</html>

