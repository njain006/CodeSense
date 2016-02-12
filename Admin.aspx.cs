using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class Admin : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["Email_ID"] == null)
        {
            Response.Redirect("Home.aspx");

        }
        lblCurrentUser.Text = Session["Email_ID"].ToString();
        lblLoginTime.Text = DateTime.Now.ToString();

       
      
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
    protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
    {
        Session.Remove("Email_ID");
        Response.Redirect("Home.aspx");
    }
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("ContactUs.aspx");
    }
}