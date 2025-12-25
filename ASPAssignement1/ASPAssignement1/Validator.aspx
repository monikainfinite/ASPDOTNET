<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Validator.aspx.cs" Inherits="ASPAssignement1.Validator" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
        
        h1{
            text-align:center;
            color:blue;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Validation Form</h1><br />
            <h2>Insert your Details:</h2>
            Name: &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp; &nbsp;
            <asp:TextBox ID="txtname" runat="server"></asp:TextBox> 
            &nbsp;&nbsp;&nbsp;&nbsp;
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtname" ErrorMessage="Name is required" ForeColor="Red" ValidationGroup="val">*</asp:RequiredFieldValidator>
&nbsp;&nbsp;&nbsp;&nbsp; 
            <br />
            <br />
            FamilyName:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;           
            <asp:TextBox ID="txtfname" runat="server"></asp:TextBox> 
            &nbsp;&nbsp;
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtfname" ErrorMessage="Family name is required" ForeColor="Red" ValidationGroup="val">*</asp:RequiredFieldValidator>
&nbsp;&nbsp;
            <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txtname" ControlToValidate="txtfname" Display="Dynamic" ErrorMessage="FamilyName must be differnet from Name" Operator="NotEqual" ValidationGroup="val"></asp:CompareValidator>
            <br />
            <br />
            Address:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
           <asp:TextBox ID="txtadd" runat="server"></asp:TextBox> 
            &nbsp;&nbsp;&nbsp;
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtadd" ErrorMessage="Address is required" ForeColor="Red" ValidationGroup="val">*</asp:RequiredFieldValidator>
&nbsp;
            <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ErrorMessage="Address must have at least 2 chareacters" ControlToValidate="txtadd" ValidationExpression=".{2,}" ValidationGroup="val"></asp:RegularExpressionValidator>
            <br />
            <br />
            City:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:TextBox ID="txtCity" runat="server"></asp:TextBox> 
            &nbsp;&nbsp;&nbsp;
            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtCity" ErrorMessage="city is required" ForeColor="Red" ValidationGroup="val">*</asp:RequiredFieldValidator>
            &nbsp;
            <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="txtCity" Display="Dynamic" ErrorMessage="At least 2 characters" ValidationExpression=".{2,}" ValidationGroup="val"></asp:RegularExpressionValidator>
            <br />
            <br />
            ZipCode:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="txtzip" runat="server"></asp:TextBox> 
            &nbsp;&nbsp;&nbsp;&nbsp;
            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtzip" ErrorMessage="Zip code is required" ForeColor="Red" ValidationGroup="val">*</asp:RequiredFieldValidator>
            &nbsp;
            <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" ControlToValidate="txtzip" Display="Dynamic" ErrorMessage="(XXXXX)" ValidationExpression="^\d{5}$" ValidationGroup="val"></asp:RegularExpressionValidator>
            <br />
            <br />
            Phone:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
           <asp:TextBox ID="txtphone" runat="server"></asp:TextBox> 
            &nbsp;&nbsp;&nbsp;&nbsp;
            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txtphone" ErrorMessage="Phone number is required" ForeColor="Red" ValidationGroup="val">*</asp:RequiredFieldValidator>
            &nbsp;&nbsp;
            <asp:RegularExpressionValidator ID="RegularExpressionValidator6" runat="server" ControlToValidate="txtphone" Display="Dynamic" ErrorMessage="(XX-XXXXXXX / XXX-XXXXXXXX)" ValidationExpression="^(\d{2}-\d{7}|\d{3}-\d{7})$" ValidationGroup="val"></asp:RegularExpressionValidator>
            <br />
            <br />
            E-Mail:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
           <asp:TextBox ID="txtemail" runat="server"></asp:TextBox> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="txtemail" ErrorMessage="E-mail is required" ForeColor="Red" ValidationGroup="val">*</asp:RequiredFieldValidator>
            &nbsp;&nbsp;&nbsp;
            <asp:RegularExpressionValidator ID="RegularExpressionValidator5" runat="server" ControlToValidate="txtemail" Display="Dynamic" EnableTheming="True" ErrorMessage="example@example.com" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ValidationGroup="val"></asp:RegularExpressionValidator>
            <br /><br />
           <asp:Button ID="btncheck" Text="Check" runat="server" OnClick="btnCheck_Click" ValidationGroup="val"  />
            <br />

            <asp:Label ID="lblmsg" runat="server" ForeColor="Green"></asp:Label>
            <asp:ValidationSummary ID="ValidationSummary1" runat="server" ShowMessageBox="True" ValidationGroup="val" />
            <br />


        </div>
    </form>
</body>
</html>
