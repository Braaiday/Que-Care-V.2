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
        
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        Label1.Text = "Label";
        
        string connection = ConfigurationManager.ConnectionStrings["QueCareConnectionString"].ConnectionString;
        SqlConnection conn = new SqlConnection(connection);
        conn.Open();
        string patname = TextBox1.Text;
        string getpatdata = "select P_Name, P_Surname, P_StreetAddress, P_City, P_Province, P_Sex, P_DOB, P_CellNumber, P_Email from Patient where P_Name =" + " '" + patname + "'";
        SqlCommand patient = new SqlCommand(getpatdata, conn);
        using (SqlDataReader dr = patient.ExecuteReader())
        {
            while (dr.Read())
            {
                Label1.Text = dr[0].ToString();
                Label2.Text = dr[1].ToString();
                Label3.Text = dr[2].ToString();
                Label4.Text = dr[3].ToString();
                Label5.Text = dr[4].ToString();
                Label6.Text = dr[5].ToString();
                Label7.Text = dr[6].ToString();
                Label8.Text = dr[7].ToString();
                Label9.Text = dr[8].ToString();
            }
        }

        if (Label1.Text == "Label")
        {
            nopat.Visible = true;
            patdetails.Visible = false;
        }
        else 
        {
            patdetails.Visible = true;
            nopat.Visible = false;
        }
       
        conn.Close();
    }
}