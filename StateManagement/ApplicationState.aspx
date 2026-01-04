<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ApplicationState.aspx.cs" Inherits="WebApplication3.ApplicationState" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Button ID="BtnApp" runat="server" Text="Get App Count" OnClick="BtnApp_Click" />
            <br />
            <br />
            <br />
            <asp:Label ID="lblcount" runat="server" Text=""></asp:Label>
         </div>
    </form>
</body>
</html>
