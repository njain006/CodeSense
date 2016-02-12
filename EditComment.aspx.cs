using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class EditComment : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string emailid = Session["Email_ID"].ToString();
        lblemailid.Text = emailid;
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string commentcontent = txtcommentcontent.Text;
        DateTime modifieddate = DateTime.Now;
        int commentid = Convert.ToInt16(GridView1.SelectedValue);
        CommentBLL cl = new CommentBLL();
        int i = cl.UpdateComment(commentid,commentcontent,modifieddate);
        if (i == 1)
        {
            Response.Write("<script language='javascript'>alert('Comment has been updated !');</script>");
            GridView1.DataBind();
        }
        else
        {
            Response.Write("<script language='javascript'>alert('Comment is failed to be updated !');</script>");
            GridView1.DataBind();
        }
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        txtcommentcontent.Text = "";
    }
}