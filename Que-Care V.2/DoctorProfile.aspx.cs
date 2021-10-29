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



       
       
        string query = "select Doc_ID, Doc_Name, Doc_Surname, Doc_Cell, Doc_Sex, Doc_Email from Doctor where Doc_ID =" + " '" + docID + "'";
        SqlCommand doctor = new SqlCommand(query, conn);
        using (SqlDataReader dr = doctor.ExecuteReader())
        {
            while (dr.Read())
            {
                Label1.Text = dr[0].ToString();
                Label2.Text = dr[1].ToString();
                Label3.Text = dr[2].ToString();
                Label4.Text = dr[3].ToString();
                Label5.Text = dr[4].ToString();
                Label6.Text = dr[5].ToString();
            }
        }
        conn.Close();
    }
}