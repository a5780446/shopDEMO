<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="table.aspx.cs" Inherits="shopDEMO.back.table" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
            height: 770px;
        }
        .auto-style2 {
            height: 63px;
        }
        .auto-style3 {
            height: 63px;
            width: 269px;
        }
        .auto-style4 {
            width: 269px;
        }
        .auto-style5 {
            height: 63px;
            width: 749px;
        }
        .auto-style6 {
            width: 749px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table class="auto-style1" style="background-color: #FFCC00; border-color: #FFCC00">
                <tr>
                    <td class="auto-style3"></td>
                    <td class="auto-style5"></td>
                    <td class="auto-style2"></td>
                </tr>
                <tr>
                    <td class="auto-style4">&nbsp;</td>
                    <td class="auto-style6">
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:memberConnectionString1 %>" SelectCommand="select model,sum(qty)as x from orderin group by model"></asp:SqlDataSource>
                        <asp:Chart ID="Chart1" runat="server" DataSourceID="SqlDataSource1" Height="450px" Width="750px">
                            <Series>
                                <asp:Series Name="Series1" XValueMember="model" YValueMembers="x">
                                </asp:Series>
                            </Series>
                            <ChartAreas>
                                <asp:ChartArea Name="ChartArea1">
                                </asp:ChartArea>
                            </ChartAreas>
                        </asp:Chart>
                        <br />
                        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" Height="125px" Width="710px">
                            <AlternatingRowStyle BackColor="White" />
                            <Columns>
                                <asp:BoundField DataField="model" HeaderText="商品名稱" SortExpression="model">
                                <ItemStyle HorizontalAlign="Center" />
                                </asp:BoundField>
                                <asp:BoundField DataField="x" HeaderText="銷售數量" ReadOnly="True" SortExpression="x">
                                <ItemStyle HorizontalAlign="Center" />
                                </asp:BoundField>
                            </Columns>
                            <EditRowStyle BackColor="#7C6F57" />
                            <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                            <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                            <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
                            <RowStyle BackColor="#E3EAEB" />
                            <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
                            <SortedAscendingCellStyle BackColor="#F8FAFA" />
                            <SortedAscendingHeaderStyle BackColor="#246B61" />
                            <SortedDescendingCellStyle BackColor="#D4DFE1" />
                            <SortedDescendingHeaderStyle BackColor="#15524A" />
                        </asp:GridView>
                        <br />
                        <asp:Button ID="Button1" runat="server" Height="38px" OnClick="Button1_Click" Text="返回" Width="88px" BackColor="#66FF33" />
                        <br />
                    </td>
                    <td>&nbsp;</td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
