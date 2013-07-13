using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using MySql.Data.MySqlClient;
using System.Data.OleDb;

namespace deneme
{
    public partial class Form1 : Form
    {
        public Form1()
        {
            InitializeComponent();
        }

        MySqlConnection bag = new MySqlConnection("Server=localhost;database=okul;user=root;password=");
        MySqlCommand kmt = new MySqlCommand();


        private void Form1_Load(object sender, EventArgs e)
        {

        }

        private void button1_Click(object sender, EventArgs e)
        {

            string kaynak = "Provider=Microsoft.Jet.OLEDB.4.0;Data Source=okul.mdb";
            OleDbConnection baglanti = new OleDbConnection(kaynak);
            baglanti.Open();
            string sorgu = "select * from ogrenci";
            OleDbCommand komut = new OleDbCommand(sorgu, baglanti);
            OleDbDataReader cikti = komut.ExecuteReader();

            int durum = 0;

            while (cikti.Read())
            {
                if (textBox1.Text == cikti[1].ToString() && textBox2.Text == cikti[2].ToString())
                {
                    durum = 1;
                    break;
                }
                else
                    continue;

            }

            if (durum == 1) 
                MessageBox.Show("Giriş başarili");
            else 
                MessageBox.Show("Giriş başarisiz");
            
            cikti.Close();
            
            baglanti.Close();
            
        }

        
    }
}
