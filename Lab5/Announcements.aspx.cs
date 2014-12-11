using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Lab5
{
    public partial class WebForm9 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void uxSubmitAnnounceButton_Click(object sender, EventArgs e)
        {
            TextBox title = (TextBox)uxLoginView1.FindControl("uxAnnounceHead"),
                    body = (TextBox)uxLoginView1.FindControl("uxAnnounceBody");

            SqlCommand saveAnnouncement = new SqlCommand();
            saveAnnouncement.CommandText = "INSERT INTO dbo.Announcement (UserId, Title, Body, DatePosted) VALUES (@UserId, @Title, @Body, @DatePosted);";
            saveAnnouncement.Connection = new SqlConnection(ConfigurationManager.ConnectionStrings["SqlSecurityDB"].ConnectionString);
            saveAnnouncement.Connection.Open();
            saveAnnouncement.CommandType = System.Data.CommandType.Text;

            saveAnnouncement.Parameters.Add(new SqlParameter("@UserId", Membership.GetUser().ProviderUserKey.ToString()));
            saveAnnouncement.Parameters.Add(new SqlParameter("@Title", title.Text));
            saveAnnouncement.Parameters.Add(new SqlParameter("@Body", body.Text));
            saveAnnouncement.Parameters.Add(new SqlParameter("@DatePosted", DateTime.Now.ToString("M/d/yyyy hh:mm:ss tt")));

            saveAnnouncement.ExecuteNonQuery();
            saveAnnouncement.Connection.Close();

            Response.Redirect(Request.RawUrl);
        }
    }
}