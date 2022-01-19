'Imports System.Data

'Partial Class VB
'    Inherits System.Web.UI.Page

'	Public Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load
'		If Not Me.IsPostBack Then
'			Dim dt As New DataTable()
'			dt.Columns.AddRange(New DataColumn(1) {New DataColumn("Name"), New DataColumn("Country")})
'			ViewState("Customers") = dt
'			Me.BindGrid()
'		End If
'	End Sub

'	Public Sub BindGrid()
'		GridView1.DataSource = DirectCast(ViewState("Customers"), DataTable)
'		GridView1.DataBind()
'	End Sub

'	Public Sub Insert(sender As Object, e As EventArgs)
'		Dim dt As DataTable = DirectCast(ViewState("Customers"), DataTable)
'		dt.Rows.Add(txtName.Text.Trim(), txtCountry.Text.Trim())
'		ViewState("Customers") = dt
'		Me.BindGrid()
'		txtName.Text = String.Empty
'		txtCountry.Text = String.Empty
'	End Sub
'End Class
