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
    string sex;
    string cell;
    string email;
    string username;
    string password;
    string Specilization;
    string Department;
    int SpecilizationID;
    int DepartmentID;
    protected void Page_Load(object sender, EventArgs e)
    {
        ValidationSettings.UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
        string connection = ConfigurationManager.ConnectionStrings["QueCareConnectionString"].ConnectionString;
        SqlConnection conn = new SqlConnection(connection);
        conn.Open();

        ///// Get the next doctor ID
        ///string connection = ConfigurationManager.ConnectionStrings["QueCareConnectionString"].ConnectionString;
    
        string checksize = "select count(*) from Doctor";
        SqlCommand sizeDoctor = new SqlCommand(checksize, conn);
        using (SqlDataReader dr = sizeDoctor.ExecuteReader())
        {
            while (dr.Read())
            {
                ID = int.Parse(dr[0].ToString()) + 1;
            }
        }

        ///Load in all departments into 
        ///
        //Department List
        string departmentcount = "select count(*) from Department";
        SqlCommand CountDepartment = new SqlCommand(departmentcount, conn);
        using (SqlDataReader dr1 = CountDepartment.ExecuteReader())
        {
            int size = 0;
            while (dr1.Read())
            {
                size = int.Parse(dr1[0].ToString());

            }

            for (int i = 1; i <= size; i++)
            {
                string getName = "select Dept_Name from Department where Dept_ID = '" + i + "'";
                SqlCommand name = new SqlCommand(getName, conn);
                using (SqlDataReader dr2 = name.ExecuteReader())
                {
                    while (dr2.Read())
                    {
                        DropDownList2.Items.Add(dr2[0].ToString());
                    }

                }
            }
        }
        //Specilization List
        string specilizationCount = "select count(*) from Specialization";
        SqlCommand CountSpecilization = new SqlCommand(specilizationCount, conn);
        using (SqlDataReader dr1 = CountSpecilization.ExecuteReader())
        {
            int size = 0;
            while (dr1.Read())
            {
                size = int.Parse(dr1[0].ToString());

            }

            for (int i = 1; i <= size; i++)
            {
                string getName = "select DocSpec_Name from Specialization where DocSpec_ID = '" + i + "'";
                SqlCommand name = new SqlCommand(getName, conn);
                using (SqlDataReader dr2 = name.ExecuteReader())
                {
                    while (dr2.Read())
                    {
                        DropDownList1.Items.Add(dr2[0].ToString());
                    }

                }
            }
        }
        
    }
    protected void btnRegister_Click(object sender, EventArgs e)
    {
        name = txtRegisterName.Text;
        surname = txtRegisterSurname.Text;
        sex = DropDownRegisterSex.Text;
        cell = txtRegisterCellNumber.Text;
        email = txtRegisterEmail.Text;
        username = txtUsername.Text;
        password = txtRegisterPassword.Text;
        Specilization = DropDownList1.Text;
        Department = DropDownList2.Text;

        //We need to find ID for Specilization and Department
        string connection = ConfigurationManager.ConnectionStrings["QueCareConnectionString"].ConnectionString;
        SqlConnection conn = new SqlConnection(connection);
        conn.Open();

        //Finding Specilization ID
        string idspecilization = "select DocSpec_ID from Specialization where DocSpec_Name = '" + Specilization + "'";
        SqlCommand queryspecilization = new SqlCommand(idspecilization, conn);
        using (SqlDataReader dr = queryspecilization.ExecuteReader())
        {
            while (dr.Read())
            {
                SpecilizationID = int.Parse(dr[0].ToString());
            }
        }

        //Finding Department ID
        string IDdepartment = "select Dept_ID from Department where Dept_Name = '" + Department + "'";
        SqlCommand querydepartment = new SqlCommand(IDdepartment, conn);
        using (SqlDataReader dr = querydepartment.ExecuteReader())
        {
            while (dr.Read())
            {
                DepartmentID = int.Parse(dr[0].ToString());
            }
        }



        if ((RequiredFieldValidator10.IsValid == true) &&  (RequiredFieldValidator9.IsValid == true) && (CompareValidator1.IsValid == true) && (RequiredFieldValidator1.IsValid == true) && (RequiredFieldValidator2.IsValid == true) && (RequiredFieldValidator3.IsValid == true))
        {
           
            string query = "Insert into Doctor(Doc_ID,Doc_Name,Doc_Surname,Doc_Cell,Doc_Sex,Doc_Email,Doc_UserName,Doc_Password,DocSpec_ID,Dept_ID)Values(@Doc_ID,@Doc_Name,@Doc_Surname,@Doc_Cell,@Doc_Sex,@Doc_Email,@Doc_UserName,@Doc_Password,@DocSpec_ID,@Dept_ID)";
            SqlCommand command = new SqlCommand(query, conn);
            command.Parameters.AddWithValue("Doc_ID", ID);
            command.Parameters.AddWithValue("Doc_Name", name);
            command.Parameters.AddWithValue("Doc_Surname", surname);
            command.Parameters.AddWithValue("Doc_Cell", cell);
            command.Parameters.AddWithValue("Doc_Sex", sex);
            command.Parameters.AddWithValue("Doc_Email", email);
            command.Parameters.AddWithValue("Doc_UserName", username);
            command.Parameters.AddWithValue("Doc_Password", password);
            command.Parameters.AddWithValue("DocSpec_ID", SpecilizationID);
            command.Parameters.AddWithValue("Dept_ID", DepartmentID);
            command.ExecuteNonQuery();
            conn.Close();
            Server.Transfer("AdminLanding.aspx");
        }

    }
}