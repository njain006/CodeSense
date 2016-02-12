using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

/// <summary>
/// Summary description for UserViewBLL
/// </summary>
public class UserViewBLL
{
    string connstr = ConfigurationManager.ConnectionStrings["CodeSenseBlogConnectionString"].ConnectionString;
    public UserViewBLL()
	{
		
	}

    public int Check(int postid, int userid)
    {
        UserView uv = new UserView();
      bool result=  uv.CheckUserView(postid,userid);
      if (result)
          return 1;
      else
          return 0;

    }


    public int ProvideUserView(int postid, int userid, DateTime date, int rate, string opin)
    {
        UserView uv = new UserView();
        int i = uv.AddUserView(postid,userid,date,rate,opin);
        if (i == 1)
            return 1;
        else
            return 0;


    }


}