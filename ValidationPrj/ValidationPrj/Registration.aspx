<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Registration.aspx.cs" Inherits="ValidationPrj.Registration" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .selfstyle{
            height:400px;
            margin-left:40px;
        }
        #btnregister{
            margin-left:200px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
    <h1 style="color:darkblue;font-size:20px;text-align:center;">Registration Form</h1>
            <br />
            Name:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;
            <asp:TextBox ID="txtname" runat="server" OnTextChanged="txtname_TextChanged"
></asp:TextBox>       
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtname" ErrorMessage="name cant be empty" ForeColor="Red" ValidationGroup="regn">*</asp:RequiredFieldValidator>
            <br />
            <br />
            Age:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp; <asp:TextBox ID="txtage" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtage" ErrorMessage="Age is mandatory" ForeColor="Red" Display="Dynamic" ValidationGroup="regn">*</asp:RequiredFieldValidator>
&nbsp;<asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="txtage" ErrorMessage="age has to be 21 and 50" ForeColor="Red" MaximumValue="50" MinimumValue="21" Type="Integer" Display="Dynamic" ValidationGroup="regn">*</asp:RangeValidator>
            <br />
            <br />
            Password:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp; <asp:TextBox ID="txtpass" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtpass" ErrorMessage="password is req" ForeColor="Red" ValidationGroup="regn">*</asp:RequiredFieldValidator>
            <br />
            <br />
            Confirmation Password:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="txtcpass" runat="server" ></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtcpass" ErrorMessage="this is req" ForeColor="Red" Display="Dynamic" ValidationGroup="regn">*</asp:RequiredFieldValidator>
            &nbsp;
            <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txtpass" ControlToValidate="txtcpass" Display="Dynamic" ErrorMessage="same as password" ForeColor="Red" ValidationGroup="regn">*</asp:CompareValidator>
            <br />
            <br />
            Email:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;
            <asp:TextBox ID="txtemail" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtemail" ErrorMessage="email is req" ForeColor="Red" Display="Dynamic" ValidationGroup="regn">*</asp:RequiredFieldValidator>
            &nbsp;
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtemail" Display="Dynamic" ErrorMessage="email format incorrect" ForeColor="#FF3300" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ValidationGroup="regn">*</asp:RegularExpressionValidator>
            <br />
            <br /><br />
            <asp:Button style="background-color:darkblue;" ID="btnregister" runat="server" Text="Register"  OnClick="btnregister_Click" ValidationGroup="regn"/>

        </div>
        <asp:ValidationSummary ID="ValidationSummary1" runat="server" ValidationGroup="regn" />
        <br />
        <hr />
        <div>
           <h1 style="color:crimson;text-align:center;"> Login Form</h1>
            <br />
            Login Name : &nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="txtlogin" runat="server"></asp:TextBox>
            &nbsp;
            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txtlogin" ErrorMessage="Login name must" ForeColor="Red" ValidationGroup="login">*</asp:RequiredFieldValidator>
            <br />
            Password :&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="txtlpass" runat="server"></asp:TextBox>
            &nbsp;
            <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="txtlpass" ErrorMessage="Password must" ForeColor="Red" ValidationGroup="login">*</asp:RequiredFieldValidator>
            <br />
            <br />
            <asp:Button ID="btnlogin" Text="Login" runat="server"  ValidationGroup="login"/>
            <br />
            <br />
            <asp:ValidationSummary ID="ValidationSummary2" runat="server" ForeColor="Red" ValidationGroup="login" />

        </div>
    </form>
</body>
</html>
