<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="homepage.aspx.cs" Inherits="shopDEMO.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
            margin-right: 176px;
        }
        .auto-style2 {
            height: 645px;
        }
        .auto-style3 {
            width: 161px;
            height: 102px;
        }
        .auto-style4 {
            height: 645px;
            width: 161px;
        }
        .auto-style5 {
            width: 907px;
            height: 102px;
        }
        .auto-style6 {
            height: 645px;
            width: 907px;
        }
        .auto-style7 {
            height: 102px;
        }
    </style>
    </head>
<body>
    <form id="form1" runat="server">
        <div>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style3">
                        <asp:Panel ID="Panel1" runat="server" Height="160px">
                            <asp:Button ID="Button2" runat="server" PostBackUrl="~/singin.aspx" Text="登入" />
                            <br />
                            <asp:Label ID="Label1" runat="server"></asp:Label>
                            <br />
                            <br />
                            <asp:Button ID="Button4" runat="server" OnClick="Button4_Click" Text="訪客留言" />
                        </asp:Panel>
                    </td>
                    <td class="auto-style5">
                        <asp:Image ID="Image2" runat="server" Height="236px" ImageUrl="~/pic/homelogo.jpg" Width="903px" />
                    </td>
                    <td class="auto-style7">
                        <asp:Panel ID="Panel3" runat="server" Height="140px">
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" Text="管理員登入" />
                        </asp:Panel>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4">
                        <asp:Panel ID="Panel2" runat="server" Height="632px">
                            <br />
                            <br />
                            <br />
                            <asp:Menu ID="Menu1" runat="server" DataSourceID="SiteMapDataSource1" Orientation="Horizontal">
                            </asp:Menu>
                        </asp:Panel>
                    </td>
                    <td class="auto-style6"></td>
                    <td class="auto-style2"></td>
                </tr>
            </table>
        </div>
                <asp:SiteMapDataSource ID="SiteMapDataSource1" runat="server" />
    </form>
</body>
</html>
