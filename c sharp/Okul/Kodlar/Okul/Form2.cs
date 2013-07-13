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
    public partial class Form2 : Form
    {
        public Form2()
        {
            InitializeComponent();
        }
        
        MySqlConnection bag = new MySqlConnection("Server=localhost; database=okul; user=root; password=''");
        MySqlCommand kmt = new MySqlCommand();

        private void button3_Click(object sender, EventArgs e)
        {
            Ekle f1 = new Ekle();
            f1.ShowDialog();
        }

        private void button4_Click(object sender, EventArgs e)
        {
            
            Guncelle guncelle = new Guncelle();
            guncelle.ShowDialog();
        }

        private void Form2_Load(object sender, EventArgs e)
        {

        }

        private void button5_Click(object sender, EventArgs e)
        {
            sil sil = new sil();
            sil.ShowDialog();
        }
    }
}
