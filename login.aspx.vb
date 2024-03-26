Imports System.Data.OleDb
Public Class login1
    Inherits System.Web.UI.Page
    Dim cn As New OleDbConnection("Provider=Microsoft.Jet.OLEDB.4.0;Data Source=C:\Users\HEETDAYANI\Desktop\Projects\Database1.mdb")
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub TextBox1_TextChanged(sender As Object, e As EventArgs) Handles adminpassword.TextChanged

    End Sub

    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        cn.Open()
        Try
            If (AdminID.Text = "" Or AdminPassword.Text = "") Then
                MsgBox("Error! Admin ID or Password is not provided", MsgBoxStyle.Exclamation)
            Else
                Dim str As String = "select * from adminlogindetails where adminid='" & AdminID.Text & "' and adminpassword='" & AdminPassword.Text & "' "
                Dim cmd As New OleDbCommand(str, cn)
                Dim dr As OleDbDataReader
                dr = cmd.ExecuteReader()
                If dr.HasRows Then
                    Session("adminid") = AdminID.Text
                    MsgBox("Admin Login Successful.", MsgBoxStyle.Information)
                    Response.Redirect("Additem.aspx")
                    adminid.Text = ""
                    AdminPassword.Text = ""
                Else
                    MsgBox("Admin Login Unsuccessful.", MsgBoxStyle.Exclamation)
                End If
            End If
        Catch ex As Exception

        End Try
        cn.Close()
    End Sub
End Class