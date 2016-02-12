using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

/// <summary>
/// Summary description for UserView
/// </summary>
public class UserView
{
    string connstr = ConfigurationManager.ConnectionStrings["CodeSenseBlogConnectionString"].ConnectionString;
    private int post_id;

    public int Post_id
    {
        get { return post_id; }
        set { post_id = value; }
    }
    private int user_id;

    public int User_id
    {
        get { return user_id; }
        set { user_id = value; }
    }
    private DateTime date;

    public DateTime Date
    {
        get { return date; }
        set { date = value; }
    }
    private int rating;

    public int Rating
    {
        get { return rating; }
        set { rating = value; }
    }
    private string opinion;

    public string Opinion
    {
        get { return opinion; }
        set { opinion = value; }
    }
    
    
    
    public UserView()
	{
		
	}

    public bool CheckUserView(int postid, int userid)
    {

        SqlConnection con = new SqlConnection(connstr);
        string command = string.Format("select count(*) from User_view where Post_ID='" + postid + "' and User_ID = '" + userid + "'");
        SqlCommand cmd = new SqlCommand(command, con);
        con.Open();
        int i = Convert.ToInt32(cmd.ExecuteScalar());
        if (i > 0)
        {
            return false;

        }

        else
            return true;

    }

    public int AddUserView(int postid,int userid,DateTime date,int rate, string opin)
    {
        
        SqlConnection con = new SqlConnection(connstr);
        string str = "insert into User_view values('" + postid + "','" + userid + "','" + date + "','" +rate + "','" + opin + "')";

        SqlCommand cmd = new SqlCommand(str, con);

        con.Open();

        int i = cmd.ExecuteNonQuery();
        if (i > 0)
            return 1;
        else
            return 0;




    }







}