using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;

namespace mysql_ogrenci_takip3
{
    public partial class Form1 : Form
    {
        public Form2 frm2;
        public Form1()
        {
            InitializeComponent();
            frm2 = new Form2();
            frm2.frm1 = this;
        }

        private void btnOgrenciEkle_Click(object sender, EventArgs e)
        {
            frm2.ShowDialog();
        }
    }
}
