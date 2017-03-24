
Partial Class Controls_Banner
    Inherits System.Web.UI.UserControl

    Public Property DisplayDirection As Direction

    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load
        Select Case DisplayDirection
            Case Direction.Horizontal
                HorizontalPanel.Visible = True
                VerticalPanel.Visible = False
            Case Direction.Vertical
                HorizontalPanel.Visible = False
                VerticalPanel.Visible = True

        End Select
    End Sub
End Class
