<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="homepage.aspx.cs" Inherits="shopDEMO.homepage" %>

<!DOCTYPE html>
<!-- Website template by freewebsitetemplates.com -->
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<title>Sellcouth-學術用途</title>
	<link rel="stylesheet" href="css/style.css" type="text/css" charset="utf-8" />	
    <style type="text/css">
        .auto-style1 {
            margin-left: 75;
        }
        .auto-style2 {
            width: 322px;
        }
        .auto-style3 {
            left: -1px;
            top: -1px;
        }
    </style>
</head>

<body>
	<form id="form1" runat="server">
	<div id="background">
		<div id="page">
			<div id="header">
				<span id="connect" class="auto-style2">
					<a href="http://facebook.com/freewebsitetemplates" target="_blank" class="facebook"></a>
				<asp:Label ID="Label1" runat="server" ForeColor="#996600"></asp:Label>
&nbsp;</span><span id="infos" class="auto-style1"><asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/singin.aspx">登入會員</asp:HyperLink>
                |
                <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/product/cart.aspx">購物車</asp:HyperLink>
				</span>
				<a id="logo"></a> <!-- /#logo -->
				<ul id="navigation">
					<li class="selected">
                        <asp:Button ID="Button1" runat="server" BackColor="#FFCC66" Height="36px" PostBackUrl="~/homepage.aspx" Text="首頁" Width="105px" />
                    </li>
					<li>
                        <asp:Button ID="Button2" runat="server" BackColor="#FFCC66" Height="36px" PostBackUrl="~/product/shoppage.aspx" Text="商品" Width="105px" />
                    </li>
					<li>
                        <asp:Button ID="Button3" runat="server" BackColor="#FFCC66" Height="36px" Text="最新消息" Width="105px" PostBackUrl="~/news.aspx" />
                    </li>
					<li>
                        <asp:Button ID="Button4" runat="server" BackColor="#FFCC66" Height="36px" Text="消費者須知" Width="105px" PostBackUrl="~/about.aspx" />
                    </li>
					<li>
                        <asp:Button ID="Button5" runat="server" BackColor="#FFCC66" Height="36px" PostBackUrl="~/board.aspx" Text="留言板" Width="105px" />
                    </li>
				</ul>
			</div> <!-- /#header -->
			<div id="contents">
				<div id="main">
					<div id="adbox">
						<img src="images/sale.jpg" alt="Img" />
					</div>
				</div>
				<div id="featured" class="auto-style3">
					<ul>
						<li><img src="images/shirt-red.jpg" alt="shirt" /></li>
						<li><img src="images/shirt-orange.jpg" alt="shirt" /></li>
						<li><img src="images/shirt-green.jpg" alt="shirt" /></li>
						<li class="last"><img src="images/shirt-blue.jpg" alt="shirt" /></li>
					</ul>
					&nbsp;<a href="product/shoppage.aspx" class="button" style="left: 371px; bottom: -18px">shop here!</a>
					<a href="backsingin.aspx" class="button" style="left: 786px; bottom: -18px">Web Admin</a><a href="qureyorder.aspx" class="button" style="left: 590px; bottom: -18px">Order</a></div>
			    <asp:ImageButton ID="ImageButton1" runat="server" Height="45px" ImageUrl="~/pic/logoxxxx.png" PostBackUrl="https://estoreweb2021.azurewebsites.net/" Width="156px" />
			</div> <!-- /#contents -->
			<div id="footer">
				<div id="description">
					<div>
						<a href="index.html" class="logo"></a>
						<span>&copy; Copyright &copy; 2011. <a href="index.html">Company name</a> All rights reserved</span>
					</div>
					<p>
						This website template has been designed by <a href="http://www.freewebsitetemplates.com/">Free Website Templates</a> for you, for free. You can replace all this text with your own text.
						You can remove any link to our website from this website template, you're free to use this website template without linking back to us.
						If you're having problems editing this website template, then don't hesitate to ask for help on the <a href="http://www.freewebsitetemplates.com/forum/">Forum</a>.
					</p>
				</div>
				<div class="navigation">
					<a href="index.html">Home</a>|
					<a href="about.html">About</a>|
					<a href="blog.html">Blog</a>|
					<a href="shop.html">Shop</a>|
					<a href="contact-us.html">Contact Us</a>
				</div>
			</div> <!-- /#footer -->
		</div> <!-- /#page -->
	</div> <!-- /#background -->
    </form>
</body>
</html>
