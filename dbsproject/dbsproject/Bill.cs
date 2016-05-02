using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Drawing.Printing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace dbsproject
{
    public partial class Bill : Form
    {
        Bitmap memoryImage;
        private PrintDocument printDocument1 = new PrintDocument();
        public Bill(string ID, string list,int cost, string time)
        {
            InitializeComponent();
            label2.Text = ID;
            label8.Text = time;
            label10.Text = DateTime.Today.ToString().Substring(0,9);
            richTextBox1.Text = list;
            label6.Text = cost.ToString();
        }

        private void Bill_Load(object sender, EventArgs e)
        {

        }

        private void button1_Click(object sender, EventArgs e)
        {
            this.Close();
        }

        private void richTextBox1_TextChanged(object sender, EventArgs e)
        {

        }

        private void button2_Click(object sender, EventArgs e)
        {
            CaptureScreen();
            printDocument1.Print();
        }
        private void CaptureScreen()
        {
            Graphics myGraphics = this.CreateGraphics();
            Size s = this.Size;
            Bitmap memoryImage = new Bitmap(s.Width, s.Height, myGraphics);
            Graphics memoryGraphics = Graphics.FromImage(memoryImage);
            memoryGraphics.CopyFromScreen(this.Location.X, this.Location.Y, 0, 0, s);
        }

        private void printDocument1_PrintPage(System.Object sender,
               System.Drawing.Printing.PrintPageEventArgs e)
        {
            e.Graphics.DrawImage(memoryImage, 0, 0);
        }
    }
}
