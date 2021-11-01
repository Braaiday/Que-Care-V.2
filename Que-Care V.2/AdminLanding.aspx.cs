using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.DataVisualization.Charting;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            LoadData();
        }
    }
    void LoadData()
    {
        DataTable dt = new DataTable();
        string connection = ConfigurationManager.ConnectionStrings["QueCareConnectionString"].ConnectionString;
        using (SqlConnection conn = new SqlConnection(connection))
        {
            conn.Open();
            SqlCommand cmd = new SqlCommand("select (select count(*) from Doctor) as Doctors,(select count(*) from Patient) as Patients,(select count(*) from Receptionist) as Receptionists", conn);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            da.Fill(dt);
            conn.Close();
        }
     

        

        int DocCount = Convert.ToInt32(dt.Rows[0][0].ToString());
        int PatCount = Convert.ToInt32(dt.Rows[0][1].ToString());
        int RecepCount = Convert.ToInt32(dt.Rows[0][2].ToString());


        Chart1.Titles.Add("User Split");

        Chart1.Series["Series1"].Points.AddXY("Doctors", DocCount);
        Chart1.Series["Series1"].Points.AddXY("Patients", PatCount);
        Chart1.Series["Series1"].Points.AddXY("Receptionist", RecepCount);
    }
}