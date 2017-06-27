
Partial Class MyProfile
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load
        Profile.FirstName = "Your first name here"
        Profile.LastName = "Your last name here"
    End Sub
End Class
