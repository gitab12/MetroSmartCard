

<%@ Page Language="C#" AutoEventWireup="false" CodeFile="CustSmartCardBuy.aspx.cs" Inherits="CustSmartCardBuy" %>

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
            ForeColor="#C04000" NavigateUrl="~/CustMainPage.aspx" Style="z-index: 101; left: 23px;
            position: absolute; top: 194px">Home</asp:HyperLink>
        <asp:Image ID="Image2" runat="server" ImageAlign="Left" ImageUrl="~/Files/bLogo.GIF"
            Style="z-index: 102; left: 0px; position: absolute; top: 1000px" />
        <asp:HyperLink ID="HyperLink1" runat="server" Font-Bold="False" Font-Names="Arial Black"
            Style="z-index: 103; left: 218px; position: absolute; top: 197px" 
            BackColor="" Font-Size="X-Large" ForeColor="white" Width="421px">To buy SmartCard</asp:HyperLink>
        <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Names="Verdana" ForeColor="white"
            Style="z-index: 104; left: 140px; position: absolute; top: 266px" 
            Text="Name"></asp:Label>
        <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Names="Verdana" ForeColor="white"
            Style="z-index: 105; left: 130px; position: absolute; top: 453px" 
            Text="Gender"></asp:Label>
        <asp:DropDownList ID="DropDownList1" runat="server" Font-Names="Verdana" Font-Size="Medium"
            Style="z-index: 106; left: 308px; position: absolute; top: 448px" 
            Width="181px">
            <asp:ListItem>Male</asp:ListItem>
            <asp:ListItem>Female</asp:ListItem>
        </asp:DropDownList>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\MetroCardData.mdf;Integrated Security=True;User Instance=True"
            SelectCommand="Select TrainName from TrainDetailsTab order by TrainName" ProviderName="System.Data.SqlClient"></asp:SqlDataSource>
        &nbsp; &nbsp;&nbsp;
        <asp:TextBox ID="TextBox1" runat="server" Style="z-index: 107; left: 307px; position: absolute;
            top: 266px" Width="253px"></asp:TextBox>
        &nbsp;&nbsp;
        <asp:TextBox ID="TextBox2" runat="server" Style="z-index: 108; left: 304px; position: absolute;
            top: 313px" Width="255px" Height="111px" TextMode="MultiLine"></asp:TextBox>
        <asp:TextBox ID="TextBox6" runat="server" Height="83px" Style="z-index: 109;
            left: 311px; position: absolute; top: 665px" TextMode="MultiLine" 
            Width="255px"></asp:TextBox>
        <asp:Label ID="Label6" runat="server" Font-Bold="True" Font-Names="Verdana" ForeColor="white"
            Style="z-index: 110; left: 130px; position: absolute; top: 671px" 
            Text="Payment Details"></asp:Label>
        <asp:Label ID="Label7" runat="server" Font-Bold="True" Font-Names="Verdana" ForeColor="white"
            Style="z-index: 111; left: 154px; position: absolute; top: 828px" Text="Select scanned address proof in .jpg format"
            Width="419px"></asp:Label>
        <asp:Button ID="Button1" runat="server" Font-Names="Verdana" Font-Size="12pt" Style="z-index: 113;
            left: 443px; position: absolute; top: 913px" Text="Apply" Width="111px" 
            OnClick="Button1_Click" />
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1"
            ErrorMessage="RequiredFieldValidator" Font-Names="Verdana" Font-Size="Small"
            Style="z-index: 114; left: 556px; position: absolute; top: 178px" 
            Width="362px">* Enter the correct Name</asp:RequiredFieldValidator>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2"
            ErrorMessage="RequiredFieldValidator" Font-Names="Verdana" Font-Size="Small"
            Style="z-index: 127; left: 576px; position: absolute; top: 216px" Width="362px">* Enter the valid address</asp:RequiredFieldValidator>
        <asp:FileUpload ID="FileUpload1" runat="server" Height="25px" Style="z-index: 116;
            left: 142px; position: absolute; top: 790px" Width="418px" />
        <asp:FileUpload ID="FileUpload2" runat="server" Height="26px" Style="z-index: 117;
            left: 136px; position: absolute; top: 854px" Width="427px" />
        <asp:Label ID="Label3" runat="server" Font-Bold="True" Font-Names="Verdana" ForeColor="white"
            Style="z-index: 118; left: 136px; position: absolute; top: 318px" 
            Text="Address"></asp:Label>
        <asp:TextBox ID="TextBox3" runat="server" Height="17px" Style="z-index: 119; left: 309px;
            position: absolute; top: 492px" Width="177px"></asp:TextBox>
        <asp:TextBox ID="TextBox4" runat="server" Height="17px" Style="z-index: 120; left: 310px;
            position: absolute; top: 540px" Width="177px"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBox4"
            ErrorMessage="RequiredFieldValidator" Font-Names="Verdana" Font-Size="Small"
            Style="z-index: 114; left: 518px; position: absolute; top: 617px" 
            Width="362px">* Enter the field</asp:RequiredFieldValidator>
        <asp:TextBox ID="TextBox5" runat="server" Style="z-index: 121; left: 312px;
            position: absolute; top: 577px; height: 19px;" Width="177px" 
            ReadOnly="True">250.00</asp:TextBox>
        <asp:Label ID="Label4" runat="server" Font-Bold="True" Font-Names="Verdana" ForeColor="white"
            Style="z-index: 122; left: 133px; position: absolute; top: 539px" Text="MobileNo"
            Width="140px"></asp:Label>
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;
        <asp:Label ID="Label8" runat="server" Font-Bold="True" Font-Names="Verdana" ForeColor="white"
            Style="z-index: 123; left: 131px; position: absolute; top: 494px" Text="Date of Birth"
            Width="143px"></asp:Label>
        &nbsp;
        <asp:DropDownList ID="DropDownList2" runat="server"
            DataTextField="StationName" DataValueField="StationName" 
            Font-Names="Verdana" Font-Size="Medium"
            Style="z-index: 124; left: 309px; position: absolute; top: 617px" 
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
            Style="z-index: 125; left: 131px; position: absolute; top: 579px" Text="Smart Card Fee"
            Width="140px"></asp:Label>
        <asp:Label ID="Label5" runat="server" Font-Bold="True" Font-Names="Verdana" ForeColor="white"
            Style="z-index: 126; left: 132px; position: absolute; top: 628px" Text="Payment Type"
            Width="140px"></asp:Label>
        &nbsp; &nbsp;&nbsp;
    
    </div>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
        <asp:Label ID="Label9" runat="server" Font-Bold="True" Font-Names="Verdana" ForeColor="white"
            Style="z-index: 112; left: 156px; position: absolute; top: 761px" Text="Select scanned photo file in .jpg format"
            Width="412px"></asp:Label>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" 
            runat="server" ControlToValidate="TextBox3"
            ErrorMessage="" Style="z-index: 128; left: 510px;
            position: absolute; top: 492px"
            ValidationGroup="a1"></asp:RegularExpressionValidator>
            </p>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox3"
            ErrorMessage="RequiredFieldValidator" Font-Names="Verdana" Font-Size="Small"
            Style="z-index: 114; left: 513px; position: absolute; top: 452px" 
            Width="362px">* Enter the field</asp:RequiredFieldValidator>
    </form>
</body>
</html>

