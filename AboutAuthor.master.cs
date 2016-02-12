using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class AboutAuthor : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["Email_ID"] == null)
        {
            Response.Redirect("Home.aspx");

        }


        UserBLL ub = new UserBLL();
        User currentauthor = ub.Show(Session["Email_ID"].ToString());
        lblShowID.Text = Session["Email_ID"].ToString();
        lblShowFirst.Text = currentauthor.FirstName;
        lblShowLast.Text = currentauthor.LastName;
    }
    protected void btnLogout_Click(object sender, EventArgs e)
    {
        Session.Remove("Email_ID");
        Response.Redirect("Home.aspx");
    }
}
