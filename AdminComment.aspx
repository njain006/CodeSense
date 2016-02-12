<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AdminComment.aspx.cs" Inherits="AdminComment" %>

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
            Text="Manage  User Info" Width="161px" onclick="btnManageUser_Click" 
            />
    
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
                <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
                    AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="Comment_ID" 
                    DataSourceID="SqlDataSource1" Font-Names="Times New Roman" ForeColor="Black" 
                    Width="850px" onrowcancelingedit="GridView1_RowCancelingEdit" 
                    onrowdeleting="GridView1_RowDeleting" onrowupdating="GridView1_RowUpdating" 
                    PageSize="7">
                    <Columns>
                        <asp:TemplateField HeaderText="Comment_ID" InsertVisible="False" 
                            SortExpression="Comment_ID">
                            <EditItemTemplate>
                                <asp:Label ID="lblcommentid" runat="server" Text='<%# Eval("Comment_ID") %>'></asp:Label>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label5" runat="server" Text='<%# Bind("Comment_ID") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:BoundField DataField="User_ID" HeaderText="User_ID" ReadOnly="True" 
                            SortExpression="User_ID" />
                        <asp:BoundField DataField="Post_ID" HeaderText="Post_ID" ReadOnly="True" 
                            SortExpression="Post_ID" />
                        <asp:TemplateField HeaderText="Comment_text" SortExpression="Comment_text">
                            <EditItemTemplate>
                                <asp:TextBox ID="txtcommentcontent" runat="server" Height="180px" 
                                    Text='<%# Bind("Comment_text") %>' TextMode="MultiLine"></asp:TextBox>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label1" runat="server" Text='<%# Bind("Comment_text") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Comment_dte" SortExpression="Comment_dte">
                            <EditItemTemplate>
                                <asp:Label ID="Label5" runat="server" Text='<%# Eval("Comment_dte") %>'></asp:Label>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label3" runat="server" Text='<%# Bind("Comment_dte") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Comment_mod_dte" 
                            SortExpression="Comment_mod_dte">
                            <EditItemTemplate>
                                <asp:Label ID="Label6" runat="server" Text='<%# Eval("Comment_mod_dte") %>'></asp:Label>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label4" runat="server" Text='<%# Bind("Comment_mod_dte") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Current_status" SortExpression="Current_status">
                            <EditItemTemplate>
                                <asp:TextBox ID="txtstatus" runat="server" Text='<%# Bind("Current_status") %>' 
                                    Width="50px"></asp:TextBox>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label2" runat="server" Text='<%# Bind("Current_status") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:BoundField DataField="Parent_comment_ID" HeaderText="Parent_comment_ID" 
                            ReadOnly="True" SortExpression="Parent_comment_ID" />
                        <asp:TemplateField ShowHeader="False">
                            <EditItemTemplate>
                                <asp:Button ID="btnUpdate" runat="server" CausesValidation="False" 
                                    CommandName="Update" Text="Update" Width="50px" />
                                <asp:Button ID="btnCancel" runat="server" CausesValidation="False" 
                                    CommandName="Cancel" Text="Cancel" Width="50px" />
                            </EditItemTemplate>
                            <ItemTemplate>
                                &nbsp;&nbsp;<asp:Button ID="btnEdit" runat="server" CausesValidation="False" 
                                    CommandName="Edit" Text="Edit" Width="50px" />
                                <asp:Button ID="btnSelect" runat="server" CausesValidation="False" 
                                    CommandName="Select" Text="Select" Width="50px" />
                                <asp:Button ID="btnDelete" runat="server" CausesValidation="False" 
                                    CommandName="Delete" Text="Delete" Width="50px" />
                            </ItemTemplate>
                        </asp:TemplateField>
                    </Columns>
                    <EditRowStyle BorderColor="Black" BorderWidth="2px" Font-Bold="False" 
                        Font-Names="Times New Roman" ForeColor="Black" HorizontalAlign="Left" 
                        Width="60px" />
                    <HeaderStyle BackColor="Red" BorderWidth="2px" Height="30px" 
                        HorizontalAlign="Left" Width="70px" />
                    <RowStyle Height="30px" Width="60px" />
                    <SelectedRowStyle BackColor="Lime" Font-Bold="True" 
                        Font-Names="Times New Roman" HorizontalAlign="Left" Width="60px" />
                </asp:GridView>
                <br />
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConflictDetection="CompareAllValues" 
                    ConnectionString="<%$ ConnectionStrings:CodeSenseBlogConnectionString %>" 
                    DeleteCommand="DELETE FROM [Comment] WHERE [Comment_ID] = @original_Comment_ID AND (([User_ID] = @original_User_ID) OR ([User_ID] IS NULL AND @original_User_ID IS NULL)) AND [Post_ID] = @original_Post_ID AND [Comment_text] = @original_Comment_text AND [Comment_dte] = @original_Comment_dte AND (([Comment_mod_dte] = @original_Comment_mod_dte) OR ([Comment_mod_dte] IS NULL AND @original_Comment_mod_dte IS NULL)) AND [Current_status] = @original_Current_status AND (([Parent_comment_ID] = @original_Parent_comment_ID) OR ([Parent_comment_ID] IS NULL AND @original_Parent_comment_ID IS NULL))" 
                    InsertCommand="INSERT INTO [Comment] ([User_ID], [Post_ID], [Comment_text], [Comment_dte], [Comment_mod_dte], [Current_status], [Parent_comment_ID]) VALUES (@User_ID, @Post_ID, @Comment_text, @Comment_dte, @Comment_mod_dte, @Current_status, @Parent_comment_ID)" 
                    OldValuesParameterFormatString="original_{0}" 
                    SelectCommand="SELECT * FROM [Comment]" 
                    
                    
                    
                    UpdateCommand="UPDATE [Comment] SET [User_ID] = @User_ID, [Post_ID] = @Post_ID, [Comment_text] = @Comment_text, [Comment_dte] = @Comment_dte, [Comment_mod_dte] = @Comment_mod_dte, [Current_status] = @Current_status, [Parent_comment_ID] = @Parent_comment_ID WHERE [Comment_ID] = @original_Comment_ID AND (([User_ID] = @original_User_ID) OR ([User_ID] IS NULL AND @original_User_ID IS NULL)) AND [Post_ID] = @original_Post_ID AND [Comment_text] = @original_Comment_text AND [Comment_dte] = @original_Comment_dte AND (([Comment_mod_dte] = @original_Comment_mod_dte) OR ([Comment_mod_dte] IS NULL AND @original_Comment_mod_dte IS NULL)) AND [Current_status] = @original_Current_status AND (([Parent_comment_ID] = @original_Parent_comment_ID) OR ([Parent_comment_ID] IS NULL AND @original_Parent_comment_ID IS NULL))">
                    <DeleteParameters>
                        <asp:Parameter Name="original_Comment_ID" Type="Int32" />
                        <asp:Parameter Name="original_User_ID" Type="Int32" />
                        <asp:Parameter Name="original_Post_ID" Type="Int32" />
                        <asp:Parameter Name="original_Comment_text" Type="String" />
                        <asp:Parameter Name="original_Comment_dte" DbType="Date" />
                        <asp:Parameter Name="original_Comment_mod_dte" DbType="Date" />
                        <asp:Parameter Name="original_Current_status" Type="String" />
                        <asp:Parameter Name="original_Parent_comment_ID" Type="Int32" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="User_ID" Type="Int32" />
                        <asp:Parameter Name="Post_ID" Type="Int32" />
                        <asp:Parameter Name="Comment_text" Type="String" />
                        <asp:Parameter Name="Comment_dte" DbType="Date" />
                        <asp:Parameter Name="Comment_mod_dte" DbType="Date" />
                        <asp:Parameter Name="Current_status" Type="String" />
                        <asp:Parameter Name="Parent_comment_ID" Type="Int32" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="User_ID" Type="Int32" />
                        <asp:Parameter Name="Post_ID" Type="Int32" />
                        <asp:Parameter Name="Comment_text" Type="String" />
                        <asp:Parameter Name="Comment_dte" DbType="Date" />
                        <asp:Parameter Name="Comment_mod_dte" DbType="Date" />
                        <asp:Parameter Name="Current_status" Type="String" />
                        <asp:Parameter Name="Parent_comment_ID" Type="Int32" />
                        <asp:Parameter Name="original_Comment_ID" Type="Int32" />
                        <asp:Parameter Name="original_User_ID" Type="Int32" />
                        <asp:Parameter Name="original_Post_ID" Type="Int32" />
                        <asp:Parameter Name="original_Comment_text" Type="String" />
                        <asp:Parameter Name="original_Comment_dte" DbType="Date" />
                        <asp:Parameter Name="original_Comment_mod_dte" DbType="Date" />
                        <asp:Parameter Name="original_Current_status" Type="String" />
                        <asp:Parameter Name="original_Parent_comment_ID" Type="Int32" />
                    </UpdateParameters>
                </asp:SqlDataSource>
    </div>
   </div>
    </form>
</body>
</html>
