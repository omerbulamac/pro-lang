using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;

using Oracle.DataAccess.Client;

namespace oracle2
{
    public partial class Form1 : Form
    {
        public Form1()
        {
            InitializeComponent();
        }

        private void button1_Click(object sender, EventArgs e)
        {
            string oradb = "Data Source=(DESCRIPTION="
            + "(ADDRESS_LIST=(ADDRESS=(PROTOCOL=TCP)(HOST=pc)(PORT=1521)))"
            + "(CONNECT_DATA=(SERVER=DEDICATED)(SERVICE_NAME=XE)));"
            + "User Id=SYSTEM;Password=19;";

            OracleConnection conn = new OracleConnection();
            conn.ConnectionString = oradb;

            try
            {
                conn.Open();
                MessageBox.Show("Veritabanına Baglantı Basarılı.");
            }

            catch (Exception)
            {
                MessageBox.Show("Veritabanına Baglantı Basarılı Değil.");
            }
        }
    }
}
