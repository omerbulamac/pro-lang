﻿using System;
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
            OracleConnection conn = new OracleConnection();
            conn.ConnectionString = "User ID=SYSTEM; Password=19; Data Source=PC";
            
            try
            {   
                conn.Open();
                MessageBox.Show("Veritabanına Baglantı Basarılı.");   
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
            
           
            
            conn.Close();
        }
    }
}
