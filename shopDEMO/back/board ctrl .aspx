<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="board ctrl .aspx.cs" Inherits="shopDEMO.back.board_ctrl" %>

<!DOCTYPE html>
<!-- Website template by freewebsitetemplates.com -->
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<title>學術用途</title>
	<link rel="stylesheet" href="css/style.css" type="text/css" charset="utf-8" />	
    <style type="text/css">
        .auto-style1 {
            margin-right: 0px;
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
					&nbsp;</span><span id="infos"><span id="connect0"><asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="管理員登出" Height="25px" Width="101px" />
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
                        <asp:Button ID="Button7" runat="server" BackColor="#FFCC66" Height="36px" Text="顧客意見" Width="105px" PostBackUrl="~/back/board ctrl .aspx" />
                    </li>
					<li>
                        <asp:Button ID="Button5" runat="server" BackColor="#FFCC66" Height="36px" PostBackUrl="~/back/table.aspx" Text="營銷報表" Width="105px" />
                    </li>
				</ul>
			</div> <!-- /#header -->
			<div id="contents">
				<div id="main">
					<br />
                        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataSourceID="SqlDataSource1" ForeColor="Black" GridLines="Vertical" Height="386px" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" Width="880px" DataKeyNames="id">
                            <AlternatingRowStyle BackColor="White" />
                            <Columns>
                                <asp:BoundField DataField="id" HeaderText="留言帳號" ReadOnly="True" SortExpression="id">
                                <ControlStyle Height="50px" />
                                <HeaderStyle Height="30px" />
                                <ItemStyle HorizontalAlign="Center" Height="30px" />
                                </asp:BoundField>
                                <asp:BoundField DataField="name" HeaderText="留言者" SortExpression="name">
                                <ItemStyle HorizontalAlign="Center" />
                                </asp:BoundField>
                                <asp:BoundField DataField="head" HeaderText="標題" SortExpression="head">
                                <ItemStyle HorizontalAlign="Center" />
                                </asp:BoundField>
                                <asp:BoundField DataField="date" HeaderText="留言日期" SortExpression="date">
                                <ItemStyle HorizontalAlign="Center" />
                                </asp:BoundField>
                                <asp:CommandField ShowSelectButton="True" SelectText="查看">
                                <ItemStyle HorizontalAlign="Center" />
                                </asp:CommandField>
                                <asp:CommandField DeleteText="移除" ShowDeleteButton="True">
                                <ItemStyle HorizontalAlign="Center" />
                                </asp:CommandField>
                            </Columns>
                            <FooterStyle BackColor="#CCCC99" />
                            <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
                            <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
                            <RowStyle BackColor="#F7F7DE" />
                            <SelectedRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
                            <SortedAscendingCellStyle BackColor="#FBFBF2" />
                            <SortedAscendingHeaderStyle BackColor="#848384" />
                            <SortedDescendingCellStyle BackColor="#EAEAD3" />
                            <SortedDescendingHeaderStyle BackColor="#575357" />
                        </asp:GridView>
                        <br />
                        <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" CellPadding="4" DataSourceID="SqlDataSource2" ForeColor="#333333" GridLines="None" Height="470px" OnItemCommand="DetailsView1_ItemCommand" Width="800px" CssClass="auto-style1">
                            <AlternatingRowStyle BackColor="White" />
                            <CommandRowStyle BackColor="#C5BBAF" Font-Bold="True" />
                            <EditRowStyle BackColor="#7C6F57" />
                            <FieldHeaderStyle BackColor="#D0D0D0" Font-Bold="True" />
                            <Fields>
                                <asp:BoundField DataField="id" HeaderText="ID" SortExpression="id">
                                <HeaderStyle Width="100px" />
                                </asp:BoundField>
                                <asp:BoundField DataField="name" HeaderText="姓名" SortExpression="name" >
                                </asp:BoundField>
                                <asp:BoundField DataField="head" HeaderText="標題" SortExpression="head" >
                                </asp:BoundField>
                                <asp:BoundField DataField="conten" HeaderText="內容" SortExpression="conten" >
                                </asp:BoundField>
                                <asp:BoundField DataField="date" HeaderText="日期" SortExpression="date" >
                                </asp:BoundField>
                                <asp:BoundField DataField="feedback" HeaderText="管理員回復" NullDisplayText="尚未回覆" SortExpression="feedback" >
                                </asp:BoundField>
                                <asp:TemplateField ShowHeader="False">
                                    <EditItemTemplate>
                                        <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="True" CommandName="Update" Text="更新"></asp:LinkButton>
                                        &nbsp;<asp:LinkButton ID="LinkButton2" runat="server" CausesValidation="False" CommandName="Cancel" Text="取消"></asp:LinkButton>
                                    </EditItemTemplate>
                                    <ItemTemplate>
                                        <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" CommandName="Edit" Text="編輯"></asp:LinkButton>
                                        <br />
                                        <br />
                                        <asp:LinkButton ID="LinkButton3" runat="server" CommandName="return">返回</asp:LinkButton>
                                    </ItemTemplate>
                                </asp:TemplateField>
                            </Fields>
                            <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                            <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                            <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
                            <RowStyle BackColor="#E3EAEB" />
                        </asp:DetailsView>
                        <br />
                    <br />
                    <br />
                        <br />
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:memberConnectionString1 %>" SelectCommand="SELECT * FROM [board]" InsertCommand="INSERT INTO [board] ([id], [name], [head], [conten], [date], [feedback]) VALUES (@id, @name, @head, @conten, @date, @feedback)" ConflictDetection="CompareAllValues" OldValuesParameterFormatString="original_{0}">
                            <InsertParameters>
                                <asp:Parameter Name="id" Type="String" />
                                <asp:Parameter Name="name" Type="String" />
                                <asp:Parameter Name="head" Type="String" />
                                <asp:Parameter Name="conten" Type="String" />
                                <asp:Parameter Name="date" Type="DateTime" />
                                <asp:Parameter Name="feedback" Type="String" />
                            </InsertParameters>
                        </asp:SqlDataSource>
                        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:memberConnectionString1 %>" InsertCommand="INSERT INTO [board] ([id], [name], [head], [conten], [date], [feedback]) VALUES (@id, @name, @head, @conten, @date, @feedback)" SelectCommand="SELECT * FROM [board]" OldValuesParameterFormatString="original_{0}" ConflictDetection="CompareAllValues">
                            <InsertParameters>
                                <asp:Parameter Name="id" Type="String" />
                                <asp:Parameter Name="name" Type="String" />
                                <asp:Parameter Name="head" Type="String" />
                                <asp:Parameter Name="conten" Type="String" />
                                <asp:Parameter Name="date" Type="DateTime" />
                                <asp:Parameter Name="feedback" Type="String" />
                            </InsertParameters>
                        </asp:SqlDataSource>
                        <br />
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
