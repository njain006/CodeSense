using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class EditPost : System.Web.UI.Page
{
    int postid = 0;
    
    protected void Page_Load(object sender, EventArgs e)
    {
        string emailid = Session["Email_ID"].ToString();

        lblemailid.Text = emailid;
       // PostBLL pb = new PostBLL();
       //DataSet datasource= pb.DataSource(emailid);
       //GridView1.DataSource = datasource;
       //GridView1.DataBind();




    }


    protected void Button1_Click(object sender, EventArgs e)
    {
        string postcontent = txtpostcontent.Text;
        DateTime modified = DateTime.Now;
        postid =Convert.ToInt16( GridView1.SelectedValue);
        PostBLL pb = new PostBLL();
        int i = pb.UpdatePost(postid, postcontent, modified);
        if(i==1)
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
    protected void Button2_Click(object sender, EventArgs e)
    {
        txtpostcontent.Text = "";
    }
   
}