Imports PlanetWroxModel

Partial Class Management_AddEditReviewHandCoded
    Inherits System.Web.UI.Page

    Dim _id As Integer = -1

    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load
        If Not String.IsNullOrEmpty(Request.QueryString.Get("Id")) Then
            _id = Convert.ToInt32(Request.QueryString.Get("Id"))
        End If
        If Not Page.IsPostBack And _id > -1 Then
            Using myEntities As New PlanetWroxEntities()
                Dim review = (From r In myEntities.Reviews
                              Where r.Id = _id
                              Select r).SingleOrDefault()
                If review IsNot Nothing Then
                    TitleText.Text = review.Title
                    SummaryText.Text = review.Summary
                    BodyText.Text = review.Body
                    GenreList.DataBind()
                    Dim myItem As ListItem = GenreList.Items.FindByValue(review.GenreId.ToString())
                    If myItem IsNot Nothing Then
                        myItem.Selected = True
                    End If
                    Authorized.Checked = review.Authorized
                End If
            End Using
        End If
    End Sub

    Protected Sub SaveButton_Click(sender As Object, e As EventArgs) Handles SaveButton.Click
        Using myEntities As New PlanetWroxEntities()
            Dim myReview As Review
            If _id = -1 Then ' Insert new item
                myReview = New Review()
                myReview.CreateDateTime = DateTime.Now
                myReview.UpdateDateTime = myReview.CreateDateTime
                myEntities.AddToReviews(myReview)
            Else ' update existing item
                myReview = (From r In myEntities.Reviews
                            Where r.Id = _id
                            Select r).Single()
                myReview.UpdateDateTime = DateTime.Now
            End If
            myReview.Title = TitleText.Text
            myReview.Summary = SummaryText.Text
            myReview.Body = BodyText.Text
            myReview.GenreId = Convert.ToInt32(GenreList.SelectedValue)
            myReview.Authorized = Authorized.Checked
            myEntities.SaveChanges()
            Response.Redirect("Reviews.aspx")
        End Using
    End Sub
End Class
