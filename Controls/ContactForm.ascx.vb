
Partial Class Controls_ContactForm
    Inherits System.Web.UI.UserControl

    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load

    End Sub

    Protected Sub CustomValidator1_ServerValidate(source As Object, args As ServerValidateEventArgs) Handles CustomValidator1.ServerValidate
        If Not String.IsNullOrEmpty(PhoneHome.Text) OrElse Not String.IsNullOrEmpty(PhoneBusiness.Text) Then
            args.IsValid = True
        Else
            args.IsValid = False
        End If
    End Sub
End Class
