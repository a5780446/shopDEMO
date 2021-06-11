<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="paypage.aspx.cs" Inherits="shopDEMO.pay.paypage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
            height: 1053px;
        }
        .auto-style2 {
            height: 93px;
        }
        .auto-style3 {
            height: 603px;
        }
        .auto-style4 {
            height: 93px;
            width: 78px;
        }
        .auto-style5 {
            height: 603px;
            width: 78px;
        }
        .auto-style6 {
            height: 93px;
            width: 1100px;
        }
        .auto-style7 {
            height: 603px;
            width: 1100px;
        }
        .auto-style13 {
            width: 37%;
            height: 246px;
        }
        .auto-style15 {
            width: 99px;
        }
        .auto-style16 {
            width: 99px;
            height: 23px;
        }
        .auto-style17 {
            height: 23px;
            width: 298px;
        }
        .auto-style18 {
            width: 298px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style4"></td>
                    <td class="auto-style6"></td>
                    <td class="auto-style2"></td>
                </tr>
                <tr>
                    <td class="auto-style5"></td>
                    <td class="auto-style7">
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
                                    <asp:BoundField DataField="price" HeaderText="價格">
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
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style15">手機末三碼:</td>
                                    <td class="auto-style18">
                                        <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
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
                                        <asp:TextBox ID="TextBox3" runat="server" Height="93px" Width="205px"></asp:TextBox>
                                    </td>
                                </tr>
                            </table>
                            <br />
                            <br />
                            <asp:Button ID="Button1" runat="server" Height="54px" OnClick="Button1_Click" Text="送出訂單" Width="173px" />
                        </asp:Panel>
                    </td>
                    <td class="auto-style3"></td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
