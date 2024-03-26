Imports System.Data.OleDb
Public Class Registration
    Inherits System.Web.UI.Page
    Dim cn As New OleDbConnection("Provider=Microsoft.Jet.OLEDB.4.0;Data Source=C:\Users\HEETDAYANI\Desktop\Projects\Database1.mdb")
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub Button5_Click(sender As Object, e As EventArgs) Handles Button5.Click
        cn.Open()
        Try
            If (customerid.Text = "" Or txtname.Text = "" Or txtpass.Text = "" Or txtmo.Text = "" Or txtemail.Text = "" Or txtcity.Text = "" Or txtadd.Text = "select gender" Or txtppin.Text = "") Then
                MsgBox("Error! Please enter all details.", MsgBoxStyle.Exclamation)
            Else
                Dim cmd As New OleDbCommand("select * from Table1 where customerid='" & customerid.Text & "' ", cn)
                Dim dr As OleDbDataReader = cmd.ExecuteReader
                If dr.HasRows Then
                    MsgBox("Error! Customer ID already exist", MsgBoxStyle.Exclamation)
                Else
                    Dim str1 As String = "insert into Table1 values('" & customerid.Text & "','" & txtname.Text & "','" & txtadd.Text & "','" & txtcity.Text & "','" & txtppin.Text & "','" & RadioButton1.Text & "','" & txtmo.Text & "','" & txtemail.Text & "','" & txtpass.Text & "')"
                    Dim cmd1 As New OleDbCommand(str1, cn)
                    cmd1.ExecuteNonQuery()
                    Dim str2 As String = "insert into Table1 values('" & customerid.Text & "','" & txtpass.Text & "')"
                    Dim cmd2 As New OleDbCommand(str2, cn)
                    cmd2.ExecuteNonQuery()
                    MsgBox("You are successfully registered.", MsgBoxStyle.Information)
                    Response.Redirect("loginpage.aspx")
                    customerid.Text = ""
                    customerid.Text = ""
                    txtname.Text = ""
                    txtadd.Text = ""
                    txtcity.Text = ""
                    txtmo.Text = ""
                    txtemail.Text = ""
                    RadioButton1.Text = "select gender"
                    RadioButton2.Text = "select gender"
                    txtpass.Text = ""
                End If
            End If
        Catch ex As Exception

        End Try
        cn.Close()
    End Sub
End Class