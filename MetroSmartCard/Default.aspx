<%@ Page Language="C#" AutoEventWireup="false" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>MetroTrain Administration</title>
</head>
<body bgcolor="purple">
    <form id="form1" runat="server">
    <div>
        <asp:Image ID="Image1" runat="server" ImageUrl="~/Files/back3.jpg" Style="z-index: 100;
            left: 0px; position: absolute; top: 0px" Height="20%" Width="100%" />&nbsp;
        <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/Files/Metro1.png"
            PostBackUrl="~/MainPage.aspx" Style="z-index: 108; left: -7px; position: absolute;
            top: 135px; height: 501px; width: 100%;" Width="100%" />
        <asp:Image ID="Image2" runat="server" ImageUrl="~/Files/bLogo.GIF" Style="z-index: 104;
            left: 1px; position: absolute; top: 647px" />
        <asp:LinkButton ID="LinkButton1" runat="server" Font-Names="Verdana" Font-Size="Medium"
            Style="z-index: 105; left: 10px; position: absolute; top: 604px" PostBackUrl="~/MainPage.aspx" Width="131px">Continue......</asp:LinkButton>
        &nbsp; &nbsp; &nbsp;&nbsp;
        &nbsp;&nbsp;
    
    </div>
    </form>
</body>
</html>

