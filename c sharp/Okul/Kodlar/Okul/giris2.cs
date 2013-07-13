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
    public partial class giris2 : Form
    {
        public giris2()
        {
            InitializeComponent();
        }

        MySqlConnection bag = new MySqlConnection("Server=localhost; database=okul; user=root; password=''");
        MySqlCommand kmt = new MySqlCommand();

        private void button1_Click(object sender, EventArgs e)
        {
            Guncelle2 guncelle2 = new Guncelle2();
            guncelle2.label6.Text = label6.Text;

            guncelle2.textBox2.Text = label7.Text;
            guncelle2.textBox3.Text = label8.Text;
            guncelle2.textBox4.Text = label9.Text;
            guncelle2.textBox5.Text = label10.Text;

            guncelle2.ShowDialog();
        }

        private void button2_Click(object sender, EventArgs e)
        {
            Sil2 sil2 = new Sil2();
            sil2.label1.Text = label6.Text;
            sil2.ShowDialog();
        }

        private void giris2_Load(object sender, EventArgs e)
        {

        }
    }
}
