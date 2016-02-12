using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class EditAccount : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string authoremail = Session["Email_ID"].ToString();
        UserBLL ub = new UserBLL();
        User author = new User();
        author = ub.Show(authoremail);
        lbl1.Text = author.Email_ID;
        lbl2.Text = author.FirstName;
        lbl3.Text = author.LastName;
        lbl4.Text = author.User_status;
      
    }
    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        string emailid = lbl1.Text;
        string password = txtPassword.Text;
        string country = ddlCountry.SelectedValue;
        UserBLL ub = new UserBLL();

      int i=  ub.UpdateUser(emailid,password,country);
        if(i==1)
            Response.Write("<script language='javascript'>alert('User Account has been updated !');</script>");
        else
            Response.Write("<script language='javascript'>alert('User Account failed to be updated  !');</script>");
    }
    protected void btnClear_Click(object sender, EventArgs e)
    {
        txtPassword.Text = "";
        txtRepeatPassword.Text = "";
        ddlCountry.SelectedIndex = 0;
    }
}