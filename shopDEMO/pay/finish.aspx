<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="finish.aspx.cs" Inherits="shopDEMO.pay.finish" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
            height: 615px;
        }
        .auto-style2 {
            height: 93px;
        }
        .auto-style3 {
            height: 93px;
            width: 195px;
        }
        .auto-style4 {
            width: 195px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div style="background-color: #FFCC00; border-color: #FFCC00">
            <table class="auto-style1">
                <tr>
                    <td class="auto-style3" style="border-color: #FFCC00"></td>
                    <td class="auto-style2" style="border-color: #FFCC00"></td>
                    <td class="auto-style2" style="border-color: #FFCC00"></td>
                </tr>
                <tr>
                    <td class="auto-style4" style="background-color: #FFCC00">&nbsp;</td>
                    <td style="background-color: #FFCC00">
                        <br />
                        <asp:ImageButton ID="ImageButton1" runat="server" Height="188px" ImageUrl="~/images/bg-header.jpg" PostBackUrl="~/homepage.aspx" Width="526px" />
                        <br />
                        <br />
            <asp:Label ID="Label1" runat="server" Text="訂單已完成 , 感謝您的惠顧"></asp:Label>
                        <br />
                        <br />
                        <br />
                        您的訂單號碼為 :&nbsp;
                        <asp:Label ID="Label2" runat="server"></asp:Label>
                        <br />
                        <br />
                        <br />
                        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/homepage.aspx">盡快記下您的訂單號碼~</asp:HyperLink>
                        <br />
                        <br />
                    </td>
                    <td>&nbsp;</td>
                </tr>
            </table>
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
        </div>
    </form>
</body>
</html>
