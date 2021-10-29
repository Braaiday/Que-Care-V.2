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
    int ID;
    string Dept_Name;
    string Dept_Function = "Not Described";
    protected void Page_Load(object sender, EventArgs e)
    {
        ValidationSettings.UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
        string connection = ConfigurationManager.ConnectionStrings["QueCareConnectionString"].ConnectionString;
        SqlConnection conn = new SqlConnection(connection);
        conn.Open();
        string checksize = "select count(*) from Department";
        SqlCommand size = new SqlCommand(checksize, conn);
        using (SqlDataReader dr = size.ExecuteReader())
        {
            while (dr.Read())
            {
                ID = int.Parse(dr[0].ToString()) + 1;
            }
        }
        conn.Close();
    }

    protected void btnAddSpecialization_Click(object sender, EventArgs e)
    {
        string connection = ConfigurationManager.ConnectionStrings["QueCareConnectionString"].ConnectionString;
        SqlConnection conn = new SqlConnection(connection);
        conn.Open();
        Dept_Name = txtDepartmentName.Text;
        Dept_Function = Request.Form["txtDepartmentFunction"].ToString();
        if (RequiredFieldValidator1.IsValid == true)
        {
            string query = "Insert into Department(Dept_ID,Dept_Name,Dept_Function)Values(@Dept_ID,@Dept_Name,@Dept_Funtion)";
            SqlCommand command = new SqlCommand(query, conn);
            command.Parameters.AddWithValue("Dept_ID", ID);
            command.Parameters.AddWithValue("Dept_Name", Dept_Name);
            command.Parameters.AddWithValue("Dept_Funtion", Dept_Function);
            command.ExecuteNonQuery();
            conn.Close();
            Server.Transfer("AdminLanding.aspx");
        }
        conn.Close();
    }
}