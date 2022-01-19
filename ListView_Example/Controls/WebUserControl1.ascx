<%@ Control Language="vb" AutoEventWireup="false" CodeBehind="WebUserControl1.ascx.vb" Inherits="ListView_Example.WebUserControl1" %>
<asp:DropDownList ID="DropDownList1" runat="server" Height="29px" Width="185px">
</asp:DropDownList>
&nbsp;&nbsp;&nbsp;&nbsp;
<asp:DropDownList ID="DropDownList2" runat="server" Height="24px" Width="183px">
</asp:DropDownList>
&nbsp;&nbsp;&nbsp;
<asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
&nbsp;&nbsp;&nbsp;
<asp:Button ID="Button1" runat="server" Text="Add" Width="84px" OnClick="Insert" />


	
    <%--<form id="form1" runat="server">--%>
    <asp:GridView ID="GridView1" runat="server" CssClass="Grid" AutoGenerateColumns="false"
        EmptyDataText="No records has been added.">
        <Columns>
            <asp:BoundField DataField="Type" HeaderText="Type" ItemStyle-Width="120" />
            <asp:BoundField DataField="Size" HeaderText="Size" ItemStyle-Width="120" />
            <asp:BoundField DataField="Amount" HeaderText="Amount" ItemStyle-Width="120" />
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
    <%--</form>--%>