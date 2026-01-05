<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="AddBill.aspx.cs" Inherits="ElectricityPrj.WebForm2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <style>
        h3{
            text-align:center;
            color:indianred;
        }
        .button-align {
    text-align: center;
    margin-top: 15px;
}

    </style>
    <h3>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Add Electricity Bill</h3>
Number of Bills to be Added&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<asp:TextBox ID="txttotal" runat="server"></asp:TextBox>
    <br />
    <br />
    Consumer Number &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<asp:TextBox ID="txtConsumerNo"  runat="server">    </asp:TextBox>
    <br />
    <br />
    Consumer Name&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<asp:TextBox ID="txtConsumerName" runat="server"></asp:TextBox>
    <br />
    <br />
    Units Consumed&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:TextBox ID="txtUnits" runat="server" TextMode="Number"></asp:TextBox>
    <br />
    <br />
    Bill Date &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; <asp:TextBox ID ="txtBillDate" runat="server" TextMode="Date"></asp:TextBox>
    <br /><br />
    
  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <div class="button-align">
<asp:Button ID="btnAddbtn" runat="server" Text="ADD BILL"  OnClick="btnAddBill_Click" BackColor="Yellow" ForeColor="red" />

  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Button ID="btnGoRetrieve"
    runat="server"
    Text="Retrieve Bills"
    OnClick="btnGoRetrieve_Click" BackColor="Yellow" ForeColor="red" />
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <br />
    <br />
    <asp:Button ID="btnReport"
    runat="server"
    Text="View Reports"
    OnClick="btnReport_Click"
    BackColor="Yellow"
    ForeColor="Red" />
    <br />
        </div>
<asp:Label ID="lblmsg" runat="server"></asp:Label>
<br />
<br />
  Last Month Bill Amount
<asp:Label ID="lblLastMonthBill" runat="server" ForeColor="Blue"></asp:Label>
    <br />
<br />
<asp:Label ID="lblResult" runat="server" ForeColor="Green"></asp:Label> 
    <br />
</asp:Content>
