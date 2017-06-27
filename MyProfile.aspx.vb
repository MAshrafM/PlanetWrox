
Partial Class MyProfile
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load
        If Not Page.IsPostBack Then
            FirstName.Text = Profile.FirstName
            LastName.Text = Profile.LastName
            DateOfBirth.Text = Profile.DateOfBirth.ToShortDateString()
            Bio.Text = Profile.Bio
        End If
    End Sub

    Protected Sub SaveButton_Click(sender As Object, e As EventArgs) Handles SaveButton.Click
        If Page.IsValid Then
            Profile.FirstName = FirstName.Text
            Profile.LastName = LastName.Text
            Profile.DateOfBirth = DateTime.Parse(DateOfBirth.Text)
            Profile.Bio = Bio.Text
        End If
    End Sub
End Class
