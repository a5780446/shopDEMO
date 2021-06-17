<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="mamberdata.aspx.cs" Inherits="shopDEMO.mamberdata" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
            height: 605px;
        }
        .auto-style2 {
            height: 61px;
        }
        .auto-style3 {
            height: 61px;
            width: 240px;
        }
        .auto-style4 {
            width: 240px;
        }
        .auto-style5 {
            margin-top: 0px;
        }
        .auto-style6 {
            width: 100%;
        }
        .auto-style7 {
            height: 502px;
        }
        .auto-style8 {
            height: 61px;
            width: 135px;
        }
        .auto-style9 {
            width: 135px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table class="auto-style1" style="background-color: #FFCC66; border-color: #FFCC66">
                <tr>
                    <td class="auto-style3"></td>
                    <td class="auto-style2"></td>
                    <td class="auto-style8"></td>
                </tr>
                <tr>
                    <td class="auto-style4">&nbsp;</td>
                    <td>
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:memberConnectionString1 %>" DeleteCommand="DELETE FROM [VIPmember] WHERE [id] = @id" InsertCommand="INSERT INTO [VIPmember] ([id], [pswd], [ckpswd], [name], [tel], [address], [gender], [initdate]) VALUES (@id, @pswd, @ckpswd, @name, @tel, @address, @gender, @initdate)" SelectCommand="SELECT * FROM [VIPmember] WHERE ([id] = @id)" UpdateCommand="UPDATE [VIPmember] SET [pswd] = @pswd, [ckpswd] = @ckpswd, [name] = @name, [tel] = @tel, [address] = @address, [gender] = @gender, [initdate] = @initdate WHERE [id] = @id">
                            <DeleteParameters>
                                <asp:Parameter Name="id" Type="String" />
                            </DeleteParameters>
                            <InsertParameters>
                                <asp:Parameter Name="id" Type="String" />
                                <asp:Parameter Name="pswd" Type="String" />
                                <asp:Parameter Name="ckpswd" Type="String" />
                                <asp:Parameter Name="name" Type="String" />
                                <asp:Parameter Name="tel" Type="String" />
                                <asp:Parameter Name="address" Type="String" />
                                <asp:Parameter Name="gender" Type="String" />
                                <asp:Parameter Name="initdate" Type="DateTime" />
                            </InsertParameters>
                            <SelectParameters>
                                <asp:QueryStringParameter Name="id" QueryStringField="id" Type="String" />
                            </SelectParameters>
                            <UpdateParameters>
                                <asp:Parameter Name="pswd" Type="String" />
                                <asp:Parameter Name="ckpswd" Type="String" />
                                <asp:Parameter Name="name" Type="String" />
                                <asp:Parameter Name="tel" Type="String" />
                                <asp:Parameter Name="address" Type="String" />
                                <asp:Parameter Name="gender" Type="String" />
                                <asp:Parameter Name="initdate" Type="DateTime" />
                                <asp:Parameter Name="id" Type="String" />
                            </UpdateParameters>
                        </asp:SqlDataSource>
                        <br />
                        <asp:Button ID="Button6" runat="server" BackColor="#CC99FF" CommandName="order" CssClass="auto-style5" Height="42px" OnClick="Button6_Click" Text="查看訂單" Width="114px" />
                        <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" CellPadding="4" DataKeyNames="id" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" Height="667px" Width="712px">
                            <AlternatingRowStyle BackColor="White" />
                            <CommandRowStyle BackColor="#C5BBAF" Font-Bold="True" />
                            <EditRowStyle BackColor="#CC99FF" />
                            <FieldHeaderStyle BackColor="#D0D0D0" Font-Bold="True" />
                            <Fields>
                                <asp:BoundField DataField="id" HeaderText="帳號" ReadOnly="True" SortExpression="id">
                                <HeaderStyle HorizontalAlign="Center" Width="65px" />
                                <ItemStyle HorizontalAlign="Center" />
                                </asp:BoundField>
                                <asp:BoundField DataField="pswd" HeaderText="密碼" SortExpression="pswd">
                                <HeaderStyle HorizontalAlign="Center" />
                                <ItemStyle HorizontalAlign="Center" />
                                </asp:BoundField>
                                <asp:BoundField DataField="ckpswd" HeaderText="確認密碼">
                                <ItemStyle HorizontalAlign="Center" />
                                </asp:BoundField>
                                <asp:BoundField DataField="name" HeaderText="姓名" SortExpression="name">
                                <HeaderStyle HorizontalAlign="Center" />
                                <ItemStyle HorizontalAlign="Center" />
                                </asp:BoundField>
                                <asp:BoundField DataField="tel" HeaderText="電話" SortExpression="tel">
                                <HeaderStyle HorizontalAlign="Center" />
                                <ItemStyle HorizontalAlign="Center" />
                                </asp:BoundField>
                                <asp:BoundField DataField="address" HeaderText="地址" SortExpression="address">
                                <HeaderStyle HorizontalAlign="Center" />
                                <ItemStyle HorizontalAlign="Center" />
                                </asp:BoundField>
                                <asp:BoundField DataField="gender" HeaderText="性別" SortExpression="gender">
                                <HeaderStyle HorizontalAlign="Center" />
                                <ItemStyle HorizontalAlign="Center" />
                                </asp:BoundField>
                                <asp:CommandField ShowEditButton="True" ButtonType="Button" EditText="修改資料" UpdateText="儲存" />
                            </Fields>
                            <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                            <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                            <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
                            <RowStyle BackColor="#E3EAEB" />
                        </asp:DetailsView>
                        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="White" BorderStyle="Ridge" BorderWidth="2px" CellPadding="3" CellSpacing="1" GridLines="None" Width="719px">
                            <Columns>
                                <asp:BoundField DataField="id" HeaderText="ID" />
                                <asp:BoundField DataField="userID" HeaderText="會員名稱" />
                                <asp:BoundField DataField="status" HeaderText="訂單進度" />
                                <asp:BoundField DataField="initdate" HeaderText="訂購日期" />
                            </Columns>
                            <FooterStyle BackColor="#C6C3C6" ForeColor="Black" />
                            <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#E7E7FF" />
                            <PagerStyle BackColor="#C6C3C6" ForeColor="Black" HorizontalAlign="Right" />
                            <RowStyle BackColor="#DEDFDE" ForeColor="Black" />
                            <SelectedRowStyle BackColor="#9471DE" Font-Bold="True" ForeColor="White" />
                            <SortedAscendingCellStyle BackColor="#F1F1F1" />
                            <SortedAscendingHeaderStyle BackColor="#594B9C" />
                            <SortedDescendingCellStyle BackColor="#CAC9C9" />
                            <SortedDescendingHeaderStyle BackColor="#33276A" />
                        </asp:GridView>
                        <br />
                        <asp:Button ID="Button1" runat="server" Height="42px" OnClick="Button1_Click" Text="返回" Width="114px" BackColor="#99CC00" />
                        &nbsp;&nbsp;
                        <table class="auto-style6">
                            <tr>
                                <td>&nbsp;</td>
                                <td>&nbsp;</td>
                            </tr>
                            <tr>
                                <td class="auto-style7"></td>
                                <td class="auto-style7"></td>
                            </tr>
                        </table>
                        <br />
                    </td>
                    <td class="auto-style9">&nbsp;</td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
