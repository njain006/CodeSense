<%@ Page Title="" Language="C#" MasterPageFile="~/AboutAuthor.master" AutoEventWireup="true" CodeFile="EditComment.aspx.cs" Inherits="EditComment" %>

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
            Text="Modify My Comment"></asp:Label>
        &nbsp;</div>
    <br /><br />
    <div align="left"  
            
            style="border-bottom-style: outset; border-top-width: 2px; border-top-color: #C0C0C0; height: 279px; width: 659px;">
        &nbsp;<br />
&nbsp;<asp:Label ID="Label2" runat="server" Font-Names="Times New Roman" 
            Font-Size="Medium" ForeColor="Red" Text="* My Comments : "></asp:Label>
        <asp:Label ID="lblemailid" runat="server" Visible="False"></asp:Label>
       <br />
    
        &nbsp;&nbsp;&nbsp;&nbsp;<asp:GridView  ID="GridView1" runat="server" 
            AllowPaging="True" AutoGenerateColumns="False" DataKeyNames="Comment_ID" 
            DataSourceID="SqlDataSource1" Height="16px" PageSize="3" Width="454px">
            <Columns>
                <asp:BoundField DataField="User_ID" HeaderText="User_ID" 
                    SortExpression="User_ID">
                <HeaderStyle BackColor="Red" />
                </asp:BoundField>
                <asp:BoundField DataField="Post_ID" HeaderText="Post_ID" 
                    SortExpression="Post_ID">
                <HeaderStyle BackColor="Red" />
                </asp:BoundField>
                <asp:TemplateField HeaderText="Comment_text" SortExpression="Comment_text">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("Comment_text") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:TextBox ID="TextBox2" runat="server" ReadOnly="True" 
                            Text='<%# Bind("Comment_text") %>' TextMode="MultiLine" Width="178px"></asp:TextBox>
                    </ItemTemplate>
                    <HeaderStyle BackColor="Red" />
                </asp:TemplateField>
                <asp:BoundField DataField="Comment_dte" HeaderText="Comment_dte" 
                    SortExpression="Comment_dte">
                <HeaderStyle BackColor="Red" />
                </asp:BoundField>
                <asp:BoundField DataField="Parent_comment_ID" HeaderText="Parent_comment_ID" 
                    SortExpression="Parent_comment_ID">
                <HeaderStyle BackColor="Red" />
                </asp:BoundField>
                <asp:TemplateField ShowHeader="False">
                    <ItemTemplate>
                        <asp:Button ID="Select" runat="server" CausesValidation="False" 
                            CommandName="Select" Text="Select" />
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
            <SelectedRowStyle BackColor="Lime" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:CodeSenseBlogConnectionString %>" 
            
            SelectCommand="SELECT Comment.Comment_ID, Comment.User_ID, Comment.Post_ID, Comment.Comment_text, Comment.Comment_dte, Comment.Comment_mod_dte, Comment.Current_status, Comment.Parent_comment_ID FROM Comment INNER JOIN Users ON Comment.User_ID = Users.User_ID WHERE (Users.Email_ID = @emailid)">
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
            Font-Names="Times New Roman" Text="Comment Content"></asp:Label>
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
    <asp:TextBox ID="txtcommentcontent" runat="server" Height="104px" 
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
                
                Text="The Comment_ID , User_ID , Post_ID,Published_date and Comment_status are not allowed to be modified, because :"></asp:Label>
                <br />
            <br />
&nbsp;
            <asp:Label ID="Label5" runat="server" Font-Names="Times New Roman" 
                Font-Size="Small" ForeColor="Red" 
                
                Text="* The Comment_ID is used to prove the comment's identity, it should be consistent with the Email_ID that you used to create this account"></asp:Label>
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




