using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;

using Oracle.DataAccess.Client;

namespace Oracle_Baglantisi
{
    public partial class Form1 : Form
    {
        public Form1()
        {
            InitializeComponent();
        }

        private void button1_Click(object sender, EventArgs e)
        {
            OracleConnection conn = new OracleConnection();

            conn.ConnectionString = "User ID=cehars; Password=19; Data Source=PC";
            try
            {
                conn.Open();
                MessageBox.Show("Veritabanına Baglantı Basarılı.");
                conn.Close();
            }
            catch
            {
                MessageBox.Show("Veritabanına Baglanılamadı.");
            }
        }
    }
}
