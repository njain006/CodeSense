using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Configuration;


public partial class Register : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        
        lblShowDate.Text = System.DateTime.Now.ToString();
    }
    protected void btnClear_Click(object sender, EventArgs e)
    {
        txtEmailID.Text = "";
        txtPassword1.Text = "";
        txtRepeat.Text = "";
        txtFirstName.Text = "";
        txtLastName.Text = "";
        ddlCountry.Text = "";
            
    }
    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        string email_id = txtEmailID.Text;
        string password = txtPassword1.Text;
        string fname = txtFirstName.Text;
        string lname = txtLastName.Text;
        string country = ddlCountry.SelectedValue;
        DateTime created = DateTime.Now;
        string status = "Valid";

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
               this.FileUpload1.PostedFile.SaveAs(Server.MapPath("~/images/User") + "\\" + dataName + "." + type);
            //    FileUpload1.PostedFile.SaveAs(Server.MapPath("~/images/" + fileName + type));
               image = "~/images/User/" + dataName + "." + type;
                UserBLL ub = new UserBLL();
             int i= ub.UserRegister(email_id,password,fname,lname,country,created,status,image);
             if (i > 0)
             {
                 Response.Write("<script language='javascript'>alert('Your registeration succeed !');</script>");
                 Response.Redirect("Home.aspx");

             }
             else if (i < 0)
                 Response.Write("<script language='javascript'>alert('This EmailID has already exist, change to another emailID  !');</script>");
             else
                 Response.Write("<script language='javascript'>alert('Your registeration failed !');</script>");

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
    protected void ddlCountry_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
}