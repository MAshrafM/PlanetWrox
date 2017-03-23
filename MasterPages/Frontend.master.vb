
Partial Class MasterPages_Frontend
    Inherits System.Web.UI.MasterPage

    Protected Sub ThemeList_SelectedIndexChanged(sender As Object, e As EventArgs) Handles ThemeList.SelectedIndexChanged
        Dim preferredTheme As HttpCookie = New HttpCookie("PreferredTheme")
        preferredTheme.Expires = DateTime.Now.AddMonths(3)
        preferredTheme.Value = ThemeList.SelectedValue
        Response.Cookies.Add(preferredTheme)
        Response.Redirect(Request.Url.ToString())
    End Sub

    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load
        If Not Page.IsPostBack Then
            Dim selectedTheme As String = Page.Theme
            Dim perferredTheme As HttpCookie = Request.Cookies.Get("PerderredTheme")

            If perferredTheme IsNot Nothing Then
                selectedTheme = perferredTheme.Value
            End If

            If Not String.IsNullOrEmpty(selectedTheme) Then
                Dim item As ListItem = ThemeList.Items.FindByValue(selectedTheme)
                If item IsNot Nothing Then
                    item.Selected = True
                End If
            End If
        End If
        Select Case Page.Theme.ToLower()
            Case "darkgrey"
                Menu1.Visible = False
                TreeView1.Visible = True
            Case Else
                Menu1.Visible = True
                TreeView1.Visible = False
        End Select
    End Sub
End Class

