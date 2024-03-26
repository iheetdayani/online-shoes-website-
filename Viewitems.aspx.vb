Imports System.Data.OleDb
Public Class Viewitems
    Inherits System.Web.UI.Page
    Dim cn As New OleDbConnection("Provider=Microsoft.Jet.OLEDB.4.0;Data Source=C:\Users\HEETDAYANI\Desktop\Projects\Database1.mdb")
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        'Try
        cn.Open()
        Dim cmd As New OleDbCommand("select * from items", cn)
        Dim dr As OleDbDataReader = cmd.ExecuteReader
        If dr.HasRows Then
            DataList1.DataSource = dr
            DataList1.DataBind()
        Else
            Label1.Text = "No items Found."
        End If
        'Catch ex As Exception
        'MsgBox("Error", MsgBoxStyle.Exclamation)
        'End Try
        cn.Close()
    End Sub

End Class