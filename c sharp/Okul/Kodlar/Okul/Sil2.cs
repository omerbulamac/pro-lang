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
    public partial class Sil2 : Form
    {
        public Sil2()
        {
            InitializeComponent();
        }
        
        MySqlConnection bag = new MySqlConnection("Server=localhost; database=okul; user=root; password=''");
        MySqlCommand kmt = new MySqlCommand();

        private void button1_Click(object sender, EventArgs e)
        {
            MySqlCommand command = new MySqlCommand();

            giris2 giris2 = new giris2();

            try
            {
                command.Connection = bag;
                command.CommandText = "delete from ogrenci where numara ='" + label1.Text + "'";
                bag.Open();
                command.ExecuteNonQuery();
                bag.Close();
                MessageBox.Show("Başarıyla Silindi");
            }
            catch
            {
                MessageBox.Show("Hata var");
            }
        }

        private void Sil2_Load(object sender, EventArgs e)
        {

        }

        private void label1_Click(object sender, EventArgs e)
        {

        }
    }
}
