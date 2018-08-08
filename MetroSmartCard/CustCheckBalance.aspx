<%@ Page Language="C#" AutoEventWireup="true" CodeFile="CustCheckBalance.aspx.cs" Inherits="CustCheckBalance" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head id="Head1" runat="server">
    <title>MetroTrain Administration</title>
</head>
<body bgcolor="purple">
    <form id="form1" runat="server">
    <div>
        <asp:Image ID="Image1" runat="server" ImageUrl="~/Files/back3.jpg" Style="z-index: 100;
            left: 0px; position: absolute; top: 1px" />
        <asp:Image ID="Image2" runat="server" ImageAlign="Left" ImageUrl="~/Files/bLogo.GIF"
            Style="z-index: 101; left: 0px; position: absolute; top: 571px" />
        &nbsp;
        <asp:HyperLink ID="HyperLink4" runat="server" Font-Bold="False" Font-Names="Arial Black"
            ForeColor="white" Style="z-index: 102; left: 172px; position: absolute; top: 375px"
            Width="341px">.</asp:HyperLink>
        <asp:HyperLink ID="HyperLink1" runat="server" Font-Bold="False" Font-Names="Arial Black"
            ForeColor="white" Style="z-index: 103; left: 168px; position: absolute; top: 260px"
            Width="138px">Enter Card No</asp:HyperLink>
        <asp:TextBox ID="TextBox1" runat="server" Style="z-index: 109; left: 322px; position: absolute;
            top: 259px" Width="182px" ontextchanged="TextBox1_TextChanged"></asp:TextBox>
        &nbsp;
        &nbsp;&nbsp;
                
        <asp:HyperLink ID="HyperLink3" runat="server" Font-Bold="False" Font-Names="Arial Black"
            ForeColor="#C04000" NavigateUrl="~/CustMainPage.aspx" Style="z-index: 105; left: 5px;
            position: absolute; top: 199px">Home</asp:HyperLink>
        <asp:Button ID="Button1" runat="server" PostBackUrl="~/CustMainPage.aspx" Style="z-index: 106;
            left: 11px; position: absolute; top: 488px" Text="Back" Width="110px" 
            onclick="Button1_Click" />
        &nbsp; &nbsp;
        <asp:HyperLink ID="HyperLink7" runat="server" BackColor="" Font-Bold="False"
            Font-Names="Arial Black" ForeColor="white" Style="z-index: 107; left: 172px;
            position: absolute; top: 196px" Font-Size="X-Large" Width="341px" Height="40px">Check Card Balance</asp:HyperLink>
        <asp:Button ID="Button2" runat="server" Style="z-index: 108;
            left: 322px; position: absolute; top: 300px" Text="Display" Width="192px" 
            OnClick="Button2_Click" Height="35px" />
    
    </div>
    <asp:LinkButton ID="LinkButton1" runat="server">LinkButton</asp:LinkButton>
    </form>
</body>
</html>

