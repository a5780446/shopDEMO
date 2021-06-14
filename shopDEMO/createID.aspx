<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="createID.aspx.cs" Inherits="shopDEMO.WebForm2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
            height: 987px;
        }
        .auto-style2 {
            height: 130px;
        }
        .auto-style3 {
            height: 130px;
            width: 806px;
        }
        .auto-style4 {
            width: 806px;
            height: 836px;
        }
        .auto-style5 {
            height: 130px;
            width: 269px;
        }
        .auto-style6 {
            width: 269px;
            height: 836px;
        }
        .auto-style8 {
            height: 836px;
        }
        .auto-style9 {
            width: 100%;
        }
        .auto-style10 {
            height: 220px;
        }
        .auto-style7 {
            margin-top: 0px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table class="auto-style1" style="border-color: #FFCC66; background-color: #FFCC66">
                <tr>
                    <td class="auto-style5"></td>
                    <td class="auto-style3"></td>
                    <td class="auto-style2"></td>
                </tr>
                <tr>
                    <td class="auto-style6"></td>
                    <td class="auto-style4">
                        <table class="auto-style9">
                            <tr>
                                <td>
            <asp:Panel ID="Panel1" runat="server" Height="558px" Width="766px" CssClass="auto-style7">
                <br />
                <br />
                &nbsp;&nbsp;&nbsp;<asp:Image ID="Image2" runat="server" Height="48px" ImageUrl="~/images/logo-footer.gif" Width="227px" />
                <br />
                <br />
                <br />
                <br />
                &nbsp; 建立帳號:&nbsp;
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                &nbsp;
                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="TextBox1" ErrorMessage="格式錯誤" ForeColor="Red" ValidationExpression="[a-zA-Z0-9]{5,10}"></asp:RegularExpressionValidator>
                <br />
                <br />
                &nbsp; 建立密碼:&nbsp;&nbsp;<asp:TextBox ID="TextBox2" runat="server" TextMode="Password"></asp:TextBox>
                &nbsp;
                <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="TextBox2" ErrorMessage="格式錯誤" ForeColor="Red" ValidationExpression="[a-zA-Z0-9]{5,10}"></asp:RegularExpressionValidator>
                <br />
                <br />
                &nbsp; 確認密碼:&nbsp;
                <asp:TextBox ID="TextBox3" runat="server" TextMode="Password"></asp:TextBox>
                &nbsp;
                <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="TextBox2" ControlToValidate="TextBox3" ErrorMessage="密碼不一致" ForeColor="Red"></asp:CompareValidator>
                <br />
                <br />
                <br />
                &nbsp; 姓名:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                &nbsp; (必填)&nbsp;
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox4" ErrorMessage="必填項目" ForeColor="Red"></asp:RequiredFieldValidator>
                <br />
                <br />
                &nbsp; 連絡電話:&nbsp;
                <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
                &nbsp; (必填)&nbsp;
                <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" ControlToValidate="TextBox5" ErrorMessage="行動電話格式錯誤" ForeColor="#FF3300" ValidationExpression="[0-9]{10}"></asp:RegularExpressionValidator>
                &nbsp;<br /> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox5" ErrorMessage="不能為空" ForeColor="Red"></asp:RequiredFieldValidator>
                <br />
                &nbsp; 地址:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
                <br />
                <br />
                &nbsp; 性別:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:RadioButtonList ID="RadioButtonList1" runat="server" RepeatDirection="Horizontal">
                    <asp:ListItem>男</asp:ListItem>
                    <asp:ListItem>女</asp:ListItem>
                    <asp:ListItem>不透漏</asp:ListItem>
                </asp:RadioButtonList>
                &nbsp;<br />
                <asp:Button ID="Button1" runat="server" BackColor="#99CC00" Height="45px" OnClick="Button1_Click" Text="提交" Width="121px" />
                &nbsp;
                <asp:Button ID="Button2" runat="server" BackColor="#99FF33" PostBackUrl="~/homepage.aspx" Text="放棄" Width="74px" />
                <br />
                <br />
            </asp:Panel>
                                </td>
                            </tr>
                            <tr>
                                <td>&nbsp;</td>
                            </tr>
                            <tr>
                                <td class="auto-style10"></td>
                            </tr>
                        </table>
                    </td>
                    <td class="auto-style8"></td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
