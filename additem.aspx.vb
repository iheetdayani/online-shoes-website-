Imports System.Data.OleDb
Imports System.IO
Public Class additem
    Inherits System.Web.UI.Page
    Dim cn As New OleDbConnection("Provider=Microsoft.Jet.OLEDB.4.0;Data Source=C:\Users\HEETDAYANI\Desktop\Projects\Database1.mdb")
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        'If (Session("adminid") = "") Then
        '    Response.Redirect("../loginpage.aspx")
        'End If

        'Dim category As String = Request.QueryString("category")
        'DropDownList2.Text = category

    End Sub

    Protected Sub Button9_Click(sender As Object, e As EventArgs) Handles Button9.Click
        cn.Open()
        'Try


        If (TXTITEMID.Text = "" Or txtiname.Text = "" Or txtprice.Text = "please enter the price" Or imagefile1.HasFile = False Or txtquan.Text = "") Then
                MsgBox("Error! Please enter all details.", MsgBoxStyle.Exclamation)
            Else
                Dim cmd As New OleDbCommand("select * from items where itemid='" & TXTITEMID.Text & "' ", cn)
                Dim dr As OleDbDataReader = cmd.ExecuteReader
                If dr.HasRows Then
                    MsgBox("Error! ITEMID already exists. Please enter different itemid.", MsgBoxStyle.Exclamation)
                Else
                Dim extension As String = Path.GetExtension(imagefile1.FileName)
                If (extension = ".png") Then
                        Dim fname As String = Path.GetFileName(imagefile1.FileName)
                        Dim cmd1 As New OleDbCommand("select * from items where image='" & fname & "' ", cn)
                        Dim dr1 As OleDbDataReader = cmd1.ExecuteReader()
                        If dr1.HasRows Then
                            MsgBox("Error ! Please change name of the Image File.", MsgBoxStyle.Exclamation)
                        Else
                        imagefile1.SaveAs(Server.MapPath("../imag/shoes/" + fname))
                        cn.Close()
                            Dim str As String
                        str = "insert into items values('" & TXTITEMID.Text & "', '" & txtiname.Text & "','" & Txtdesc.Text & "'," & txtprice.Text & ",'" & txtquan.Text & "','" & fname & "','" & DropDownList2.Text & "','" & DropDownList1.Text & "')"
                        cn.Open()
                            Dim cmd2 As New OleDbCommand(str, cn)
                            cmd2.ExecuteNonQuery()
                            MsgBox("Record Inserted.", MsgBoxStyle.Information)
                            TXTITEMID.Text = ""
                            txtiname.Text = ""
                            DropDownList1.Text = "--select Category--"
                            txtprice.Text = ""

                        End If
                    Else
                        MsgBox("Only .png files are allowed.", MsgBoxStyle.Exclamation)
                    End If

                End If
            End If
        'Catch ex As Exception

        'End Try
        cn.Close()
    End Sub
End Class