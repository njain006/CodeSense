using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

/// <summary>
/// Summary description for Comment
/// </summary>
public class Comment
{
    string connstr = ConfigurationManager.ConnectionStrings["CodeSenseBlogConnectionString"].ConnectionString;
    private int user_id;

    public int User_id
    {
        get { return user_id; }
        set { user_id = value; }
    }
    private int post_id;

    public int Post_id
    {
        get { return post_id; }
        set { post_id = value; }
    }
    private string comment_content;

    public string Commnet_content
    {
        get { return comment_content; }
        set { comment_content = value; }
    }
    private DateTime published;

    public DateTime Published
    {
        get { return published; }
        set { published = value; }
    }
    private DateTime modified;

    public DateTime Modified
    {
        get { return modified; }
        set { modified = value; }
    }
    private string status;

    public string Status
    {
        get { return status; }
        set { status = value; }
    }
    private int parent_commentid;

    public int Parent_commentid
    {
        get { return parent_commentid; }
        set { parent_commentid = value; }
    }
    
    
    
    
    public Comment()
	{
		
	}



    //public Comment(int userid, int postid, string commentcontent, DateTime publisheddate, DateTime modifieddate, string poststatus)       // for login user new a comment
    //{

    //    user_id = userid;
    //    post_id = postid;
    //    comment_content = commentcontent;
    //    published = publisheddate;
    //    modified = modifieddate;
    //    status = poststatus;


    //}


    public Comment(int userid, int postid, string commentcontent, DateTime publisheddate, DateTime modifieddate, string poststatus, int parent_comment)       // for login user reply a comment
    {

        user_id = userid;
        post_id = postid;
        comment_content = commentcontent;
        published = publisheddate;
        modified = modifieddate;
        status = poststatus;
        parent_commentid = parent_comment;

    }


    //public Comment(int postid, string commentcontent, DateTime publisheddate, DateTime modifieddate, string poststatus, int parent_comment)       // for guest user new a comment
    //{

      
    //    post_id = postid;
    //    comment_content = commentcontent;
    //    published = publisheddate;
    //    modified = modifieddate;
    //    status = poststatus;
   

    //}


    //public Comment(int postid, string commentcontent, DateTime publisheddate, DateTime modifieddate, string poststatus, int parent_comment)       // for guest user reply a comment
    //{

  
    //    post_id = postid;
    //    comment_content = commentcontent;
    //    published = publisheddate;
    //    modified = modifieddate;
    //    status = poststatus;
    //    parent_commentid = parent_comment;

    //}


    public int AddComment(int userid, int postid, string commentcontent, DateTime publisheddate, string poststatus)       //   // for login user new a comment
    {

        SqlConnection con = new SqlConnection(connstr);
        string str = "insert into Comment values('" + userid + "','" + postid + "','" + commentcontent + "','" + publisheddate + "','" + publisheddate + "','" + poststatus + "', ' ')";
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

    public int AddComment(int userid, int postid, string commentcontent, DateTime publisheddate, string poststatus,int parentcomment)         // for login user reply a comment
    {

        SqlConnection con = new SqlConnection(connstr);
        string str = "insert into Comment values('" + userid + "','" + postid + "','" + commentcontent + "','" + publisheddate + "','" + publisheddate + "','" + poststatus + "', '" + parentcomment + "')";
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




    public int AddComment(int postid, string commentcontent, DateTime publisheddate, string poststatus)         // for guest user new a comment
    {

        SqlConnection con = new SqlConnection(connstr);
        string str = "insert into Comment values(' ','" + postid + "','" + commentcontent + "','" + publisheddate + "','" + publisheddate + "','" + poststatus + "', ' ')";
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



    public int AddComment(int postid, string commentcontent, DateTime publisheddate, string poststatus, int parentcomment)         // for guest user reply a comment
    {

        SqlConnection con = new SqlConnection(connstr);
        string str = "insert into Comment values(' ','" + postid + "','" + commentcontent + "','" + publisheddate + "','" + publisheddate + "','" + poststatus + "', '" + parentcomment + "')";
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



    public int ModifyComment(int commentid, string commentcontent, DateTime modifieddate)      // for author
    {

        SqlConnection con = new SqlConnection(connstr);
        string str = "update Comment set Comment_text='" + commentcontent + "',Comment_mod_dte='" + modifieddate + "' where Comment_ID='" + commentid + "'";
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


    public int ModifyComment(int commentid, string commentcontent, DateTime modifieddate,string commentstatus)      // for admin
    {

        SqlConnection con = new SqlConnection(connstr);
        string str = "update Comment set Comment_text='" + commentcontent + "',Comment_mod_dte='" + modifieddate + "', Current_status='" + commentstatus + "' where Comment_ID='" + commentid + "'";
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


    public int DeleteComment(int commentid)
    {

        SqlConnection con = new SqlConnection(connstr);
        string str = "delete from Comment where Comment_ID='" + commentid + "'";
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