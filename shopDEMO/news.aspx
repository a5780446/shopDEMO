<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="news.aspx.cs" Inherits="shopDEMO.news" %>

<!DOCTYPE html>
<!-- Website template by freewebsitetemplates.com -->
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<title>Sellcouth</title>
	<link rel="stylesheet" href="css/style.css" type="text/css" charset="utf-8" />	
    <style type="text/css">
        .auto-style1 {
            width: 205px;
            height: 243px;
        }
    </style>
</head>

<body>
	<form id="form1" runat="server">
	<div id="background">
		<div id="page">
			<div id="header">
				<span id="connect">
					<a href="http://facebook.com/freewebsitetemplates" target="_blank" class="facebook"></a>
					<asp:Label ID="Label99" runat="server"></asp:Label>
&nbsp;
                <asp:Button ID="Button101" runat="server" BackColor="#FFCC00" OnClick="Button101_Click" Text="登出" />
				</span>
				<span id="infos" class="auto-style1"><asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/singin.aspx">登入會員</asp:HyperLink>
                <asp:Button ID="Button99" runat="server" BackColor="#FFCC00" Text="會員資料" CommandArgument='<%#Eval("id")%>' CommandName="jump" Enabled="False" />
                |
                <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/product/cart.aspx">購物車</asp:HyperLink>
				<asp:Button ID="Button100" runat="server" BackColor="#FFCC00" Text="購物車" PostBackUrl="~/product/cart.aspx" />
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
				<div id="blogs">
					<div>
						<span><img src="pic/鬼滅之刃Logo.jpg" alt="shirt" /></span>
						<h3>將於西元2000年與2019日本當紅漫畫&quot;鬼滅之刃&quot;強勢聯名!</h3>
						<p>
							&nbsp;說明欄....</p>
                        <p>
							&nbsp;</p>
                        <p>
							&nbsp;</p>
						<a  class="more">Read more...</a>
					</div>
					<div class="last">
						<span><img src="pic/Adidas_logo.gif" alt="shirt" class="auto-style1" /></span>
						<h3>本公司好想與知名品牌&quot;阿迪達&quot;談聯名!</h3>
						<p>
							說明欄....
						</p>
                        <p>
							&nbsp;</p>
                        <p>
							&nbsp;</p>
						<a class="more">Read more...</a>
					</div>
					<div class="buttons">
						<a href="blog.html">more..</a> 
					</div>
				</div>
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