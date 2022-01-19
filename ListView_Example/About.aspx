<%@ Page Title="About" Language="VB" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="About.aspx.vb" Inherits="ListView_Example.About" %>

<%@ Register src="Controls/WebUserControl1.ascx" tagname="WebUserControl1" tagprefix="uc1" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
	<%--<h2><%: Title %>.</h2>--%>
    <p>Your app description page.</p>
    <p>Use this area to provide additional information.</p>
	<p></p>
	<uc1:WebUserControl1 ID="WebUserControl11" runat="server" />
	<br />
	<br />
	<br />
</asp:Content>
