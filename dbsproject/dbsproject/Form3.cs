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
    public partial class Form3 : Form
    {// int b_no;
        string myConnectionString;
        MySql.Data.MySqlClient.MySqlConnection conn;
        MySql.Data.MySqlClient.MySqlDataAdapter adap;
        MySql.Data.MySqlClient.MySqlCommand cmd;
        DataSet ds;
        DataTable dt;
        DataRow dr;
        int cost=0;
        int totalSeatsBooked=0;
        String Audi;
        string ID;
        Button[,] btnSeat = new Button[21, 7];
        Label[] label = new Label[7];
        int[,] seatStatus = new int[21,7];

        

        public Form3(string audi,string ID)
        {
            this.ID = ID;
            Audi = audi;
            InitializeComponent();
        }

        private void Form3_Load(object sender, EventArgs e)
        {

        }
        
          private void drawPlan()
        {
            int offset;

            int seatMax;
            for (int j = 1; j <= 6; j++)
            {
                seatMax = 20;
                if (j == 1) seatMax = 12;
                if (j == 2) seatMax = 14;
                if (j == 3) seatMax = 16;
                if (j == 4) seatMax = 17;
                //if (j >= 7 && j <= 9) seatMax = 19;
                //if (j == 11) seatMax = 20;
                for (int i = 1; i <= seatMax; i++)
                {
                    offset = 0;
                    if (j == 1) offset = 4;
                    if (j == 2) offset = 3;
                    if (j == 3) offset = 2;
                    if (j == 4) offset = 1;
                  //  if (j >= 7 && j <= 9) offset = 1;

                    btnSeat[i, j] = new Button();
                    btnSeat[i, j].Width = 20;
                    btnSeat[i, j].Height = 20;
                    btnSeat[i, j].Left = ((20 * i) + (20 * offset));
                    if ((i + offset) > 15)
                        btnSeat[i, j].Left += 20;
                    btnSeat[i, j].Top = (20 * j);
                    if(seatStatus[i , j] == 0)
                    btnSeat[i, j].Image = Image.FromFile("../../seat1.png");
                    if (seatStatus[i, j] == 1)
                        btnSeat[i, j].Image = Image.FromFile("../../Seat3.png");
                    String buttonName = "btn";
                    if (j <= 9)
                        buttonName += " ";
                    buttonName += j;
                    if (i <= 9)
                        buttonName += " ";
                    buttonName += i;
                    btnSeat[i, j].Name = buttonName;
                    btnSeat[i, j].Click += new EventHandler(seat_Click);

                     panel1.Controls.Add(btnSeat[i, j]);
                     int rowNumber = j;
                    // if (j > 8)
                      //   rowNumber++;
                     string tooltipText = Convert.ToChar(rowNumber + 64).ToString()
                     + (i).ToString();
                     ToolTip buttonToolTip = new ToolTip();
                     buttonToolTip.SetToolTip(btnSeat[i, j], tooltipText);

                }
                label[j] = new Label();
                label[j].Size = new System.Drawing.Size(14,10);
                char c = Convert.ToChar(64 + j);
                //if (j > 8)
                  //  c = Convert.ToChar(65 + j);
                label[j].Text = Convert.ToString(c);
                label[j].Font = new System.Drawing.Font("Microsoft Sans Serif",
                6F, System.Drawing.FontStyle.Regular,
               System.Drawing.GraphicsUnit.Point, ((byte)(0)));
                label[j].Location = new System.Drawing.Point(325, 4 + 20 * j);
                panel1.Controls.Add(label[j]);

            }
       

        }
          private void seat_Click(object sender, EventArgs e)
          {   
              totalSeatsBooked++;
              Button clickedButton = (Button)sender;
              string s = clickedButton.Name;
              int j = Convert.ToInt16(s.Substring(3, 2));
              int i = Convert.ToInt16(s.Substring(5, 2));
              if (seatStatus[i, j] != 1)
              {
                  if (seatStatus[i, j] == 0)
                  {
                      seatStatus[i, j] = 2;
                      btnSeat[i, j].Image = Image.FromFile("../../seat2.png");
                  }
                  else
                  {
                      seatStatus[i, j] = 0;
                      btnSeat[i, j].Image = Image.FromFile("../../seat1.png");
                  }
                listBox1.Items.Add(label[j].Text + i);
            }
            cost = totalSeatsBooked * (int.Parse(label2.Text));
            textBox1.Text = cost.ToString(); 
        }

        private void comboBox1_SelectedIndexChanged(object sender, EventArgs e)
        {
            panel1.Invalidate();
            MessageBox.Show(comboBox1.Text.Substring(0,5)+" show selected");
            int i = 0;
            string a_name =Audi;
            String time= comboBox1.SelectedText.Substring(0,5)+":00";
            seat load = new seat();
            load.loadSeats(a_name, time);
            int noOfSeat = load.getNoOfSeat();
            
           
            for (i = 0 ; i < noOfSeat ; i++)
            {
                
                char c = seat.seatObject[i].getSeatRow();
                int r = ((int)c) - 64;
                if (r > 8) r--;
                int s = seat.seatObject[i].getSeatNumber();
                int available = seat.seatObject[i].getAvailable();
                
                seatStatus[s, r] = available;

            }
             
             
              drawPlan();
            
            
        }

        private void panel1_Paint(object sender, PaintEventArgs e)
        {

        }

        private void label3_Click(object sender, EventArgs e)
        {

        }

        private void label2_Click(object sender, EventArgs e)
        {

        }

        private void textBox1_TextChanged(object sender, EventArgs e)
        {

        }
        public int getUserID()
        {
            return 0;
        }

        private void button1_Click(object sender, EventArgs e)
        {
            totalSeatsBooked=0;
            cost =0;
            listBox1.Items.Clear();
            for (int j = 1; j <= 6; j++)
            { for (int i = 1; i <= 20; i++)
                { if (seatStatus[i, j] == 2)
                    {
                        seatStatus[i, j] = 0;

                        btnSeat[i, j].Image = Image.FromFile("../../seat1.png"); } } }
                        textBox1.Clear();
        }

        private void listBox1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        private void button2_Click(object sender, EventArgs e)
        {
            
           
            //conn.Open();
            for (int j = 1; j <= 6; j++)
            {
                for (int i = 1; i <= 20; i++)
                {
                    if (seatStatus[i, j] == 2)
                    {
                       try
                       {
                        myConnectionString = "server = MU-STD-S45; user id = sankalp; password =@1234567890; database = mydb;";
                        conn = new MySql.Data.MySqlClient.MySqlConnection(myConnectionString);
                        //This is my connection string i have assigned the database file address path  

                        //This is my update query in which i am taking input from the user through windows forms and update the record.

                        string Query = "update seats set available ='" + 1 + "',id='"+ID+"' where seatRow = '" + label[j].Text + "' and seatNumber ='" + i + "' and a_name='" + Audi + "' and time='" + comboBox1.Text.Substring(0, 5) + "' ; ";
                        //This is  MySqlConnection here i have created the object and pass my connection string.  
                        cmd = new MySql.Data.MySqlClient.MySqlCommand(Query, conn);

                        MySql.Data.MySqlClient.MySqlDataReader MyReader2;
                        conn.Open();
                        MyReader2 = cmd.ExecuteReader();

                        while (MyReader2.Read())
                        {
                        }
                        //MessageBox.Show("Data Updated");
                        //Connection closed here  
                    }
                       
                        catch (Exception ex)
                        {
                            MessageBox.Show(ex.Message);
                        }
                    }
                }
            }
            MessageBox.Show("Seat Booked");
            conn.Close();
            this.Hide();

            string arr="";
            foreach (var item in listBox1.Items)
            { arr += item.ToString() +"\n"; }
            //MessageBox.Show(arr);
            Bill b = new Bill(ID,arr,cost,comboBox1.Text);
            b.Show();
        }

        private void button3_Click(object sender, EventArgs e)
        {
            this.Close();
        }
    }
}


 