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
/// Summary description for Post
/// </summary>
public class Post
{

    string connstr = ConfigurationManager.ConnectionStrings["CodeSenseBlogConnectionString"].ConnectionString;
    private int user_ID;

    public int User_ID
    {
        get { return user_ID; }
        set { user_ID = value; }
    }


    private int category_ID;

    public int Category_ID
    {
        get { return category_ID; }
        set { category_ID = value; }
    }


    private string post_Content;

    public string Post_Content
    {
        get { return post_Content; }
        set { post_Content = value; }
    }


    private DateTime publishedDate;

    public DateTime PublishedDate
    {
        get { return publishedDate; }
        set { publishedDate = value; }
    }


    private DateTime modifiedDate;

    public DateTime ModifiedDate
    {
        get { return modifiedDate; }
        set { modifiedDate = value; }
    }


    private string post_Status;

    public string Post_Status
    {
        get { return post_Status; }
        set { post_Status = value; }
    }


    private int post_Rating;

    public int Post_Rating
    {
        get { return post_Rating; }
        set { post_Rating = value; }
    }


    private string imagePath;

    public string ImagePath
    {
        get { return imagePath; }
        set { imagePath = value; }
    }

    

   
   

    public Post()
    {
    }

    public Post(int userid, int categoryid, string postcontent, DateTime published, string poststatus, int rating ,string image)
    {
        user_ID = userid;
        category_ID = categoryid;
        post_Content = postcontent;
        publishedDate = published;
        
        post_Status = poststatus;
        post_Rating = rating;
        imagePath = image;

    }


    public Post GetPost(int postid)
    {

        Post p = new Post();
        SqlConnection con = new SqlConnection(connstr);
        string str = "select * from Post where Post_ID='" + postid + "'";
        SqlCommand cmd = new SqlCommand(str, con);
        con.Open();
        SqlDataReader dr = cmd.ExecuteReader();
        if (dr.Read())
        {

            p.user_ID = Convert.ToInt16(dr["User_ID"]);
            p.category_ID = Convert.ToInt16(dr["Category_ID"]);
            p.post_Content = dr["Post_Content"].ToString();
            p.publishedDate = Convert.ToDateTime(dr["Published_dte"]);
            p.post_Status = dr["Post_status"].ToString();
            p.post_Rating = Convert.ToInt16(dr["Post_rating"]);
            p.imagePath = dr["Image"].ToString();

        }

        return p;


    }




    public int AddPost(int category_ID, int user_ID, string post_Content,DateTime publishedDate,string post_Status, string imagePath)
    {
       
        SqlConnection con = new SqlConnection(connstr);
        string str = "insert into Post values('" + category_ID + "','" + user_ID + "','" + post_Content + "','" + publishedDate + "','" + publishedDate + "','" + post_Status + "',' ', '" + imagePath + "')";
        SqlCommand cmd = new SqlCommand(str, con);
        con.Open();
        int i = cmd.ExecuteNonQuery();
        if (i > 0)
        {
            return 1;
           
        }

        else
        { return 0; }

       



    }


    public int ModifyPost(int postid,string postcontent, DateTime date)    //by user
    {

        SqlConnection con = new SqlConnection(connstr);
        string str = "update Post set Post_content='" + postcontent + "',Modified_Dte='" + date + "' where Post_ID='" + postid + "'";
        SqlCommand cmd = new SqlCommand(str, con);
        con.Open();
        int i = cmd.ExecuteNonQuery();
        if (i > 0)
        {
            return 1;

        }

        else
            return 0;

        

    }



    public int ModifyPost(int postid, string postcontent, DateTime date,string poststatus, int rating)    // by admin
    {

        SqlConnection con = new SqlConnection(connstr);
        string str = "update Post set Post_content='" + postcontent + "' ,Modified_Dte='" + date + "', Post_Status='" + poststatus + "', Post_rating='" + rating + "' where Post_ID='" + postid + "'";
        SqlCommand cmd = new SqlCommand(str, con);
        con.Open();
        int i = cmd.ExecuteNonQuery();
        if (i > 0)
        {
            return 1;

        }

        else
            return 0;

    

    }

    public int Delete(int postid)
    {
        SqlConnection con = new SqlConnection(connstr);
        string str = "delete from Post where Post_ID='" + postid + "'";
        SqlCommand cmd = new SqlCommand(str, con);
        con.Open();
        int i = cmd.ExecuteNonQuery();
        if (i > 0)
        {
            return 1;

        }

        else
            return 0;


    }
    
}