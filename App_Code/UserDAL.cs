using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;

/// <summary>
/// Summary description for User
/// </summary>
public class User
{
    string connstr = ConfigurationManager.ConnectionStrings["CodeSenseBlogConnectionString"].ConnectionString;

    private string email_ID;

    public string Email_ID
    {
        get { return email_ID; }
        set { email_ID = value; }
    }
    private string password;

    public string Password
    {
        get { return password; }
        set { password = value; }
    }
    private string firstName;

    public string FirstName
    {
        get { return firstName; }
        set { firstName = value; }
    }
    private string lastName;

    public string LastName
    {
        get { return lastName; }
        set { lastName = value; }
    }
    private string country;

    public string Country
    {
        get { return country; }
        set { country = value; }
    }
    private DateTime created_date;

    public DateTime Created_date
    {
        get { return created_date; }
        set { created_date = value; }
    }
    private DateTime modified_date;

    public DateTime Modified_date
    {
        get { return modified_date; }
        set { modified_date = value; }
    }
    private string user_status;

    public string User_status
    {
        get { return user_status; }
        set { user_status = value; }
    }

    private string imagePath;

    public string ImagePath
    {
        get { return imagePath; }
        set { imagePath = value; }
    }

    public User()
    {

    }

    public User(string emailid, string psword, string fname, string lname, string cotry, DateTime createdate, string status,string image)
    {
        email_ID = emailid;
        password = psword;
        firstName = fname;
        lastName = lname;
        country = cotry;
        created_date = createdate;

        user_status = status;
        imagePath = image;
    }


    public User ShowUserInfo(string email_id)
    {
        User a = new User();
        SqlConnection con = new SqlConnection(connstr);
        string command = string.Format("select * from Users where Email_ID = '" + email_id + "'");
        SqlCommand cmd = new SqlCommand(command, con);
        
            con.Open();
            SqlDataReader dr = cmd.ExecuteReader();
            if (dr.Read())
            {
                
                a.password = dr["Password"].ToString();
                a.email_ID = dr["Email_ID"].ToString();
                a.firstName = dr["First_Name"].ToString();
                a.lastName = dr["Last_Name"].ToString();
                a.country = dr["Country"].ToString();
                a.created_date = Convert.ToDateTime(dr["Create_dte"]);
                a.user_status = dr["User_status"].ToString();
                a.modified_date = Convert.ToDateTime(dr["Modified_dte"]);
                a.imagePath = dr["Image"].ToString();

            }

            return a;

    }



    public int GetUserID(string email_id)
    {
        int a = 0; 
        SqlConnection con = new SqlConnection(connstr);
        string command = string.Format("select User_ID from Users where Email_ID = '" + email_id + "'");
        SqlCommand cmd = new SqlCommand(command, con);

        con.Open();
        SqlDataReader dr = cmd.ExecuteReader();
        if (dr.Read())
        {
            a = Convert.ToInt16(dr["User_ID"]);
     
        }

        return a;







    }


    public string CheckStatus(string email_id)
    {

        string a = "";
        SqlConnection con = new SqlConnection(connstr);
        string command = string.Format("select User_status from Users where Email_ID = '" + email_id + "'");
        SqlCommand cmd = new SqlCommand(command, con);

        con.Open();
        SqlDataReader dr = cmd.ExecuteReader();
        if (dr.Read())
        {
            a = dr["User_status"].ToString();

        }

        return a;


    }

    public bool CheckUser(string EmailID)      // before register
    {

        SqlConnection con = new SqlConnection(connstr);
        string command = string.Format("select count(Email_ID) from [dbo].[Users] where Email_ID = '"+EmailID+"'");
        SqlCommand cmd = new SqlCommand(command,con);
        con.Open();
        int i = Convert.ToInt32(cmd.ExecuteScalar());
        if (i>0)
        {
            return false;

        }

        else
            return true;


    }


    public bool CheckUser(string EmailID, string password)      // before login
    {

        SqlConnection con = new SqlConnection(connstr);
        string command = string.Format("select count(Email_ID) from [dbo].[Users] where Email_ID = '" + EmailID + "' and Password='"+password+"'");
        SqlCommand cmd = new SqlCommand(command, con);
        con.Open();
        int i = Convert.ToInt32(cmd.ExecuteScalar());
        if (i > 0)
        {
            return true;

        }

        else
            return false;


    }




    public int AddUser(string pa, string email, string fname, string lname, string country, DateTime date, string status,string image)
    {
        SqlConnection con = new SqlConnection(connstr);
        string str = "insert into Users values('"+pa+"','"+email+"','"+fname+"','"+lname+"','"+country+"','"+date+"','"+date+"','"+status+"','"+image+"')";
     
        SqlCommand cmd = new SqlCommand(str, con);
  
        con.Open();
      
        int i = cmd.ExecuteNonQuery();
        if (i > 0)
            return 1;
        else
            return 0;
      



    }

    public int ModifyUser(string email_id, string status)     // by admin
    {
        DateTime modify = DateTime.Now;
        SqlConnection con = new SqlConnection(connstr);
        string str = "update Users set Modified_dte='"+modify+"',User_status='"+status+"' where Email_ID='"+email_id+"'"; 

        SqlCommand cmd = new SqlCommand(str, con);

        con.Open();

        int i = cmd.ExecuteNonQuery();
        if (i > 0)
            return 1;
        else
            return 0;

    }

    public int ModifyUser(string email_id, string password, string country)     // by user
    {
        DateTime modify = DateTime.Now;
        SqlConnection con = new SqlConnection(connstr);
        string str = "update Users set Password='" + password + "',Country='" + country + "' , Modified_dte='" + modify + "' where Email_ID='" + email_id + "'";

        SqlCommand cmd = new SqlCommand(str, con);

        con.Open();

        int i = cmd.ExecuteNonQuery();
        if (i > 0)
            return 1;
        else
            return 0;

    }

    public int Delete(int userid)
    {

        SqlConnection con = new SqlConnection(connstr);
        string str = "delete from Users where User_ID='" + userid + "'";

        SqlCommand cmd = new SqlCommand(str, con);

        con.Open();

        int i = cmd.ExecuteNonQuery();
        if (i > 0)
            return 1;
        else
            return 0;
      

    }



}