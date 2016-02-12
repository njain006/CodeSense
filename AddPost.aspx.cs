using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.IO; 
using System.Web.UI.WebControls;
using System.Web.UI.HtmlControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class AddPost : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string authoremail = Session["Email_ID"].ToString();
        UserBLL ub = new UserBLL();
        int userid = ub.ShowUserID(authoremail);
        lblShowID.Text = userid.ToString();
    }
    protected void btnAddPost_Click(object sender, EventArgs e)
    {

        int userid = Convert.ToInt16(lblShowID.Text);
        int categoryid = Convert.ToInt16(ddlCategory.SelectedValue);
        string postcontent = txtPostContent.Text;
        DateTime published = DateTime.Now;
        string status = "posted";
        string image;

       if (FileUpload1.PostedFile.ContentLength < 800000)
       {
           string fileFullname = this.FileUpload1.FileName;
           string dataName = DateTime.Now.ToString("yyyyMMddhhmmss");
           string fileName = fileFullname.Substring(fileFullname.LastIndexOf("\\") + 1);
           //   string type = fileFullname.Substring(fileFullname.LastIndexOf(".") , 3);
           string type = fileFullname;
           //string strFileName = DateTime.Now.ToString("MM-dd-yyyy_HHmmss");
           //string strFileType = System.IO.Path.GetExtension(FileUpload1.FileName).ToString().ToLower();

           //  string type = strFileName.Substring(strFileName.LastIndexOf(".") + 1);
           type = type.Substring(type.Length - 3);
           if (type == "bmp" || type == "jpg" || type == "gif" || type == "JPG" || type == "BMP" || type == "GIF")
           {
               this.FileUpload1.PostedFile.SaveAs(Server.MapPath("~/images/blog") + "\\" + dataName + "." + type);
               //    FileUpload1.PostedFile.SaveAs(Server.MapPath("~/images/" + fileName + type));
               image = "~/images/blog/" + dataName + "." + type;
               PostBLL pb = new PostBLL();
              int i= pb.NewPost(categoryid, userid,postcontent,published,status,image);
              if (i > 0)
              {
                  Response.Write("<script language='javascript'>alert('Your post has been added !');</script>");
                  Response.Redirect("ViewMyPost.aspx");
              }
              else
              {
                  Response.Write("<script language='javascript'>alert('Your post is failed to be added  !');</script>");
              }

           }
           else
           {
               Response.Write("<script language='javascript'>alert('Support format：|jpg|gif|bmp| !');</script>");
           }
       }
       else
       {
           Response.Write("<script language='javascript'>alert('Your image exceeds 800K！');</script>");
       }




       

      

    }
    protected void btnClear_Click(object sender, EventArgs e)
    {
        txtPostContent.Text = "";
    }
}