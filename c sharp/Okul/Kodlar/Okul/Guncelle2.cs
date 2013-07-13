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
    public partial class Guncelle2 : Form
    {
        public Guncelle2()
        {
            InitializeComponent();
        }


        MySqlConnection bag = new MySqlConnection("Server=localhost; database=okul; user=root; password=''");
        MySqlCommand kmt = new MySqlCommand();

        private void Guncelle2_Load(object sender, EventArgs e)
        {
            
        }

        private void button1_Click(object sender, EventArgs e)
        {
            MySqlCommand command = new MySqlCommand();

            try
            {
                command.Connection = bag;
                command.CommandText = "update ogrenci set ad='" + textBox2.Text + "',soyad = '" + textBox3.Text + "', sinif = '" + textBox4.Text + "',parola = '" + textBox5.Text + "' WHERE numara = " + label6.Text + "";
                bag.Open();
                command.ExecuteNonQuery();
                bag.Close();
                MessageBox.Show("Basariyle Güncellendi");
            }
            catch
            {
                MessageBox.Show("Hata var");
            }
        }

        private void button2_Click(object sender, EventArgs e)
        {
            this.Close();
        }
    }
}
