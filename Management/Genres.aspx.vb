Imports System.Data
Partial Class Management_Genres
    Inherits System.Web.UI.Page

    Protected Sub GridView1_RowDataBound(sender As Object, e As GridViewRowEventArgs) Handles GridView1.RowDataBound
        Select Case e.Row.RowType
            Case DataControlRowType.DataRow
                Dim myRowView As DataRowView = CType(e.Row.DataItem, DataRowView)
                If Convert.ToInt32(myRowView("NumberOfReviews")) > 0 Then
                    Dim deleteLink As LinkButton =
                    TryCast(e.Row.FindControl("DeleteLink"), LinkButton)
                    If deleteLink IsNot Nothing Then
                        deleteLink.Enabled = False
                    End If
                End If
        End Select
    End Sub
End Class
