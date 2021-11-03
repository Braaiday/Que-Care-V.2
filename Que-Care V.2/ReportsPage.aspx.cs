using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.DataVisualization.Charting;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;

public partial class _Default : System.Web.UI.Page
{
    public int DocCount;
    public int PatCount;
    public int RecepCount;
    public int NumTickets;
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
            SqlCommand NumberTickets = new SqlCommand("select count(*) from VirtualTicket", conn);
            using (SqlDataReader dr = NumberTickets.ExecuteReader())
            {
                while (dr.Read())
                {
                    NumTickets = int.Parse(dr[0].ToString());
                }
            }
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            da.Fill(dt);
            conn.Close();
        }
        DocCount = Convert.ToInt32(dt.Rows[0][0].ToString());
        PatCount = Convert.ToInt32(dt.Rows[0][1].ToString());
        RecepCount = Convert.ToInt32(dt.Rows[0][2].ToString());

    }
}