using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class Blog1 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

        if (Session["Email_ID"] == null || Session["Email_ID"] == " ")
        {


            lblgiverating.Visible = false;
            ddlrating.Visible = false;
            lblopinion.Visible = false;
            rbtndislike.Visible = false;
            rbtnlike.Visible = false;
            btnSubmit.Visible = false;

            string id = Request.QueryString["id"].ToString();
            int postid = Convert.ToInt16(id);


            PostBLL pb = new PostBLL();
            Post p = pb.ShowPost(postid);
            img01.ImageUrl = p.ImagePath;
            lblShowPostID.Text = postid.ToString();
            lblShowRating.Text = p.Post_Rating.ToString();
            txtPostContent.Text = p.Post_Content;



        }

        else
        {

            string emailid = Session["Email_ID"].ToString();


            string id = Request.QueryString["id"].ToString();
            int postid = Convert.ToInt16(id);


            PostBLL pb = new PostBLL();
            Post p = pb.ShowPost(postid);
            img01.ImageUrl = p.ImagePath;
            lblShowPostID.Text = postid.ToString();
            lblShowRating.Text = p.Post_Rating.ToString();
            txtPostContent.Text = p.Post_Content;
        }


    }



    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        string id = Request.QueryString["id"].ToString();
        int postid = Convert.ToInt16(id);
        string emailid = Session["Email_ID"].ToString();
        UserBLL ub = new UserBLL();
        int userid = ub.ShowUserID(emailid);
        UserViewBLL uvb = new UserViewBLL();
        int i = uvb.Check(postid, userid);
        if (i == 0)
        {
            Response.Write("<script language='javascript'>alert('You have given your rating !');</script>");
        }

        else
        {

            DateTime date = DateTime.Now;
            int rate = Convert.ToInt16(ddlrating.SelectedValue);
            string opin = "";
            if (rbtndislike.Checked == true)
                opin = rbtndislike.Text;
            else
                opin = rbtnlike.Text;
            int a = uvb.ProvideUserView(postid, userid, date, rate, opin);
            if (i == 1)
                Response.Write("<script language='javascript'>alert('Your rating has been added !');</script>");
            else
                Response.Write("<script language='javascript'>alert('Your rating is failed to be added !');</script>");

        }


    }
    protected void btnAdd_Click(object sender, EventArgs e)
    {


        if (Session["Email_ID"] == null || Session["Email_ID"] == " ")
        {

            string commentcontent = txtcommentcontent.Text;
            DateTime published = DateTime.Now;
            int postid = Convert.ToInt16(lblShowPostID.Text);
            string status = "Valid";
            CommentBLL cb = new CommentBLL();
            int i = cb.NewComment(postid, commentcontent, published, status);
            if (i == 1)
            {
                Response.Write("<script language='javascript'>alert('Your comment has been added !');</script>");
                DataList1.DataBind();

            }
            else
            {
                Response.Write("<script language='javascript'>alert('Your comment is failed to be added !');</script>");
                DataList1.DataBind();

            }
        }



        else
        {
            string emailid = Session["Email_ID"].ToString();
            UserBLL ub = new UserBLL();
            int userid = ub.ShowUserID(emailid);

            string commentcontent = txtcommentcontent.Text;
            DateTime published = DateTime.Now;
            int postid = Convert.ToInt16(lblShowPostID.Text);
            string status = "Valid";
            CommentBLL cb = new CommentBLL();
            int i = cb.NewComment(userid, postid, commentcontent, published, status);
            if (i == 1)
            {
                Response.Write("<script language='javascript'>alert('Your comment has been added !');</script>");
                DataList1.DataBind();
                txtcommentcontent.Text = "";
            }
            else
            {
                Response.Write("<script language='javascript'>alert('Your comment is failed to be added !');</script>");
                DataList1.DataBind();
                txtcommentcontent.Text = "";


            }



        }

    }














    protected void DataList1_ItemCommand(object source, DataListCommandEventArgs e)
    {
        if (e.CommandName == "Reply")
        {
            int cmid = Convert.ToInt16(e.CommandArgument.ToString());
            Label lb = (Label)e.Item.FindControl("Label4");
            if (lb.Text == "")
                Response.Write("<script language='javascript'>alert('Your comment is failed to be added !');</script>");


            else
            {
                int parentcomment = Convert.ToInt16(lb.Text);
                if (Session["Email_ID"] == null || Session["Email_ID"] == " ")
                {

                    string commentcontent = txtcommentcontent.Text;
                    DateTime published = DateTime.Now;
                    int postid = Convert.ToInt16(lblShowPostID.Text);
                    string status = "Valid";
                    CommentBLL cb = new CommentBLL();
                    int i = cb.NewComment(postid, commentcontent, published, status,parentcomment);
                    if (i == 1)
                    {
                        Response.Write("<script language='javascript'>alert('Your comment has been added !');</script>");
                        DataList1.DataBind();
                        txtcommentcontent.Text = "";

                    }
                    else
                    {
                        Response.Write("<script language='javascript'>alert('Your comment is failed to be added !');</script>");
                        DataList1.DataBind();
                        txtcommentcontent.Text = "";

                    }
                }



                else
                {
                    string emailid = Session["Email_ID"].ToString();
                    UserBLL ub = new UserBLL();
                    int userid = ub.ShowUserID(emailid);

                    string commentcontent = txtcommentcontent.Text;
                    DateTime published = DateTime.Now;
                    int postid = Convert.ToInt16(lblShowPostID.Text);
                    string status = "Valid";
                    CommentBLL cb = new CommentBLL();
                    int i = cb.NewComment(userid, postid, commentcontent, published, status,parentcomment);
                    if (i == 1)
                    {
                        Response.Write("<script language='javascript'>alert('Your comment has been added !');</script>");
                        DataList1.DataBind();
                        txtcommentcontent.Text = "";
                    }
                    else
                    {
                        Response.Write("<script language='javascript'>alert('Your comment is failed to be added !');</script>");
                        DataList1.DataBind();
                        txtcommentcontent.Text = "";

                    }



                }


            }

        }


    }
}
  