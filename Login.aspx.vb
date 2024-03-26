Imports System.Data.OleDb
Public Class Login
    Inherits System.Web.UI.Page
    Dim cn As New OleDbConnection("Provider=Microsoft.Jet.OLEDB.4.0;Data Source=C:\Users\HEETDAYANI\Desktop\Projects\Database1.mdb")
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub Button5_Click(sender As Object, e As EventArgs) Handles Button5.Click
        cn.Open()
        Try
            If (Customerid.Text = "" Or Password.Text = "") Then
                MsgBox("Error! Customer ID or Password is not provided", MsgBoxStyle.Exclamation)
            Else
                Dim str As String = "select * from customerslogindetails where customerid='" & customerid.Text & "' and customerpassword='" & password.Text & "' "
                Dim cmd As New OleDbCommand(str, cn)
                Dim dr As OleDbDataReader
                dr = cmd.ExecuteReader()
                If dr.HasRows Then
                    Session("customerid") = Customerid.Text
                    MsgBox("Customer Login Successful.", MsgBoxStyle.Information)
                    Response.Redirect("User/Default.aspx")
                    customerid.Text = ""
                    Password.Text = ""
                Else
                    MsgBox("Customer Login Unsuccessful.", MsgBoxStyle.Exclamation)
                End If
            End If
        Catch ex As Exception

        End Try
        cn.Close()
    End Sub
End Class
