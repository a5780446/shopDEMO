<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="shoppage.aspx.cs" Inherits="shopDEMO.product.shoppage" %>

<!DOCTYPE html>
<!-- Website template by freewebsitetemplates.com -->
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<title>學術用途</title>
	<link rel="stylesheet" href="css/style.css" type="text/css" charset="utf-8" />	
    <style type="text/css">

        .auto-style7 {
            color: #FF99CC;
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
                        <asp:Button ID="Button102" runat="server" BackColor="#FFCC66" Height="36px" PostBackUrl="~/homepage.aspx" Text="首頁" Width="105px" />
                    </li>
					<li>
                        <asp:Button ID="Button103" runat="server" BackColor="#FFCC66" Height="36px" PostBackUrl="~/product/shoppage.aspx" Text="商品" Width="105px" />
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
                        <asp:Panel ID="Panel3" runat="server" Height="529px">
                            您有<asp:Label ID="Label1" runat="server"></asp:Label>
                            商品尚未結帳&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:Button ID="Button2" runat="server" PostBackUrl="~/product/cart.aspx" Text="點我前往購物車" BackColor="#FD5A02" Height="27px" />
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="Label2" runat="server"></asp:Label>
                            &nbsp;<br /> &nbsp;&nbsp; <asp:DataList ID="DataList2" runat="server" DataSourceID="SqlDataSource1" RepeatDirection="Horizontal" BackColor="#FFCC00" BorderColor="#996633" BorderStyle="None" BorderWidth="1px" CellPadding="0" GridLines="Both" OnItemCommand="DataList2_ItemCommand" CssClass="auto-style7" RepeatColumns="5" Height="16px" Width="31px">
                                <FooterStyle BackColor="#99CCCC" ForeColor="#003399" />
                                <HeaderStyle BackColor="#003399" Font-Bold="True" ForeColor="#CCCCFF" />
                                <ItemStyle BackColor="#FFCC00" ForeColor="#003399" Height="50px" />
                                <ItemTemplate>
                                    <asp:ImageButton ID="ImageButton1" runat="server" CommandArgument='<%# Eval("id") %>' CommandName="jump" Height="200px" ImageUrl='<%# Eval("image") %>' Width="180px" />
                                    <br />
                                    &nbsp;<asp:Label ID="modelLabel" runat="server" Text='<%# Eval("model") %>' ForeColor="#996600" />
                                    <br />
                                    &nbsp;<asp:Label ID="priceLabel" runat="server" Text='<%# Eval("price") %>' ForeColor="#CC3300" />
                                    &nbsp;.NTD<br />
                                    <br />
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    <asp:Button ID="Button1" runat="server" CommandArgument='<%#Eval("id")%>' CommandName="jump" Text="詳細資料" BackColor="#33CC33" Height="33px" Width="83px" />
                                    <br />
                                </ItemTemplate>
                                <SelectedItemStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
                            </asp:DataList>
                            <br />
                            <br />
                            <br />
                            <br />
                        </asp:Panel>
                    <br />



			            <br />
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />
                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:memberConnectionString %>" SelectCommand="SELECT[id], [model], [price], [image] FROM [product]"></asp:SqlDataSource>
				        <br />
                        <br />
                        <br />



			</div> <!-- /#contents -->
			<div id="footer">
				<div id="description">
					<div>
						<a href="index.html" class="logo"></a>
						<span>&copy; Copyright &copy; 2011. <a href="index.html">Company name</a> All rights reserved</span>
					</div>
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
