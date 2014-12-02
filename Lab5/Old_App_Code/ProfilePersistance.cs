using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Security;

namespace Lab5.Old_App_Code
{
    public class ProfilePersistance
    {
        public void SaveProfile( ProfileData userData )
        {
            SqlCommand saveProfile = new SqlCommand();
            saveProfile.CommandText = "spUserProfile_InsertUpdate";
            saveProfile.Connection = new SqlConnection(ConfigurationManager.ConnectionStrings["SqlSecurityDB"].ConnectionString);
            saveProfile.Connection.Open();
            saveProfile.CommandType = System.Data.CommandType.StoredProcedure;

            saveProfile.Parameters.Add(new SqlParameter("@UserId", Membership.GetUser().ProviderUserKey.ToString()));
            saveProfile.Parameters.Add(new SqlParameter("@Name", userData.Name));
            saveProfile.Parameters.Add(new SqlParameter("@Email", userData.Email));
            saveProfile.Parameters.Add(new SqlParameter("@UserType", userData.UserType));
            saveProfile.Parameters.Add(new SqlParameter("@Hobbies", userData.Hobby));
            saveProfile.Parameters.Add(new SqlParameter("@FavoriteBands", userData.Band));
            saveProfile.Parameters.Add(new SqlParameter("@Biography", userData.Biography));

            saveProfile.ExecuteReader();
            saveProfile.Connection.Close();

            SqlCommand saveCourseData = new SqlCommand();
            saveCourseData.CommandText = "spCourses_InsertUpdate";
            saveCourseData.Connection = new SqlConnection(ConfigurationManager.ConnectionStrings["SqlSecurityDB"].ConnectionString);
            saveCourseData.Connection.Open();
            saveCourseData.CommandType = System.Data.CommandType.StoredProcedure;

            saveCourseData.Parameters.Add(new SqlParameter("@UserId", Membership.GetUser().ProviderUserKey.ToString()));
            saveCourseData.Parameters.Add(new SqlParameter("@Prefix", userData.CoursePrefix));
            saveCourseData.Parameters.Add(new SqlParameter("@Number", userData.CourseNumber));
            saveCourseData.Parameters.Add(new SqlParameter("@Description", userData.CourseDescription));

            saveCourseData.ExecuteReader();
            saveCourseData.Connection.Close();
        }

        public ProfileData LoadProfile()
        {
            SqlCommand loadProfile = new SqlCommand();
            loadProfile.Connection = new SqlConnection(ConfigurationManager.ConnectionStrings["SqlSecurityDB"].ConnectionString);
            loadProfile.Connection.Open();
            loadProfile.CommandType = System.Data.CommandType.Text;

            loadProfile.CommandText = "SELECT Name, Email, UserType, Hobbies, FavoriteBands, Biography, Prefix, Number, Description FROM UserProfile JOIN Courses ON UserProfile.UserId = Courses.UserId WHERE UserProfile.UserId = @UserId;";
            loadProfile.Parameters.Add(new SqlParameter("@UserId", Membership.GetUser().ProviderUserKey.ToString()));

            SqlDataReader rdr = loadProfile.ExecuteReader();


            if(rdr.HasRows)
            {
                ProfileData userData = new ProfileData();

                rdr.Read();
                userData.Name = rdr.GetString(0);
                userData.Email = rdr.GetString(1);
                userData.UserType = rdr.GetString(2);
                userData.Hobby = rdr.GetString(3);
                userData.Band = rdr.GetString(4);
                userData.Biography = rdr.GetString(5);
                userData.CoursePrefix = rdr.GetString(6);
                userData.CourseNumber = rdr.GetString(7);
                userData.CourseDescription = rdr.GetString(8);

                return userData;
            }

            else
            {
                return null;
            }
        }
    }
}