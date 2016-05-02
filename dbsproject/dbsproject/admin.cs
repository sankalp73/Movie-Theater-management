using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.IO;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace dbsproject
{
    public partial class admin : Form
    {
        MySql.Data.MySqlClient.MySqlConnection conn;
        string myConnectionString;
        DataSet ds;
        DataTable dt;
        DataRow dr;
        DataColumn dc;
        MySql.Data.MySqlClient.MySqlCommand comm;
        MySql.Data.MySqlClient.MySqlDataAdapter adap;

        string imagename;
        public admin()
        {
            InitializeComponent();
        }

        private void admin_Load(object sender, EventArgs e)
        {

        }

        private void button1_Click(object sender, EventArgs e)
        {
            try
            {
                FileDialog fileDialog = new OpenFileDialog();
                fileDialog.Filter = "Image File (*.jpg;*.bmp;*.gif)|*.jpg;*.bmp;*.gif";
                if (fileDialog.ShowDialog() == DialogResult.OK)
                { imagename = fileDialog.FileName;
                    Bitmap newimg = new Bitmap(imagename);
                    pictureBox1.SizeMode = PictureBoxSizeMode.StretchImage;
                    pictureBox1.Image = (Image)newimg;
                }
                fileDialog = null;
            }
            catch { MessageBox.Show("Error"); }
        }

        private void button3_Click(object sender, EventArgs e)
        {
            this.Close();
        }
        public void connect1()
        {
            myConnectionString = "server = MU-STD-S45; user id = sankalp; password =@1234567890; database = mydb;";


            conn = new MySql.Data.MySqlClient.MySqlConnection(myConnectionString);
            conn.Open();

        }

        private void button2_Click(object sender, EventArgs e)
        {   if (textBox2.Text.Equals("a1") || textBox2.Text.Equals("a2"))
            {
                comm = new MySqlCommand();
                FileStream fs;
                fs = new FileStream(imagename, FileMode.Open, FileAccess.Read);
                byte[] picbyte = new byte[fs.Length];
                fs.Read(picbyte, 0, System.Convert.ToInt32(fs.Length));
                fs.Close();
                connect1();
                comm.Connection = conn;
                comm.CommandText = "insert into movie2 values('" + comboBox1.Text + "','" + textBox2.Text + "',@pic); ";

                MySql.Data.MySqlClient.MySqlParameter picparameter = new MySql.Data.MySqlClient.MySqlParameter();
                comm.Parameters.Add("@pic", MySqlDbType.Blob);

                comm.Parameters["@pic"].Value = picbyte;
                if (richTextBox1.Text.Contains("'"))
                {
                    MessageBox.Show("enter a valid description without any /' ");
                }
                else
                {
                    comm.Parameters.Add(picparameter);
                    comm.ExecuteNonQuery();
                    comm.CommandText = "insert into movie1 values('" + textBox1.Text + "','" + richTextBox1.Text + "'); ";
                    comm.ExecuteNonQuery();
                }
            }
            else
            { MessageBox.Show("WRONG AUDITORIUM NAME TRY AGAIN"); }
        }

        private void comboBox1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        private void textBox2_TextChanged(object sender, EventArgs e)
        {

        }

        private void textBox1_TextChanged(object sender, EventArgs e)
        {

        }

        private void richTextBox1_TextChanged(object sender, EventArgs e)
        {

        }
    }
}
