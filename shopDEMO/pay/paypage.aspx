<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="paypage.aspx.cs" Inherits="shopDEMO.pay.paypage" %>
<!DOCTYPE html>
<!-- Website template by freewebsitetemplates.com -->
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<title>學術用途</title>
	<link rel="stylesheet" href="css/style.css" type="text/css" charset="utf-8" />	
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
                <asp:Button ID="Button101" runat="server" BackColor="#FFCC00" OnClick="Button101_Click" Text="登出" Width="40px" />
				</span>
				<span id="infos" class="auto-style1"><asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/singin.aspx">登入會員</asp:HyperLink>
                <asp:Button ID="Button99" runat="server" BackColor="#FFCC00" CommandArgument='<%#Eval("id")%>' CommandName="jump" Enabled="False" Text="會員資料" />
                |
                <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/product/cart.aspx">購物車</asp:HyperLink>
				<asp:Button ID="Button100" runat="server" BackColor="#FFCC00" PostBackUrl="~/product/cart.aspx" Text="購物車" />
				</span>
				<a id="logo"></a> <!-- /#logo -->
				<ul id="navigation">
					<li class="selected">
                        <asp:Button ID="Button102" runat="server" BackColor="#FFCC66" Height="36px" PostBackUrl="~/homepage.aspx" Text="首頁" Width="105px" />
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
                        <asp:Panel ID="Panel1" runat="server" Height="714px">
                            <asp:Label ID="Label1" runat="server" Text="Label" Visible="False"></asp:Label>
                            <br />
                            <br />
                            清單數量 :
                            <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
                            <br />
                            <br />
                            <br />
                            <br />
                            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px" CellPadding="2" ForeColor="Black" GridLines="None" Height="203px" ShowFooter="True" Width="463px">
                                <AlternatingRowStyle BackColor="PaleGoldenrod" />
                                <Columns>
                                    <asp:BoundField DataField="id" HeaderText="商品編號">
                                    <ItemStyle HorizontalAlign="Center" />
                                    </asp:BoundField>
                                    <asp:BoundField DataField="model" HeaderText="商品名稱">
                                    <ItemStyle HorizontalAlign="Center" />
                                    </asp:BoundField>
                                    <asp:BoundField DataField="size" HeaderText="商品尺寸">
                                    <ItemStyle HorizontalAlign="Center" />
                                    </asp:BoundField>
                                    <asp:BoundField DataField="qty" HeaderText="購買數量">
                                    <ItemStyle HorizontalAlign="Center" />
                                    </asp:BoundField>
                                    <asp:BoundField DataField="price" HeaderText="價格">
                                    <ItemStyle HorizontalAlign="Center" />
                                    </asp:BoundField>
                                    <asp:BoundField DataField="total" HeaderText="總金額">
                                    <ItemStyle HorizontalAlign="Center" />
                                    </asp:BoundField>
                                </Columns>
                                <FooterStyle BackColor="Tan" />
                                <HeaderStyle BackColor="Tan" Font-Bold="True" />
                                <PagerStyle BackColor="PaleGoldenrod" ForeColor="DarkSlateBlue" HorizontalAlign="Center" />
                                <SelectedRowStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
                                <SortedAscendingCellStyle BackColor="#FAFAE7" />
                                <SortedAscendingHeaderStyle BackColor="#DAC09E" />
                                <SortedDescendingCellStyle BackColor="#E1DB9C" />
                                <SortedDescendingHeaderStyle BackColor="#C2A47B" />
                            </asp:GridView>
                            <br />
                            <br />
                            <table class="auto-style13">
                                <tr>
                                    <td class="auto-style16">收件人:</td>
                                    <td class="auto-style17">
                                        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="必填" ForeColor="Red" ValidationGroup="green"></asp:RequiredFieldValidator>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style15">手機末三碼:</td>
                                    <td class="auto-style18">
                                        <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="必填" ForeColor="Red" ValidationGroup="green"></asp:RequiredFieldValidator>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style15">付款方式:</td>
                                    <td class="auto-style18">
                                        <asp:DropDownList ID="DropDownList1" runat="server" Height="16px" Width="146px">
                                            <asp:ListItem>貨到付款</asp:ListItem>
                                            <asp:ListItem>現金付款</asp:ListItem>
                                            <asp:ListItem>信用卡付款</asp:ListItem>
                                        </asp:DropDownList>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style15">收件地址:</td>
                                    <td class="auto-style18">
                                        <asp:TextBox ID="TextBox3" runat="server" Height="93px" Width="205px" TextMode="MultiLine"></asp:TextBox>
                                        <br />
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox3" ErrorMessage="必填" ForeColor="Red" ValidationGroup="green"></asp:RequiredFieldValidator>
                                        <br />
                                    </td>
                                </tr>
                            </table>
                            <br />
                            <br />
                            <asp:Button ID="Button1" runat="server" BackColor="#99FF66" Height="54px" OnClick="Button1_Click" Text="送出訂單" Width="173px" OnClientClick="javascript:if(!window.confirm('確定送出表單?')) window.event.returnValue = false;" ValidationGroup="green" />
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:Button ID="Button103" runat="server" BackColor="#FF3300" Height="51px" OnClick="Button103_Click" Text="返回購物" Width="79px" />
                            <br />
                        </asp:Panel>
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