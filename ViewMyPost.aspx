<%@ Page Title="" Language="C#" MasterPageFile="~/AboutAuthor.master" AutoEventWireup="true" CodeFile="ViewMyPost.aspx.cs" Inherits="ViewMyPost" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div style="height: 100%" align="center">
<div align="center" style="height: 36px">
    <asp:Label ID="Label2" runat="server" Font-Bold="True" 
        Font-Names="Times New Roman" Font-Size="Larger" Text="My Posts"></asp:Label>
    </div>
    <asp:Label ID="lblemailid" runat="server" Visible="False"></asp:Label>
    <br /><br />





    <br />
    <asp:DataList ID="DataList1" runat="server" DataKeyField="Post_ID" 
        DataSourceID="SqlDataSource1" onitemcommand="DataList1_ItemCommand" 
        RepeatColumns="3" RepeatDirection="Horizontal" style="margin-bottom: 49px">
        <ItemTemplate>
           <a href="Blog1.aspx?id=<%# Eval("Post_ID") %>"><asp:Image ID="Image3" runat="server" Height="192px" 
                ImageUrl='<%# Eval("Image") %>' Width="255px" /></a>
            <br />
            <br />
            <asp:TextBox ID="TextBox1" runat="server" MaxLength="20" ReadOnly="True" 
                Text='<%# Eval("Post_Content") %>'></asp:TextBox>
            <br />
        </ItemTemplate>
    </asp:DataList>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:CodeSenseBlogConnectionString %>" 
        SelectCommand="SELECT Post.Post_ID, Post.Post_Content, Post.Image FROM Post INNER JOIN Users ON Post.User_ID = Users.User_ID WHERE (Users.Email_ID = @emailid)">
        <SelectParameters>
            <asp:ControlParameter ControlID="lblemailid" Name="emailid" 
                PropertyName="Text" />
        </SelectParameters>
    </asp:SqlDataSource>





</div>
</asp:Content>

