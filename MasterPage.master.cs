using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class MasterPage : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["Email_ID"] == null)
        {
            HyperLink1.Visible = false;

        }

        else
            HyperLink1.Visible = true;
    }





    protected void ibtnSearch_Click(object sender, ImageClickEventArgs e)
    {
        
       
    }
    protected void btnRegister_Click(object sender, EventArgs e)
    {
        Response.Redirect("Register.aspx");
    }
    protected void btnReset_Click(object sender, EventArgs e)
    {
        txtEmail_ID.Text = "";
        txtPassword.Text = "";

    }
    protected void btnLogin_Click(object sender, EventArgs e)
    {
        string email_id = txtEmail_ID.Text;
        string password = txtPassword.Text;
        UserBLL ub = new UserBLL();
        int login=  ub.Login(email_id,password);
        if (login == 1)
        {
            Session["Email_ID"] = email_id;
            Response.Redirect("ViewMyPost.aspx");
            
        }

        else if (login == 10)
        {
            Session["Email_ID"] = email_id;
            Response.Redirect("Admin.aspx");

        }


        else
        {
            Response.Write("<script language='javascript'>alert('Email_ID and Password are incorrect !');</script>");
            Response.Redirect("Register.aspx");
        }



    }
    protected void txtSearch_TextChanged(object sender, EventArgs e)
    {
        Session["Search"] = txtSearch.Text;
        Response.Redirect("Search.aspx");
    }
}
