Imports PlanetWroxModel

Partial Class Reviews_AllByGenre
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load
        Using myEntities As New PlanetWroxEntities()
            Dim allGenres = From genre In myEntities.Genres.Include("Reviews")
                            Order By genre.Name
                            Select New With {genre.Name, genre.Reviews}
            Repeater1.DataSource = allGenres.ToList
            Repeater1.DataBind()
        End Using
    End Sub
End Class
