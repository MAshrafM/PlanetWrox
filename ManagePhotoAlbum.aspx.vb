Imports PlanetWroxModel

Partial Class ManagePhotoAlbum
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load
        Dim photoAlbumId As Integer =
        Convert.ToInt32(Request.QueryString.Get("PhotoAlbumId"))
        Using myEntities As PlanetWroxEntities = New PlanetWroxEntities()
            Dim photoAlbumOwner As String = (From p In myEntities.PhotoAlbums
            Where p.Id = photoAlbumId
            Select p.Name).Single()
            If User.Identity.Name <> photoAlbumOwner And
            Not User.IsInRole("Managers") Then
                Response.Redirect("~/")
            End If
        End Using
    End Sub
    Protected Sub EntityDataSource1_Inserting(sender As Object, e As EntityDataSourceChangingEventArgs) Handles EntityDataSource1.Inserting
        Dim photoAlbumId As Integer = Convert.ToInt32(Request.QueryString.Get("PhotoAlbumId"))
        Dim myPicture As Picture = CType(e.Entity, Picture)
        myPicture.PhotoAlbumId = photoAlbumId

        Dim FileUpload1 As FileUpload = CType(ListView1.InsertItem.FindControl("FileUpload1"), FileUpload)
        Dim virtualFolder As String = "~/GigPics"
        Dim physicalFolder As String = Server.MapPath(virtualFolder)
        Dim FileName As String = Guid.NewGuid().ToString()
        Dim extension As String = System.IO.Path.GetExtension(FileUpload1.FileName)
        FileUpload1.SaveAs(System.IO.Path.Combine(physicalFolder, FileName + extension))
        myPicture.ImageUrl = virtualFolder + FileName + extension
    End Sub

    Protected Sub ListView1_ItemInserting(sender As Object, e As ListViewInsertEventArgs) Handles ListView1.ItemInserting
        Dim FileUpload1 As FileUpload = CType(ListView1.InsertItem.FindControl("FileUpload1"), FileUpload)
        If Not FileUpload1.HasFile OrElse Not FileUpload1.FileName.ToLower().EndsWith(".jpg") Then
            Dim cusValImage As CustomValidator = CType(ListView1.InsertItem.FindControl("cusValImage"), CustomValidator)
            cusValImage.IsValid = False
            e.Cancel = True
        End If
    End Sub


End Class
