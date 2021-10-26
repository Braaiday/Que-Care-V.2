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
        string secname = "";
        string connection = ConfigurationManager.ConnectionStrings["QueCareConnectionString"].ConnectionString;
        SqlConnection conn = new SqlConnection(connection);
        conn.Open();
        username = Session["Username"].ToString();
        string getName = "select Recept_Name from Receptionist where Recept_UserName =" + " '" + username + "'";
        SqlCommand name = new SqlCommand(getName, conn);
        using (SqlDataReader dr = name.ExecuteReader())
        {
            while (dr.Read())
            {
                secname = dr[0].ToString();
            }
        }
        Label2.Text = secname;


        ///Retriveing Secretary data
        ///
        

        string getrecepdata = "select Recept_Name, Recept_Surname, Recept_StreetAddress, Recept_City, Recept_Province, Recept_Cell from Receptionist where Recept_Name =" + " '" + secname + "'";
        SqlCommand recept = new SqlCommand(getrecepdata, conn);
        using (SqlDataReader dr = recept.ExecuteReader())
        {
            while (dr.Read())
            {
                Label4.Text = dr[0].ToString();
                Label5.Text = dr[1].ToString();
                Label6.Text = dr[2].ToString();
                Label7.Text = dr[3].ToString();
                Label8.Text = dr[4].ToString();
                Label9.Text = dr[5].ToString();
            }
        }


    }
}