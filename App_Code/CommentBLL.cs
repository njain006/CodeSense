using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

/// <summary>
/// Summary description for CommentBLL
/// </summary>
public class CommentBLL
{
    string connstr = ConfigurationManager.ConnectionStrings["CodeSenseBlogConnectionString"].ConnectionString;
	public CommentBLL()
	{
		
	}

    public int NewComment(int userid, int postid, string commentcontent, DateTime publisheddate, string poststatus)  // for login user new a comment
    {

        Comment c = new Comment();
      int i=  c.AddComment(userid,postid,commentcontent,publisheddate,poststatus);
      if (i == 1)
          return 1;
      else
          return 0;

    }



    public int NewComment(int userid, int postid, string commentcontent, DateTime publisheddate, string poststatus, int parentcomment)  // for login user reply a comment
    {

        Comment c = new Comment();
        int i = c.AddComment(userid, postid, commentcontent, publisheddate, poststatus,parentcomment);
        if (i == 1)
            return 1;
        else
            return 0;

    }


    public int NewComment(int postid, string commentcontent, DateTime publisheddate, string poststatus)  // for guest user new a comment
    {

        Comment c = new Comment();
        int i = c.AddComment(postid, commentcontent, publisheddate, poststatus);
        if (i == 1)
            return 1;
        else
            return 0;

    }


    public int NewComment(int postid, string commentcontent, DateTime publisheddate, string poststatus, int parentcomment)  // for guest user reply a comment
    {

        Comment c = new Comment();
        int i = c.AddComment(postid, commentcontent, publisheddate, poststatus,parentcomment);
        if (i == 1)
            return 1;
        else
            return 0;

    }


    public int UpdateComment(int commentid, string commentcontent, DateTime modifieddate)   // for author
    {


        Comment c = new Comment();
        int i = c.ModifyComment(commentid,commentcontent,modifieddate);
        if (i == 1)
            return 1;
        else
            return 0;

    }




    public int UpdateComment(int commentid, string commentcontent, DateTime modifieddate, string commentstatus)   // for admin
    {


        Comment c = new Comment();
        int i = c.ModifyComment(commentid, commentcontent, modifieddate,commentstatus);
        if (i == 1)
            return 1;
        else
            return 0;

    }

    public int Delete(int commentid)
    {
        Comment c = new Comment();
        int i = c.DeleteComment(commentid);
        if(i==1)
            return 1;
        else
            return 0;

    }










}