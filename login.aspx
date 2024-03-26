<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="login.aspx.vb" Inherits="online_shoes_website.login1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
     <script type="text/javascript">
    function caplock(e)
    {
    kc=e.keycode ? e.keycode: e.which;
    sk=e.shiftkey?e.shiftkey:((kc==16)?true:false);
    if(((kc>=65 && kc <=90)&&!sk)||((kc>=97 && kc <=122)&& sk))
    {
       document.getElementById('abc').style.visibility='visible';
       }
       else
       {
       document.getElementById('abc').style.visibility='hidden';
       }
       }
     </script>
     <link href="admin.css" rel="stylesheet" type="text/css" />
    <style type="text/css">
        .style1
        {
            width: 260px;
            height: 197px;
        }
        .style3
        {
            font-size: x-large;
        }
        .style4
        {
            font-size: 40pt;
            text-align: center;
            color: #FF0066;
        }
        .style5
        {
            height: 20px;
        }
        .style6
        {
            height: 21px;
            background: green;
            color: yellow;
            font-size: medium;
            font-weight: bold;
            text-align: center;
            border-bottom: solid 1px yellow;
        }
    </style>
</head>
<body class="mnu">
    <form id="form1" runat="server">
        <div>
              <p class="style4">
        <strong>ONLINE</strong><strong class="hedaer"> SHOES SHOPPING</strong></p>
    <div id="login" class="style1">
  
        <table class="style1">
            <tr>
                <td class="style6" colspan="2" bgcolor="#FF0066">
                    <strong>Admin Login Page</strong></td>
            </tr>
            <tr>
                <td class="style3">
                &nbsp;&nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="lbl">
                    UserName:</td>
                <td>
                    <asp:TextBox ID="adminid" runat="server" CssClass="txt"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="lbl">
                    Password</td>
                <td>
                    <div id="abc" <%--style="visibility:hidden"--%>>
                        <asp:TextBox ID="adminpassword" runat="server" CssClass="txt"></asp:TextBox>
                        CAPS LOCK ON</div>
                </td>
            </tr>
            <tr>
                <td class="style5">
                    </td>
                <td class="style5">
                    <asp:Button ID="Button1" runat="server" CssClass="btn" Text="Login" />
                &nbsp;&nbsp;
                    <asp:Label ID="lblmsg" runat="server"></asp:Label>
                    </td>
            </tr>
            <tr>
                <td colspan="2">
                    &nbsp;</td>
            </tr>
            </table>
  
    </div>
        </div>
    </form>
</body>
</html>
