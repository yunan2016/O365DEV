
Module Module1

    Sub Main()
        Dim a As String = New String("This")
        Dim b As String

        b = Console.ReadLine()

        If a = b Then
            Console.WriteLine("They are equal")
        Else
            Console.WriteLine("Not equal")
        End If
        Console.ReadLine()


    End Sub



End Module
Class Customer
    Private _contents As Object

    Private _count As Integer



    Sub New(length As Integer)
        Me._count = length
        Dim countersA(length) As Integer
        For intX = 0 To length
            countersA(intX) = 5
        Next intX
        _contents = countersA


    End Sub
End Class
