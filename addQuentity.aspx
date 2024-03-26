<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/admin/admin.Master" CodeBehind="addQuentity.aspx.vb" Inherits="online_shoes_website.addQuentity" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     <style type="text/css">
        .style8
        {
            width: 239px;
        }
        .style9
        {
            width: 73px;
        }
        .style13
        {
            width: 239px;
            color: blue;
        }
        .style15
        {
            color: green;
            font-size: 14px;
            font-weight: bold;
            text-align: right;
            width: 239px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <table class="style1" style="height: 256px; width: 101%">
    <tr>
        <td colspan="2" class="tblhead">
            ADD QUANTITY PAGE</td>
    </tr>
    <tr>
        <td class="style8">
            &nbsp;</td>
        <td class="style9">
            &nbsp;</td>
    </tr>
    <tr>
        <td class="lbl">
            Select Item:</td>
        <td align="LEFT">
            <asp:DropDownList ID="DropDownList2" runat="server">
                <asp:ListItem>baby wear</asp:ListItem>
                <asp:ListItem>ladies wear</asp:ListItem>
                <asp:ListItem>Gents Wear</asp:ListItem>
            </asp:DropDownList>
        </td>
    </tr>
    <tr>
        <td class="lbl">
            ADD Quantity:</td>
        <td style="text-align: left"  >
            <asp:TextBox ID="txtquan" runat="server" placeholder="Enter Quantity!!!" 
                CssClass="txt" Width="100px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="style13">
            &nbsp;</td>
        <td align="left">
            <asp:Button ID="Button9" runat="server" CssClass="btn" Text="Add" />
            <asp:Label ID="Label1" runat="server"></asp:Label>
        </td>
    </tr>
    <tr>
        <td class="style8">
            &nbsp;</td>
        <td style="text-align: left" align="left">
            <%--<asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                onselectedindexchanged="GridView1_SelectedIndexChanged" BackColor="White" BorderColor="#999999" 
                BorderStyle="None" BorderWidth="1px" CellPadding="3" 
                GridLines="Vertical" Width="645px">
                <AlternatingRowStyle BackColor="#DCDCDC" />
                <Columns>
                    <asp:BoundField DataField="INAME" HeaderText="ITEM NAME" 
                        SortExpression="INAME" />
                    <asp:BoundField DataField="QNT" HeaderText="TOTAL QUANTITY" 
                        SortExpression="QNT" />
                    <asp:BoundField DataField="AQNT" HeaderText="AVAILABLE QUANTITY" 
                        SortExpression="AQNT" />
                    <asp:BoundField DataField="SQNT" HeaderText="SELL QUANTITY" 
                        SortExpression="SQNT" />
                </Columns>
                <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
                <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
                <SelectedRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#F1F1F1" />
                <SortedAscendingHeaderStyle BackColor="#0000A9" />
                <SortedDescendingCellStyle BackColor="#CAC9C9" />
                <SortedDescendingHeaderStyle BackColor="#000065" />
            </asp:GridView>--%>
        </td>
    </tr>
    </table>
</asp:Content>
