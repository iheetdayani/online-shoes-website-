<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/admin/admin.Master" CodeBehind="Changepassword.aspx.vb" Inherits="online_shoes_website.Changepassword" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     <style type="text/css">
    .style8
    {
        width: 100%;
    }
         .auto-style1 {
             background: #CC0066;
             color: #fff;
             font-weight: bold;
             font-size: medium;
             border-radius: 4px;
             box-shadow: 5px 5px 5px #c4c4c4;
             transition: background-color 1s ease;
             text-align: center;
         }
     </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
      <table class="style8">
    <tr>
        <td class="tblhead" colspan="2">
            Change Password</td>
    </tr>
    <tr>
        <td>
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td class="lbl">
            Enter New Adminid:</td>
        <td>
            <asp:TextBox ID="Adminid" runat="server" TextMode="Password"></asp:TextBox>
        </td>
    </tr>
          <td class="lbl">
            Enter Password:</td>
            <td>
            <asp:TextBox ID="Adminpassword" runat="server" TextMode="Password"></asp:TextBox>
        </td>
    <tr>
        <td>
            &nbsp;</td>
        <td>
            <asp:Button ID="Button10" runat="server" CssClass="auto-style1" Text="Change " Width="169px" />
        </td>
    </tr>
    <tr>
        <td>
            &nbsp;</td>
        <td>
            <asp:Label ID="Label1" runat="server"></asp:Label>
        </td>
    </tr>
</table>
</asp:Content>
