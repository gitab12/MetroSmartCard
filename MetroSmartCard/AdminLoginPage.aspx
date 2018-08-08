<%@ Page Language="C#" AutoEventWireup="false" CodeFile="AdminLoginPage.aspx.cs" Inherits="AdminLoginPage" %>

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
            ForeColor="#C04000" NavigateUrl="~/Default.aspx" Style="z-index: 101; left: 1px;
            position: absolute; top: 179px">Home</asp:HyperLink>
        <asp:Image ID="Image2" runat="server" ImageAlign="Left" ImageUrl="~/Files/bLogo.GIF"
            Style="z-index: 102; left: 0px; position: absolute; top: 668px" />
        <asp:HyperLink ID="HyperLink1" runat="server" Font-Bold="False" Font-Names="Arial Black"
            Style="z-index: 103; left: 36px; position: absolute; top: 219px" BackColor="" Font-Size="XX-Large" ForeColor="white" Width="335px">Admin Login</asp:HyperLink>
        <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Names="Verdana" ForeColor="white"
            Style="z-index: 104; left: 107px; position: absolute; top: 296px" Text="User Name"></asp:Label>
        <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Names="Verdana" ForeColor="white"
            Style="z-index: 105; left: 109px; position: absolute; top: 351px" Text="Password"></asp:Label>
        &nbsp; &nbsp;
        <asp:TextBox ID="TextBox1" runat="server" Style="z-index: 107; left: 216px; position: absolute;
            top: 290px"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1"
            ErrorMessage="* Enter the Login Name" Font-Bold="True" Font-Names="Verdana" Style="z-index: 108;
            left: 394px; position: absolute; top: 292px" Width="249px"></asp:RequiredFieldValidator>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2"
            ErrorMessage="* Please enter the Password" Font-Bold="True" Font-Names="Verdana"
            Style="z-index: 109; left: 396px; position: absolute; top: 347px" Width="258px"></asp:RequiredFieldValidator>
        <asp:TextBox ID="TextBox2" runat="server" Style="z-index: 110; left: 218px; position: absolute;
            top: 345px" TextMode="Password" Width="146px"></asp:TextBox>
        <asp:Button ID="Button1" runat="server" Font-Names="Verdana" Font-Size="12pt" Style="z-index: 112;
            left: 261px; position: absolute; top: 403px" Text="Login" Width="109px" OnClick="Button1_Click" />
    
    </div>
    </form>
</body>
</html>

