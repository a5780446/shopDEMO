<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="VIPhomepage.aspx.cs" Inherits="shopDEMO.VIPhomepage" %>

<!DOCTYPE html>
<!-- Website template by freewebsitetemplates.com -->
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<title>學術用途</title>
	<link rel="stylesheet" href="css/style.css" type="text/css" charset="utf-8" />	
    <style type="text/css">
        .auto-style1 {
            width: 322px;
        }
    </style>
</head>

<body>
	<form id="form1" runat="server">
	<div id="background">
		<div id="page">
			<div id="header">
				<span id="connect" class="auto-style1">
					<a href="http://facebook.com/freewebsitetemplates" target="_blank" class="facebook"></a>
				<asp:Label ID="Label1" runat="server"></asp:Label>
				&nbsp;<span id="infos0"><asp:Button ID="Button2" runat="server" BackColor="#FFCC00" Height="24px" Text="登出" Width="43px" OnClick="Button2_Click" />
				</span>
				</span>
				<span id="infos">
            <asp:Button ID="Button1" runat="server"   Text="會員資料" CommandArgument='<%#Eval("id")%>' CommandName="jump" OnCommand="Button1_Command" BackColor="#FFCC00" />
            
                |
                <asp:Button ID="Button4" runat="server" PostBackUrl="~/product/cart.aspx" Text="購物車" BackColor="#FFCC00" />
				<asp:Label ID="Label2" runat="server" ForeColor="#CC6600" Text="Label"></asp:Label>
				</span>
				<a id="logo">
					<a href="shop.html" class="button" style="left: 203px; bottom: 1620px; top: -500px"></a></a><!-- /#logo -->
				<ul id="navigation">
					<li class="selected">
                        <asp:Button ID="Button6" runat="server" BackColor="#FFCC66" Height="36px" PostBackUrl="~/homepage.aspx" Text="首頁" Width="105px" />
                    </li>
					<li>
                        <asp:Button ID="Button7" runat="server" BackColor="#FFCC66" Height="36px" PostBackUrl="~/product/shoppage.aspx" Text="商品" Width="105px" />
                    </li>
					<li>
                        <asp:Button ID="Button3" runat="server" BackColor="#FFCC66" Height="36px" Text="最新消息" Width="105px" PostBackUrl="~/news.aspx" />
                    </li>
					<li>
                        <asp:Button ID="Button8" runat="server" BackColor="#FFCC66" Height="36px" Text="消費者須知" Width="105px" PostBackUrl="~/about.aspx" />
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
				<div id="featured">
					<ul>
						<li><img src="images/shirt-red.jpg" alt="shirt" /></li>
						<li><img src="images/shirt-orange.jpg" alt="shirt" /></li>
						<li><img src="images/shirt-green.jpg" alt="shirt" /></li>
						<li class="last"><img src="images/shirt-blue.jpg" alt="shirt" /></li>
					</ul>
					<a href="product/shoppage.aspx" class="button" style="left: 434px; bottom: 802px; top: 318px; right: 372px;">shop here!</a> 
					</div>
			</div> <!-- /#contents -->
			<div id="footer">
				<div id="description">
					<div>
						<a href="index.html" class="logo"></a>
						<span>&copy; Copyright &copy; 2011. ="index.html">Company name</a> All rights reserved</span>
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
