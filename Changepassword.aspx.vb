Imports System.Data.OleDb

Public Class Changepassword
    Inherits System.Web.UI.Page
    Dim cn As New OleDbConnection("Provider=Microsoft.Jet.OLEDB.4.0;Data Source=C:\Users\HEETDAYANI\Desktop\Projects\Database1.mdb")
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub Button10_Click(sender As Object, e As EventArgs) Handles Button10.Click
        cn.Open()
        Try
            If (Adminid.Text = "" Or Adminpassword.Text = "") Then
                MsgBox("Please enter all details.", MsgBoxStyle.Exclamation)
            Else
                Dim cmd As New OleDbCommand("update adminlogindetails set adminid='" & Adminid.Text & "', adminpassword='" & Adminpassword.Text & "' ", cn)
                cmd.ExecuteNonQuery()
                MsgBox("Login details changed successfully.", MsgBoxStyle.Information)
                Adminid.Text = ""
                Adminpassword.Text = ""

            End If
        Catch ex As Exception
            MsgBox("Error! Please try again.", MsgBoxStyle.Exclamation)
        End Try
        cn.Close()
    End Sub
End Class