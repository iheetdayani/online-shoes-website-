Imports System.Data.OleDb
Public Class addQuentity
    Inherits System.Web.UI.Page
    Dim cn As New OleDbConnection("Provider=Microsoft.Jet.OLEDB.4.0;Data Source=C:\Users\HEETDAYANI\Desktop\Projects\Database1.mdb")
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub Button9_Click(sender As Object, e As EventArgs) Handles Button9.Click
        Try
            Dim str As String
            Dim ans As Integer
            str = "insert into Table4 values('" & DropDownList2.Text & "','" & txtquan.Text & "')"
            cn.Open()
            Dim cmd As New OleDbCommand(str, cn)
            ans = cmd.ExecuteNonQuery
            MsgBox("Quentity Added sucessfully", MsgBoxStyle.Information)
            'GridView1.DataBind()
            cn.Close()
        Catch ex As Exception
            MsgBox(ex.ToString)
        End Try
    End Sub
End Class