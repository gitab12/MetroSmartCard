<%@ Page Language="C#" AutoEventWireup="true" CodeFile="CustSwapCard.aspx.cs" Inherits="CustSwapCard" %>

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
        &nbsp;
        <asp:HyperLink ID="HyperLink4" runat="server" Font-Bold="False" Font-Names="Arial Black"
            ForeColor="Green" Style="z-index: 102; left: 164px; position: absolute; top: 439px"
            Width="341px">.</asp:HyperLink>
        <asp:HyperLink ID="HyperLink1" runat="server" Font-Bold="False" Font-Names="Arial Black"
            ForeColor="white" Style="z-index: 103; left: 172px; position: absolute; top: 313px"
            Width="138px">Enter Card No</asp:HyperLink>
        <asp:HyperLink ID="HyperLink2" runat="server" Font-Bold="False" Font-Names="Arial Black"
            ForeColor="white" Style="z-index: 104; left: 173px; position: absolute; top: 356px"
            Width="138px">From Place</asp:HyperLink>
        <asp:HyperLink ID="HyperLink5" runat="server" Font-Bold="False" Font-Names="Arial Black"
            ForeColor="white" Style="z-index: 105; left: 172px; position: absolute; top: 395px"
            Width="138px">To Place</asp:HyperLink>
        <asp:TextBox ID="TextBox1" runat="server" Style="z-index: 106; left: 324px; position: absolute;
            top: 315px" Width="182px"></asp:TextBox>
        &nbsp;
        &nbsp;&nbsp;
        <asp:HyperLink ID="HyperLink3" runat="server" Font-Bold="False" Font-Names="Arial Black"
            ForeColor="#C04000" NavigateUrl="~/CustMainPage.aspx" Style="z-index: 107; left: 8px;
            position: absolute; top: 208px">Home</asp:HyperLink>
        <asp:Button ID="Button1" runat="server" PostBackUrl="~/CustMainPage.aspx" Style="z-index: 108;
            left: 11px; position: absolute; top: 488px" Text="Back" Width="110px" />
        &nbsp; &nbsp;
        <asp:HyperLink ID="HyperLink7" runat="server" BackColor="" Font-Bold="False"
            Font-Names="Arial Black" ForeColor="white" Style="z-index: 109; left: 207px;
            position: absolute; top: 214px" Font-Size="X-Large" Width="341px" Height="34px">Swipe Card for Travel</asp:HyperLink>
        <asp:Button ID="Button2" runat="server" Style="z-index: 110;
            left: 317px; position: absolute; top: 448px" Text="Save" Width="192px" 
            OnClick="Button2_Click" Height="35px" />
        <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1"
            DataTextField="StationName" DataValueField="StationName" Style="z-index: 111;
            left: 323px; position: absolute; top: 358px" Width="187px">
        </asp:DropDownList>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:CSMetroTrain %>"
            SelectCommand="SELECT [StationName] FROM [StationNameTab] ORDER BY [StationName]">
        </asp:SqlDataSource>
        <asp:DropDownList ID="DropDownList2" runat="server" DataSourceID="SqlDataSource1"
            DataTextField="StationName" DataValueField="StationName" Style="z-index: 113;
            left: 323px; position: absolute; top: 399px" Width="187px">
        </asp:DropDownList>
    
    </div>
    </form>
</body>
</html>

