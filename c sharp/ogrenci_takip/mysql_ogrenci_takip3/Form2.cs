using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using MySql.Data.MySqlClient;

namespace mysql_ogrenci_takip3
{
    public partial class Form2 : Form
    {
        public Form1 frm1;
        public Form2()
        {
            InitializeComponent();
        }

        MySqlConnection bag = new MySqlConnection("Server=localhost;database=data;user=root;password=");
        MySqlCommand kmt = new MySqlCommand();

        private void Form2_Load(object sender, EventArgs e)
        {

        }

        private void label4_Click(object sender, EventArgs e)
        {

        }

        private void btnKaydet_Click(object sender, EventArgs e)
        {
            bag.Open();
            kmt.Connection = bag;
            kmt.CommandText = "Insert Into ogrbil(ogrNo,adSoyad,sinifi,adres) Values ('"+textBox1.Text+"','"+textBox2.Text+"','"+textBox3.Text+"','"+textBox4.Text+"')";
            kmt.ExecuteNonQuery();
            bag.Close();
            MessageBox.Show("Kayıt Başarıyla Gerçekleştirildi");
             
        }
    }
}
