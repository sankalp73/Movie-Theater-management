using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using MySql.Data.MySqlClient;
using System.IO;

namespace dbsproject
{             // this form let's user choose a movie

    public partial class Form2 : Form
    {
        string myConnectionString;
        MySqlConnection conn;
        MySqlCommand cmd;
        MySqlDataAdapter adap;
        DataSet ds;
        DataTable dt;
        DataRow dr;
        string ID;
        String Audi;     // we need to pass the a_name in Form3 to load the seats layout, determining which all seats have been already booked
        public Form2(string ID)
        {   
            myConnectionString = "server = MU-STD-S45; user id = sankalp; password =@1234567890; database = mydb;";


            conn = new MySqlConnection(myConnectionString);
            conn.Open();
            cmd = new MySqlCommand();
            cmd.CommandText = "select * from movie2";
            InitializeComponent();
            //loading picture 1
            cmd.CommandType = CommandType.Text;
            ds = new DataSet();
            adap = new MySql.Data.MySqlClient.MySqlDataAdapter(cmd.CommandText, conn);
            adap.Fill(ds, "movie2");
            dt = ds.Tables["movie2"];
            int t = dt.Rows.Count;
            dr = dt.Rows[t-2];
            //dc = dt.Columns[j];
            Byte[] data = new Byte[0];
            data = (Byte[])(dr["picture"]);
            MemoryStream mem = new MemoryStream(data);
            pictureBox1.SizeMode = PictureBoxSizeMode.StretchImage;
            pictureBox1.Image = Image.FromStream(mem);
            this.ID = ID;
            //loading picture 2
            
            dr = dt.Rows[t - 1];
            //dc = dt.Columns[j];
            data = new Byte[0];
            data = (Byte[])(dr["picture"]);
            mem = new MemoryStream(data);
            pictureBox2.SizeMode = PictureBoxSizeMode.StretchImage;
            pictureBox2.Image = Image.FromStream(mem);

            //loading the description for movies
            ds = new DataSet();
            dt = new DataTable();
            string t1 = "0";
            cmd = new MySqlCommand();
            cmd.CommandText = "select * from movie1 ";
            cmd.CommandType = CommandType.Text;
            adap = new MySqlDataAdapter(cmd.CommandText,conn);
            adap.Fill(ds,"movie1");
            dt = ds.Tables["movie1"];
            t = dt.Rows.Count;
            dr = dt.Rows[t - 2];
            label6.Text = dr["description"].ToString();
            dr = dt.Rows[t - 1];
            label7.Text = dr["description"].ToString();
            // checking a1 at 09:00 AM
            cmd = new MySqlCommand("select mydb.check_availability('a1','09:00');", conn);
            cmd.CommandType = CommandType.StoredProcedure;
            adap = new MySqlDataAdapter(cmd.CommandText, conn);
            adap.Fill(ds,"mydb.check_availability('a1','09:00')");
            dt = ds.Tables["mydb.check_availability('a1','09:00')"];
            dr = dt.Rows[0];
            t1 = dr["mydb.check_availability('a1','09:00')"].ToString();
            //MessageBox.Show(t1);
            if (t1.Equals("True"))
            { label11.Text = "SEATS AVAILABLE"; }
            else
            { label11.Text = "NOT AVAILABLE"; }

            // checking a2 at 09:00 AM
            cmd = new MySqlCommand("select mydb.check_availability('a2','09:00');", conn);
            cmd.CommandType = CommandType.StoredProcedure;
            adap = new MySqlDataAdapter(cmd.CommandText, conn);
            adap.Fill(ds, "mydb.check_availability('a2','09:00')");
            dt = ds.Tables["mydb.check_availability('a2','09:00')"];
            dr = dt.Rows[0];
            t1 = dr["mydb.check_availability('a2','09:00')"].ToString();
            //MessageBox.Show(t1);
            if (t1.Equals("True"))
            { label12.Text = "SEATS AVAILABLE"; }
            else
                label12.Text = "NOT AVAILABLE";
            //check a1 at 12:00 PM
            cmd = new MySqlCommand("select mydb.check_availability('a1','12:00');", conn);
            cmd.CommandType = CommandType.StoredProcedure;
            adap = new MySqlDataAdapter(cmd.CommandText, conn);
            adap.Fill(ds, "mydb.check_availability('a1','12:00')");
            dt = ds.Tables["mydb.check_availability('a1','12:00')"];
            dr = dt.Rows[0];
            t1 = dr["mydb.check_availability('a1','12:00')"].ToString();
            //MessageBox.Show(t1);
            if (t1.Equals("True"))
            { label17.Text = "SEATS AVAILABLE"; }
            else
            { label17.Text = "NOT AVAILABLE"; }
            //checking a2 at 12:00 PM
            cmd = new MySqlCommand("select mydb.check_availability('a2','12:00');", conn);
            cmd.CommandType = CommandType.StoredProcedure;
            adap = new MySqlDataAdapter(cmd.CommandText, conn);
            adap.Fill(ds, "mydb.check_availability('a2','12:00')");
            dt = ds.Tables["mydb.check_availability('a2','12:00')"];
            dr = dt.Rows[0];
            t1 = dr["mydb.check_availability('a2','12:00')"].ToString();
            //MessageBox.Show(t1);
            if (t1.Equals("True"))
            { label18.Text = "SEATS AVAILABLE"; }
            else
            { label18.Text = "NOT AVAILABLE"; }

            conn.Close();
        }

        private void Form2_Load(object sender, EventArgs e)
        {

        }
      

        public  void button1_Click(object sender, EventArgs e)
        {
            setAudi(label1.Text); // to set the a_name
            Form3 f3 = new Form3(Audi,ID);
            f3.Show();
            
        }

        private void button2_Click(object sender, EventArgs e)
        {
            setAudi(label3.Text);  // to set the a_name
            Form3 f3 = new Form3(Audi,ID);
            f3.Show();
            
        }

        private void button3_Click(object sender, EventArgs e)
        {   
            Form3 f3 = new Form3(Audi,ID);
            f3.Show();
            this.Hide();
        }
        public  void setAudi(String audi)
        {
            Audi = audi;
        }
         

        private void label1_Click(object sender, EventArgs e)
        {

        }

        private void label3_Click(object sender, EventArgs e)
        {

        }

        private void pictureBox1_Click(object sender, EventArgs e)
        {

        }

        private void button3_Click_1(object sender, EventArgs e)
        {
            Application.Exit();
        }

        private void label6_Click(object sender, EventArgs e)
        {

        }
    }
}
