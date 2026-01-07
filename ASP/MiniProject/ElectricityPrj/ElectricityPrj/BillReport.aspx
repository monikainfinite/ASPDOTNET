<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="BillReport.aspx.cs" Inherits="ElectricityPrj.WebForm4" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <h3 style="text-align:center;color:green;">Electricity Bill Report</h3>
    Consumer Number:
<asp:TextBox ID="txtConsumerNo" runat="server"></asp:TextBox>
<br /><br />
    Report Type:
<asp:RadioButtonList ID="rblType" runat="server">
    <asp:ListItem Text="Monthly Report" Value="M" />
    <asp:ListItem Text="Yearly Report" Value="Y" />
</asp:RadioButtonList>
  Month:
<asp:TextBox ID="txtMonth" runat="server"></asp:TextBox>
&nbsp;&nbsp;<br />
Year:
<asp:TextBox ID="txtYear" runat="server"></asp:TextBox>
<br /><br />
<br />
    <asp:Button ID="btnReport" runat="server"
    Text="Generate Report"
    OnClick="btnReport_Click"
    BackColor="Yellow" ForeColor="Red" />
    <br /><br />

<asp:GridView ID="gvReport" runat="server" AutoGenerateColumns="true" />

<br />
<asp:Label ID="lblMsg" runat="server" ForeColor="Red"></asp:Label>

</asp:Content>
