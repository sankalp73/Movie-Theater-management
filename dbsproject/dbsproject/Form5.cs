
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace dbsproject
{
    public partial class Form5 : Form
    {
        int i = 0;
        int j = 0;
        MySql.Data.MySqlClient.MySqlConnection conn;
        string myConnectionString;
        DataSet ds;
        DataTable dt;
        DataRow dr;
        DataColumn dc;
        MySql.Data.MySqlClient.MySqlCommand comm;
        MySql.Data.MySqlClient.MySqlDataAdapter adap;
        public Form5()
        {
            myConnectionString = "server = MU-STD-S45; user id = sankalp; password =@1234567890; database = mydb;";


            conn = new MySql.Data.MySqlClient.MySqlConnection(myConnectionString);
            conn.Open();
            InitializeComponent();
            
        }

        private void Form5_Load(object sender, EventArgs e)
        {

        }

        private void button1_Click(object sender, EventArgs e)
        {
           
            if (textBox1.Text== "" || textBox2.Text == "")
            {
                MessageBox.Show("PLEASE ENTER A VALUE, TRY AGAIN");
            }
            else
            {
                comm = new MySql.Data.MySqlClient.MySqlCommand();
                comm.Connection = conn;
                comm.CommandText = "select * from user";
                comm.CommandType = CommandType.Text;
                ds = new DataSet();
                adap = new MySql.Data.MySqlClient.MySqlDataAdapter(comm.CommandText, conn);
                adap.Fill(ds, "user");
                dt = ds.Tables["user"];
                int t = dt.Rows.Count;
                // getting last id from the database table
                dr = dt.Rows[t - 1];
                int s1 = int.Parse(dr["id"].ToString());
                s1++;
                String s = s1.ToString();
                comm.CommandText = "insert into user values('" + s + "','" + textBox2.Text + "','" + textBox1.Text + "')";
                comm.CommandType = CommandType.Text;
                comm.ExecuteNonQuery();
                conn.Close();
                this.Hide();
            }
            }

        private void textBox1_TextChanged(object sender, EventArgs e)
        {

        }

        private void label1_Click(object sender, EventArgs e)
        {

        }

        private void label2_Click(object sender, EventArgs e)
        {

        }

        private void pictureBox1_Click(object sender, EventArgs e)
        {

        }

        private void textBox2_TextChanged(object sender, EventArgs e)
        {

        }
    }
}
