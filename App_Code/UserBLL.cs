using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;


/// <summary>
/// Summary description for UserBLL
/// </summary>
public class UserBLL
{
    string connstr = ConfigurationManager.ConnectionStrings["CodeSenseBlogConnectionString"].ConnectionString;
 
    
    public UserBLL()
	{
       

	}



    public int ShowUserID(string email_id)
    {
        User u = new User();
       int i= u.GetUserID(email_id);
       return i;

    }

    public User Show(string email_id)
    {

        User a = new User();
        User b=a.ShowUserInfo(email_id);
       
        return b;


    }





    public int Login(string email_id, string password)
    {
        User u = new User();
       bool result= u.CheckUser(email_id, password);
       if (result)
       {
          string status= u.CheckStatus(email_id);
          if (status == "Admin")
              return 10;
          else
              return 1;

       }
       else
           return 0;
    }
    
    
    
    
    
    
    public int UserRegister(string emailid, string pasword, string fname, string lname, string cotry, DateTime date, string status,string image)
    {

        User a = new User(emailid, pasword, fname, lname, cotry, date, status,image);

        bool result=a.CheckUser(emailid);
        if (result == true)
        {
           int i= a.AddUser(pasword, emailid, fname, lname, cotry, date, status, image);
           if (i > 0)
               return 1;
           else
               return 0;
                
        }


        else
        {

            return -1;
           
         

        }



    }



    public int UpdateUser(string email_id, string status) //   by admin
    {
        User u = new User();
      int i=  u.ModifyUser(email_id,status);
      if (i > 0)
          return 1;
      else
          return 0;

    }


    public int UpdateUser(string email_id, string password, string country) //   by user
    {
        User u = new User();
        int i = u.ModifyUser(email_id, password,country);
        if (i > 0)
            return 1;
        else
            return 0;

    }


    public int DeleteUser(int userid)
    {
        User a = new User();
      int i=  a.Delete(userid);
      if (i == 1)
          return 1;
      else
          return 0;


    }





}