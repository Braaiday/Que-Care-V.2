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
    string name;
    string surname;
    string street;
    string city;
    string province;
    string sex;
    string DOB;
    string cell;
    string email;
    string username;
    string password;

    protected void Page_Load(object sender, EventArgs e)
    {
        string connection = ConfigurationManager.ConnectionStrings["QueCareConnectionString"].ConnectionString;
        SqlConnection conn = new SqlConnection(connection);
        conn.Open();
        string checksize = "select count(*) from Patient";
        SqlCommand size = new SqlCommand(checksize, conn);
        using (SqlDataReader dr = size.ExecuteReader())
        {
            while (dr.Read())
            {
                ID = int.Parse(dr[0].ToString()) + 1;
            }
        }
        
     }

    protected void btnRegister_Click(object sender, EventArgs e)
    {
        name = txtRegisterName.Text;
        surname = txtRegisterSurname.Text;
        street = txtRegisterStreetAddress.Text;
        city = txtRegisterCity.Text;
        province = DropDownList1.Text;
        sex = DropDownRegisterSex.Text;
        DOB = txtRegisterDOB.Text;
        cell = txtRegisterCellNumber.Text;
        email = txtRegisterEmail.Text;
        username = txtUsername.Text;
        password = txtRegisterPassword.Text;
        string connection = ConfigurationManager.ConnectionStrings["QueCareConnectionString"].ConnectionString;
        SqlConnection conn = new SqlConnection(connection);
        conn.Open();
        string query = "Insert into Patient(P_ID,P_Name,P_Surname,P_StreetAddress,P_City,P_Province,P_Sex,P_DOB,P_CellNumber,P_Email,P_UserName,P_Password)Values(@P_ID,@P_Name,@P_Surname,@P_StreetAddress,@P_City,@P_Province,@P_Sex,@P_DOB,@P_CellNumber,@P_Email,@P_UserName,@P_Password)";
        SqlCommand command = new SqlCommand(query, conn);
        command.Parameters.AddWithValue("P_ID", ID);
        command.Parameters.AddWithValue("P_Name", name);
        command.Parameters.AddWithValue("P_Surname", surname);
        command.Parameters.AddWithValue("P_StreetAddress", street);
        command.Parameters.AddWithValue("P_City", city);
        command.Parameters.AddWithValue("P_Province", province);
        command.Parameters.AddWithValue("P_Sex", sex);
        command.Parameters.AddWithValue("P_DOB", DOB);
        command.Parameters.AddWithValue("P_CellNumber", cell);
        command.Parameters.AddWithValue("P_Email", email);
        command.Parameters.AddWithValue("P_UserName", username);
        command.Parameters.AddWithValue("P_Password", password);
        command.ExecuteNonQuery();
        conn.Close();
        Session["Username"] = username;
        Server.Transfer("PatientLanding.aspx");
    }

    protected void txtRegisterUsername_TextChanged(object sender, EventArgs e)
    {

    }
}