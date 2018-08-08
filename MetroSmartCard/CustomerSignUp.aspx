<%@ Page Language="C#" AutoEventWireup="false" CodeFile="CustomerSignUp.aspx.cs" Inherits="CustomerSignUp" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>MetroTrain Administration</title>
</head>
<body bgcolor="purple">
    <form id="form1" runat="server">
    <div>
        <asp:Image ID="Image1" runat="server" ImageUrl="~/Files/back3.jpg" Style="z-index: 100;
            left: 0px; position: absolute; top: 7px" />
        <asp:HyperLink ID="HyperLink3" runat="server" Font-Bold="False" Font-Names="Arial Black"
            ForeColor="#C04000" NavigateUrl="~/Default.aspx" Style="z-index: 101; left: 2px;
            position: absolute; top: 195px">Home</asp:HyperLink>
        <asp:Image ID="Image2" runat="server" ImageAlign="Left" ImageUrl="~/Files/bLogo.GIF"
            Style="z-index: 102; left: 0px; position: absolute; top: 812px" />
        <asp:HyperLink ID="HyperLink1" runat="server" Font-Bold="False" Font-Names="Arial Black"
            Style="z-index: 103; left: 170px; position: absolute; top: 174px" 
            BackColor="" Font-Size="XX-Large" ForeColor="#FF80FF" Width="757px">Customer Signup</asp:HyperLink>
        <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Names="Verdana" ForeColor="Teal"
            Style="z-index: 104; left: 170px; position: absolute; top: 236px" 
            Text="User Name" Width="178px"></asp:Label>
        <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Names="Verdana" ForeColor="Teal"
            Style="z-index: 105; left: 171px; position: absolute; top: 276px" Text="Password" Width="178px"></asp:Label>
        &nbsp; &nbsp;
        <asp:TextBox ID="TextBox1" runat="server" Style="z-index: 106; left: 355px; position: absolute;
            top: 233px"></asp:TextBox>
        &nbsp;&nbsp;
        <asp:TextBox ID="TextBox2" runat="server" Style="z-index: 107; left: 359px; position: absolute;
            top: 273px" TextMode="Password" Width="146px"></asp:TextBox>
        <asp:Button ID="Button1" runat="server" Font-Names="Verdana" Font-Size="12pt" Style="z-index: 108;
            left: 358px; position: absolute; top: 631px" Text="Signup" Width="248px" OnClick="Button1_Click" Height="45px" ValidationGroup="a1" />
        <asp:Label ID="Label3" runat="server" Font-Bold="True" Font-Names="Verdana" ForeColor="Teal"
            Style="z-index: 109; left: 170px; position: absolute; top: 327px" Text="Retype Password" Width="178px"></asp:Label>
        <asp:TextBox ID="TextBox3" runat="server" Style="z-index: 110; left: 358px; position: absolute;
            top: 325px" TextMode="Password" Width="146px"></asp:TextBox>
        <asp:Label ID="Label4" runat="server" Font-Bold="True" Font-Names="Verdana" ForeColor="Teal"
            Style="z-index: 111; left: 170px; position: absolute; top: 377px" Text="Name" Width="178px"></asp:Label>
        <asp:TextBox ID="TextBox4" runat="server" Style="z-index: 112; left: 359px; position: absolute;
            top: 370px" Width="243px"></asp:TextBox>
        <asp:Label ID="Label5" runat="server" Font-Bold="True" Font-Names="Verdana" ForeColor="Teal"
            Style="z-index: 113; left: 170px; position: absolute; top: 409px" Text="Address" Width="178px"></asp:Label>
        <asp:TextBox ID="TextBox5" runat="server" Height="76px" Style="z-index: 114; left: 359px;
            position: absolute; top: 405px" TextMode="MultiLine" Width="243px"></asp:TextBox>
        <asp:Label ID="Label6" runat="server" Font-Bold="True" Font-Names="Verdana" ForeColor="Teal"
            Style="z-index: 115; left: 170px; position: absolute; top: 507px" Text="eMail" Width="178px"></asp:Label>
        <asp:TextBox ID="TextBox6" runat="server" Style="z-index: 116; left: 359px; position: absolute;
            top: 505px" Width="243px"></asp:TextBox>
        <asp:Label ID="Label7" runat="server" Font-Bold="True" Font-Names="Verdana" ForeColor="Teal"
            Style="z-index: 117; left: 170px; position: absolute; top: 542px" Text="Mobile No"
            Width="178px"></asp:Label>
        <asp:TextBox ID="TextBox7" runat="server" Style="z-index: 118; left: 359px; position: absolute;
            top: 541px" Width="243px"></asp:TextBox>
        <asp:Label ID="Label8" runat="server" Font-Bold="True" Font-Names="Verdana" ForeColor="Teal"
            Style="z-index: 119; left: 170px; position: absolute; top: 583px" Text="Address Proof"
            Width="178px" Height="20px"></asp:Label>
        &nbsp;
        <asp:FileUpload ID="FileUpload1" runat="server" Height="27px" Style="z-index: 131;
            left: 360px; position: absolute; top: 576px" Width="245px" />
      
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1"
            ErrorMessage="Please Enter UserName" Style="z-index: 121; left: 634px; position: absolute;
            top: 225px" ValidationGroup="a1" Width="208px"></asp:RequiredFieldValidator>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2"
            ErrorMessage="Please Enter Password" Style="z-index: 122; left: 633px; position: absolute;
            top: 272px" ValidationGroup="a1" Width="208px"></asp:RequiredFieldValidator>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox3"
            ErrorMessage="Please Enter the retype password" Style="z-index: 123; left: 632px;
            position: absolute; top: 324px"  ValidationGroup="a1" Width="208px"></asp:RequiredFieldValidator>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBox4"
            ErrorMessage="Please Enter Name" Style="z-index: 124; left: 633px; position: absolute;
            top: 371px" ValidationGroup="a1" Width="208px"></asp:RequiredFieldValidator>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="TextBox6"
            ErrorMessage="Please Enter eMail Id" Style="z-index: 125; left: 632px; position: absolute;
            top: 502px" ValidationGroup="a1" Width="208px"></asp:RequiredFieldValidator>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="TextBox7"
            ErrorMessage="Please Enter MobileNo" Style="z-index: 126; left: 632px; position: absolute;
            top: 543px" ValidationGroup="a1" Width="359px"></asp:RequiredFieldValidator>
        <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="TextBox2"
            ControlToValidate="TextBox3" ErrorMessage="Retype password is no matching" Style="z-index: 127;
            left: 633px; position: absolute; top: 324px" ValidationGroup="a1" Width="309px"></asp:CompareValidator>
        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox6"
            ErrorMessage="Please enter correct emailid" Style="z-index: 128; left: 636px;
            position: absolute; top: 507px" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"
            ValidationGroup="a1"></asp:RegularExpressionValidator>
        <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="TextBox7"
            ErrorMessage="Enter 10 digit mobile no" MaximumValue="9999999999" MinimumValue="7000000000"
            Style="z-index: 129; left: 639px; position: absolute; top: 543px" Type="Double"
            ValidationGroup="a1" Width="180px"></asp:RangeValidator>
        <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="TextBox4"
            ErrorMessage="Please enter characters only" Style="z-index: 130; left: 639px;
            position: absolute; top: 371px" ValidationExpression="^[a-zA-Z ]{1,50}$"></asp:RegularExpressionValidator>
    
    </div>
    </form>
</body>
</html>

