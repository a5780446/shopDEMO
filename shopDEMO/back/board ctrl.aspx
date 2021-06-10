<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="board ctrl.aspx.cs" Inherits="shopDEMO.back.board_ctrl" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<style type="text/css">
        .auto-style1 {
            width: 100%;
            height: 934px;
        }
        .auto-style2 {
            height: 131px;
        }
        .auto-style3 {
            height: 131px;
            width: 170px;
        }
        .auto-style4 {
            width: 170px;
        }
        .auto-style5 {
            height: 131px;
            width: 888px;
        }
        .auto-style6 {
            width: 888px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style3"></td>
                    <td class="auto-style5"></td>
                    <td class="auto-style2"></td>
                </tr>
                <tr>
                    <td class="auto-style4">&nbsp;</td>
                    <td class="auto-style6">
                        <br />
                        <br />
                        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataSourceID="SqlDataSource1" ForeColor="Black" GridLines="Vertical" Height="386px" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" Width="880px" DataKeyNames="id">
                            <AlternatingRowStyle BackColor="White" />
                            <Columns>
                                <asp:BoundField DataField="id" HeaderText="留言帳號" ReadOnly="True" SortExpression="id">
                                <ControlStyle Height="50px" />
                                <HeaderStyle Height="40px" />
                                <ItemStyle HorizontalAlign="Center" />
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
                                <asp:CommandField ShowSelectButton="True">
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
                        <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" CellPadding="4" DataKeyNames="id" DataSourceID="SqlDataSource2" ForeColor="#333333" GridLines="None" Height="479px" OnItemCommand="DetailsView1_ItemCommand" Width="867px">
                            <AlternatingRowStyle BackColor="White" />
                            <CommandRowStyle BackColor="#C5BBAF" Font-Bold="True" />
                            <EditRowStyle BackColor="#7C6F57" />
                            <FieldHeaderStyle BackColor="#D0D0D0" Font-Bold="True" />
                            <Fields>
                                <asp:BoundField DataField="id" HeaderText="ID" ReadOnly="True" SortExpression="id">
                                <HeaderStyle Width="100px" />
                                <ItemStyle HorizontalAlign="Center" />
                                </asp:BoundField>
                                <asp:BoundField DataField="name" HeaderText="留言者" SortExpression="name" ReadOnly="True" >
                                <ItemStyle HorizontalAlign="Center" />
                                </asp:BoundField>
                                <asp:BoundField DataField="head" HeaderText="標題" SortExpression="head" ReadOnly="True" >
                                <ItemStyle HorizontalAlign="Center" />
                                </asp:BoundField>
                                <asp:BoundField DataField="conten" HeaderText="內容" SortExpression="conten" ReadOnly="True" >
                                <ItemStyle HorizontalAlign="Center" />
                                </asp:BoundField>
                                <asp:BoundField DataField="date" HeaderText="日期" SortExpression="date" ReadOnly="True" >
                                <ItemStyle HorizontalAlign="Center" />
                                </asp:BoundField>
                                <asp:BoundField DataField="feedback" HeaderText="回覆" NullDisplayText="尚未回覆" SortExpression="feedback" >
                                <ItemStyle HorizontalAlign="Center" />
                                </asp:BoundField>
                                <asp:ButtonField CommandName="return" Text="返回" />
                                <asp:CommandField EditText="管理者回覆" ShowEditButton="True" />
                            </Fields>
                            <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                            <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                            <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
                            <RowStyle BackColor="#E3EAEB" />
                        </asp:DetailsView>
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:memberConnectionString1 %>" SelectCommand="SELECT * FROM [board]" DeleteCommand="DELETE FROM [board] WHERE [id] = @id" InsertCommand="INSERT INTO [board] ([id], [name], [head], [conten], [date], [feedback]) VALUES (@id, @name, @head, @conten, @date, @feedback)" UpdateCommand="UPDATE [board] SET [name] = @name, [head] = @head, [conten] = @conten, [date] = @date, [feedback] = @feedback WHERE [id] = @id">
                            <DeleteParameters>
                                <asp:Parameter Name="id" Type="String" />
                            </DeleteParameters>
                            <InsertParameters>
                                <asp:Parameter Name="id" Type="String" />
                                <asp:Parameter Name="name" Type="String" />
                                <asp:Parameter Name="head" Type="String" />
                                <asp:Parameter Name="conten" Type="String" />
                                <asp:Parameter Name="date" Type="DateTime" />
                                <asp:Parameter Name="feedback" Type="Object" />
                            </InsertParameters>
                            <UpdateParameters>
                                <asp:Parameter Name="name" Type="String" />
                                <asp:Parameter Name="head" Type="String" />
                                <asp:Parameter Name="conten" Type="String" />
                                <asp:Parameter Name="date" Type="DateTime" />
                                <asp:Parameter Name="feedback" Type="Object" />
                                <asp:Parameter Name="id" Type="String" />
                            </UpdateParameters>
                        </asp:SqlDataSource>
                        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:memberConnectionString1 %>" DeleteCommand="DELETE FROM [board] WHERE [id] = @id" InsertCommand="INSERT INTO [board] ([id], [name], [head], [conten], [date], [feedback]) VALUES (@id, @name, @head, @conten, @date, @feedback)" SelectCommand="SELECT * FROM [board]" UpdateCommand="UPDATE [board] SET [name] = @name, [head] = @head, [conten] = @conten, [date] = @date, [feedback] = @feedback WHERE [id] = @id">
                            <DeleteParameters>
                                <asp:Parameter Name="id" Type="String" />
                            </DeleteParameters>
                            <InsertParameters>
                                <asp:Parameter Name="id" Type="String" />
                                <asp:Parameter Name="name" Type="String" />
                                <asp:Parameter Name="head" Type="String" />
                                <asp:Parameter Name="conten" Type="String" />
                                <asp:Parameter Name="date" Type="DateTime" />
                                <asp:Parameter Name="feedback" Type="Object" />
                            </InsertParameters>
                            <UpdateParameters>
                                <asp:Parameter Name="name" Type="String" />
                                <asp:Parameter Name="head" Type="String" />
                                <asp:Parameter Name="conten" Type="String" />
                                <asp:Parameter Name="date" Type="DateTime" />
                                <asp:Parameter Name="feedback" Type="Object" />
                                <asp:Parameter Name="id" Type="String" />
                            </UpdateParameters>
                        </asp:SqlDataSource>
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
                        <br />
                    </td>
                    <td>&nbsp;</td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
