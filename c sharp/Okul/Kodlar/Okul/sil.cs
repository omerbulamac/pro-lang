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
    public partial class sil : Form
    {
        public sil()
        {
            InitializeComponent();
        }

        MySqlConnection bag = new MySqlConnection("Server=localhost; database=okul; user=root; password=''");
        MySqlCommand kmt = new MySqlCommand();

        private void sil_Load(object sender, EventArgs e)
        {

        }

        private void button1_Click(object sender, EventArgs e)
        {
            String sql = String.Empty;
            MySqlCommand command = new MySqlCommand();
            command.CommandText = "select parola from ogrenci where numara = " + textBox1.Text;
            command.Connection = bag;
            bag.Open();
            try
            {
                sql = (string)command.ExecuteScalar();

                if (textBox2.Text == sql)
                {
                    Sil2 sil2 = new Sil2();
                    // sil2.label1.Text = textBox1.Text;

                    sil2.ShowDialog();
                }

                else
                {
                    MessageBox.Show("giris basarisiz!!!");
                }

            }
            catch
            {
                MessageBox.Show("giris basarisiz!!!");
            }

            
        }
    }
}
