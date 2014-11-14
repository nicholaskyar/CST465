using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ViewProfilePage : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        ProfileData data = (ProfileData) Session["ProfileData"];

        if (data != null)
        {
            uxNameLiteral.Text = data.Name;
            uxUserTypeLiteral.Text = data.UserType;
            uxHobbyLiteral.Text = data.Hobby;
            uxBandLiteral.Text = data.Band;
            uxBiographyLiteral.Text = data.Biography;
            uxCoursePrefixLiteral.Text = data.CoursePrefix;
            uxCourseNumberLiteral.Text = data.CourseNumber;
            uxCourseDescriptionLiteral.Text = data.CourseDescription;
        }
    }
}