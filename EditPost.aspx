<%@ Page Title="" Language="C#" MasterPageFile="~/AboutAuthor.master" AutoEventWireup="true" CodeFile="EditPost.aspx.cs" Inherits="EditPost" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    </asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div style="height: 871px">
    <div align="center" style="float: left; width: 782px; height: 857px;">
    <div style="height: 84px; width: 611px; border-bottom-style: outset; border-top-width: 2px; border-top-color: #C0C0C0;">
        <br />
        <br />
        <br />
        <asp:Label ID="lblShow" runat="server" Font-Bold="True" 
            Font-Names="Times New Roman" Font-Size="Larger" ForeColor="Black" 
            Text="Modify    My  Post"></asp:Label>
        &nbsp;</div>
    <br /><br />
    <div align="left"  
            
            style="border-bottom-style: outset; border-top-width: 2px; border-top-color: #C0C0C0; height: 279px; width: 659px;">
        &nbsp;<br />
&nbsp;<asp:Label ID="Label2" runat="server" Font-Names="Times New Roman" 
            Font-Size="Medium" ForeColor="Red" Text="* My Posts : "></asp:Label>
        <asp:Label ID="lblemailid" runat="server" Visible="False"></asp:Label>
       <br />
    
        &nbsp;&nbsp;&nbsp;&nbsp;<asp:GridView  ID="GridView1" runat="server" 
            AllowPaging="True" AutoGenerateColumns="False" DataKeyNames="Post_ID" 
            DataSourceID="SqlDataSource1" Height="16px" PageSize="3" Width="454px">
            <Columns>
                <asp:BoundField DataField="User_ID" HeaderText="User_ID" 
                    SortExpression="User_ID">
                <HeaderStyle BackColor="Red" />
                </asp:BoundField>
                <asp:TemplateField HeaderText="Post_Content" SortExpression="Post_Content">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("Post_Content") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:TextBox ID="TextBox2" runat="server" Height="38px" 
                            Text='<%# Bind("Post_Content") %>' TextMode="MultiLine" Width="299px"></asp:TextBox>
                    </ItemTemplate>
                    <HeaderStyle BackColor="Red" />
                </asp:TemplateField>
                <asp:BoundField DataField="Published_dte" HeaderText="Published_dte" 
                    SortExpression="Published_dte">
                <HeaderStyle BackColor="Red" />
                </asp:BoundField>
                <asp:BoundField DataField="Post_rating" HeaderText="Post_rating" 
                    SortExpression="Post_rating">
                <HeaderStyle BackColor="Red" />
                </asp:BoundField>
                <asp:TemplateField ShowHeader="False">
                    <ItemTemplate>
                        <asp:Button ID="btnselect" runat="server" CausesValidation="False" 
                            CommandName="Select" Text="Select" Width="43px" />
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
            <SelectedRowStyle BackColor="Lime" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:CodeSenseBlogConnectionString %>" 
            SelectCommand="SELECT Post.Post_ID, Post.Category_ID, Post.User_ID, Post.Published_dte, Post.Modified_dte, Post.Post_status, Post.Post_rating, Post.Post_Content FROM Post INNER JOIN Users ON Post.User_ID = Users.User_ID WHERE (Users.Email_ID = @emailid)">
            <SelectParameters>
                <asp:ControlParameter ControlID="lblemailid" Name="emailid" 
                    PropertyName="Text" />
            </SelectParameters>
        </asp:SqlDataSource>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
        <br />
        <br />

        <br />

        <br />
        <br />
        <br />

        <br />

        </div>
<br /><br />
<div align="left"  
            style="border-bottom: 2px outset #C0C0C0; height: 407px; width: 606px; border-left-color: #C0C0C0; border-left-width: 2px; border-right-color: #C0C0C0; border-right-width: 2px; border-top-color: #C0C0C0; border-top-width: 2px;">
    <br />
&nbsp;
    <asp:Label ID="Label3" runat="server" Font-Bold="False" 
        Font-Names="Times New Roman" ForeColor="#33CC33" Text="* Allow to Modify :"></asp:Label>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="lblLastName2" runat="server" Font-Bold="True" 
            Font-Names="Times New Roman" Text="Post Content"></asp:Label>
        &nbsp;
    <br />
    <br />
&nbsp;&nbsp;&nbsp;&nbsp;
   
    &nbsp;&nbsp;
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
    <br />
    <br />
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:TextBox ID="txtpostcontent" runat="server" Height="104px" 
        TextMode="MultiLine" Width="462px"></asp:TextBox>
    <br />
    <br />
    <br />
    &nbsp;<br />
    
    <br />
&nbsp;<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
    <asp:Button ID="btnSubmit" runat="server" Text="Submit" Width="116px" 
        onclick="Button1_Click" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Button ID="btnClear" runat="server" onclick="Button2_Click" Text="Clear" 
        Width="119px" />
&nbsp;</div>
        <br />
    <div style="height: 3px; width: 611px">
        </div>
    </div>
    <div style="float: left; width: 238px; height: 527px; background-color: #000000;" 
            align="center">
    <div style="height: 84px; width: 238px; background-color: #000000;">
      &nbsp;<asp:Label ID="Label1" runat="server" Text="Instruction" Font-Bold="True" 
            Font-Names="Times New Roman" Font-Size="Medium" ForeColor="White"></asp:Label>   
        &nbsp;<asp:Image ID="Image3" runat="server" Height="82px" 
            ImageUrl="~/images/Author03.jpg" Width="121px" style="margin-left: 0px" />
        </div>
        <br /><br />
        <div style="height: 396px; background-color: #FFFFFF; width: 207px;" 
            align="left">
            <br />
            <asp:Label ID="Label4" runat="server" Font-Names="Times New Roman" 
                Text="The Email_ID , FirstName , LastName and user status are not allowed to be modified, because :"></asp:Label>
                <br />
            <br />
&nbsp;
            <asp:Label ID="Label5" runat="server" Font-Names="Times New Roman" 
                Font-Size="Small" ForeColor="Red" 
                Text="* The Email_ID is used to prove your identity, it should be consistent with the Email_ID that you used to create this account"></asp:Label>
                <br />
            <br />
&nbsp;&nbsp;
            <asp:Label ID="Label6" runat="server" Font-Names="Times New Roman" 
                ForeColor="Red" 
                Text="* The FirstName and LastName are used to prove your identity when you forget your Email_ID , to ensure your account security, they are not allowed to be modified."></asp:Label>
                <br />
            <br />
&nbsp;&nbsp;
            <asp:Label ID="Label7" runat="server" Font-Names="Times New Roman" 
                ForeColor="Red" 
                Text="* The user status is decisided when you create this account, and it is not allowed to be modified."></asp:Label>
        </div>
    </div>
    </div>
</asp:Content>


