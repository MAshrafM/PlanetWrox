
Partial Class PhotoAlbums_Default
    Inherits System.Web.UI.Page

    Protected Sub ListView1_DataBound(sender As Object, e As EventArgs) Handles ListView1.DataBound
        If Not String.IsNullOrEmpty(DropDownList1.SelectedValue) Then
            Dim photoAlbumId As Integer = Convert.ToInt32(DropDownList1.SelectedValue)
            Using myEntities As PlanetWroxEntities = New PlanetWroxEntities()
                Dim photoAlbumOwner As String = (From p In myEntities.PhotoAlbums
                Where p.Id = photoAlbumId
                Select p.UserName).Single()
                If User.Identity.IsAuthenticated And (User.Identity.Name = photoAlbumOwner _
                Or User.IsInRole("Managers")) Then
                    EditLink.NavigateUrl = String.Format("~/ManagePhotoAlbum.aspx?PhotoAlbumId={0}", DropDownList1.SelectedValue)
                    EditLink.Visible = True
                Else
                    EditLink.Visible = False
                End If

    End Sub
End Class
