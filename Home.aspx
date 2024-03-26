<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Home.aspx.vb" Inherits="online_shoes_website.Home" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Home</title>
     <link href="coderstyle.css" rel="stylesheet" type="text/css" />
    <link rel="stylesheet" type="text/css" href="engine1/style.css" media="screen" />
	<style type="text/css">a#vlb{display:none}</style>
	<script type="text/javascript" src="engine1/jquery.js"></script>
    <style type="text/css">
        .style1
        {
            width: 189px;
        }
        .auto-style1 {
            height: 33px;
        }
    </style>
    <script language="javascript" type="text/javascript">
        // <![CDATA[

        function wows0_onclick() {

        }

// ]]>
    </script>
</head>
<body>
    <form id="form2" runat="server">
    <div id="top">
    <div id="logo">
        <asp:Image ID="Image1" runat="server" Height=80px Width=324px 
            ImageUrl="~/images/hlogo.png" />
        </div>
        <div id="menu">
        <a href="Home.aspx" class="mnu1" >HOME 
   </a> <a href="PRODUCT.aspx" class="mnu1" >PRODUCT</a> 
   <a href="Feedback.aspx" class="mnu1">FeedBack</a>
   <a href="Registration.aspx" class="mnu1">Sign Up
   </a>   
   <a href="Login.aspx" class="mnu1">Login</a> 
   <a href="contactus.aspx" class="mnu1">Contact Us</a> 
   <div id="slogn">
 <marquee BEHAVIOR="ALTERNATE" scrollamount="2" style="width: 650px; color:#F13D6D; font-size: 16px;"> Online Shopping Website.... </marquee>
 </div>
 </div>
 

    </div>
    <div id="second">
    <div id="login">
        <table class="tbl">
            <tr>
                <td colspan="2" class="tblhead">
                    Login Area</td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
                <td>
                    <asp:Label ID="lblerror" runat="server" Font-Bold="False" ForeColor="Red"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="lbl">
                    UserName :</td>
                <td>
                    <asp:TextBox ID="txtuname" runat="server" CssClass="txt"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="lbl">
                    Password :</td>
                <td>
                    <asp:TextBox ID="txtupass" runat="server" CssClass="txt" TextMode="Password"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style1">
                    </td>
                <td align="left" class="auto-style1">
                    <asp:Button ID="Button2" runat="server" Text="Login" CssClass="btn" />
                </td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
                <td align="left">
                    <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Registration.aspx" 
                        style="color: #006600">New User ??</asp:HyperLink>
                </td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
                <td align="left">
                    <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/FPassword.aspx" 
                        style="color: #006600">Forgot Password !!</asp:HyperLink>
                </td>
            </tr>
        </table>
        </div><div id="slide"><div id="wowslider-container1">
	<div class="ws_images">
        <a href="PRODUCT.aspx"><img src="data1/images/1.jpg" alt="1" title="Online Shoes" id="wows0" onclick="return wows0_onclick()" /></a>
<a href="#"><img src="data1/images/2.jpg" alt="2" title="Ladies Sendal" id="wows1"/></a>
<a href="#"><img src="data1/images/3.jpg" alt="3" title="Shoes Variety" id="wows2"/></a>
<a href="#"><img src="data1/images/4.jpg" alt="4" title="Buy online Shoes" id="wows3"/></a>
<a href="#"><img src="data1/images/5.jpg" alt="5" title="Best Sendal" id="wows4"/></a>
<a href="#"><img src="data1/images/6.jpg" alt="6" title="Online Shoes" id="wows5"/></a>
</div>
<div class="ws_bullets"><div>
<a href="#wows0" title="1"><img src="data1/tooltips/1.jpg" alt="1"/>1</a>
<a href="#wows1" title="2"><img src="data1/tooltips/2.jpg" alt="2"/>2</a>
<a href="#wows2" title="3"><img src="data1/tooltips/3.jpg" alt="3"/>3</a>
<a href="#wows3" title="4"><img src="data1/tooltips/4.jpg" alt="4"/>4</a>
<a href="#wows4" title="5"><img src="data1/tooltips/5.jpg" alt="5"/>5</a>
<a href="#wows5" title="6"><img src="data1/tooltips/6.jpg" alt="6"/>6</a>
</div></div>
<a style="display:none" href="http://wowslider.com">jQuery Carousel Lightbox by WOWSlider.com v1.7</a>
	</div>
	<script type="text/javascript" src="engine1/script.js"></script></div>
    </div>

    <div id="main">
    <div id="cate">
        <table class="tbl">
            <tr>
                <td>
                    <table class="tbl">
                        <tr>
                            <td class="style1">
                                <asp:TextBox ID="txtsearch" runat="server" CssClass="txt" Width="100%"></asp:TextBox>
                            </td>
                            <td>
                                <asp:Button ID="Button1" runat="server" Text="Serch" CssClass="btn" />
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
            <tr>
                <td>
                    </td>
            </tr>
            <tr>
                <td class="tblhead">
                    CATEGORY</td>
            </tr>
            <tr>
                <td align="center">
                   <%-- <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                        BorderColor="Tan" BorderWidth="1px" ShowHeader="False" 
                        Width="100%" CellPadding="2" ForeColor="Black" GridLines="None" 
                        BackColor="LightGoldenrodYellow" onrowcommand="GridView1_RowCommand" 
                        onselectedindexchanged="GridView1_SelectedIndexChanged">
                        <AlternatingRowStyle BackColor="PaleGoldenrod" />
                        <Columns>
                           
                                <asp:TemplateField>
                                <ItemTemplate >
                                <asp:LinkButton runat="server" Text='<%#Eval("Cname") %>' CssClass="cgrid" ForeColor="Green" ID="lnkcate" CommandName="cate" CommandArgument='<%#Eval("Cname") %>'></asp:LinkButton>
                                </ItemTemplate>
                                </asp:TemplateField>--%>

                       <%-- </Columns>--%>
                        <FooterStyle BackColor="Tan" />
                        <HeaderStyle BackColor="Tan" Font-Bold="True" />
                        <PagerStyle BackColor="PaleGoldenrod" ForeColor="DarkSlateBlue" 
                            HorizontalAlign="Center" />
                        <RowStyle BorderColor="White" BorderStyle="None" BorderWidth="0px" 
                            Font-Size="Medium" Height="30px" 
                            HorizontalAlign="Center" />
                        <SelectedRowStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
                        <SortedAscendingCellStyle BackColor="#FAFAE7" />
                        <SortedAscendingHeaderStyle BackColor="#DAC09E" />
                        <SortedDescendingCellStyle BackColor="#E1DB9C" />
                        <SortedDescendingHeaderStyle BackColor="#C2A47B" />
                    </asp:GridView>
                </td>
            </tr>
            <tr>
                <td align="center">
                    &nbsp;</td>
            </tr>
        </table>
        </div><div id="item">
            <%--<asp:DataList ID="DataList1" runat="server" RepeatColumns="4" 
                RepeatDirection="Horizontal" Width="100%" 
                onitemcommand="DataList1_ItemCommand" 
                onselectedindexchanged="DataList1_SelectedIndexChanged" 
                BackColor="#DEBA84" BorderColor="#DEBA84" BorderWidth="1px" 
                CellPadding="3" BorderStyle="None" CellSpacing="2" GridLines="Both">
                <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
                <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
                <ItemStyle CssClass="igrid" BackColor="#FFF7E7" ForeColor="#8C4510" />
                <ItemTemplate>
                    <table class="tbl" >
                        <tr>
                            <td style="text-align: center">
                                <asp:Image ID="Image2" runat="server"  CssClass="img" ImageUrl='<%#Eval("image") %>' />
                            </td>
                        </tr>
                        <tr>
                            <td>
                                Name :
                                <asp:Label ID="Label1" runat="server" Text='<%#Eval("iname") %>'></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                Price :
                                <asp:Label ID="Label2" runat="server" Text='<%#Eval("price") %>'></asp:Label>
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <asp:LinkButton ID="LinkButton1" runat="server" CommandArgument='<%#Eval("iid") %>'>View..</asp:LinkButton>
                            </td>
                        </tr>
                    </table>
                </ItemTemplate>
                <SelectedItemStyle BackColor="#738A9C" ForeColor="White" Font-Bold="True" />
            </asp:DataList>
        </div>
    </div>--%>
     <div id="foot">All Rights Reserved @online Shoes Shop</div>

        </div>
    </form>
</body>
</html>
