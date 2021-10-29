using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

public partial class Default2 : System.Web.UI.Page
{
    int ID;
    string DocSpec_Name;
    string DocSpec_Funtion = "Not Described";
    protected void Page_Load(object sender, EventArgs e)
    {
        ValidationSettings.UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
        string connection = ConfigurationManager.ConnectionStrings["QueCareConnectionString"].ConnectionString;
        SqlConnection conn = new SqlConnection(connection);
        conn.Open();
        string checksize = "select count(*) from Specialization";
        SqlCommand size = new SqlCommand(checksize, conn);
        using (SqlDataReader dr = size.ExecuteReader())
        {
            while (dr.Read())
            {
                ID = int.Parse(dr[0].ToString()) + 1;
            }
        }
    }

    protected void btnAddSpecialization_Click(object sender, EventArgs e)
    {
        string connection = ConfigurationManager.ConnectionStrings["QueCareConnectionString"].ConnectionString;
        SqlConnection conn = new SqlConnection(connection);
        conn.Open();
        DocSpec_Name = txtSpecializationName.Text;
        DocSpec_Funtion = Request.Form["txtSpecializationFunction"].ToString();
        if (RequiredFieldValidator1.IsValid == true)
        {
            string query = "Insert into Specialization(DocSpec_ID,DocSpec_Name,DocSpec_Function)Values(@DocSpec_ID,@DocSpec_Name,@DocSpec_Function)";
            SqlCommand command = new SqlCommand(query, conn);
            command.Parameters.AddWithValue("DocSpec_ID", ID);
            command.Parameters.AddWithValue("DocSpec_Name", DocSpec_Name);
            command.Parameters.AddWithValue("DocSpec_Function", DocSpec_Funtion);
            command.ExecuteNonQuery();
            conn.Close();
            Server.Transfer("AdminLanding.aspx");
        }
    }
}