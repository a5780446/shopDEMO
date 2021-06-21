<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="backsingin.aspx.cs" Inherits="shopDEMO.backsingin" %>

<%@ Register assembly="System.Web.DataVisualization, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" namespace="System.Web.UI.DataVisualization.Charting" tagprefix="asp" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style5 {
            text-align: center;
        }
        .auto-style6 {
            width: 100%;
            height: 417px;
            margin-top: 0px;
        }
        .auto-style8 {
            height: 56px;
        }
        .auto-style9 {
            height: 56px;
            width: 465px;
        }
        .auto-style10 {
            width: 465px;
        }
        .auto-style11 {
            height: 56px;
            width: 767px;
        }
        .auto-style12 {
            width: 767px;
        }
        .auto-style4 {
            margin-left: 0px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Panel ID="Panel1" runat="server" BackImageUrl="~/pic/1Vv10wqWn6_small.jpg" Height="1402px">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <div class="auto-style5">
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <table class="auto-style6">
                        <tr>
                            <td class="auto-style9"></td>
                            <td class="auto-style11"></td>
                            <td class="auto-style8"></td>
                        </tr>
                        <tr>
                            <td class="auto-style10">&nbsp;</td>
                            <td class="auto-style12">
                                <asp:Panel ID="Panel2" runat="server" BackColor="#999966" Height="336px" Width="434px">
                                    <br />
                                    後端管理系統登入<br /> 
                                    <br />
                                    管理員帳號 :<asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                                    <br />
                                    <br />
                                    管理員密碼:<asp:TextBox ID="TextBox2" runat="server" TextMode="Password"></asp:TextBox>
                                    <br />
                                    <br />
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    <asp:Button ID="Button1" runat="server" CssClass="auto-style4" Height="66px" OnClick="Button1_Click" Text="進入後端系統" Width="193px" />
                                    &nbsp;&nbsp;
                                    <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="放棄" />
                                    <br />
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    <asp:Label ID="Label2" runat="server" ForeColor="Red"></asp:Label>
                                    <br />
                                    <br />
                                    <br />
                                    <br />
                                    ID: A0001<br /> PSWD: 1210</asp:Panel>
                            </td>
                            <td>&nbsp;</td>
                        </tr>
                    </table>
                    <br />
                    <br />
                    <br />
                    &nbsp;&nbsp;
                    <br />
                </div>
            </asp:Panel>
        </div>
    </form>
</body>
</html>
