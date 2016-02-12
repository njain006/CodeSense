<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Admin.aspx.cs" Inherits="Admin" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
      <style type="text/css">
        #form1
        {
            height: 1153px;
            width: 1332px;
        }
        
        .divcss
        {
           -webkit-text-shadow: red 5px 5px 5px;
           -moz-text-shadow: red 5px 5px 5px;
           -o-text-shadow: red 5px 5px 5px;
           -ms-text-shadow: red 5px 5px 5px;
        }
        
        .shower
        {
             -webkit-border-radius:1px;
               -moz-border-radius:1px;
              -o-border-radius:1px;
               -ms-border-radius:1px;
               background-color:Gray;
        }
    </style>
</head>
<body>
      <form id="form1" runat="server">
    <div style="height: 1152px; margin-right: 0px;" align="center">
    
    
    <div style="height: 107px; background-color: #000000; font-family: 'Times New Roman', Times, serif; font-size: larger; color: #FFFFFF; width: 1328px; float: left;" 
            align="left" class="divcss">
        <asp:Image ID="Image1" runat="server" Height="99px" 
            ImageUrl="~/images/example/example10.png" Width="115px" />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label1" runat="server" Font-Bold="True" 
            Font-Names="Times New Roman" Font-Size="Larger" Font-Strikeout="False" 
            ForeColor="White" Text="CodeSense Blog  ："></asp:Label>
&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label2" runat="server" Font-Bold="True" 
            Font-Names="Times New Roman" Font-Size="Medium" ForeColor="Silver" 
            Text="for Admin"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:ImageButton ID="ImageButton1" runat="server" Height="63px" 
            ImageUrl="~/images/example/helps.png" ToolTip="Looking for help" 
            Width="70px" onclick="ImageButton1_Click" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:ImageButton ID="ImageButton2" runat="server" Height="61px" 
            ImageUrl="~/images/example/logout.png" ToolTip="log out" Width="67px" 
            onclick="ImageButton2_Click" />
        <br />
        </div>
    <div style="height: 1052px; width: 165px; font-family: 'Times New Roman', Times, serif; font-size: medium; color: #FF0000; background-color: #000000; margin-top: 0px; float: left;" 
            align="center">
        <br /> 
        <br />
        <br />
        <br />
        <br />
        <asp:Label ID="Label3" runat="server" Font-Bold="True" ForeColor="White" 
            Text="Current User :"></asp:Label>
&nbsp;<br />
        <br />
&nbsp;<asp:Label ID="lblCurrentUser" runat="server" ForeColor="White"></asp:Label>
        <br />
        <br />
        <br />
        <asp:Label ID="Label4" runat="server" Font-Bold="True" ForeColor="White" 
            Text="Login Time :"></asp:Label>
&nbsp;&nbsp;<br />
        <br />
&nbsp;<asp:Label ID="lblLoginTime" runat="server" ForeColor="White"></asp:Label>
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        
       
        
        <br />
        <asp:Button ID="btnManageUser" runat="server" BackColor="Black" 
            BorderColor="#333333" Font-Bold="True" Font-Names="Times New Roman" 
            Font-Size="Large" ForeColor="Red" Height="46px" 
            Text="Manage  User Info" Width="161px" 
            onclick="btnManageUser_Click" />
    
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <asp:Button ID="btnManagePost" runat="server" BackColor="Black" BorderColor="#333333" 
            Font-Bold="True" Font-Names="Times New Roman" Font-Size="Large" ForeColor="Red" 
            Height="46px" Text="Manage Post Info" Width="161px" onclick="btnManagePost_Click" 
             />
    
         <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <asp:Button ID="btnManageComment" runat="server" Text="Manage Comment Info" 
            Width="163px" BackColor="Black" BorderColor="#333333" 
            Font-Bold="True" Font-Names="Times New Roman" Font-Size="Large" ForeColor="Red" 
            Height="46px" onclick="btnManageComment_Click"  />
        <br />
        <br />
    
        </div>
    
            <div style="height: 1033px">
        <br /><br /><br /><br /><br /> <br />
                <br /><br /><br />
                <br />
    </div>
   </div>
    </form>
</body>
</html>
