Imports Oracle.DataAccess.Client

Public Class Form1

    Private Sub Button1_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles Button1.Click

        Dim strBaglantiMetini As New String("Data Source=PC; User id=cehars;Password=19")

        Dim conn As New OracleConnection(strBaglantiMetini)

        Try
            conn.Open()
            MessageBox.Show("baglanti basarili")

        Catch ex As Exception

            MessageBox.Show("baglanti basarili degil")
        End Try


        Dim cmd As OracleCommand = conn.CreateCommand()

        cmd.CommandText = "SELECT ogrenci_tablosu.ogrenci_ad, fakulte_tablosu.fakulte_ad FROM ogrenci_tablosu, bolum_tablosu, fakulte_tablosu WHERE ogrenci_tablosu.ogrenci_bolum = bolum_tablosu.bolum_id AND bolum_tablosu.bolum_fakulte = fakulte_tablosu.fakulte_id"

        cmd.Connection = conn

        Dim adapter As New OracleDataAdapter()

        adapter.SelectCommand = cmd


        Dim dataset As New DataSet()

        adapter.Fill(dataset)

        DataGridView1.DataSource = dataset.Tables(0)

    End Sub
End Class
