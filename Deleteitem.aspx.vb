Imports System.Data.OleDb
Public Class Deleteitem
    Inherits System.Web.UI.Page
    Dim cn As New OleDbConnection("Provider=Microsoft.Jet.OLEDB.4.0;Data Source=C:\Users\HEETDAYANI\Desktop\Projects\Database1.mdb")
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        'Try
        Dim itemid As String = Request.QueryString("itemid")
        cn.Open()
        Dim cmd As New OleDbCommand("delete from items where itemid='" & itemid & "' ", cn)
        cmd.ExecuteNonQuery()
        MsgBox("item Deleted.", MsgBoxStyle.Information)
        Response.Redirect("viewitems.aspx")
        'Catch ex As Exception

        'End Try
        cn.Close()
    End Sub

End Class