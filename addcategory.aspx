<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/admin/admin.Master" CodeBehind="addcategory.aspx.vb" Inherits="online_shoes_website.addcategory" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     <style type="text/css">
    .style12
    {
        width: 145px;
    }
    .style14
    {
        width: 232px;
    }
    .style17
    {
        height: 21px;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <table class="style1" style="height: 256px; width: 100%">
    <tr>
        <td colspan="2" class="tblhead">
            Add Category</td>
    </tr>
    <tr>
        <td class="style12">
            &nbsp;</td>
        <td class="style14">
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style12">
            &nbsp;</td>
        <td class="style14">
            &nbsp;</td>
    </tr>
    <tr>
        <td class="lbl">
            Category Name:</td>
        <td style="text-align: left">
            <asp:TextBox ID="txtname" runat="server" placeholder="Enter Category Name!!!" 
                CssClass="txt" Width="141px" ></asp:TextBox>
            <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                ControlToValidate="txtname" ErrorMessage="Enter Category" 
                ForeColor="#CC0000"></asp:RequiredFieldValidator>--%>
        </td>
    </tr>
    <tr>
        <td class="style17">
            </td>
        <td style="text-align: left" class="style17">
            <asp:Button ID="Button10" runat="server" CssClass="btn" Text="Add" />
        </td>
    </tr>
    <tr>
        <td class="style17">
            &nbsp;</td>
        <td style="text-align: left" class="style17">
            <asp:GridView ID="GridView1" runat="server" AllowSorting="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataSourceID="SqlDataSource1">
                <Columns>
                    <asp:BoundField DataField="Categoryname" HeaderText="Categoryname" SortExpression="Categoryname" />
                    <asp:CommandField ShowSelectButton="True" />
                </Columns>
                <FooterStyle BackColor="#99CCCC" ForeColor="#003399" />
                <HeaderStyle BackColor="#003399" Font-Bold="True" ForeColor="#CCCCFF" />
                <PagerStyle BackColor="#99CCCC" ForeColor="#003399" HorizontalAlign="Left" />
                <RowStyle BackColor="White" ForeColor="#003399" />
                <SelectedRowStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
                <SortedAscendingCellStyle BackColor="#EDF6F6" />
                <SortedAscendingHeaderStyle BackColor="#0D4AC4" />
                <SortedDescendingCellStyle BackColor="#D6DFDF" />
                <SortedDescendingHeaderStyle BackColor="#002876" />
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Database1ConnectionString7 %>" ProviderName="<%$ ConnectionStrings:Database1ConnectionString7.ProviderName %>" SelectCommand="SELECT [Categoryname] FROM [Table3]"></asp:SqlDataSource>
        </td>
    </tr>
    <tr>
        <td class="style12">
            &nbsp;</td>
        <td class="style14">
            &nbsp;</td>
    </tr>
</table>
</asp:Content>
