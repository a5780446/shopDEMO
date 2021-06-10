<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="createID.aspx.cs" Inherits="shopDEMO.WebForm2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
            height: 681px;
        }
        .auto-style2 {
            height: 95px;
        }
        .auto-style3 {
            height: 95px;
            width: 806px;
        }
        .auto-style4 {
            width: 806px;
        }
        .auto-style5 {
            height: 95px;
            width: 269px;
        }
        .auto-style6 {
            width: 269px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style5"></td>
                    <td class="auto-style3"></td>
                    <td class="auto-style2"></td>
                </tr>
                <tr>
                    <td class="auto-style6">&nbsp;</td>
                    <td class="auto-style4">
            <asp:Panel ID="Panel1" runat="server" Height="455px" Width="766px">
                <br />
                <br />
                &nbsp; 建立帳號:&nbsp;
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
&nbsp;
                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="TextBox1" ErrorMessage="格式錯誤" ForeColor="Red" ValidationExpression="[a-zA-Z0-9]{5,10}"></asp:RegularExpressionValidator>
                <br />
                <br />
                &nbsp; 建立密碼:&nbsp;&nbsp;<asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                &nbsp;
                <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="TextBox2" ErrorMessage="格式錯誤" ForeColor="Red" ValidationExpression="[a-zA-Z0-9]{5,10}"></asp:RegularExpressionValidator>
                <br />
                <br />
                &nbsp; 確認密碼:&nbsp;
                <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                &nbsp;
                <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="TextBox2" ControlToValidate="TextBox3" ErrorMessage="密碼不一致" ForeColor="Red"></asp:CompareValidator>
                <br />
                <br />
                <br />
                &nbsp; 姓名:&nbsp;
                <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                &nbsp; (必填)&nbsp;
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox4" ErrorMessage="必填項目" ForeColor="Red"></asp:RequiredFieldValidator>
                <br />
                <br />
                &nbsp; 連絡電話:&nbsp;
                <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
                &nbsp; (必填)&nbsp;
                <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" ControlToValidate="TextBox5" ErrorMessage="行動電話格式錯誤" ForeColor="#FF3300" ValidationExpression="[0-9]{10}"></asp:RegularExpressionValidator>
                <br />
                <br />
                &nbsp; 地址:&nbsp;
                <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
                <br />
                <br />
                &nbsp; 性別:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:RadioButtonList ID="RadioButtonList1" runat="server" RepeatDirection="Horizontal">
                    <asp:ListItem>男</asp:ListItem>
                    <asp:ListItem>女</asp:ListItem>
                    <asp:ListItem>不透漏</asp:ListItem>
                </asp:RadioButtonList>
                &nbsp;<br />
                <asp:Button ID="Button1" runat="server" BackColor="#FFCC00" Height="45px" OnClick="Button1_Click" Text="提交" Width="121px" />
                <br />
                <br />
            </asp:Panel>
                    </td>
                    <td>&nbsp;</td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
