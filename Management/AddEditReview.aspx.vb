
Partial Class Management_AddEditReview
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load
        If Request.QueryString.Get("Id") IsNot Nothing Then
            DetailsView1.DefaultMode = DetailsViewMode.Edit
        End If
    End Sub

    Private Sub EndEditing()
        Response.Redirect("Reviews.aspx")
    End Sub

    Protected Sub DetailsView1_ItemInserted(sender As Object, e As DetailsViewInsertedEventArgs) Handles DetailsView1.ItemInserted
        If e.Exception Is Nothing Then
            EndEditing()
        End If
    End Sub

    Protected Sub DetailsView1_ItemInserting(sender As Object, e As DetailsViewInsertEventArgs) Handles DetailsView1.ItemInserting
        e.Values("UpdateDateTime") = DateTime.Now
    End Sub

    Protected Sub DetailsView1_ItemUpdated(sender As Object, e As DetailsViewUpdatedEventArgs) Handles DetailsView1.ItemUpdated
        If e.Exception Is Nothing Then
            EndEditing()
        End If
    End Sub

    Protected Sub DetailsView1_ItemUpdating(sender As Object, e As DetailsViewUpdateEventArgs) Handles DetailsView1.ItemUpdating
        e.NewValues("UpdateDateTime") = DateTime.Now
    End Sub
End Class
