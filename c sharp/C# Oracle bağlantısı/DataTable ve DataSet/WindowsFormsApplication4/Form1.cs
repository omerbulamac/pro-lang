using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;

namespace WindowsFormsApplication4
{
    public partial class Form1 : Form
    {
        public Form1()
        {
            InitializeComponent();
        }

        private void button1_Click(object sender, EventArgs e)
        {

            DataTable table1 = new DataTable("kisi");
	        table1.Columns.Add("name");
	        table1.Columns.Add("id");
	        
            table1.Rows.Add("hasan", 1);
	        table1.Rows.Add("cehars", 2);

	        DataTable table2 = new DataTable("il");
	        table2.Columns.Add("id");
	        table2.Columns.Add("il");
            table2.Columns.Add("plaka");
	        
            table2.Rows.Add(1, "ankara", 06);
	        table2.Rows.Add(2, "samsun", 55);

            DataSet dataset = new DataSet();
	        dataset.Tables.Add(table1);
	        dataset.Tables.Add(table2);

            dataGridView1.DataSource = dataset.Tables[0];
            // veya
            // dataGridView1.DataSource = dataset.Tables["kisi"];

        }
    }
}
