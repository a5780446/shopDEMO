<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="singin.aspx.cs" Inherits="shopDEMO.singin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
            height: 798px;
        }
        .auto-style2 {
            height: 109px;
        }
        .auto-style3 {
            height: 464px;
        }
        .auto-style4 {
            height: 109px;
            width: 272px;
        }
        .auto-style5 {
            height: 464px;
            width: 272px;
        }
        .auto-style6 {
            width: 272px;
        }
        .auto-style7 {
            height: 109px;
            width: 643px;
        }
        .auto-style8 {
            height: 464px;
            width: 643px;
        }
        .auto-style9 {
            width: 643px;
        }
        .auto-style10 {
            text-align: center;
        }
        .auto-style11 {
            height: 743px;
        }
        .auto-style12 {
            margin-left: 0px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="auto-style11">
            <table class="auto-style1" style="border-color: #FFCC66; background-color: #FFCC66">
                <tr>
                    <td class="auto-style4" style="border-color: #FFCC66"></td>
                    <td class="auto-style7" style="border-color: #FFCC66"></td>
                    <td class="auto-style2" style="border-color: #FFCC66"></td>
                </tr>
                <tr>
                    <td class="auto-style5" style="border-color: #FFCC66; font-family: 'Juice ITC';"></td>
                    <td class="auto-style8" style="border-color: #FFCC66; font-family: 'Juice ITC';">
                        <asp:Panel ID="Panel1" runat="server" BackColor="#FFCC66" Height="446px" CssClass="auto-style12">
                            <div class="auto-style10">
                                <br />
                                <asp:Image ID="Image2" runat="server" ImageUrl="~/images/logo-footer.gif" />
                                <br />
                                <br /> 
                                <br />
                                &nbsp;ID:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                                &nbsp;
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="帳號不能為空" ForeColor="Red" ValidationGroup="VG1"></asp:RequiredFieldValidator>
                                <br />
                                <br />
                                &nbsp;Password:&nbsp;
                                <asp:TextBox ID="TextBox2" runat="server" TextMode="Password"></asp:TextBox>
                                &nbsp;
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="密碼不能為空" ForeColor="Red" ValidationGroup="VG1"></asp:RequiredFieldValidator>
                                <br />
                                <br />
                                <asp:Label ID="Label1" runat="server"></asp:Label>
                                <br />
                                <br />
                                &nbsp;&nbsp;&nbsp;&nbsp;
                                <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/createID.aspx">加入會員</asp:HyperLink>
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <asp:Button ID="Button1" runat="server" Height="40px" OnClick="Button1_Click" Text="登入" Width="80px" BackColor="#FF9900" />
                                <br />
                                <br />
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <asp:Button ID="Button2" runat="server" Height="30px" OnClick="Button2_Click" Text="放棄" Width="77px" BackColor="#FF9900" />
                            </div>
                        </asp:Panel>
                    </td>
                    <td class="auto-style3" style="border-color: #FFCC66; font-family: 'Juice ITC';"></td>
                </tr>
                <tr>
                    <td class="auto-style6" style="border-color: #FFCC66">&nbsp;</td>
                    <td class="auto-style9" style="border-color: #FFCC66">&nbsp;</td>
                    <td style="border-color: #FFCC66">&nbsp;</td>
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
