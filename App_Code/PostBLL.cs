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
/// Summary description for PostBLL
/// </summary>
public class PostBLL
{
    string connstr = ConfigurationManager.ConnectionStrings["CodeSenseBlogConnectionString"].ConnectionString;
    
    public PostBLL()
	{
		
	}



    public Post ShowPost(int postid)
    {
        Post a = new Post();
        Post b = a.GetPost(postid);
        return b;



    }





    public int NewPost(int categoryid, int userid, string postcontent, DateTime published,string status, string image)
    {
     
        Post s = new Post();
      int i=  s.AddPost(categoryid, userid, postcontent, published, status, image);
        if (i>0)
            return 1;
        else
            return 0;



    }

    public int UpdatePost(int postid, string postcontent, DateTime modified, string poststatus, int rating)   // by admin
    {
        Post p = new Post();
        int i=p.ModifyPost(postid,postcontent,modified,poststatus,rating);
        if (i == 1)
            return 1;
        else
            return 0;


    }


    public int UpdatePost(int postid, string postcontent, DateTime modified)   // by user
    {
        Post p = new Post();
        int i = p.ModifyPost(postid, postcontent, modified);
        if (i == 1)
            return 1;
        else
            return 0;


    }


    public int DeletePost(int postid)
    {

        Post p = new Post();
        int i = p.Delete(postid);
        if (i == 1)
            return 1;
        else
            return 0;
    }



}