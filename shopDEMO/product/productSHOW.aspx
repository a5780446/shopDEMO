<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="productSHOW.aspx.cs" Inherits="shopDEMO.product.productSHOW" %>

<!DOCTYPE html>
<!-- Website template by freewebsitetemplates.com -->
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<title>學術用途</title>
	<link rel="stylesheet" href="css/style.css" type="text/css" charset="utf-8" />	
    <style type="text/css">

        .auto-style13 {
            background-color: #FFFFFF;
            margin-right: 1px;
        }
        .auto-style6 {
            width: 100%;
        }
        .auto-style10 {
            height: 51px;
            text-align: center;
            width: 284px;
        }
        .auto-style11 {
            height: 265px;
            text-align: left;
            width: 284px;
        }
        .auto-style12 {
            height: 41px;
            text-align: center;
            width: 284px;
        }
        .auto-style7 {
            height: 43px;
            width: 284px;
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
				<span id="infos" class="auto-style1"><asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl="~/singin.aspx">登入會員</asp:HyperLink>
                <asp:Button ID="Button99" runat="server" BackColor="#FFCC00" Text="會員資料" CommandArgument='<%#Eval("id")%>' CommandName="jump" Enabled="False" />
                |
                <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/product/cart.aspx">購物車</asp:HyperLink>
				<asp:Button ID="Button100" runat="server" BackColor="#FFCC00" Text="購物車" />
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
				<div id="shop">
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:memberConnectionString %>" SelectCommand="SELECT * FROM [product] WHERE ([id] = @id)">
                            <SelectParameters>
                                <asp:QueryStringParameter Name="id" QueryStringField="ID" Type="String" />
                            </SelectParameters>
                        </asp:SqlDataSource>
                        <asp:DataList ID="DataList1" runat="server" DataKeyField="id" DataSourceID="SqlDataSource1" RepeatColumns="3" RepeatDirection="Horizontal" CssClass="auto-style13" OnItemCommand="DataList1_ItemCommand">
                            <AlternatingItemTemplate>
                                <br />
                                <table class="auto-style6">
                                    <tr>
                                        <td class="auto-style10">
                                            <asp:Label ID="Label1" runat="server" Text='<%# Eval("model") %>'></asp:Label>
                                        </td>
                                        <td class="auto-style10">&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style11">
                                            <asp:Image ID="Image1" runat="server" Height="500px" ImageUrl='<%# Eval("image") %>' Width="515px" />
                                        </td>
                                        <td class="auto-style11">
                                            <br />
                                            &nbsp; 材質:<br />
                                            <br />
                                            <br />
                                            &nbsp; 產地:<br />
                                            <br />
                                            <br />
                                            &nbsp; 洗滌方式:<br />
                                            <br />
                                            <br />
                                            <br />
                                            <br />
                                            <br />
                                            <br />
                                            &nbsp; 產品說明:<br />
                                            <br />
                                            <br />
                                            <br />
                                            <br />
                                            <br />
                                            <br />
                                            <br />
                                            <br />
                                            <br />
                                            <br />
                                            <br />
                                            <br />
                                            <br />
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style12">
                                            <asp:Label ID="Label2" runat="server" Text='<%# Eval("price") %>'></asp:Label>
                                            .NTD</td>
                                        <td class="auto-style12">
                                            <asp:RadioButtonList ID="RadioButtonList1" runat="server" Height="48px" RepeatDirection="Horizontal" Width="245px">
                                                <asp:ListItem Selected="True">S</asp:ListItem>
                                                <asp:ListItem>M</asp:ListItem>
                                                <asp:ListItem>L</asp:ListItem>
                                                <asp:ListItem Value="XL"></asp:ListItem>
                                            </asp:RadioButtonList>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style7">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; </td>
                                        <td class="auto-style7">
                                            <asp:Button ID="Button1" runat="server" CommandArgument='<%#Eval("id")%>' CommandName="addtocart" Height="42px" Text="加入購物車" Width="210px" />
                                        </td>
                                    </tr>
                                </table>
                                <br />
                            </AlternatingItemTemplate>
                            <ItemStyle BackColor="#FFCC00" />
                            <ItemTemplate>
                                <br />
                                <table class="auto-style6">
                                    <tr>
                                        <td class="auto-style10">
                                            <asp:Label ID="Label1" runat="server" Text='<%# Eval("model") %>'></asp:Label>
                                        </td>
                                        <td class="auto-style10">&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style11">
                                            <asp:Image ID="Image1" runat="server" ImageUrl='<%# Eval("image") %>' Height="500px" Width="515px" />
                                        </td>
                                        <td class="auto-style11">
                                            <br />
                                            &nbsp; 材質:<br />
                                            <br />
                                            <br />
                                            &nbsp; 產地:<br />
                                            <br />
                                            <br />
                                            &nbsp; 洗滌方式:<br />
                                            <br />
                                            <br />
                                            <br />
                                            <br />
                                            <br />
                                            <br />
                                            &nbsp; 產品說明:<br />
                                            <br />
                                            <br />
                                            <br />
                                            <br />
                                            <br />
                                            <br />
                                            <br />
                                            <br />
                                            <br />
                                            <br />
                                            <br />
                                            <br />
                                            <br />
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style12">
                                            <asp:Label ID="Label2" runat="server" Text='<%# Eval("price") %>'></asp:Label>
                                            .NTD</td>
                                        <td class="auto-style12">
                                            <asp:RadioButtonList ID="RadioButtonList1" runat="server" Height="48px" RepeatDirection="Horizontal" Width="245px">
                                                <asp:ListItem Selected="True">S</asp:ListItem>
                                                <asp:ListItem>M</asp:ListItem>
                                                <asp:ListItem>L</asp:ListItem>
                                                <asp:ListItem Value="XL"></asp:ListItem>
                                            </asp:RadioButtonList>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style7">
                                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 數量 :&nbsp;
                                            <asp:DropDownList ID="DropDownList1" runat="server" Height="16px" Width="80px">
                                                <asp:ListItem>1</asp:ListItem>
                                                <asp:ListItem>2</asp:ListItem>
                                                <asp:ListItem>3</asp:ListItem>
                                            </asp:DropDownList>
                                        </td>
                                        <td class="auto-style7">
                                            <asp:Button ID="Button1" runat="server" CommandArgument='<%#Eval("id")%>' CommandName="addtocart" Height="42px" Text="加入購物車" Width="210px" BackColor="#F35C0C" />
                                        </td>
                                    </tr>
                                </table>
                                <br />
                            </ItemTemplate>
                        </asp:DataList>
                        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/product/shoppage.aspx">返回</asp:HyperLink>
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
