﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class AdminPost : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["Email_ID"] == null)
        {
            Response.Redirect("Home.aspx");

        }
        lblCurrentUser.Text = Session["Email_ID"].ToString();
        lblLoginTime.Text = DateTime.Now.ToString();

        
        GridView1.Visible = true;
        GridView1.SelectRow(-1);
        GridView1.DataSourceID = "SqlDataSource1";
    }
    protected void btnManageUser_Click(object sender, EventArgs e)
    {
        Response.Redirect("AdminUser.aspx");
    }
    protected void btnManagePost_Click(object sender, EventArgs e)
    {
        Response.Redirect("AdminPost.aspx");

    }
    protected void btnManageComment_Click(object sender, EventArgs e)
    {
        Response.Redirect("AdminComment.aspx");
    }


    protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
    {
        int postid = 0;
        string postcontent = "";
        DateTime modified = DateTime.Now;
        string poststatus = "";
        int rating = 0;

        postid = Convert.ToInt16(((Label)GridView1.Rows[e.RowIndex].FindControl("lblpostid")).Text);
        postcontent = ((TextBox)GridView1.Rows[e.RowIndex].FindControl("txtPostContent")).Text;
        poststatus = ((TextBox)GridView1.Rows[e.RowIndex].FindControl("txtstatus")).Text;
        rating = Convert.ToInt16(((TextBox)GridView1.Rows[e.RowIndex].FindControl("txtrating")).Text);

        PostBLL pb = new PostBLL();
       int i= pb.UpdatePost(postid,postcontent,modified,poststatus,rating);
       if (i == 1)
       {
           Response.Write("<script language='javascript'>alert('Post has been updated !');</script>");
           GridView1.DataBind();
       }
       else
       {
           Response.Write("<script language='javascript'>alert('Post is failed to be updated !');</script>");
           GridView1.DataBind();
       }



    }
    protected void GridView1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
    {
        GridView1.EditIndex = -1;
        GridView1.DataBind();
    }
    protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        int postid = 0;
        postid = int.Parse(GridView1.DataKeys[e.RowIndex].Values[0].ToString());
      

        try
        {

            PostBLL pb = new PostBLL();
            int i = pb.DeletePost(postid);
            if (i == 1)
            {
                Response.Write("<script language='javascript'>alert('Post has been deleted !');</script>");
                GridView1.DataBind();
            }

            else
                Response.Write("<script language='javascript'>alert('Post is failed to be deleted !');</script>");
        }
        catch (SqlException ex)
        {

        
            Response.Write(ex.ToString());
        }

     
        
    }
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("ContactUs.aspx");
    }
    protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
    {
        Session.Remove("Email_ID");
        Response.Redirect("Home.aspx");
    }
}