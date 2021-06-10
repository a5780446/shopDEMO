<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="upload.aspx.cs" Inherits="shopDEMO.upload" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:FileUpload ID="FileUpload1" runat="server" />
            <br />
            <br />
            <asp:FileUpload ID="FileUpload2" runat="server" />
            <br />
            <br />
            <asp:FileUpload ID="FileUpload3" runat="server" />
            <br />
            <br />
            <br />
            <asp:Button ID="Button1" runat="server" Height="36px" OnClick="Button1_Click" Text="上傳" Width="109px" />
            <br />
            <br />
            <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
            <br />
            <br />
            <asp:Panel ID="Panel1" runat="server">
                檔案數目:&nbsp;
                <asp:Label ID="count" runat="server"></asp:Label>
                <br />
                檔案名稱:&nbsp;
                <asp:Label ID="name" runat="server"></asp:Label>
                <br />
                檔案大小:&nbsp;
                <asp:Label ID="size" runat="server"></asp:Label>
                <br />
                檔案類型:&nbsp;
                <asp:Label ID="type" runat="server"></asp:Label>
            </asp:Panel>
        </div>
    </form>
</body>
</html>
