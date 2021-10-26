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
    }
}