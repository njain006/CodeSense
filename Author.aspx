<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Author.aspx.cs" Inherits="Author" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
   
    <style type="text/css">
        #form1
        {
            height: 1198px;
            width: 1316px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server" style="height: 100%">
    <div style="height: 100%; background-image: url('images/53854d809e3a9d9ba5c20f613e617586.jpg'); width: 1317px;">
    <br />
   <div style="height: 915px; width: 10px; float: left;"></div>
   <div style="float: left; width: 200px; height: 916px; background-color: #000000;">
       <br />
       <br />
       <br />
       <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="Medium" 
           ForeColor="White" Text="Author  Information"></asp:Label>
       <br />
       <br />
       <asp:Label ID="lblEmailID" runat="server" ForeColor="White" Text="EmailID："></asp:Label>
       <asp:Label ID="lblShowID" runat="server" ForeColor="#66FF33"></asp:Label>
       <br />
       <asp:Label ID="lblFirstName" runat="server" ForeColor="White" Text="FirstName:"></asp:Label>
&nbsp;<asp:Label ID="lblShowFirst" runat="server" ForeColor="#66FF33"></asp:Label>
       <br />
       <asp:Label ID="lblLastName" runat="server" ForeColor="White" Text="LastName:"></asp:Label>
<asp:Label ID="lblShowLast" runat="server" ForeColor="#66FF33"></asp:Label>
       <br />
       &nbsp;&nbsp;&nbsp;<asp:Button ID="btnLogout" runat="server" Text="Log Out" Width="90px" 
    BackColor="Black" ForeColor="White" onclick="btnLogout_Click" />
       
       <br />
       <br />
       <br />
       <br />
       <h3 align="center"  style="color: #FF0000; font-size: medium; height: 16px; width: 194px; font-family: 'Times New Roman', Times, serif;" >
           <asp:HyperLink ID="hlEditAccount" runat="server" Font-Underline="True" 
               ForeColor="Red" NavigateUrl="~/EditAccount.aspx">Edit My Account</asp:HyperLink>
</h3><br />
       <h3 align="center"  style="color: #FF0000; font-size: medium; height: 16px; width: 194px; font-family: 'Times New Roman', Times, serif;" >
           <a href="EditPost.aspx" style="color: #FF0000; text-decoration: underline"> Edit My Post</a></h3> <br />

                  <h3 align="center"  style="color: #FF0000; font-size: medium; height: 16px; width: 194px; font-family: 'Times New Roman', Times, serif;" >
            <a href="EditComment.aspx" style="color: #FF0000; text-decoration: underline">Edit My Comment</a></h3> <br />
        <h3 align="center"  style="color: #FF0000; font-size: medium; height: 16px; width: 194px; font-family: 'Times New Roman', Times, serif;" >
            <a href="AddPost.aspx" style="color: #FF0000">Add New Post</a></h3> <br />
       <br />
       <br />
       <br />
       <br />
       <br />
       <br />
       <br />
       <br />
       <br />
       <br />
       <br />
       <br />
       <br />
       <br />
       <br />
       <br />
       <asp:Image ID="Image1" runat="server" Height="165px" 
           ImageUrl="~/images/Author01.jpg" Width="148px" />
       <br />
       <br />
       <br />
       <br />
       <br />
       <br />
       <br />
       <br />
       <br />
       <br />
       <br />
       <br />
       <br />
       <br />
       <br />
       <br />
       <br />
       <br />
       <br />
       <br />
       <br />
       <br />
       <br />
       <br />
       <br />
       <br />
       <br />
       <br />
       <br />
       <br />
       <br />
       <br />
        </div>
   <div style="float: left; width: 47px; height: 912px;"></div>
   <div style="float: left; width: 1023px; height: 1161px; background-color: #FFFFFF;">
   <div style="background-color: #000000; height: 170px; width: 1022px;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
               &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
              &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;
       <asp:Image ID="Image2" runat="server" Height="112px" 
           ImageUrl="~/images/Author02.jpg" style="margin-left: 0px" Width="126px" />
             &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
             <div  style="height: 34px; vertical-align: middle;" class="menu">
        
           
                 &nbsp;&nbsp;<br />
                  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                 <asp:HyperLink ID="hlHome" runat="server" Font-Bold="True" 
                     Font-Overline="False" Font-Size="Large" Font-Underline="False" ForeColor="Red" 
                     NavigateUrl="~/Home.aspx">Home</asp:HyperLink>
                         &nbsp;&nbsp;&nbsp;&nbsp;
                 <asp:HyperLink ID="hlPost" runat="server" Font-Bold="True" Font-Size="Large" 
                     Font-Underline="False" ForeColor="Red" NavigateUrl="~/ViewMyPost.aspx">My Post</asp:HyperLink>
                              &nbsp;&nbsp;&nbsp;&nbsp;
                 <asp:HyperLink ID="hlAbout" runat="server" Font-Bold="True" Font-Size="Large" 
                     Font-Underline="False" ForeColor="Red" NavigateUrl="~/About.aspx">About </asp:HyperLink>
                           &nbsp;&nbsp;&nbsp;
                 <asp:HyperLink ID="hlContact" runat="server" Font-Bold="True" Font-Size="Large" 
                     Font-Underline="False" ForeColor="Red" NavigateUrl="~/ContactUs.aspx">Contact</asp:HyperLink>
                                    &nbsp;
        
           
           </div>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
           &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
       <br />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
        </div><br />
       <br />
         &nbsp;&nbsp;<asp:Label ID="lblRecentPost" runat="server" Font-Bold="True" 
           Font-Names="Times New Roman" Font-Size="Medium" ForeColor="Black" 
           Text="Recent Post : "></asp:Label>
       <br />
       <br /><br />
              <div style="height: 274px">
                  <div align="center" style="height: 27px; background-color: #000000;">
                     <asp:Label ID="lblTitle1" runat="server" Font-Bold="True" Font-Size="Medium"   ForeColor="White"></asp:Label>
        </div>
     <div align="center" style="height: 241px">
       <br />
       <asp:TextBox ID="TextBox1" runat="server" Height="219px" Width="867px" 
           ReadOnly="True" TextMode="MultiLine"></asp:TextBox>
       </div>
   </div>
   <br /><br />
    <div style="height: 274px">
   <div align="center" style="height: 27px; background-color: #000000;">
       <asp:Label ID="lblTitle2" runat="server" Font-Bold="True" Font-Size="Medium" 
           ForeColor="White"></asp:Label>
       </div>
   <div align="center" style="height: 241px">
   <br />
       <asp:TextBox ID="TextBox2" runat="server" Height="219px" Width="867px" 
           ReadOnly="True" TextMode="MultiLine"></asp:TextBox>
       </div>
        <br /><br />
    <div style="height: 274px">
   <div align="center" style="height: 27px; background-color: #000000;">
       <asp:Label ID="lblTitle3" runat="server" Font-Bold="True" Font-Size="Medium" 
           ForeColor="White"></asp:Label>
       </div>
   <div align="center" style="height: 241px">
   <br />
       <asp:TextBox ID="TextBox3" runat="server" Height="219px" Width="867px" 
           ReadOnly="True" TextMode="MultiLine"></asp:TextBox>
       </div>
   </div>
   </div>
    </div>
   </div>
    </form>
</body>
</html>
