using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using MySql.Data.MySqlClient;


namespace Okul
{
    public partial class Ekle : Form
    {
        public Ekle()
        {
            InitializeComponent();
        }
        MySqlConnection bag = new MySqlConnection("Server=localhost; database=okul; user=root; password=''");
        MySqlCommand kmt = new MySqlCommand();


        private void Ekle_Load(object sender, EventArgs e)
        {

        }

        private void btnKaydet_Click(object sender, EventArgs e)
        {
            bag.Open();
            kmt.Connection = bag;
            kmt.CommandText = "insert into ogrenci(numara, ad, soyad, sinif, parola) Values ('" + textBox1.Text + "', '" + textBox2.Text + "', '" + textBox3.Text + "', '" + textBox4.Text + "', '" + textBox5.Text + "')";
            kmt.ExecuteNonQuery();
            bag.Close();
            MessageBox.Show("Kayıt Başarıyla Gerçekleştirildi");
        }

        private void btnÇıkış_Click(object sender, EventArgs e)
        {
            this.Close();
        }
    }
}
