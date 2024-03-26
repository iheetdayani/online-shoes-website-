.<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Viewitems.aspx.vb" Inherits="online_shoes_website.Viewitems" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>View Items</title>
  <link rel="shortcut icon" href="../LogoImg/favicon.png" />
    <meta charset="utf-8" />
    <meta name="viewport" content="width-device, initial-scale=1" />

    <%--1-Bootstrap CSS--%>
    <link href="../bootstrap/css/bootstrap.min.css" rel="stylesheet" />

    <%--2-Datatabel CSS--%>
    <link href="../datatable/css/jquery.dataTables.min.css" rel="stylesheet" />

    <%--3-Fontawesome CSS--%>
    <link href="../fontawesome/css/all.css" rel="stylesheet" />

    <%--4-Jquery jS--%>
    <script src="../bootstrap/js/jquery-3.3.1.slim.min.js"></script>

    <%--5-Popper JS--%>
    <script src="../bootstrap/js/popper.min.js"></script>

    <%--6-Bootstrap Js--%>
    <script src="../bootstrap/js/bootstrap.min.js"></script>

    <link rel="stylesheet" href="Style.css" />

    <meta charset="utf-8" />
    <meta content="width=device-width, initial-scale=1.0" name="viewport" />
    <meta content="" name="description" />
    <meta content="" name="keywords" />
    <!-- Vendor CSS Files -->
    <link href="assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet" />
    <link href="assets/vendor/bootstrap-icons/bootstrap-icons.css" rel="stylesheet" />
    <link href="assets/vendor/boxicons/css/boxicons.min.css" rel="stylesheet" />
    <link href="assets/vendor/quill/quill.snow.css" rel="stylesheet" />
    <link href="assets/vendor/quill/quill.bubble.css" rel="stylesheet" />
    <link href="assets/vendor/remixicon/remixicon.css" rel="stylesheet" />
    <link href="assets/vendor/simple-datatables/style.css" rel="stylesheet" />


    <!-- Template Main CSS File -->
    <link href="style.css" rel="stylesheet" />
    <style type="text/css">
        .auto-style1 {
            margin-right: 0px;
            margin-top: 61px;
        }
        .auto-style2 {
            width: 763px;
            height: 115px;
        }
        .auto-style3 {
            width: 845px;
            height: 115px;
        }
    </style>
</head>
<body style="color: black; background-image: url('carwallpaper4.png'); background-repeat:no-repeat; background-attachment:fixed; background-size:cover;">
    <form id="form1" runat="server">
         <div>
            <div id="header">
                <table class="style1" border="1" style="background-color:#00CC00">
                    <tr>
                        <td class="auto-style2" style="background-color:#33CC33">
                            <asp:Image ID="Image1" runat="server" Height="113px"
                                ImageUrl="~/images/hlogo.png"
                                Style="margin-top: 0px" Width="236px" />
                        </td>
                        <td class="auto-style3" style="background-color:#33CC33">
                            <strong class="style1" style="color: #FFFFFF; text-decoration: underline;">Online Shoes Shopping</strong></td>
                    </tr>
                </table>
                </div>
            </div>
        <asp:Button ID="Button1" runat="server" Text="Back" CssClass="btn btn-primary" PostBackUrl="~/admin/additem.aspx" Width="106px" BackColor="#CC0099" Height="42px" style="margin-top: 38px" />
        <asp:DataList ID="DataList1" runat="server" Height="100%" Width="100%" RepeatColumns="3" CssClass="auto-style1">
            <ItemTemplate>
                <div class="container-fluid" style="height: 100%; width: 100%; margin-top: 50px; margin-bottom: 50px;">
                    <div class="product-card">
                        
                        <asp:Image runat="server" ImageUrl='<%#Eval("image", "../imag/shoes/{0}?" + DateTime.Now.Ticks.ToString()) %>' Width="300px" Height="300px"></asp:Image>
                        <div class="row" style="margin-top: 10px;">
                            <div class="col-sm-8">
                                <div class="row">
                                    <div class="col-sm-12">
                                        <b>itemname:</b>
                                        <asp:Label runat="server" Text='<%#Eval("itemname") %>'></asp:Label>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-sm-12">
                                        <b>Description:</b>
                                        <asp:Label runat="server" Text='<%#Eval("description") %>'></asp:Label>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-sm-12">
                                        <b>Price:</b>
                                        <asp:Label runat="server" Text='<%#Eval("price") %>'></asp:Label>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-sm-12">
                                        <b>size:</b>
                                        <asp:Label runat="server" Text='<%#Eval("size") %>'></asp:Label>
                                    </div>
                                </div>
                            </div>
                            <div class="col-sm-4">
                                              <a class="btn btn-sm btn-primary" href='Updateitem.aspx?bookid=<%#Eval("itemid") %>itemname=<%#Eval("itemname") %>description&=<%#Eval("description") %>'><i class="bi bi-pen"></i></a>&nbsp;&nbsp;&nbsp;
                    <a class="btn btn-sm btn-danger" href='Deleteitem.aspx?itemid=<%#Eval("itemid") %>&itemname=<%#Eval("itemname") %>&description=<%#Eval("description") %>'><i class="bi bi-trash"></i></a>
                            </div>
                        </div>
                    </div>
                </div>

            </ItemTemplate>
        </asp:DataList>

   



   

        <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>

   



   

    </form>
</body>
</html>
