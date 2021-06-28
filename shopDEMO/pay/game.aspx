<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="game.aspx.cs" Inherits="shopDEMO.pay.game" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
            height: 1007px;
        }
        .auto-style2 {
            width: 1148px;
            text-align: center;
        }
        .auto-style3 {
            height: 83px;
        }
        .auto-style4 {
            width: 1148px;
            height: 83px;
        }
        .auto-style5 {
            height: 83px;
            width: 62px;
        }
        .auto-style6 {
            width: 62px;
        }
        .auto-style7 {
            width: 100%;
        }
        .auto-style8 {
            width: 400px;
        }
        .auto-style9 {
            width: 414px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style5"></td>
                    <td class="auto-style4"></td>
                    <td class="auto-style3"></td>
                </tr>
                <tr>
                    <td class="auto-style6">&nbsp;</td>
                    <td class="auto-style2">
                        <table class="auto-style7">
                            <tr>
                                <td class="auto-style8">
                                    <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/pic/qq.png" OnClick="ImageButton1_Click" Width="280px" />
                                </td>
                                <td class="auto-style9">
                                    <asp:ImageButton ID="ImageButton2" runat="server" ImageUrl="~/pic/qq.png" OnClick="ImageButton2_Click" Width="280px" />
                                </td>
                                <td>
                                    <asp:ImageButton ID="ImageButton3" runat="server" ImageUrl="~/pic/qq.png" OnClick="ImageButton3_Click" Width="280px" />
                                </td>
                            </tr>
                        </table>
                        <br />
                        <br />
                        <asp:Button ID="Button1" runat="server" Height="70px" OnClick="Button1_Click" Text="返回結帳" Width="135px" />
                    </td>
                    <td>&nbsp;</td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
