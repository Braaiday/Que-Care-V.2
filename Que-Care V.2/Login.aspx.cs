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
    string connection = ConfigurationManager.ConnectionStrings["QueCareConnectionString"].ConnectionString;

    protected void Page_Load(object sender, EventArgs e)
    {
    }

    protected void btnLogin_Click(object sender, EventArgs e)
    {
        SqlConnection conn = new SqlConnection(connection);
        conn.Open();
        int found = 0;
        string username = txtUsername.Text;
        Session["Username"] = username;
        string password = txtPassword.Text;
        string queryPatient = "select Count(*) from Patient where P_UserName = " + "'" + username + "' and P_Password = " + "'" + password + "'";
        string queryDoctor = "select Count(*) from Doctor where Doc_UserName = " + "'" + username + "' and Doc_Password = " + "'" + password + "'";
        string queryRecep = "select Count(*) Recept_Name from Receptionist where Recept_UserName = " + "'"  + username + "' and Recept_Password = " + "'" + password + "'";
        SqlCommand patient = new SqlCommand(queryPatient, conn);
        SqlCommand doctor = new SqlCommand(queryDoctor, conn);
        SqlCommand recept = new SqlCommand(queryRecep, conn);

        using (SqlDataReader dr = patient.ExecuteReader())
        {
            while (dr.Read())
            {
                found = int.Parse(dr[0].ToString());
                if (found == 1)
                {
                    //Server.Transfer("PatientLanding.aspx");
                    Response.Redirect("~/PatientLanding.aspx");
                }
            }
        }



        using (SqlDataReader dr = doctor.ExecuteReader())
        {
            while (dr.Read())
            {
                found = int.Parse(dr[0].ToString());
                if (found == 1)
                {
                    //Server.Transfer("DoctorLanding.aspx");
                    Response.Redirect("~/DoctorLanding.aspx");
                }
            }
        }


        using (SqlDataReader dr = recept.ExecuteReader())
        {
            while (dr.Read())
            {
                found = int.Parse(dr[0].ToString());
                if (found == 1)
                {
                    //Server.Transfer("SecretaryLanding.aspx");
                    Response.Redirect("~/SecretaryLanding.aspx");
                }
            }
        }
        if (username == "admin" && password == "12345")
        {
            Response.Redirect("~/AdminLanding.aspx");
        }
        else if (found == 0)
        {
            Label1.Visible = true;
        }

        string myErrorMessage = string.Empty;
        try
        {
            string loginUsername_;
            int loginPassword_;
            loginUsername_ = txtUsername.ToString();
            loginPassword_ = int.Parse(txtPassword.Text);
        }
        catch
        {
            myErrorMessage = "For Username, please insert a string. For Password, please insert an integer.*";
        }
       

    }
}