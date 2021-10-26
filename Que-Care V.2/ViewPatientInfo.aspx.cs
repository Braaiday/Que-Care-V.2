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
        string connection = ConfigurationManager.ConnectionStrings["QueCareConnectionString"].ConnectionString;
        SqlConnection conn = new SqlConnection(connection);
        conn.Open();
        string patname = TextBox1.Text;
        string getpatdata = "select P_Name, P_Surname, P_StreetAddress, P_City, P_Province, P_Sex, P_DOB, P_CellNumber, P_Email from Patient where P_Name =" + " '" + patname + "'";
        SqlCommand patient = new SqlCommand(getpatdata, conn);
        patient.ExecuteNonQuery();
        ListView1.DataSource = patient.ExecuteReader();
        ListView1.DataBind();
        conn.Close();
    }
}