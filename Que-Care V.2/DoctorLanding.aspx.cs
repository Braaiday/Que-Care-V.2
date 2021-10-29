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
        string docname = "";
        string connection = ConfigurationManager.ConnectionStrings["QueCareConnectionString"].ConnectionString;
        SqlConnection conn = new SqlConnection(connection);
        conn.Open();
        username = Session["Username"].ToString();
        string getName = "select Doc_Name from Doctor where Doc_UserName =" + " '" + username + "'";
        SqlCommand name = new SqlCommand(getName, conn);
        using (SqlDataReader dr = name.ExecuteReader())
        {
            while (dr.Read())
            {
                docname = dr[0].ToString();
            }
        }
        Label2.Text = docname;
        conn.Close();
    }

    protected void btnDoctorsSchedule_Click(object sender, EventArgs e)
    {
        Response.Clear();
        Response.Redirect("~/DoctorSchedule.aspx");
        //Server.Transfer("DoctorSchedule.aspx");
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Clear();
        //Server.Transfer("DoctorProfile.aspx");
        Response.Redirect("~/DoctorProfile.aspx");
    }
}