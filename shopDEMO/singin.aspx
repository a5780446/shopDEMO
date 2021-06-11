<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="singin.aspx.cs" Inherits="shopDEMO.singin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
            height: 717px;
        }
        .auto-style2 {
            height: 109px;
        }
        .auto-style3 {
            height: 464px;
        }
        .auto-style4 {
            height: 109px;
            width: 343px;
        }
        .auto-style5 {
            height: 464px;
            width: 343px;
        }
        .auto-style6 {
            width: 343px;
        }
        .auto-style7 {
            height: 109px;
            width: 594px;
        }
        .auto-style8 {
            height: 464px;
            width: 594px;
        }
        .auto-style9 {
            width: 594px;
        }
        .auto-style10 {
            text-align: center;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style4"></td>
                    <td class="auto-style7"></td>
                    <td class="auto-style2"></td>
                </tr>
                <tr>
                    <td class="auto-style5"></td>
                    <td class="auto-style8">
                        <asp:Panel ID="Panel1" runat="server" BackColor="#CCCCCC" Height="446px">
                            <div class="auto-style10">
                                <br />
                                <br />
                                <br />
                                登入頁面<br /> 
                                <br />
                                &nbsp;帳號:&nbsp;
                                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                                &nbsp;
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="帳號不能為空" ForeColor="Red"></asp:RequiredFieldValidator>
                                <br />
                                <br />
                                &nbsp;密碼:&nbsp;
                                <asp:TextBox ID="TextBox2" runat="server" TextMode="Password"></asp:TextBox>
                                &nbsp;
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="密碼不能為空" ForeColor="Red"></asp:RequiredFieldValidator>
                                <br />
                                <br />
                                <asp:Label ID="Label1" runat="server"></asp:Label>
                                <br />
                                <br />
                                &nbsp;&nbsp;&nbsp;&nbsp;
                                <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/createID.aspx">加入會員</asp:HyperLink>
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <asp:Button ID="Button1" runat="server" Height="40px" OnClick="Button1_Click" Text="登入" Width="80px" />
                                <br />
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <asp:Button ID="Button2" runat="server" Height="30px" OnClick="Button2_Click" Text="放棄" Width="74px" />
                            </div>
                        </asp:Panel>
                    </td>
                    <td class="auto-style3"></td>
                </tr>
                <tr>
                    <td class="auto-style6">&nbsp;</td>
                    <td class="auto-style9">&nbsp;</td>
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
        <asp:Label ID="Label2" runat="server"></asp:Label>
    </form>
</body>
</html>
