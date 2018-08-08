<%@ Page Language="C#" AutoEventWireup="false" CodeFile="AdminSationName.aspx.cs" Inherits="AdminSationName" %>

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
            ForeColor="#C04000" NavigateUrl="~/AdminMainPage.aspx" Style="z-index: 101; left: 12px;
            position: absolute; top: 194px">Home</asp:HyperLink>
        <asp:Image ID="Image2" runat="server" ImageAlign="Left" ImageUrl="~/Files/bLogo.GIF"
            Style="z-index: 102; left: 0px; position: absolute; top: 571px" />
        <asp:HyperLink ID="HyperLink1" runat="server" Font-Bold="False" Font-Names="Arial Black"
            Style="z-index: 103; left: 176px; position: absolute; top: 195px" 
            BackColor="" Font-Size="XX-Large" ForeColor="white" Width="507px">Station Names Entry</asp:HyperLink>
        <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Names="Verdana" ForeColor="white"
            
            Style="z-index: 104; left: 174px; position: absolute; top: 300px; bottom: 154px;" 
            Text="Station  Name"></asp:Label>
        <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Names="Verdana" ForeColor="white"
            Style="z-index: 105; left: 176px; position: absolute; top: 342px" 
            Text="Details"></asp:Label>
        &nbsp; &nbsp;
        <asp:TextBox ID="TextBox1" runat="server" Style="z-index: 107; left: 301px; position: absolute;
            top: 299px" Width="205px"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1"
            ErrorMessage="* Enter the Station Name" Font-Bold="True" 
            Font-Names="Verdana" Style="z-index: 108;
            left: 529px; position: absolute; top: 300px" Width="249px"></asp:RequiredFieldValidator>
        &nbsp;
        <asp:TextBox ID="TextBox2" runat="server" Style="z-index: 110; left: 302px; position: absolute;
            top: 344px" Width="203px"></asp:TextBox>
        <asp:Button ID="Button1" runat="server" Font-Names="Verdana" Font-Size="12pt" Style="z-index: 112;
            left: 396px; position: absolute; top: 394px" Text="Save" Width="109px" 
            OnClick="Button1_Click" />
    
    </div>
    </form>
</body>
</html>

