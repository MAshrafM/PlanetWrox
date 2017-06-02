
Partial Class Management_AddEditReview
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load
        If Request.QueryString.Get("Id") IsNot Nothing Then
            DetailsView1.DefaultMode = DetailsViewMode.Edit
        End If
    End Sub
End Class
