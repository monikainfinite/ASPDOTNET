<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ClientForm.aspx.cs" Inherits="WebService_client.ClientForm" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            Enter User Name: &nbsp;&nbsp; &nbsp;
            <asp:TextBox ID="txtname" runat="server"></asp:TextBox>
            <br /><br />
            Enter a Decimal Number :&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="txtfnum" runat="server"></asp:TextBox>
            <br /><br />
            Enter First Number:&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="txtnum1" runat="server"></asp:TextBox>
            <br /><br />
            Enter Second Number:&nbsp;&nbsp;&nbsp;
             <asp:TextBox ID="txtnum2" runat="server"></asp:TextBox>
             <br /><br />
            <asp:Button ID="btnhello" runat="server" Text="Hello world" OnClick="btnhello_Click" />
            &nbsp; &nbsp;&nbsp;
            <asp:Button ID="btnSayhello" runat="server" Text="Say Hello" OnClick="btnSayhello_Click" />
            &nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="btnsnq" runat="server" Text="Square" OnClick="btnsnq_Click" />
            <br />
            <br />
            <asp:Button ID="btnsum" runat="server" Text="Sum" OnClick="btnsum_Click" />
            <br /><br />
            <asp:Label ID="lblmsg" runat="server"></asp:Label>
        </div>
    </form>
</body>
</html>
