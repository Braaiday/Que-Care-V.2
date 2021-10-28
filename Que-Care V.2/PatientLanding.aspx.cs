using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

public partial class _Default : System.Web.UI.Page
{
    int P_ID = 0;
    protected void Page_Load(object sender, EventArgs e)
    {
       ///Here we are loading patient info
        string username = "";
        string patname = "";
        username = Session["Username"].ToString();
        string connection = ConfigurationManager.ConnectionStrings["QueCareConnectionString"].ConnectionString;
        SqlConnection conn = new SqlConnection(connection);
        conn.Open();
        string getName = "select P_Name from Patient where P_UserName =" + " '" + username + "'";
        SqlCommand name = new SqlCommand(getName, conn);
        using (SqlDataReader dr = name.ExecuteReader())
        {
            while (dr.Read())
            {
                patname = dr[0].ToString();
            }
        }
        Label5.Text = "Welcome " + patname;

        string getpatdata = "select P_Name, P_Surname, P_StreetAddress, P_City, P_Province, P_Sex, P_DOB, P_CellNumber, P_Email from Patient where P_Name =" + " '" + patname + "'";
        SqlCommand patdata = new SqlCommand(getpatdata, conn);
        using (SqlDataReader dr = patdata.ExecuteReader())
        {
            while (dr.Read())
            {
                Label2.Text = dr[0].ToString();
                Label4.Text = dr[1].ToString();
                Label8.Text = dr[2].ToString();
                Label10.Text = dr[3].ToString();
                Label12.Text = dr[4].ToString();
                Label14.Text = dr[5].ToString();
                Label16.Text = dr[6].ToString();
                Label18.Text = dr[7].ToString();
                Label20.Text = dr[8].ToString();
            }
        }
        //Loading patient people end.

        //Now we need to set the visibility of make ticket or show ticket, to stop users from making more than one ticket
        
        string getNamepat = "select P_ID from Patient where P_UserName =" + " '" + username + "'";
        SqlCommand SQLname = new SqlCommand(getNamepat, conn);
        using (SqlDataReader dr = SQLname.ExecuteReader())
        {
            while (dr.Read())
            {
                P_ID = int.Parse(dr[0].ToString());
            }
        }
        string seeStatus = "select count(P_ID) from VirtualTicket where P_ID=" + " '" + P_ID + "'";
        SqlCommand findticket = new SqlCommand(seeStatus, conn);
        using (SqlDataReader dr = findticket.ExecuteReader())
        {
            while (dr.Read())
            {
                if (dr[0].ToString() == "0")
                {
                    MakeTicket.Visible = true;
                }
                else
                {
                    HaveTicket.Visible = true;
                    
                }
            }
        }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        string username = "";
        username = Session["Username"].ToString();
        string connection = ConfigurationManager.ConnectionStrings["QueCareConnectionString"].ConnectionString;
        SqlConnection conn = new SqlConnection(connection);
        conn.Open();


       


        string getTicketInfo = "select Ticket_Time, Ticket_Date, Doc_Name from VirtualTicket, Doctor where VirtualTicket.P_ID=" + " '" + P_ID + "' and VirtualTicket.Doc_ID = Doctor.Doc_ID";
        SqlCommand ticketinfo = new SqlCommand(getTicketInfo, conn);
        using (SqlDataReader dr = ticketinfo.ExecuteReader())
        {
            while (dr.Read())
            {
                Label6.Text = dr[0].ToString();
                Label6.Text = Label6.Text.Remove(0, 10);
                Label21.Text = dr[1].ToString();
                Label21.Text = Label21.Text.Remove(11, 8);
                Label22.Text = dr[2].ToString();
            }
        }
        ///Example of structure of time and date in database
        ///Date = 2021/09/09 00:00:00
        ///time = 2021/09/09 15:00:00
        //Getting some Ticket information from web form

        Ticket.Visible = true;
    }
    protected void lnkDelete_Click(object sender, EventArgs e)
    {
        //Write the code here to delete the record
        string deleteticket = "delete from VirtualTicket where P_ID =" + " '" + P_ID + "'";
        string connection = ConfigurationManager.ConnectionStrings["QueCareConnectionString"].ConnectionString;
        SqlConnection conn = new SqlConnection(connection);
        conn.Open();
        SqlCommand deleterecord = new SqlCommand(deleteticket, conn);
        deleterecord.ExecuteNonQuery();
        MakeTicket.Visible = true;
        HaveTicket.Visible = false;
    }
}