<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="ViewBills.aspx.cs" Inherits="ElectricityPrj.WebForm3" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <style>
    h3{
        text-align:center;
        color:dodgerblue;
    }
    .button-align {
    text-align: center;
    margin: 15px 0;
}
</style>
<h3>Retrive Last N Bills</h3>
Enter Number of Bills To display:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<asp:TextBox ID="txtNum" runat="server"></asp:TextBox>
<br />
<br />
<br />
<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <div class="button-align">
<asp:Button ID="btnRetrieve" runat="server" Text="Display Bills" OnClick="btndisplay_Click" BackColor="yellow" ForeColor="red" Height="25px" style="margin-top: 0px"/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
<asp:Button ID="btnBack" runat="server" Text="Back" OnClick="btnBack_Click" BackColor="Yellow" ForeColor="red" />
        </div>
<br />      
<br />       
<asp:GridView ID="GridView1"  runat="server"  AutoGenerateColumns="true">    
</asp:GridView>
<br />
<br />
<asp:Label ID="lblMsg" runat="server"></asp:Label>
</asp:Content>


