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
        GridView1.Visible = true;
        GridView1.SelectRow(-1);
        GridView1.DataSourceID = "SqlDataSource1";
    }
    protected void btnManageUser_Click(object sender, EventArgs e)
    {
        GridView1.Visible = true;
        GridView1.SelectRow(-1);
        GridView1.DataSourceID = "SqlDataSource1";
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
       
        string emailid = "";
        
        string userstatus = "";
        

     
        emailid = ((Label)GridView1.Rows[e.RowIndex].FindControl("lblemailid")).Text;
        userstatus = ((TextBox)GridView1.Rows[e.RowIndex].FindControl("txtuserstatus")).Text;


        UserBLL ub = new UserBLL();
        int i = ub.UpdateUser(emailid,userstatus);
        if (i == 1)
            Response.Write("<script language='javascript'>alert('User has been updated !');</script>");
        else
            Response.Write("<script language='javascript'>alert('User is failed to be updated !');</script>");
    }
    protected void GridView1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
    {
        GridView1.EditIndex = -1;
        GridView1.DataBind();
    }





    protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        int userid = 0;
        userid = int.Parse(GridView1.DataKeys[e.RowIndex].Values[0].ToString());

        try
        {
           
             UserBLL ub = new UserBLL();
            int i = ub.DeleteUser(userid);
           if(i==1)
           {  Response.Write("<script language='javascript'>alert('User has been deleted !');</script>");
            GridView1.DataBind();
           }

           else
                Response.Write("<script language='javascript'>alert('User is failed to be deleted !');</script>");
        }
       catch (SqlException ex)
       {


           Response.Write(ex.ToString());
           
       }
            
           
            
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