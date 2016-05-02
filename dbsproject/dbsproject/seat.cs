using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace dbsproject
{
    class seat
    {
      //string debug = "pawan";
        int noOfSeat = 0; // no. of seats in the particular audi
        private char seatRow;
        private int seatNumber;
        private int id;
        private int available;
        private int b_no;
        int i = 0;
        MySql.Data.MySqlClient.MySqlConnection conn;
        string myConnectionString;
        DataSet ds;
        DataTable dt;
        DataRow dr;
        DataColumn dc;
        MySql.Data.MySqlClient.MySqlCommand comm;
        MySql.Data.MySqlClient.MySqlDataAdapter adap;
        int t;
        public static seat[] seatObject = new seat[240];
        public void connect2() {
            myConnectionString = "server = MU-STD-S45; user id = sankalp; password =@1234567890; database = mydb;";


            conn = new MySql.Data.MySqlClient.MySqlConnection(myConnectionString);
            conn.Open();
            comm = new MySql.Data.MySqlClient.MySqlCommand();
            comm.CommandText = "select * from seats ;";
            comm.CommandType = CommandType.Text;
            ds = new DataSet();
            adap = new MySql.Data.MySqlClient.MySqlDataAdapter(comm.CommandText, conn);
            adap.Fill(ds, "seats");
            dt = ds.Tables["seats"];
            t = dt.Rows.Count;
            dr = dt.Rows[i];
        }
        
        public   void loadSeats(String a_name, String time)
        {
            
            connect2();
            while (i < t-1 )
            {    dr = dt.Rows[i];
               
                if (dr["a_name"].ToString() == a_name && dr["time"].ToString() == time)
                {
                    
                    seatObject[noOfSeat] = new seat();
                    
                    seatObject[noOfSeat].setSeatRow(Convert.ToChar(dr[0]));
                    seatObject[noOfSeat].setSeatNumber((int)dr[1]);
                   // seatObject[i].setid((int)dr[3]);
                  
                    seatObject[noOfSeat].setAvailable((int)dr[2]);
                    //seatObject[i].setBookingID((int)dr[6]);
                    noOfSeat++;
                }
                i++;
               
            }
                                      //AFTER MAKING THE DATABASE
        }
        public seat getobj(int i)
        { return seatObject[i];
        }
       
        public int getNoOfSeat()
        {
            return noOfSeat;
        }
        public void setSeatRow(char r)
        {
            seatRow = r;
        }
        public char getSeatRow()
        {
            return seatRow;
        }
        public void setSeatNumber(int s)
        {
            seatNumber = s;
        }
        public int getSeatNumber()
        {
            return seatNumber;
        }
        public void setid(int a)
        {
            id = a;
        }
        public int getid()
        {
            return id;
        }
        public void setAvailable(int a)
        {
            available = a;
        }
        public int getAvailable()
        {
            return available;
        }
        public void setBookingID(int b)
        {
           b_no = b;
        }
        public int getBookingID()
        {
            return b_no;
        }

        internal void loadSeats()
        {
            throw new NotImplementedException();
        }
    }
}
