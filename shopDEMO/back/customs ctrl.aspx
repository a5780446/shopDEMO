<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="customs ctrl.aspx.cs" Inherits="shopDEMO.back.customs_ctrl" %>

<!DOCTYPE html>
<!-- Website template by freewebsitetemplates.com -->
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<title>About - tshirtwebsitetemplate</title>
	<link rel="stylesheet" href="css/style.css" type="text/css" charset="utf-8" />	
    <style type="text/css">

        .auto-style8 {
            text-align: left;
        }
        .auto-style7 {
            text-align: center;
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
					&nbsp;</span><span id="infos">&nbsp;<span id="connect0">
            <asp:Button ID="Button7" runat="server" OnClick="Button7_Click" Text="管理員登出" Height="25px" Width="101px" />
				</span>
				</span>
				<a id="logo"></a> <!-- /#logo -->
				<ul id="navigation">
					<li class="selected">
                        <asp:Button ID="Button6" runat="server" BackColor="#FFCC66" Height="36px" PostBackUrl="~/back/customs ctrl.aspx" Text="會員資料管理" Width="105px" />
                    </li>
					<li>
                        <asp:Button ID="Button2" runat="server" BackColor="#FFCC66" Height="36px" PostBackUrl="~/back/order ctrl.aspx" Text="訂單管理" Width="105px" />
                    </li>
					<li>
                        <asp:Button ID="Button3" runat="server" BackColor="#FFCC66" Height="36px" Text="產品管理" Width="105px" PostBackUrl="~/back/product ctrl.aspx" />
                    </li>
					<li>
                        <asp:Button ID="Button4" runat="server" BackColor="#FFCC66" Height="36px" Text="顧客意見" Width="105px" PostBackUrl="~/back/board ctrl .aspx" />
                    </li>
					<li>
                        <asp:Button ID="Button5" runat="server" BackColor="#FFCC66" Height="36px" PostBackUrl="~/back/table.aspx" Text="營銷報表" Width="105px" />
                    </li>
				</ul>
			</div> <!-- /#header -->
			<div id="contents">
				<div id="main">
                        <asp:Panel ID="Panel1" runat="server" Height="466px">
                            <div class="auto-style8">
                                &nbsp;
                                <br />
                                <br />
                                <br />
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <asp:DropDownList ID="DropDownList1" runat="server">
                                    <asp:ListItem Value="id">依帳號</asp:ListItem>
                                    <asp:ListItem Value="name">依姓名</asp:ListItem>
                                </asp:DropDownList>
                                &nbsp;&nbsp;&nbsp;
                                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                                &nbsp;&nbsp;
                                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="查詢" />
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <br />
                                <div class="auto-style7">
                                    &nbsp;&nbsp;&nbsp;
                                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" Height="162px" Width="908px" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" GridLines="Vertical">
                                        <AlternatingRowStyle BackColor="#DCDCDC" />
                                        <Columns>
                                            <asp:BoundField DataField="id" HeaderText="帳號" />
                                            <asp:BoundField DataField="name" HeaderText="姓名" />
                                            <asp:BoundField DataField="tel" HeaderText="電話" />
                                            <asp:BoundField DataField="address" HeaderText="居住" />
                                            <asp:BoundField DataField="gender" HeaderText="性別" />
                                        </Columns>
                                        <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
                                        <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
                                        <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                                        <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
                                        <SelectedRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
                                        <SortedAscendingCellStyle BackColor="#F1F1F1" />
                                        <SortedAscendingHeaderStyle BackColor="#0000A9" />
                                        <SortedDescendingCellStyle BackColor="#CAC9C9" />
                                        <SortedDescendingHeaderStyle BackColor="#000065" />
                                    </asp:GridView>
                                </div>
                                <br />
                            </div>
                        </asp:Panel>
				</div>
				<div id="featured">
					<ul>
						<li><img src="images/shirt-red.jpg" alt="shirt" /></li>
						<li><img src="images/shirt-orange.jpg" alt="shirt" /></li>
						<li><img src="images/shirt-green.jpg" alt="shirt" /></li>
						<li class="last"><img src="images/shirt-blue.jpg" alt="shirt" /></li>
					</ul>
					&nbsp;</div>
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
