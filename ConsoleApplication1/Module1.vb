
Module Module1

    Sub Main()
        Dim dt As Date = Date.Now
        Console.WriteLine("Time in Different TimeZones:" & vbLf)

        Console.WriteLine("Indian Standard Time (IST): {0}", TimeZoneInfo.ConvertTimeBySystemTimeZoneId(dt, TimeZoneInfo.Local.Id, "India Standard Time"))
        Console.WriteLine("Eastern Standard Time (EST): {0}", TimeZoneInfo.ConvertTimeBySystemTimeZoneId(dt, TimeZoneInfo.Local.Id, "Eastern Standard Time"))
        Console.WriteLine("Pacific Standard Time (PST): {0}", TimeZoneInfo.ConvertTimeBySystemTimeZoneId(dt, TimeZoneInfo.Local.Id, "Pacific Standard Time"))
        Console.WriteLine("Greenwich Mean Time (GMT): {0}", TimeZoneInfo.ConvertTimeBySystemTimeZoneId(dt, TimeZoneInfo.Local.Id, "GMT Standard Time"))
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
