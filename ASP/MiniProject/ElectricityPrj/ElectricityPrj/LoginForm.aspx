<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="LoginForm.aspx.cs" Inherits="ElectricityPrj.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <style>
    h1{
        text-align:center;
    }
</style>

<h1>Admin Login Form</h1>

UserName:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<asp:TextBox ID="txtUser" runat="server"></asp:TextBox>&nbsp;&nbsp;
<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server"  ErrorMessage="This field is required" ForeColor="Red"  ControlToValidate="txtUser">*</asp:RequiredFieldValidator>

<br />
<br />

Password:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<asp:TextBox ID="txtPass" runat="server" TextMode="Password"></asp:TextBox>&nbsp;&nbsp;&nbsp;
<asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server"  ErrorMessage="This field is required"  ForeColor="Red"  ControlToValidate="txtPass">*</asp:RequiredFieldValidator>
<br />
<br />
<br />

<asp:Button ID="btnLogin" runat="server" Text="Login" OnClick="btnLogin_Click" BackColor="Blue" ForeColor="White" />
<br />
<br />
<br />

<asp:Label ID="lblmsg" runat="server"></asp:Label>

</asp:Content>
