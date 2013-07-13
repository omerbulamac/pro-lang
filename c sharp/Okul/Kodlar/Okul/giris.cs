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
    public partial class giris : Form
    {
        public giris()
        {
            InitializeComponent();
        }

        MySqlConnection bag = new MySqlConnection("Server=localhost; database=okul; user=root; password=''");
        MySqlCommand kmt = new MySqlCommand();

        private void giris_Load(object sender, EventArgs e)
        {

        }

        private void Form2_Load(object sender, EventArgs e)
        {

        }


        private void button3_Click(object sender, EventArgs e)
        {
            Ekle f1 = new Ekle();
            f1.ShowDialog();
        }

        private void button2_Click(object sender, EventArgs e)
        {
            giris2 giris2 = new giris2();

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


                    String sql2 = String.Empty;
                    MySqlCommand command2 = new MySqlCommand();
                    command2.CommandText = "select numara from ogrenci where numara = " + textBox1.Text;
                    command2.Connection = bag;
                    sql2 = (string)command2.ExecuteScalar();
                    giris2.label6.Text = sql2;

                    String sql3 = String.Empty;
                    MySqlCommand command3 = new MySqlCommand();
                    command3.CommandText = "select ad from ogrenci where numara = " + textBox1.Text;
                    command3.Connection = bag;
                    sql3 = (string)command3.ExecuteScalar();
                    giris2.label7.Text = sql3;

                    String sql4 = String.Empty;
                    MySqlCommand command4 = new MySqlCommand();
                    command4.CommandText = "select soyad from ogrenci where numara = " + textBox1.Text;
                    command4.Connection = bag;
                    sql4 = (string)command4.ExecuteScalar();
                    giris2.label8.Text = sql4;

                    String sql5 = String.Empty;
                    MySqlCommand command5 = new MySqlCommand();
                    command5.CommandText = "select sinif from ogrenci where numara = " + textBox1.Text;
                    command5.Connection = bag;
                    sql5 = (string)command5.ExecuteScalar();
                    giris2.label9.Text = sql5;

                    String sql6 = String.Empty;
                    MySqlCommand command6 = new MySqlCommand();
                    command6.CommandText = "select parola from ogrenci where numara = " + textBox1.Text;
                    command6.Connection = bag;
                    sql6 = (string)command6.ExecuteScalar();
                    giris2.label10.Text = sql6;


                    giris2.ShowDialog();
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
            bag.Close();
        }

    }
}
