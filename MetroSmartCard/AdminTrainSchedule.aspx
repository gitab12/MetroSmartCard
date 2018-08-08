<%@ Page Language="C#" AutoEventWireup="false" CodeFile="AdminTrainSchedule.aspx.cs" Inherits="AdminTrainSchedule" %>

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
            ForeColor="#C04000" NavigateUrl="~/AdminMainPage.aspx" Style="z-index: 101; left: 3px;
            position: absolute; top: 194px">Home</asp:HyperLink>
        <asp:Image ID="Image2" runat="server" ImageAlign="Left" ImageUrl="~/Files/bLogo.GIF"
            Style="z-index: 102; left: 0px; position: absolute; top: 571px" />
        <asp:HyperLink ID="HyperLink1" runat="server" Font-Bold="False" Font-Names="Arial Black"
            Style="z-index: 103; left: 141px; position: absolute; top: 189px" 
            BackColor="" Font-Size="X-Large" ForeColor="white" Width="421px">Train Schedule Entry Form</asp:HyperLink>
        <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Names="Verdana" ForeColor="white"
            Style="z-index: 104; left: 147px; position: absolute; top: 246px" 
            Text="Train Route No"></asp:Label>
        <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Names="Verdana" ForeColor="white"
            
            Style="z-index: 105; left: 148px; position: absolute; top: 288px; height: 18px;" 
            Text="Train Name"></asp:Label>
        <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1"
            DataTextField="TrainName" DataValueField="TrainName" Font-Names="Verdana" Font-Size="Medium"
            Style="z-index: 106; left: 310px; position: absolute; top: 287px" 
            Width="181px">
        </asp:DropDownList>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\MetroCardData.mdf;Integrated Security=True;User Instance=True"
            SelectCommand="Select TrainName from TrainDetailsTab order by TrainName" ProviderName="System.Data.SqlClient"></asp:SqlDataSource>
        &nbsp; &nbsp;&nbsp;
        <asp:TextBox ID="TextBox1" runat="server" Style="z-index: 107; left: 311px; position: absolute;
            top: 248px" Width="172px"></asp:TextBox>
        &nbsp;&nbsp;
        <asp:TextBox ID="TextBox2" runat="server" Style="z-index: 108; left: 310px; position: absolute;
            top: 423px" Width="80px"></asp:TextBox>
        <asp:Button ID="Button1" runat="server" Font-Names="Verdana" Font-Size="12pt" Style="z-index: 109;
            left: 322px; position: absolute; top: 518px" Text="Save" Width="111px" 
            OnClick="Button1_Click" />
        <asp:Label ID="Label3" runat="server" Font-Bold="True" Font-Names="Verdana" ForeColor="white"
            Style="z-index: 110; left: 147px; position: absolute; top: 332px" 
            Text="From Station"></asp:Label>
        <asp:TextBox ID="TextBox3" runat="server" Style="z-index: 111; left: 311px; position: absolute;
            top: 465px" Width="108px"></asp:TextBox>
        &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;
        <asp:Label ID="Label8" runat="server" Font-Bold="True" Font-Names="Verdana" ForeColor="white"
            Style="z-index: 120; left: 147px; position: absolute; top: 380px" Text="To Station"
            Width="143px"></asp:Label>
        &nbsp;
        <asp:DropDownList ID="DropDownList2" runat="server" DataSourceID="SqlDataSource2"
            DataTextField="StationName" DataValueField="StationName" 
            Font-Names="Verdana" Font-Size="Medium"
            Style="z-index: 122; left: 311px; position: absolute; top: 332px" 
            Width="181px">
        </asp:DropDownList>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\MetroCardData.mdf;Integrated Security=True;User Instance=True"
            SelectCommand="SELECT [StationName] FROM [StationNameTab] ORDER BY [StationName]" ProviderName="System.Data.SqlClient"></asp:SqlDataSource>
        <asp:DropDownList ID="DropDownList3" runat="server" DataSourceID="SqlDataSource2"
            DataTextField="StationName" DataValueField="StationName" 
            Font-Names="Verdana" Font-Size="Medium"
            Style="z-index: 123; left: 310px; position: absolute; top: 377px" 
            Width="181px">
        </asp:DropDownList>
        &nbsp;
        <asp:Label ID="Label10" runat="server" Font-Bold="True" Font-Names="Verdana" ForeColor="white"
            Style="z-index: 125; left: 148px; position: absolute; top: 462px" Text="Reaching Time"
            Width="140px"></asp:Label>
        <asp:Label ID="Label11" runat="server" Font-Bold="True" Font-Names="Verdana" ForeColor="white"
            Style="z-index: 126; left: 148px; position: absolute; top: 421px" Text="Departure Time"
            Width="140px"></asp:Label>
        &nbsp;
    
    </div>
    </form>
</body>
</html>

