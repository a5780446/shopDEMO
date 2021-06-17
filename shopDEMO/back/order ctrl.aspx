<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="order ctrl.aspx.cs" Inherits="shopDEMO.back.order_ctrl" %>

<!DOCTYPE html>
<!-- Website template by freewebsitetemplates.com -->
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<title>About - tshirtwebsitetemplate</title>
	<link rel="stylesheet" href="css/style.css" type="text/css" charset="utf-8" />	
    <style type="text/css">

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
				<span id="connect">
					<a href="http://facebook.com/freewebsitetemplates" target="_blank" class="facebook"></a>
				</span>
				<span id="infos">
					&nbsp;<span id="connect0">
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="管理員登出" Height="25px" Width="101px" />
				</span>
				</span>
				<a id="logo"></a> <!-- /#logo -->
				<ul id="navigation">
					<li class="selected">
                        <asp:Button ID="Button6" runat="server" BackColor="#FFCC66" Height="36px" PostBackUrl="~/back/customs ctrl.aspx" Text="會員資料管理" Width="105px" />
                    </li>
					<li>
                        <asp:Button ID="Button7" runat="server" BackColor="#FFCC66" Height="36px" PostBackUrl="~/back/order ctrl.aspx" Text="訂單管理" Width="105px" />
                    </li>
					<li>
                        <asp:Button ID="Button8" runat="server" BackColor="#FFCC66" Height="36px" Text="產品管理" Width="105px" PostBackUrl="~/back/product ctrl.aspx" />
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
                        <asp:Panel ID="Panel1" runat="server" Height="874px">
                            <div class="auto-style7">
                                <br />
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <asp:DropDownList ID="DropDownList1" runat="server">
                                    <asp:ListItem Value="id">訂單號碼</asp:ListItem>
                                    <asp:ListItem Value="name">訂購人</asp:ListItem>
                                </asp:DropDownList>
                                &nbsp;&nbsp;
                                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                                &nbsp;
                                <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="查詢" />
                                &nbsp;&nbsp;
                                <asp:Label ID="Label2" runat="server"></asp:Label>
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <asp:Button ID="Button3" runat="server" Height="39px" OnClick="Button3_Click" Text="返回" Width="61px" BackColor="#FF9933" />
                                <br />
                                <br />
                                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" DataKeyNames="id" Height="251px" OnSelectedIndexChanging="GridView1_SelectedIndexChanging" Width="871px">
                                    <Columns>
                                        <asp:BoundField DataField="id" HeaderText="訂單號碼" />
                                        <asp:BoundField DataField="name" HeaderText="訂購人" />
                                        <asp:BoundField DataField="initdate" HeaderText="訂單日期" />
                                        <asp:TemplateField HeaderText="訂單進度">
                                            <EditItemTemplate>
                                                <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("status") %>'></asp:TextBox>
                                            </EditItemTemplate>
                                            <ItemTemplate>
                                                <asp:Label ID="Label1" runat="server" Text='<%# Bind("status") %>'></asp:Label>
                                            </ItemTemplate>
                                            <ItemStyle HorizontalAlign="Center" />
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="訂單詳情" ShowHeader="False">
                                            <ItemTemplate>
                                                <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" CommandName="Select" Text="選取"></asp:LinkButton>
                                            </ItemTemplate>
                                        </asp:TemplateField>
                                    </Columns>
                                    <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
                                    <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
                                    <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
                                    <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
                                    <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
                                    <SortedAscendingCellStyle BackColor="#FFF1D4" />
                                    <SortedAscendingHeaderStyle BackColor="#B95C30" />
                                    <SortedDescendingCellStyle BackColor="#F1E5CE" />
                                    <SortedDescendingHeaderStyle BackColor="#93451F" />
                                </asp:GridView>
                                <br />
                                <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="orderid" ForeColor="#333333" GridLines="None" Height="223px" Width="872px">
                                    <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                                    <Columns>
                                        <asp:BoundField DataField="orderid" HeaderText="訂單號碼" />
                                        <asp:BoundField DataField="id" HeaderText="商品編號" />
                                        <asp:BoundField DataField="model" HeaderText="商品名稱" />
                                        <asp:BoundField DataField="size" HeaderText="尺寸" />
                                        <asp:BoundField DataField="qty" HeaderText="數量" />
                                    </Columns>
                                    <EditRowStyle BackColor="#999999" />
                                    <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                                    <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                                    <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                                    <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                                    <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                                    <SortedAscendingCellStyle BackColor="#E9E7E2" />
                                    <SortedAscendingHeaderStyle BackColor="#506C8C" />
                                    <SortedDescendingCellStyle BackColor="#FFFDF8" />
                                    <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
                                </asp:GridView>
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
					<a href="shop.html" class="button">shop here!</a> 
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
