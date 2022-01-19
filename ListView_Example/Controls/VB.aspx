<%@ Page Language="VB" AutoEventWireup="false" CodeFile="VB.aspx.vb" Inherits="VB" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title></title>
    <style type="text/css">
        body
        {
            font-family: Arial;
            font-size: 10pt;
        }
        .Grid
        {
            border: 1px solid #ccc;
            margin-bottom: -1px;
        }
        .Grid th
        {
            background-color: #F7F7F7;
            color: #333;
            font-weight: bold;
        }
        .Grid th, .Grid td
        {
            padding: 5px;
            border-color: #ccc;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <asp:GridView ID="GridView1" runat="server" CssClass="Grid" AutoGenerateColumns="false"
        EmptyDataText="No records has been added.">
        <Columns>
            <asp:BoundField DataField="Name" HeaderText="Name" ItemStyle-Width="120" />
            <asp:BoundField DataField="Country" HeaderText="Country" ItemStyle-Width="120" />
        </Columns>
    </asp:GridView>
    <br />
    <table border="0" cellpadding="0" cellspacing="0" style="border-collapse: collapse">
        <tr>
            <td style="padding-bottom: 10px">
                Name:<br />
                <asp:TextBox ID="txtName" runat="server" />
            </td>
        </tr>
        <tr>
            <td style="padding-bottom: 10px">
                Country:<br />
                <asp:TextBox ID="txtCountry" runat="server" />
            </td>
        </tr>
        <tr>
            <td style="width: 100px">
                <asp:Button ID="btnAdd" runat="server" Text="Add" OnClick="Insert" />
            </td>
        </tr>
    </table>
    </form>
</body>
</html>
