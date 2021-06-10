<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="productSHOW.aspx.cs" Inherits="shopDEMO.product.productSHOW" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
            height: 641px;
        }
        .auto-style2 {
            height: 72px;
        }
        .auto-style3 {
            height: 583px;
        }
        .auto-style4 {
            height: 72px;
            width: 112px;
        }
        .auto-style5 {
            height: 583px;
            width: 112px;
        }
        .auto-style6 {
            width: 100%;
        }
        .auto-style7 {
            height: 43px;
            width: 284px;
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
        .auto-style13 {
            background-color: #FFFFFF;
        }
        .auto-style15 {
            height: 51px;
            text-align: center;
            width: 359px;
        }
        .auto-style16 {
            height: 265px;
            text-align: center;
            width: 359px;
        }
        .auto-style17 {
            height: 41px;
            text-align: center;
            width: 359px;
        }
        .auto-style18 {
            height: 43px;
            width: 359px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style4"></td>
                    <td class="auto-style2">
                        <asp:Image ID="Image2" runat="server" ImageUrl="~/pic/LOGO.png" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style5">
                        <br />
                        <br />
                        <br />
                        <br />
                    </td>
                    <td class="auto-style3">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:memberConnectionString %>" SelectCommand="SELECT * FROM [product] WHERE ([id] = @id)">
                            <SelectParameters>
                                <asp:QueryStringParameter Name="id" QueryStringField="ID" Type="String" />
                            </SelectParameters>
                        </asp:SqlDataSource>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:DataList ID="DataList1" runat="server" DataKeyField="id" DataSourceID="SqlDataSource1" RepeatColumns="3" RepeatDirection="Horizontal" CssClass="auto-style13" OnItemCommand="DataList1_ItemCommand">
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
                                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;
                                        </td>
                                        <td class="auto-style7">
                                            <asp:Button ID="Button1" runat="server" CommandArgument='<%#Eval("id")%>' CommandName="addtocart" Height="42px" Text="加入購物車" Width="210px" />
                                        </td>
                                    </tr>
                                </table>
                                <br />
                            </ItemTemplate>
                        </asp:DataList>
                        <asp:Label ID="Label3" runat="server"></asp:Label>
                        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/product/shoppage.aspx">返回</asp:HyperLink>
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
