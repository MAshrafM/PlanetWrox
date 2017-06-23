Imports PlanetWroxModel

Partial Class ManagePhotoAlbum
    Inherits System.Web.UI.Page

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

    Protected Sub ListView1_ItemCreated(sender As Object, e As ListViewItemEventArgs) Handles ListView1.ItemCreated
        Select Case e.Item.ItemType
            Case ListViewItemType.DataItem
                Dim deleteButton As Button =
                CType(e.Item.FindControl("DeleteButton"), Button)
                deleteButton.Visible = Roles.IsUserInRole("Managers")
        End Select
    End Sub
End Class
