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
    public partial class WebForm11 : System.Web.UI.Page
    {
        protected override void OnInit(EventArgs e)
        {
            base.OnInit(e);
        }

        protected void Page_Load(object sender, EventArgs e)
        {


        }

        protected void uxSubmitCommentButton_Click(object sender, EventArgs e)
        {
            TextBox comment = (TextBox)uxCommentLoginView.FindControl("uxCommentBox");

            SqlCommand saveComment = new SqlCommand();
            saveComment.CommandText = "INSERT INTO dbo.AnnouncementComment (AnnouncementID, UserId, Comment, DatePosted) VALUES (@AnnouncementID, @UserId, @Comment, @DatePosted);";
            saveComment.Connection = new SqlConnection(ConfigurationManager.ConnectionStrings["SqlSecurityDB"].ConnectionString);
            saveComment.Connection.Open();
            saveComment.CommandType = System.Data.CommandType.Text;

            saveComment.Parameters.Add(new SqlParameter("@AnnouncementID", Request.QueryString["ID"].ToString()));
            saveComment.Parameters.Add(new SqlParameter("@UserId", Membership.GetUser().ProviderUserKey.ToString()));
            saveComment.Parameters.Add(new SqlParameter("@Comment", comment.Text));
            saveComment.Parameters.Add(new SqlParameter("@DatePosted", DateTime.Now.ToString("M/d/yyyy hh:mm:ss tt")));

            saveComment.ExecuteNonQuery();
            saveComment.Connection.Close();

            Response.Redirect(Request.RawUrl);
        }
    }
}