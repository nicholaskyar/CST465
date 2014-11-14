using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for ProfileData
/// </summary>
public class ProfileData
{
    private String _Name;
    private String _UserType;
    private String _Hobby;
    private String _Band;
    private String _Biography;
    private String _CoursePrefix;
    private String _CourseNumber;
    private String _CourseDescription;

    public String Name
    {
        get { return _Name; }
        set { _Name = value; }
    }

    public String UserType
    {
        get { return _UserType; }
        set { _UserType = value; }
    }

    public String Hobby
    {
        get { return _Hobby; }
        set { _Hobby = value; }
    }

    public String Band
    {
        get { return _Band; }
        set { _Band = value; }
    }

    public String Biography
    {
        get { return _Biography; }
        set { _Biography = value; }
    }

    public String CoursePrefix
    {
        get { return _CoursePrefix; }
        set { _CoursePrefix = value; }
    }

    public String CourseNumber
    {
        get { return _CourseNumber; }
        set { _CourseNumber = value; }
    }

    public String CourseDescription
    {
        get { return _CourseDescription; }
        set { _CourseDescription = value; }
    }

	public ProfileData()
	{
		//
		// TODO: Add constructor logic here
		//
	}
}