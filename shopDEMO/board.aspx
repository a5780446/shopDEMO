<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="board.aspx.cs" Inherits="shopDEMO.board" %>

<!DOCTYPE html>
<!-- Website template by freewebsitetemplates.com -->
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<title>About - tshirtwebsitetemplate</title>
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
                <asp:Button ID="Button101" runat="server" BackColor="#FFCC00" OnClick="Button101_Click" Text="登出" />
				</span>
				<span id="infos" class="auto-style1"><asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/singin.aspx">登入會員</asp:HyperLink>
                <asp:Button ID="Button99" runat="server" BackColor="#FFCC00" CommandArgument='<%#Eval("id")%>' CommandName="jump" Enabled="False" Text="會員資料" />
                |
                <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/product/cart.aspx">購物車</asp:HyperLink>
				<asp:Button ID="Button100" runat="server" BackColor="#FFCC00" PostBackUrl="~/product/cart.aspx" Text="購物車" />
				</span>
				<a href="index.html" id="logo"></a> <!-- /#logo -->
				<ul id="navigation">
					<li class="selected">
                        <asp:Button ID="Button6" runat="server" BackColor="#FFCC66" Height="36px" PostBackUrl="~/homepage.aspx" Text="首頁" Width="105px" />
                    </li>
					<li>
                        <asp:Button ID="Button7" runat="server" BackColor="#FFCC66" Height="36px" PostBackUrl="~/product/shoppage.aspx" Text="商品" Width="105px" />
                    </li>
					<li>
                        <asp:Button ID="Button8" runat="server" BackColor="#FFCC66" Height="36px" Text="首頁" Width="105px" />
                    </li>
					<li>
                        <asp:Button ID="Button4" runat="server" BackColor="#FFCC66" Height="36px" Text="首頁" Width="105px" />
                    </li>
					<li>
                        <asp:Button ID="Button5" runat="server" BackColor="#FFCC66" Height="36px" PostBackUrl="~/board.aspx" Text="留言板" Width="105px" />
                    </li>
				</ul>
			</div> <!-- /#header -->
			<div id="contents">
				<div id="main">
                        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="我要留言" BackColor="#CC9900" Height="26px" Width="82px" />
                        &nbsp;<br />
                        <br />
                        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px" CellPadding="2" DataSourceID="SqlDataSource1" ForeColor="Black" GridLines="None" Height="241px" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" Width="803px">
                            <AlternatingRowStyle BackColor="PaleGoldenrod" />
                            <Columns>
                                <asp:BoundField DataField="name" HeaderText="留言者" SortExpression="name">
                                <HeaderStyle Height="40px" />
                                <ItemStyle HorizontalAlign="Center" Width="150px" />
                                </asp:BoundField>
                                <asp:BoundField DataField="head" HeaderText="標題" SortExpression="head">
                                <ControlStyle Width="200px" />
                                <ItemStyle HorizontalAlign="Center" Width="250px" />
                                </asp:BoundField>
                                <asp:BoundField DataField="date" HeaderText="日期" SortExpression="date">
                                <ControlStyle Width="100px" />
                                <ItemStyle HorizontalAlign="Center" Width="150px" />
                                </asp:BoundField>
                                <asp:CommandField ShowSelectButton="True">
                                <ItemStyle HorizontalAlign="Center" Width="40px" />
                                </asp:CommandField>
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
                        <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" CellPadding="4" DataKeyNames="id" DataSourceID="SqlDataSource2" ForeColor="#333333" GridLines="None" Height="341px" OnItemCommand="DetailsView1_ItemCommand" Width="762px">
                            <AlternatingRowStyle BackColor="White" />
                            <CommandRowStyle BackColor="#C5BBAF" Font-Bold="True" />
                            <EditRowStyle BackColor="#7C6F57" />
                            <FieldHeaderStyle BackColor="#D0D0D0" Font-Bold="True" />
                            <Fields>
                                <asp:BoundField DataField="id" HeaderText="ID" ReadOnly="True" SortExpression="id">
                                <HeaderStyle Width="100px" />
                                </asp:BoundField>
                                <asp:BoundField DataField="name" HeaderText="留言者" SortExpression="name" />
                                <asp:BoundField DataField="head" HeaderText="標題" SortExpression="head" />
                                <asp:BoundField DataField="conten" HeaderText="內容" SortExpression="conten" />
                                <asp:BoundField DataField="date" HeaderText="日期" SortExpression="date" />
                                <asp:BoundField DataField="feedback" HeaderText="回覆" NullDisplayText="尚未回覆" SortExpression="feedback" />
                                <asp:ButtonField CommandName="return" Text="返回" />
                            </Fields>
                            <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                            <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                            <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
                            <RowStyle BackColor="#E3EAEB" />
                        </asp:DetailsView>
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:memberConnectionString1 %>" SelectCommand="SELECT [name], [head], [date] FROM [board]"></asp:SqlDataSource>
                        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:memberConnectionString1 %>" DeleteCommand="DELETE FROM [board] WHERE [id] = @id" InsertCommand="INSERT INTO [board] ([id], [name], [head], [conten], [date], [feedback]) VALUES (@id, @name, @head, @conten, @date, @feedback)" SelectCommand="SELECT * FROM [board]" UpdateCommand="UPDATE [board] SET [name] = @name, [head] = @head, [conten] = @conten, [date] = @date, [feedback] = @feedback WHERE [id] = @id">
                            <DeleteParameters>
                                <asp:Parameter Name="id" Type="String" />
                            </DeleteParameters>
                            <InsertParameters>
                                <asp:Parameter Name="id" Type="String" />
                                <asp:Parameter Name="name" Type="String" />
                                <asp:Parameter Name="head" Type="String" />
                                <asp:Parameter Name="conten" Type="String" />
                                <asp:Parameter Name="date" Type="DateTime" />
                                <asp:Parameter Name="feedback" Type="Object" />
                            </InsertParameters>
                            <UpdateParameters>
                                <asp:Parameter Name="name" Type="String" />
                                <asp:Parameter Name="head" Type="String" />
                                <asp:Parameter Name="conten" Type="String" />
                                <asp:Parameter Name="date" Type="DateTime" />
                                <asp:Parameter Name="feedback" Type="Object" />
                                <asp:Parameter Name="id" Type="String" />
                            </UpdateParameters>
                        </asp:SqlDataSource>
                        <asp:Panel ID="Panel3" runat="server" Height="339px">
                            <br />
                            <br />
                            標題 :
                            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                            <br />
                            <br />
                            留言者 :
                            <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                            <br />
                            <br />
                            留言內容 :<br />
                            <br />
                            <asp:TextBox ID="TextBox3" runat="server" Height="145px" Width="364px"></asp:TextBox>
                            <br />
                            <br />
                            <asp:Button ID="Button2" runat="server" Height="27px" OnClick="Button2_Click" Text="提交" Width="75px" />
                            &nbsp;&nbsp;&nbsp;
                            <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" Text="返回" />
                            <br />
                        </asp:Panel>
				</div>
				<div id="featured">
					<ul>
						<li><img src="images/shirt-red.jpg" alt="shirt" /></li>
						<li><img src="images/shirt-orange.jpg" alt="shirt" /></li>
						<li><img src="images/shirt-green.jpg" alt="shirt" /></li>
						<li class="last"><img src="images/shirt-blue.jpg" alt="shirt" /></li>
					</ul>
					<a href="product/shoppage.aspx" class="button">shop here!</a> 
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
