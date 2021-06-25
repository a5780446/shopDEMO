<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="product ctrl.aspx.cs" Inherits="shopDEMO.back.product_ctrl" %>

<!DOCTYPE html>
<!-- Website template by freewebsitetemplates.com -->
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<title>學術用途</title>
	<link rel="stylesheet" href="css/style.css" type="text/css" charset="utf-8" />	
    <style type="text/css">

        .auto-style6 {
            margin-top: 0px;
        }
        .auto-style1 {
            margin-top: 17px;
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
            <asp:Button ID="Button9" runat="server" OnClick="Button9_Click" Text="管理員登出" Height="25px" Width="101px" />
				</span>
				</span>
				<a href="index.html" id="logo"></a> <!-- /#logo -->
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
					&nbsp;&nbsp;&nbsp;<asp:Button ID="Button2" runat="server" Height="42px" OnClick="Button2_Click" Text="編輯模式" Width="106px" BackColor="#66FF66" />
                        &nbsp;<asp:Button ID="Button3" runat="server" CssClass="auto-style6" Height="37px" OnClick="Button3_Click" Text="結束編輯" Visible="False" Width="84px" BackColor="Yellow" />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:DropDownList ID="DropDownList1" runat="server">
                            <asp:ListItem Value="id">商品編號</asp:ListItem>
                            <asp:ListItem Value="model">商品名稱</asp:ListItem>
                        </asp:DropDownList>
&nbsp;&nbsp;&nbsp;
                        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
&nbsp;&nbsp;
                        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="查詢" />
                        &nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Label ID="Label1" runat="server"></asp:Label>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
&nbsp;&nbsp;&nbsp;&nbsp;
                    <br />
&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="Button10" runat="server" BackColor="#FF66CC" Height="31px" PostBackUrl="~/back/createProduct.aspx" Text="商品上架" Width="75px" />
                    &nbsp;&nbsp;&nbsp;&nbsp;<br />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CssClass="auto-style1" Height="187px" OnRowDeleting="GridView1_RowDeleting" Width="918px" DataKeyNames="id" CellPadding="4" ForeColor="#333333" GridLines="None">
                            <AlternatingRowStyle BackColor="White" />
                            <Columns>
                                <asp:BoundField DataField="id" HeaderText="商品編號" >
                                <ItemStyle HorizontalAlign="Center" />
                                </asp:BoundField>
                                <asp:BoundField DataField="model" HeaderText="商品名稱" >
                                <ItemStyle HorizontalAlign="Center" />
                                </asp:BoundField>
                                <asp:BoundField DataField="size" HeaderText="尺寸" >
                                <ItemStyle HorizontalAlign="Center" />
                                </asp:BoundField>
                                <asp:BoundField DataField="color" HeaderText="顏色" >
                                <ItemStyle HorizontalAlign="Center" />
                                </asp:BoundField>
                                <asp:BoundField DataField="qty" HeaderText="數量" >
                                <ItemStyle HorizontalAlign="Center" />
                                </asp:BoundField>
                                <asp:BoundField DataField="price" HeaderText="價格" >
                                <ItemStyle HorizontalAlign="Center" />
                                </asp:BoundField>
                                <asp:ImageField DataImageUrlField="image" HeaderText="圖片">
                                    <ControlStyle Width="80px" />
                                    <ItemStyle Width="30px" />
                                </asp:ImageField>
                                <asp:TemplateField HeaderText="刪除" ShowHeader="False">
                                    <ItemTemplate>
                                        <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" CommandName="Delete" Text="刪除" OnClientClick="javascript:if(!window.confirm('你確定要刪除嗎?')) window.event.returnValue = false;"></asp:LinkButton>
                                    </ItemTemplate>
                                    <ItemStyle HorizontalAlign="Center" />
                                </asp:TemplateField>
                            </Columns>
                            <EditRowStyle BackColor="#2461BF" />
                            <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                            <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                            <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                            <RowStyle BackColor="#EFF3FB" />
                            <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                            <SortedAscendingCellStyle BackColor="#F5F7FB" />
                            <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                            <SortedDescendingCellStyle BackColor="#E9EBEF" />
                            <SortedDescendingHeaderStyle BackColor="#4870BE" />
                        </asp:GridView>
                        <br />
                        <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" DataKeyNames="id" DataSourceID="SqlDataSource1" Height="280px" Visible="False" Width="921px" BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px" CellPadding="2" ForeColor="Black" GridLines="None">
                            <AlternatingRowStyle BackColor="PaleGoldenrod" />
                            <Columns>
                                <asp:BoundField DataField="id" HeaderText="商品編號" ReadOnly="True" SortExpression="id" >
                                <ItemStyle HorizontalAlign="Center" />
                                </asp:BoundField>
                                <asp:BoundField DataField="model" HeaderText="商品名稱" SortExpression="model" >
                                <ItemStyle HorizontalAlign="Center" />
                                </asp:BoundField>
                                <asp:BoundField DataField="size" HeaderText="尺寸" SortExpression="size" >
                                <ItemStyle HorizontalAlign="Center" />
                                </asp:BoundField>
                                <asp:BoundField DataField="color" HeaderText="顏色" SortExpression="color" >
                                <ItemStyle HorizontalAlign="Center" />
                                </asp:BoundField>
                                <asp:BoundField DataField="qty" HeaderText="數量" SortExpression="qty" >
                                <ItemStyle HorizontalAlign="Center" />
                                </asp:BoundField>
                                <asp:BoundField DataField="price" HeaderText="價格" SortExpression="price" >
                                <ItemStyle HorizontalAlign="Center" />
                                </asp:BoundField>
                                <asp:ImageField DataImageUrlField="image" HeaderText="圖片">
                                    <ControlStyle Width="100px" />
                                    <ItemStyle HorizontalAlign="Center" />
                                </asp:ImageField>
                                <asp:CommandField ShowEditButton="True" >
                                <ControlStyle Width="45px" />
                                <ItemStyle HorizontalAlign="Center" />
                                </asp:CommandField>
                                <asp:CommandField ShowDeleteButton="True" >
                                <ItemStyle HorizontalAlign="Center" />
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
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:memberConnectionString %>" DeleteCommand="DELETE FROM [product] WHERE [id] = @id" InsertCommand="INSERT INTO [product] ([id], [model], [size], [color], [qty], [price], [image]) VALUES (@id, @model, @size, @color, @qty, @price, @image)" SelectCommand="SELECT * FROM [product]" UpdateCommand="UPDATE [product] SET [model] = @model, [size] = @size, [color] = @color, [qty] = @qty, [price] = @price, [image] = @image WHERE [id] = @id">
                            <DeleteParameters>
                                <asp:Parameter Name="id" Type="String" />
                            </DeleteParameters>
                            <InsertParameters>
                                <asp:Parameter Name="id" Type="String" />
                                <asp:Parameter Name="model" Type="String" />
                                <asp:Parameter Name="size" Type="String" />
                                <asp:Parameter Name="color" Type="String" />
                                <asp:Parameter Name="qty" Type="Int32" />
                                <asp:Parameter Name="price" Type="Int32" />
                                <asp:Parameter Name="image" Type="String" />
                            </InsertParameters>
                            <UpdateParameters>
                                <asp:Parameter Name="model" Type="String" />
                                <asp:Parameter Name="size" Type="String" />
                                <asp:Parameter Name="color" Type="String" />
                                <asp:Parameter Name="qty" Type="Int32" />
                                <asp:Parameter Name="price" Type="Int32" />
                                <asp:Parameter Name="image" Type="String" />
                                <asp:Parameter Name="id" Type="String" />
                            </UpdateParameters>
                        </asp:SqlDataSource>
				</div>
				<div id="featured">
					<ul>
						<li><img src="images/shirt-red.jpg" alt="shirt" /></li>
						<li><img src="images/shirt-orange.jpg" alt="shirt" /></li>
						<li><img src="images/shirt-green.jpg" alt="shirt" /></li>
						<li class="last"><img src="images/shirt-blue.jpg" alt="shirt" /></li>
					</ul>
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
					<a>Home</a>|
					<a>About</a>|
					<a>Blog</a>|
					<a>Shop</a>|
					<a>Contact Us</a>
				</div>
			</div> <!-- /#footer -->
		</div> <!-- /#page -->
	</div> <!-- /#background -->
    </form>
</body>
</html>
