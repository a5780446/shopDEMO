<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="backsingin.aspx.cs" Inherits="shopDEMO.backsingin" %>

<%@ Register assembly="System.Web.DataVisualization, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" namespace="System.Web.UI.DataVisualization.Charting" tagprefix="asp" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
            height: 785px;
        }
        .auto-style2 {
            width: 219px;
        }
        .auto-style3 {
            width: 713px;
        }
        .auto-style4 {
            margin-left: 0px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style3">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style3">
                        <asp:Panel ID="Panel1" runat="server" BackColor="Silver" Height="341px" HorizontalAlign="Center">
                            <br />
                            <br />
                            後端管理系統登入<br /> 
                            <br />
                            管理員帳號 :<asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                            <br />
                            <br />
                            管理員密碼:<asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                            <br />
                            <br />
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:Button ID="Button1" runat="server" CssClass="auto-style4" Height="66px" OnClick="Button1_Click" Text="進入後端系統" Width="193px" />
                            &nbsp;&nbsp;
                            <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="放棄" />
                            <br />
                            <asp:Label ID="Label2" runat="server"></asp:Label>
                        </asp:Panel>
                    </td>
                    <td>&nbsp;</td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
