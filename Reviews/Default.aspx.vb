Imports PlanetWroxModel


Partial Class Reviews_Default
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load
        Using myEntities As PlanetWroxEntities = New PlanetWroxEntities()
            If Profile.FavoriteGenres.Count > 0 Then
                Dim favGenres = From genre In myEntities.Genres.Include("Reviews")
                Order By genre.Name
                Where Profile.FavoriteGenres.Contains(genre.Id)
                Select New With {genre.Name, genre.Reviews}
                GenreRepeater.DataSource = favGenres
                GenreRepeater.DataBind()
            End If
            GenreRepeater.Visible = GenreRepeater.Items.Count > 0
            NoRecords.Visible = Not GenreRepeater.Visible
        End Using
    End Sub
End Class
