<%@ Page Language="C#" AutoEventWireup="false" CodeFile="AdminTrainDetails.aspx.cs" Inherits="AdminTrainDetails" %>

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
            ForeColor="#C04000" NavigateUrl="~/AdminMainPage.aspx" Style="z-index: 101; left: 7px;
            position: absolute; top: 190px">Home</asp:HyperLink>
        <asp:Image ID="Image2" runat="server" ImageAlign="Left" ImageUrl="~/Files/bLogo.GIF"
            Style="z-index: 102; left: 0px; position: absolute; top: 571px" />
        <asp:HyperLink ID="HyperLink1" runat="server" Font-Bold="False" Font-Names="Arial Black"
            Style="z-index: 103; left: 130px; position: absolute; top: 189px" 
            BackColor="" Font-Size="XX-Large" ForeColor="white" Width="752px">Train Details Entry</asp:HyperLink>
        <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Names="Verdana" ForeColor="white"
            Style="z-index: 104; left: 138px; position: absolute; top: 275px" 
            Text="Train Name"></asp:Label>
        <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Names="Verdana" ForeColor="white"
            Style="z-index: 105; left: 134px; position: absolute; top: 320px" 
            Text="Manufacturer" Width="111px"></asp:Label>
        &nbsp; &nbsp;
        <asp:TextBox ID="TextBox1" runat="server" Style="z-index: 106; left: 263px; position: absolute;
            top: 277px" Width="200px"></asp:TextBox>
        &nbsp;&nbsp;
        <asp:TextBox ID="TextBox2" runat="server" Style="z-index: 107; left: 263px; position: absolute;
            top: 322px; height: 22px;" Width="201px"></asp:TextBox>
        <asp:Button ID="Button1" runat="server" Font-Names="Verdana" Font-Size="12pt" Style="z-index: 108;
            left: 719px; position: absolute; top: 413px" Text="Save" Width="160px" 
            OnClick="Button1_Click" />
        <asp:Label ID="Label3" runat="server" Font-Bold="True" Font-Names="Verdana" ForeColor="white"
            Style="z-index: 109; left: 136px; position: absolute; top: 364px" 
            Text="Engine Model"></asp:Label>
        <asp:TextBox ID="TextBox3" runat="server" Style="z-index: 110; left: 262px; position: absolute;
            top: 363px" Width="202px"></asp:TextBox>
        <asp:Label ID="Label4" runat="server" Font-Bold="True" Font-Names="Verdana" ForeColor="white"
            
            Style="z-index: 111; left: 509px; position: absolute; top: 277px; right: 260px;" 
            Text="No of Vagons" Width="148px"></asp:Label>
        <asp:TextBox ID="TextBox4" runat="server" Style="z-index: 112; left: 672px; position: absolute;
            top: 276px" Width="79px"></asp:TextBox>
        <asp:Label ID="Label5" runat="server" Font-Bold="True" Font-Names="Verdana" ForeColor="white"
            Style="z-index: 113; left: 507px; position: absolute; top: 333px" 
            Text="Vagons Details"></asp:Label>
        <asp:TextBox ID="TextBox5" runat="server" Height="76px" Style="z-index: 114; left: 667px;
            position: absolute; top: 318px" TextMode="MultiLine" Width="205px"></asp:TextBox>
        &nbsp; &nbsp; &nbsp;&nbsp;
    
    </div>
    </form>
</body>
</html>

