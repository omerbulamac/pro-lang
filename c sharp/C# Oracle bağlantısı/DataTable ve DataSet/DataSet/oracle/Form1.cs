using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;

using Oracle.DataAccess.Client;

namespace oracle
{
    public partial class Form1 : Form
    {
        public Form1()
        {
            InitializeComponent();
        }

        private void button1_Click(object sender, EventArgs e)
        {
           //  OracleConnection conn = new OracleConnection();
           // conn.ConnectionString = "User ID=cehars; Password=19; Data Source=PC";
            
            string oradb = "Data Source=(DESCRIPTION="
             + "(ADDRESS_LIST=(ADDRESS=(PROTOCOL=TCP)(HOST=ORASRVR)(PORT=1521)))"
             + "(CONNECT_DATA=(SERVER=DEDICATED)(SERVICE_NAME=ORCL)));"
             + "User Id=scott;Password=tiger;";

           
            try
            {
                OracleConnection conn = new OracleConnection();
                conn.Open();

                // conn.Open();
                // MessageBox.Show("Veritabanına Baglantı Basarılı.");
                
            }
            catch
            {
                MessageBox.Show("Veritabanına Baglanılamadı.");
            }

            OracleCommand cmd = new OracleCommand();
            cmd.CommandText = "SELECT ogrenci_tablosu.ogrenci_ad, fakulte_tablosu.fakulte_ad FROM ogrenci_tablosu, bolum_tablosu, fakulte_tablosu WHERE ogrenci_tablosu.ogrenci_bolum = bolum_tablosu.bolum_id AND bolum_tablosu.bolum_fakulte = fakulte_tablosu.fakulte_id";
            cmd.Connection = conn;

            OracleDataAdapter adapter = new OracleDataAdapter();
            adapter.SelectCommand = cmd;

            DataSet dataset = new DataSet();

            adapter.Fill(dataset);
            dataGridView1.DataSource = dataset.Tables[0];
            
            // veya dataset'e kaydederken karmaşıklığı önlemek için bir parametre verip kaydedebiliriz. 

            // adapter.Fill(dataset, "ogrenci_fakulte");
            // dataGridView1.DataSource = dataset.Tables["ogrenci_fakulte"];
            
            conn.Close();
        }
    }
}
