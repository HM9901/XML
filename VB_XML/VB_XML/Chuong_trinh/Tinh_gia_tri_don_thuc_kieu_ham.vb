Imports System.Xml

Module Tinh_gia_tri_don_thuc_kieu_ham
    Structure Don_thuc
        Public He_so As Double
        Public So_mu As Integer
    End Structure
    Public Function Doc_don_thuc(ByVal Duong_dan As String) As Don_thuc
        Dim Kq As Don_thuc
        ' Doc du lieu tap tin vao doi tuong Tai_lieu DocumentXml
        Dim Tai_lieu As New XmlDocument
        Tai_lieu.Load(Duong_dan)
        ' Gan gia tri cua ket qua tu goc sang tai lieu
        Dim Goc As XmlElement = Tai_lieu.DocumentElement
        Kq.He_so = Goc.GetAttribute("He_so")
        Kq.So_mu = Goc.GetAttribute("So_mu")
        Return Kq
    End Function
    Public Function Gia_tri(ByVal P As Don_thuc, ByVal x0 As Double) As Double
        Dim Kq As Double
        Kq = P.He_so * Math.Pow(x0, P.So_mu)
        Return Kq
    End Function
    Public Function Chuoi_don_thuc(ByVal P As Don_thuc) As String
        Dim kq As String = ""
        kq &= P.He_so & "x^" & P.So_mu ' Chua xem xet cac truong hop dac biet
        Return kq
    End Function
    Public Function Nhap_so_thuc(ByVal Ghi_chu As String) As Double
        Dim Kq As Double
        Console.Write(Ghi_chu)
        Kq = Double.Parse(Console.ReadLine) 'Chua xu ly loi
        Return Kq

    End Function
    Public Sub Main()
        Dim Duong_dan As String = "D:\HK2-thirdYear\XML\repos\VB_XML\VB_XML\Du_lieu\Don_thuc.xml"
        Dim P As Don_thuc
        Dim x0 As Double
        Dim Kq As Double
        'Doc don thuc
        P = Doc_don_thuc(Duong_dan)
        'Nhap X0
        x0 = Nhap_so_thuc("Gia tri x0 = ")
        'Tinh kq
        Kq = Gia_tri(P, x0)
        'Xuat KQ
        'Console.Write(Kq)
        Dim Chuoi As String
        Chuoi = "Ket qua la : " & Kq
        Console.Write(Chuoi)
        Console.ReadLine()

    End Sub
End Module
