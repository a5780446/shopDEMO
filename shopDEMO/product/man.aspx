<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="man.aspx.cs" Inherits="shopDEMO.product.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
<<style type="text/css">
        .auto-style1 {
            width: 100%;
            height: 619px;
        }
        .auto-style2 {
            height: 69px;
        }
        .auto-style3 {
            height: 69px;
            width: 105px;
        }
        .auto-style4 {
            width: 105px;
        }
        .auto-style5 {
            height: 69px;
            width: 886px;
        }
        .auto-style6 {
            width: 886px;
        }
        .auto-style7 {
            color: #FF99CC;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <asp:Panel ID="Panel1" runat="server">
            <table class="auto-style1">
                <tr>
                    <td class="auto-style3"></td>
                    <td class="auto-style5">
                        <asp:Image ID="Image1" runat="server" ImageUrl="~/pic/LOGO.png" Width="881px" />
                    </td>
                    <td class="auto-style2"></td>
                </tr>
                <tr>
                    <td class="auto-style4">
                        <asp:Panel ID="Panel2" runat="server" Height="456px" Width="189px">
                            <asp:Menu ID="Menu1" runat="server" DataSourceID="SiteMapDataSource1" Orientation="Horizontal">
                            </asp:Menu>
                            <asp:SiteMapDataSource ID="SiteMapDataSource1" runat="server" />
                        </asp:Panel>
                    </td>
                    <td class="auto-style6">
                        <asp:Panel ID="Panel3" runat="server" Height="529px">
                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:memberConnectionString %>" SelectCommand="SELECT[id], [model], [price], [image] FROM [product] where id like '1%'"></asp:SqlDataSource>
                            您有<asp:Label ID="Label1" runat="server"></asp:Label>
                            商品尚未結帳<asp:DataList ID="DataList2" runat="server" DataSourceID="SqlDataSource1" RepeatDirection="Horizontal" BackColor="White" BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px" CellPadding="0" GridLines="Both" OnItemCommand="DataList2_ItemCommand" CssClass="auto-style7" RepeatColumns="4" Height="500px" Width="500px">
                                <FooterStyle BackColor="#99CCCC" ForeColor="#003399" />
                                <HeaderStyle BackColor="#003399" Font-Bold="True" ForeColor="#CCCCFF" />
                                <ItemStyle BackColor="#7CB8E9" ForeColor="#003399" BorderColor="#75CEF0" />
                                <ItemTemplate>
                                    <asp:ImageButton ID="ImageButton1" runat="server" CommandArgument='<%# Eval("id") %>' CommandName="jump" Height="250px" ImageUrl='<%# Eval("image") %>' Width="250px" />
                                    <br />
                                    &nbsp;<asp:Label ID="modelLabel" runat="server" Text='<%# Eval("model") %>' />
                                    <br />
                                    &nbsp;<asp:Label ID="priceLabel" runat="server" Text='<%# Eval("price") %>' />
                                    &nbsp;.NTD<br />
                                    <br />
                                    <asp:Button ID="Button1" runat="server" CommandArgument='<%#Eval("id")%>' CommandName="jump" Text="詳細資料" />
                                    <br />
                                </ItemTemplate>
                                <SelectedItemStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
                            </asp:DataList>
                            <br />
                            <br />
                        </asp:Panel>
                    </td>
                    <td>&nbsp;</td>
                </tr>
            </table>
        </asp:Panel>
        <div>
        </div>
    </form>
</body>
</html>
