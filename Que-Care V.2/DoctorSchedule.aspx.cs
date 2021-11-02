using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string username = "";
        int docID = 0;
        username = Session["Username"].ToString();
        string connection = ConfigurationManager.ConnectionStrings["QueCareConnectionString"].ConnectionString;
        SqlConnection conn = new SqlConnection(connection);
        conn.Open();
        string getID = "select Doc_ID from Doctor where Doc_UserName =" + " '" + username + "'";
        SqlCommand gettingID = new SqlCommand(getID, conn);
        using (SqlDataReader dr = gettingID.ExecuteReader())
        {
            while (dr.Read())
            {
                docID = int.Parse(dr[0].ToString());
            }
        }
        string query = "select P_Name, Symptoms, Ticket_Date, Ticket_Time from Patient, VirtualTicket where VirtualTicket.Doc_ID =" + " '" + docID + "' " + "and Patient.P_ID = VirtualTicket.P_ID";
        //string query = "select Doc_ID, Doc_Name, Doc_Surname, Doc_Cell, Doc_Sex, Doc_Email from Doctor where Doc_ID =" + " '" + docID + "'";
        SqlCommand doctor = new SqlCommand(query, conn);
        doctor.ExecuteNonQuery();
        ListView1.DataSource = doctor.ExecuteReader();
        ListView1.DataBind();
        conn.Close();
    }
}