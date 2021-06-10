<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="createProduct.aspx.cs" Inherits="shopDEMO.back.createProduct" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            height: 610px;
        }
        .auto-style2 {
            width: 100%;
            height: 610px;
        }
        .auto-style3 {
            height: 84px;
        }
        .auto-style4 {
            height: 84px;
            width: 231px;
        }
        .auto-style5 {
            width: 231px;
        }
        .auto-style6 {
            height: 84px;
            width: 845px;
        }
        .auto-style7 {
            width: 845px;
        }
        .auto-style8 {
            text-align: center;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server" class="auto-style1">
        <div>
            <table class="auto-style2">
                <tr>
                    <td class="auto-style4"></td>
                    <td class="auto-style6"></td>
                    <td class="auto-style3"></td>
                </tr>
                <tr>
                    <td class="auto-style5">&nbsp;</td>
                    <td class="auto-style7">
                        <asp:Panel ID="Panel1" runat="server" Height="520px">
                            <div class="auto-style8">
                                <br />
                                <br />
                                <br />
                                商品編號 :
                                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                                <br />
                                <br />
                                商品名稱 :
                                <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                                <br />
                                <br />
                                商品尺寸 :
                                <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                                <br />
                                <br />
                                商品顏色 :
                                <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                                <br />
                                <br />
                                商品數量 :
                                <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
                                <br />
                                <br />
                                商品價格 :
                                <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
                                <br />
                                <br />
                                <br />
                                商品圖片:
                                <asp:FileUpload ID="FileUpload1" runat="server" />
&nbsp;<br /> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <asp:Label ID="Label1" runat="server" ForeColor="Black" Text="Label"></asp:Label>
                                &nbsp;
                                <asp:Label ID="Label2" runat="server" ForeColor="Red" Text="Label"></asp:Label>
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="上傳" />
                                <br />
                                <br />
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <asp:Button ID="Button1" runat="server" Height="50px" OnClick="Button1_Click" Text="新增" Width="117px" />
                            </div>
                        </asp:Panel>
                    </td>
                    <td>&nbsp;</td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
