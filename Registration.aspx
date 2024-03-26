<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Site1.Master" CodeBehind="Registration.aspx.vb" Inherits="online_shoes_website.Registration" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .style6 {
            color: Green;
            text-align: right;
            height: 24px;
        }

        .style7 {
            height: 24px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="tbl">
        <tr>
            <td class="tblhead" colspan="2">Registration Form</td>
        </tr>
        <tr>
            <td class="lbl">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="lbl">Customerid:
            </td>
            <td>
                <asp:TextBox ID="customerid" runat="server" CssClass="txt" Width="160px"></asp:TextBox>
                <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server"
                    ControlToValidate="txtadd" ErrorMessage="Enter Address" ForeColor="Red">
                </asp:RequiredFieldValidator>--%>
            </td>
        </tr>
        <tr>
            <td class="lbl">Password :
            </td>
            <td>
                <asp:TextBox ID="txtpass" runat="server" CssClass="txt" Width="160px"
                    TextMode="Password">
                </asp:TextBox>
            </td>
        </tr>




        <tr>
            <td class="lbl">name :
            </td>
            <td>
                <asp:TextBox ID="txtname" runat="server" CssClass="txt" Width="160px"></asp:TextBox>
                <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server"
                    ControlToValidate="txtcity" ErrorMessage="Enter City" ForeColor="Red">
                </asp:RequiredFieldValidator>--%>
            </td>
        </tr>
        <tr>
            <td class="lbl">Address :
            </td>
            <td>
                <asp:TextBox ID="txtadd" runat="server" CssClass="txt" Width="160px"
                    TextMode="MultiLine">
                </asp:TextBox>
                <%--<asp:RangeValidator ID="RangeValidator1" runat="server"
                    ControlToValidate="txtppin" ErrorMessage="Enter Pincode" ForeColor="Red"
                    MaximumValue="999999" MinimumValue="100000" Type="Double">
                </asp:RangeValidator>--%>
            </td>
        </tr>
        <tr>
            <td class="lbl">City :
            </td>
            <td>
                <asp:TextBox ID="txtcity" runat="server" CssClass="txt" Width="160px"></asp:TextBox>
                <%--       <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server"
                    ControlToValidate="txtmo" ErrorMessage="Enter Mobile" ForeColor="Red"
                    ValidationExpression="[0-9]{10}">
                </asp:RegularExpressionValidator>
            </td>--%>
            </td>
        </tr>
        <tr>
            <td class="lbl">Pincode :
            </td>
            <td>
                <asp:TextBox ID="txtppin" runat="server" CssClass="txt" Width="160px"></asp:TextBox>
                <%--<asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
                ControlToValidate="txtemail" ErrorMessage="Enter Email" ForeColor="Red" 
                ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>--%>
            </td>
        </tr>
        <tr>
            <td class="lbl">Gender:</td>
            <td>
                <asp:RadioButton ID="RadioButton1" runat="server" GroupName="h" Text="Male" />
                <asp:RadioButton ID="RadioButton2" runat="server" GroupName="h" Text="Female" />
            </td>
        </tr>
        <tr>
            <td class="lbl">Mobile :
            </td>
            <td>
                <asp:TextBox ID="txtmo" runat="server" CssClass="txt" Width="160px"
                    MaxLength="10">
                </asp:TextBox>

                <%--  <asp:CompareValidator ID="CompareValidator1" runat="server" 
                ControlToCompare="txtpass" ControlToValidate="txtcpass" 
                ErrorMessage="passwod not same" ForeColor="Red"></asp:CompareValidator>--%>
        </tr>
        <tr>
            <td class="lbl">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="lbl">Email :
            </td>
            <td>
                <asp:TextBox ID="txtemail" runat="server"></asp:TextBox>
                <%--  <asp:CompareValidator ID="CompareValidator1" runat="server" 
                ControlToCompare="txtpass" ControlToValidate="txtcpass" 
                ErrorMessage="passwod not same" ForeColor="Red"></asp:CompareValidator>--%>
            </td>
        </tr>
        
        <tr>
           
            <td class="style7">
                <%--  <asp:CompareValidator ID="CompareValidator1" runat="server" 
                ControlToCompare="txtpass" ControlToValidate="txtcpass" 
                ErrorMessage="passwod not same" ForeColor="Red"></asp:CompareValidator>--%>
                .</td>
        </tr>
        <tr>
            <td class="lbl">&nbsp;</td>
            <td align="left">
                <asp:Button ID="Button5" runat="server" CssClass="btn" Text="Register Now" />
            </td>
        </tr>
        <tr>
            <td colspan="2" align="center" style="color: #006600">Already have an username and password
            <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/Login.aspx">Login Here</asp:HyperLink>
            </td>
        </tr>
    </table>
</asp:Content>
