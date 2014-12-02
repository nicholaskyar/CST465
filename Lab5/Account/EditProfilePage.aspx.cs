using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using Lab5.Old_App_Code;

public partial class EditProfilePage : System.Web.UI.Page
{
    private ProfilePersistance persist = new ProfilePersistance();

    protected void Page_Load(object sender, EventArgs e)
    {
        
    }
    protected void uxSaveButton_Click(object sender, EventArgs e)
    {
        ProfileData data = new ProfileData();

        data.Name = uxName.Text;
        data.Email = uxEmail.Text;
        data.UserType = uxUserType.Text;
        data.Hobby = uxHobby.Text;
        data.Band = uxBand.Text;
        data.Biography = uxBiography.Text;
        data.CoursePrefix = uxCoursePrefix.Text;
        data.CourseNumber = uxCourseNumber.Text;
        data.CourseDescription = uxCourseDescription.Text;

        persist.SaveProfile(data);

        //Session.Add("ProfileData",data);

        Response.Redirect("ViewProfilePage.aspx");
    }
}