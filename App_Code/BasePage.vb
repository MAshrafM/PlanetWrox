Imports Microsoft.VisualBasic

Public Class BasePage
    Inherits System.Web.UI.Page

    Private Sub Page_PreRender(sender As Object, e As EventArgs) Handles Me.PreRender
        If String.IsNullOrEmpty(Me.Title) OrElse Me.Title.Equals("Untitled Page", StringComparison.CurrentCultureIgnoreCase
                                                                 ) Then
            Throw New Exception("Page title cannot be ""Untitled Page"" or an empty string.")
        End If
    End Sub

    Private Sub Page_PreInit(sender As Object, e As EventArgs) Handles Me.PreInit
        Dim preferredTheme As HttpCookie = Request.Cookies.Get("PreferredTheme")
        If preferredTheme IsNot Nothing Then
            Dim folder As String = Server.MapPath("~/App_Themes/" & preferredTheme.Value)
            If System.IO.Directory.Exists(folder) Then
                Page.Theme = preferredTheme.Value
            End If
        End If
    End Sub
End Class
