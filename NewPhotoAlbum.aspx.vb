Imports PlanetWroxModel

Partial Class NewPhotoAlbum
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load

    End Sub
    Protected Sub EntityDataSource1_Inserting(sender As Object, e As EntityDataSourceChangingEventArgs) Handles EntityDataSource1.Inserting
        Dim myPhotoAlbum As PhotoAlbum = CType(e.Entity, PhotoAlbum)
        myPhotoAlbum.UserName = User.Identity.Name
    End Sub
    Protected Sub EntityDataSource1_Inserted(sender As Object, e As EntityDataSourceStatusEventArgs) Handles EntityDataSource1.Inserted
        If (e.Entity IsNot Nothing) Then
            Dim myPhotoAlbum As PhotoAlbum = CType(e.Entity, PhotoAlbum)
            Response.Redirect(String.Format("ManagePhotoAlbum.aspx?PhotoAlbumId={0}", myPhotoAlbum.Id.toString()))
        End If
    End Sub
End Class
