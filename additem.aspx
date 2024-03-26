<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/admin/admin.Master" CodeBehind="additem.aspx.vb" Inherits="online_shoes_website.additem" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">

        .style12
    {
            width: 156px;
            text-align: left;
        }
    .style14
    {
        width: 156px;
    }
        .style17
        {
            height: 19px;
        width: 216px;
    }
    .style18
    {
        width: 216px;
    }
        .style19
        {
            color: green;
            font-size: 14px;
            font-weight: bold;
            text-align: right;
            width: 156px;
        }
        .auto-style1 {
            color: green;
            font-size: 14px;
            font-weight: bold;
            text-align: right;
            height: 34px;
        }
        .auto-style2 {
            height: 34px;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
      <table class="style1" style="height: 424px; width: 100%">
    <tr>
        <td colspan="2" class="tblhead" align="center">
            Add Item</td>
    </tr>
    <tr>
        <td class="style12">
            &nbsp;</td>
        <td class="style18">
            <asp:Button ID="Button10" runat="server" CssClass="btn" PostBackUrl="viewitems.aspx" Text="BACK" />
        </td>
    </tr>
           <tr>
        <td class="lbl">
            Item ID:</td>
        <td align="LEFT" >
            <asp:TextBox ID="TXTITEMID" runat="server" placeholder=" Type item Id!!!" 
                CssClass="txt" Width="129px" Font-Bold="False" Font-Italic="False" 
                ></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="lbl">
            Item Name:</td>
        <td align="LEFT" >
            <asp:TextBox ID="txtiname" runat="server" placeholder=" Type item name!!!" 
                CssClass="txt" Width="129px" Font-Bold="False" Font-Italic="False" 
                ></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style1">
            Description:</td>
        <td style="text-align: left" class="auto-style2" >
            <%--<asp:TextBox ID="txtdescrip" runat="server" placeholder=" Enter Description!!" 
                 CssClass="txt" ontextchanged="txtdescrip_TextChanged"></asp:TextBox>--%>
            <asp:TextBox ID="Txtdesc" runat="server" placeholder=" Type item Description!!!" 
                CssClass="txt" Width="129px" Font-Bold="False" Font-Italic="False" 
                ></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="lbl">
            Price:</td>
        <td style="text-align: left">
            <asp:TextBox ID="txtprice" runat="server" placeholder="Enter Price!!" 
              CssClass="txt"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="lbl">
            Quantity:</td>
        <td style="text-align: left">
            <asp:TextBox ID="txtquan" runat="server" placeholder="Enter Quantity" 
         CssClass="txt"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="lbl">
            Image:</td>
        <td style="text-align: left">
            <asp:FileUpload ID="imagefile1" runat="server" />
        </td>
    </tr>
   <%-- <tr>
        <td class="lbl">
            Image1 :</td>
        <td style="text-align: left">
            <asp:FileUpload ID="FileUpload2" runat="server" />
        </td>
    </tr>
    <tr>
        <td class="lbl">
            Image2 :</td>
        <td style="text-align: left">
            <asp:FileUpload ID="FileUpload3" runat="server" />
        </td>
    </tr>--%>
    <tr>
        <td class="lbl">
            Size : </td>
        <td style="text-align: left">
            <asp:DropDownList ID="DropDownList2" runat="server">
                <asp:ListItem>Select</asp:ListItem>
                <asp:ListItem>01</asp:ListItem>
                <asp:ListItem>02</asp:ListItem>
                <asp:ListItem>03</asp:ListItem>
                <asp:ListItem>04</asp:ListItem>
                <asp:ListItem>05</asp:ListItem>
                <asp:ListItem>06</asp:ListItem>
                <asp:ListItem>07</asp:ListItem>
                <asp:ListItem>08</asp:ListItem>
                <asp:ListItem>09</asp:ListItem>
                <asp:ListItem>10</asp:ListItem>
                <asp:ListItem>11</asp:ListItem>
            </asp:DropDownList>
        </td>
    </tr>
    <tr>
        <td class="lbl">
            Company Name:</td>
        <td style="text-align: left">
            <asp:DropDownList ID="DropDownList1" runat="server">
                <asp:ListItem>Rebook</asp:ListItem>
                <asp:ListItem>Campus</asp:ListItem>
                <asp:ListItem>nike</asp:ListItem>
                <asp:ListItem>babulu</asp:ListItem>
            </asp:DropDownList>
        </td>
    </tr>
    <tr>
        <td class="style14">
            &nbsp;</td>
        <td class="style18" align="left">
            <asp:Button ID="Button9" runat="server" CssClass="btn" Text="Add-item" />
            <asp:Label ID="lblmsg" runat="server" ForeColor="Black"></asp:Label>
        </td>
    </tr>
    <tr>
        <td class="style12">
            &nbsp;</td>
        <td align="left">
            &nbsp;</td>
    </tr>
</table>
</asp:Content>
