using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;
using System.Net;
using System.Net.Mail;
using System.Configuration;

public partial class _Default : System.Web.UI.Page
{
    string Email;
    string password;
    string username;
    protected void Page_Load(object sender, EventArgs e)
    {

    }



    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        string connection = ConfigurationManager.ConnectionStrings["QueCareConnectionString"].ConnectionString;
        SqlConnection conn = new SqlConnection(connection);
        conn.Open();
        Email = txtUsername.Text;
        string query = "select P_Password, P_UserName from Patient where P_Email=" + " '" + Email + "' ";
        SqlCommand cmd = new SqlCommand(query, conn);
        using (SqlDataReader dr = cmd.ExecuteReader())
        {
            while (dr.Read())
            {
                password = dr[0].ToString();
                username = dr[1].ToString();
                MailMessage mm = new MailMessage("quecareza@gmail.com", Email);
                mm.Subject = "Your Password!";
                mm.Body = string.Format("Hello : <h1>{0}</h1> is your Email id <br/> your password is <h1>{1}</h1>", username, password);
                SmtpClient smytp = new SmtpClient();
                smytp.Host = "smtp.gmail.com";
                smytp.EnableSsl = true;
                NetworkCredential nc = new NetworkCredential();
                nc.UserName = "quecareza@gmail.com";
                nc.Password = "quecare123";
                smytp.UseDefaultCredentials = true;
                smytp.Credentials = nc;
                smytp.Port = 587;
                smytp.Send(mm);
                message.Visible = true;
            }
        }
        conn.Close();
    }
}