<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="product ctrl.aspx.cs" Inherits="shopDEMO.back.WebForm3" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            margin-top: 17px;
        }
        .auto-style2 {
            width: 100%;
            height: 644px;
        }
        .auto-style3 {
            width: 145px;
        }
        .auto-style4 {
            width: 145px;
            height: 62px;
        }
        .auto-style5 {
            height: 62px;
        }
        .auto-style6 {
            margin-top: 0px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table class="auto-style2">
                <tr>
                    <td class="auto-style4"></td>
                    <td class="auto-style5"></td>
                    <td class="auto-style5"></td>
                </tr>
                <tr>
                    <td class="auto-style3">&nbsp;</td>
                    <td>&nbsp;&nbsp;&nbsp;&nbsp;<asp:Button ID="Button2" runat="server" Height="42px" OnClick="Button2_Click" Text="編輯模式" Width="106px" />
                        &nbsp;<asp:Button ID="Button3" runat="server" CssClass="auto-style6" Height="37px" OnClick="Button3_Click" Text="結束編輯" Visible="False" Width="84px" />
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
                        <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Button ID="Button4" runat="server" Height="29px" OnClick="Button4_Click" Text="回上頁" Width="75px" />
                        <br />
                        <br />
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
                                <asp:BoundField DataField="id" HeaderText="id" ReadOnly="True" SortExpression="id" >
                                <ItemStyle HorizontalAlign="Center" />
                                </asp:BoundField>
                                <asp:BoundField DataField="model" HeaderText="model" SortExpression="model" >
                                <ItemStyle HorizontalAlign="Center" />
                                </asp:BoundField>
                                <asp:BoundField DataField="size" HeaderText="size" SortExpression="size" >
                                <ItemStyle HorizontalAlign="Center" />
                                </asp:BoundField>
                                <asp:BoundField DataField="color" HeaderText="color" SortExpression="color" >
                                <ItemStyle HorizontalAlign="Center" />
                                </asp:BoundField>
                                <asp:BoundField DataField="qty" HeaderText="qty" SortExpression="qty" >
                                <ItemStyle HorizontalAlign="Center" />
                                </asp:BoundField>
                                <asp:BoundField DataField="price" HeaderText="price" SortExpression="price" >
                                <ItemStyle HorizontalAlign="Center" />
                                </asp:BoundField>
                                <asp:ImageField DataImageUrlField="image" HeaderText="圖片">
                                    <ControlStyle Width="100px" />
                                    <ItemStyle HorizontalAlign="Center" />
                                </asp:ImageField>
                                <asp:CommandField HeaderText="修改" ShowEditButton="True" >
                                <ControlStyle Width="45px" />
                                <ItemStyle HorizontalAlign="Center" />
                                </asp:CommandField>
                                <asp:CommandField HeaderText="刪除" ShowDeleteButton="True" >
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
                    </td>
                    <td>&nbsp;</td>
                </tr>
            </table>
            <br />
            <br />
            <br />
        </div>
    </form>
</body>
</html>
