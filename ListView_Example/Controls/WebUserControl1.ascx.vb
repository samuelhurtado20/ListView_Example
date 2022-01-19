Public Class WebUserControl1
	Inherits System.Web.UI.UserControl

	Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
		Dim dt As New DataTable()
		If Not Me.IsPostBack Then
			dt.Columns.AddRange(New DataColumn(2) {New DataColumn("Type"), New DataColumn("Size"), New DataColumn("Amount")})
			ViewState("Customers") = dt
			Me.BindGrid()
		End If

		DropDownList1.Items.Add(New ListItem("Shirt", 1))
		DropDownList1.Items.Add(New ListItem("Pant", 2))
		DropDownList1.Items.Add(New ListItem("Short", 3))
		DropDownList1.Items.Add(New ListItem("Skirt", 4))

		DropDownList2.Items.Add(New ListItem("SS", 1))
		DropDownList2.Items.Add(New ListItem("S", 2))
		DropDownList2.Items.Add(New ListItem("M", 3))
		DropDownList2.Items.Add(New ListItem("L", 4))
		DropDownList2.Items.Add(New ListItem("XL", 4))
		DropDownList2.Items.Add(New ListItem("XXL", 4))

		'Dim ds As New DataSet()
		'Dim dt As New DataTable()
		'dt.Columns.Add("aaaa")
		'dt.Columns.Add("bbbb")
		'dt.Columns.Add("cccc")
		'ds.Tables.Add(dt)

	End Sub

	Public Sub BindGrid()
		GridView1.DataSource = DirectCast(ViewState("Customers"), DataTable)
		GridView1.DataBind()
	End Sub

	Public Sub Insert(sender As Object, e As EventArgs)
		Dim dt As DataTable = DirectCast(ViewState("Customers"), DataTable)
		dt.Rows.Add(DropDownList1.SelectedItem.Text.Trim(), DropDownList2.SelectedItem.Text.Trim(), TextBox1.Text.Trim())
		ViewState("Customers") = dt
		Me.BindGrid()
		txtName.Text = String.Empty
		txtCountry.Text = String.Empty
	End Sub

	Protected Sub DropDownList1_SelectedIndexChanged(sender As Object, e As EventArgs) Handles DropDownList1.SelectedIndexChanged

	End Sub

	Protected Sub DropDownList2_SelectedIndexChanged(sender As Object, e As EventArgs) Handles DropDownList2.SelectedIndexChanged

	End Sub

	Protected Sub TextBox1_TextChanged(sender As Object, e As EventArgs) Handles TextBox1.TextChanged

	End Sub

	Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click

	End Sub

End Class