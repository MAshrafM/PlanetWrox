Imports PlanetWroxModel

Partial Class ManagePhotoAlbum
    Inherits System.Web.UI.Page

    Protected Sub EntityDataSource1_Inserting(sender As Object, e As EntityDataSourceChangingEventArgs) Handles EntityDataSource1.Inserting
        Dim photoAlbumId As Integer = Convert.ToInt32(Request.QueryString.Get("PhotoAlbumId"))
        Dim myPicture As Picture = CType(e.Entity, Picture)
        myPicture.PhotoAlbumId = photoAlbumId
    End Sub
End Class
