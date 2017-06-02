
Partial Class Management_Reviews
    Inherits System.Web.UI.Page

    Protected Function GetBooleanText(booleanValue As Object) As String
        Dim authorized As Boolean = CType(booleanValue, Boolean)
        If authorized Then
            Return "Yes"
        Else
            Return "No"
        End If
    End Function

End Class
