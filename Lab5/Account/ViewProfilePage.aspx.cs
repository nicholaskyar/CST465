using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using Lab5.Old_App_Code;

public partial class ViewProfilePage : System.Web.UI.Page
{
    private ProfilePersistance persist = new ProfilePersistance();

    protected void Page_Load(object sender, EventArgs e)
    {
        ProfileData data = persist.LoadProfile();

        if (data != null)
        {
            uxNameLiteral.Text = data.Name;
            uxEmailLiteral.Text = data.Email;
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