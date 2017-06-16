Imports PlanetWroxModel

Partial Class Reviews_ViewDetails
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load
        Dim reviewId As Integer = Convert.ToInt32(Request.QueryString.Get("ReviewId"))
        Dim cacheKey As String = "Reviews" + reviewId.ToString()
        Dim myReview As Review = TryCast(Cache(cacheKey), Review)
        If myReview Is Nothing Then
            Using myEntities As New PlanetWroxEntities()
                myReview = (From r In myEntities.Reviews
                            Where r.Id = reviewId
                            Select r).SingleOrDefault()
                If myReview IsNot Nothing Then
                    Cache.Insert(cacheKey, myReview, Nothing, DateTime.Now.AddMinutes(20), System.Web.Caching.Cache.NoSlidingExpiration)
                End If
            End Using
        End If
        If myReview IsNot Nothing Then
            TitleLabel.Text = myReview.Title
            SummaryLabel.Text = myReview.Summary
            BodyLabel.Text = myReview.Body
            Title = myReview.Title
            MetaDescription = myReview.Summary
        End If
    End Sub
End Class
