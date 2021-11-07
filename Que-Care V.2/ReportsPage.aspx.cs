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
using System.Web.Script.Serialization;
using System.Web.Services;

public partial class _Default : System.Web.UI.Page
{
    public int DocCount = 0;
    public int PatCount = 0;
    public int RecepCount = 0;
    public int NumTickets = 0;
    public string MyjsSerializer;
    public int Denistry;
    public int Optometrist;
    public int Cardiology;
    public int Urology;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            LoadDataPieChart();
            GenerateBarChart();
        }
    }
    void LoadDataPieChart()
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
    void GenerateBarChart()
    {
        DataTable dt = new DataTable();
        string connection = ConfigurationManager.ConnectionStrings["QueCareConnectionString"].ConnectionString;
        using (SqlConnection conn = new SqlConnection(connection))
        {
            conn.Open();
            SqlCommand cmd = new SqlCommand("SELECT Dept_ID from Doctor", conn);

            SqlDataAdapter da = new SqlDataAdapter(cmd);
            conn.Close();
            da.Fill(dt);
            int count = dt.Rows.Count;
            int temp = 0;
            foreach (DataRow row in dt.Rows)
            {
                temp = Convert.ToInt32(row["Dept_ID"].ToString());
                    if (temp == 1)
                        {
                            Denistry++;
                        }
                        else if (temp == 3)
                        {
                            Optometrist++;
                        }
                        else if (temp == 7)
                        {
                            Cardiology++;
                        }
                        else if (temp == 8)
                        {
                            Urology++;
                       }
            }
            conn.Close();




           


        }

          
    }

    




}
