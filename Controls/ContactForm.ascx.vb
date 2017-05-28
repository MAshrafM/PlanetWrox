Imports System.IO
Imports System.Net.Mail

Partial Class Controls_ContactForm
    Inherits System.Web.UI.UserControl

    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load

    End Sub

    Protected Sub CustomValidator1_ServerValidate(source As Object, args As ServerValidateEventArgs)
        If Not String.IsNullOrEmpty(PhoneHome.Text) OrElse Not String.IsNullOrEmpty(PhoneBusiness.Text) Then
            args.IsValid = True
        Else
            args.IsValid = False
        End If
    End Sub

    Protected Sub SendButton_Click(sender As Object, e As EventArgs) Handles SendButton.Click
        If Page.IsValid Then
            Dim fileName As String = Server.MapPath("~/App_Data/ContactForm.txt")
            Dim mailBody As String = File.ReadAllText(fileName)

            mailBody = mailBody.Replace("##Name##", Name.Text)
            mailBody = mailBody.Replace("##EmailAddress##", EmailAddress.Text)
            mailBody = mailBody.Replace("##PhoneHome##", PhoneHome.Text)
            mailBody = mailBody.Replace("##PhoneBusiness##", PhoneBusiness.Text)
            mailBody = mailBody.Replace("##Comments##", Comments.Text)

            Dim myMessage As MailMessage = New MailMessage()
            myMessage.Subject = "Response from the Website"
            myMessage.Body = mailBody
            myMessage.From = New MailAddress("you@example.com", "Sender Name")
            myMessage.To.Add(New MailAddress("you@example.com", "Reciever Name"))
            myMessage.ReplyToList.Add(New MailAddress(EmailAddress.Text))

            Dim mySmtpClient As SmtpClient = New SmtpClient()
            mySmtpClient.Send(myMessage)

            Message.Visible = True
            MessageSentPara.Visible = True
            FormTable.Visible = False
            System.Threading.Thread.Sleep(5000)
        End If
    End Sub
End Class
