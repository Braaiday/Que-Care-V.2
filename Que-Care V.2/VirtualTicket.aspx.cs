using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class _Default : System.Web.UI.Page
{
    SqlConnection conn = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\QueCare.mdf;Integrated Security=True;MultipleActiveResultSets=True");
    protected void Page_Load(object sender, EventArgs e)
    {
        ///Creating Connection to database
        conn.Open();

        ///Getting Patient Name
        string username = Session["Username"].ToString();
        string patname = "";
        string getNamepat = "select P_Name from Patient where P_UserName =" + " '" + username + "'";
        SqlCommand SQLname = new SqlCommand(getNamepat, conn);
        using (SqlDataReader dr = SQLname.ExecuteReader())
        {
            while (dr.Read())
            {
                patname = dr[0].ToString();
            }
        }
        Label6.Text = patname;
        ///
        ///Getting all the doctors from the database and adding them to the drop down list.
        string doctorcount = "select count(*) from Doctor";
        SqlCommand CountDoctors = new SqlCommand(doctorcount, conn);
        using (SqlDataReader dr1 = CountDoctors.ExecuteReader())
        {
            int size = 0;
            while (dr1.Read())
            {
                size = int.Parse(dr1[0].ToString());

            }
            
            for (int i = 1; i <= size; i++ )
            {
                string getName = "select Doc_Name from Doctor where Doc_ID= '" + i + "'";
                SqlCommand name = new SqlCommand(getName, conn);
                using (SqlDataReader dr2 = name.ExecuteReader())
                {
                    while (dr2.Read())
                    {
                        DropDownList1.Items.Add(dr2[0].ToString());
                    }
                    
                }
            }
        }
    }


    protected void Calendar1_SelectionChanged(object sender, EventArgs e)
    {

    }

    protected void Button1_Click1(object sender, EventArgs e)
    {
        ///Example of structure of time and date in database
        ///Date = 2021/09/09 00:00:00
        ///time = 2021/09/09 15:00:00
        //Getting some Ticket information from web form
        string Date = Calendar1.SelectedDate.ToString();
        string Doctor = DropDownList1.Text;
        string time = Date.Substring(0,11) + DropDownList2.Text + ":00";
        string symptoms = TextBox1.Text;


        //Getting Patient ID
        string username = Session["Username"].ToString();
        int P_ID = 0;
        string getNamepat = "select P_ID from Patient where P_UserName =" + " '" + username + "'";
        SqlCommand SQLname = new SqlCommand(getNamepat, conn);
        using (SqlDataReader dr = SQLname.ExecuteReader())
        {
            while (dr.Read())
            {
                P_ID = int.Parse(dr[0].ToString());
            }
        }


        //Getting Selected Doctor ID
        int Doc_ID = 0;
        string getName = "select Doc_ID from Doctor where Doc_Name = '" + Doctor + "'";
        SqlCommand name = new SqlCommand(getName, conn);
        using (SqlDataReader dr2 = name.ExecuteReader())
        {
            while (dr2.Read())
            {
                Doc_ID = int.Parse(dr2[0].ToString());
            }

        }
        //Assigning the ticket to a Receptionist randomly
        string receptCount = "select count(*) from Receptionist";
        SqlCommand CountDoctors = new SqlCommand(receptCount, conn);
        int Recept_ID = 0;
        using (SqlDataReader dr1 = CountDoctors.ExecuteReader())
        {
            int size = 0;
            while (dr1.Read())
            {
                size = int.Parse(dr1[0].ToString());

            }
            Random random = new Random();
            Recept_ID = random.Next(1, size + 1);

            
        }

        //Getting Ticket Count and adding plus 1 for getting ID for new ticket
        int Ticket_ID = 0;
        string getTicketCount = "select count(*) from VirtualTicket";
        SqlCommand getticketcount = new SqlCommand(getTicketCount,conn);
        using (SqlDataReader dr = getticketcount.ExecuteReader())
        {
            while (dr.Read())
            {
                Ticket_ID = int.Parse(dr[0].ToString()) + 1;
            }
        }
        ///Code for adding ticket to database
        
        string query = "Insert into VirtualTicket(Ticket_ID,Ticket_Time,Ticket_Date,Symptoms,P_ID,Recept_ID,Doc_ID)Values(@Ticket_ID,@Ticket_Time,@Ticket_Date,@Symptoms,@P_ID,@Recept_ID,@Doc_ID)";
        SqlCommand command = new SqlCommand(query, conn);
        command.Parameters.AddWithValue("Ticket_ID", Ticket_ID);
        command.Parameters.AddWithValue("Ticket_Time", time);
        command.Parameters.AddWithValue("Ticket_Date", Date);
        command.Parameters.AddWithValue("Symptoms", symptoms);
        command.Parameters.AddWithValue("P_ID", P_ID);
        command.Parameters.AddWithValue("Recept_ID", Recept_ID);
        command.Parameters.AddWithValue("Doc_ID", Doc_ID);
        command.ExecuteNonQuery();
        conn.Close();
        Server.Transfer("PatientLanding.aspx");
    }
}