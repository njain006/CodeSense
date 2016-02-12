using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class ViewMyPost : System.Web.UI.Page
{

  
    protected void Page_Load(object sender, EventArgs e)
    {
       
        
        string emailid = Session["Email_ID"].ToString();
        lblemailid.Text = emailid;

    }
    

    public string content(object Post_Content)
    {
        string ti = (string)Post_Content;
        if (ti.Length > 20)
            ti = ti.Substring(0, 20) + "....";
        return ti;
    }



    protected void DataList1_ItemCommand(object source, DataListCommandEventArgs e)
    {
        //if (e.CommandName == "Select")
        //{
        //    int postid = Convert.ToInt16((Label)e.Item.Controls[2]);
        //    Session["Post_ID"] = postid;
        //    Response.Redirect("Blog1.aspx");
        //}
    }

   
  
}