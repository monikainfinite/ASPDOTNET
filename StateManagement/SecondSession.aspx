<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SecondSession.aspx.cs" Inherits="WebApplication3.SecondSession" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <br />
        <br />
        <asp:Label ID="lblname" runat="server" Text="Label"></asp:Label>
        <br />
        <br />
        <asp:Label ID="lblregion" runat="server" Text="Label"></asp:Label>
        <br />
        <br />
        <asp:Button ID="btngetSession" runat="server" OnClick="btngetSession_Click" Text="Get Session Data" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="btnThird" runat="server" Text="Redirect" OnClick="btnThird_Click" />
        <br />
    </form>
</body>
</html>
