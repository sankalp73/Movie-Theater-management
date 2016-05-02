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
    public partial class Form1 : Form
    {
        String ID;
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
public Form1()
        {

            InitializeComponent();
        }
        public void connect1()
        {
            myConnectionString = "server = MU-STD-S45; user id = sankalp; password =@1234567890; database = mydb;";


            conn = new MySql.Data.MySqlClient.MySqlConnection(myConnectionString);
            conn.Open();

        }

        private void button1_Click(object sender, EventArgs e)
        {
            connect1();
            comm = new MySql.Data.MySqlClient.MySqlCommand();
            comm.CommandText = "select * from user";
            comm.CommandType = CommandType.Text;
            ds = new DataSet();
            adap = new MySql.Data.MySqlClient.MySqlDataAdapter(comm.CommandText, conn);
            adap.Fill(ds, "user");
            dt = ds.Tables["user"];
            int t = dt.Rows.Count;
            dr = dt.Rows[i];
            dc = dt.Columns[j];
            j++;
            Boolean found = false;
            //int id;
            // searching databse table for username and password
            while (i < t)    
            {
                dr = dt.Rows[i];
                if (dr["username"].ToString().Equals(textBox1.Text))
                    if (dr["password"].ToString().Equals(textBox2.Text))
                    { ID =dr["id"].ToString();
                        found = true;
                        Form2 f2 = new Form2(ID);
                        this.Hide();
                        f2.Show();
                    }
                if (found == true)
                    break;
                else
                i++;
            }

            if (found == false)
            { Form4 f4 = new Form4();
                this.Hide();
                f4.Show();
            }
            i = 0;
        }
        private void textBox1_TextChanged(object sender, EventArgs e)
        {
            
        }

        private void textBox2_TextChanged(object sender, EventArgs e)
        {    
            

        }

        private void button2_Click(object sender, EventArgs e)
        {
            Form5 f5 = new Form5();
            f5.Show();
           
        }

        private void pictureBox5_Click(object sender, EventArgs e)
        {

        }

        private void button3_Click(object sender, EventArgs e)
        {
            adminlog a = new adminlog();
            
            a.Show();

        }
    }
}
