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
    string cell;
    string email;
    string username;
    string password;
    protected void Page_Load(object sender, EventArgs e)
    {
        ValidationSettings.UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
        string connection = ConfigurationManager.ConnectionStrings["QueCareConnectionString"].ConnectionString;
        SqlConnection conn = new SqlConnection(connection);
        conn.Open();
        string checksize = "select count(*) from Receptionist";
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

    protected void btnRegister_Click(object sender, EventArgs e)
    {
        name = txtRegisterName.Text;
        surname = txtRegisterSurname.Text;
        street = txtRegisterStreetAddress.Text;
        city = txtRegisterCity.Text;
        province = DropDownList1.Text;
        cell = txtRegisterCellNumber.Text;
        email = txtRegisterEmail.Text;
        username = txtUsername.Text;
        password = txtRegisterPassword.Text;
        if ((RequiredFieldValidator10.IsValid == true) && (RequiredFieldValidator1.IsValid == true) && (RequiredFieldValidator2.IsValid == true) && (RequiredFieldValidator3.IsValid == true) && (RequiredFieldValidator7.IsValid == true) && (RequiredFieldValidator8.IsValid == true) && (RequiredFieldValidator9.IsValid == true) && (CompareValidator1.IsValid == true))
        {
            string connection = ConfigurationManager.ConnectionStrings["QueCareConnectionString"].ConnectionString;
            SqlConnection conn = new SqlConnection(connection);
            conn.Open();
            string query = "Insert into Receptionist(Recept_ID,Recept_Name,Recept_Surname,Recept_StreetAddress,Recept_City,Recept_Province,Recept_Cell,Recept_Email,Recept_UserName,Recept_Password)Values(@Recept_ID,@Recept_Name,@Recept_Surname,@Recept_StreetAddress,@Recept_City,@Recept_Province,@Recept_Cell,@Recept_Email,@Recept_UserName,@Recept_Password)";
            SqlCommand command = new SqlCommand(query, conn);
            command.Parameters.AddWithValue("Recept_ID", ID);
            command.Parameters.AddWithValue("Recept_Name", name);
            command.Parameters.AddWithValue("Recept_Surname", surname);
            command.Parameters.AddWithValue("Recept_StreetAddress", street);
            command.Parameters.AddWithValue("Recept_City", city);
            command.Parameters.AddWithValue("Recept_Province", province);
            command.Parameters.AddWithValue("Recept_Cell", cell);
            command.Parameters.AddWithValue("Recept_Email", email);
            command.Parameters.AddWithValue("Recept_UserName", username);
            command.Parameters.AddWithValue("Recept_Password", password);
            command.ExecuteNonQuery();
            conn.Close();
            Session["Username"] = username;
            Server.Transfer("AdminLanding.aspx");
        }
    }
    protected void txtRegisterUsername_TextChanged(object sender, EventArgs e)
    {

    }
}