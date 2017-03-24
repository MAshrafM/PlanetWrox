
Partial Class About_AboutUs
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load
        If Not Page.IsPostBack Then
            Banner2.NavigateUrl = "www.google.com"
        End If
    End Sub

End Class
