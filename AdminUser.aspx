<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AdminUser.aspx.cs" Inherits="Admin" %>

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
<body style="width: 1518px">
    <form id="form1" runat="server">
    <div style="height: 1152px; margin-right: 0px;" align="center">
    
    
    <div style="height: 107px; background-color: #000000; font-family: 'Times New Roman', Times, serif; font-size: larger; color: #FFFFFF; width: 1328px; float: left;" 
            align="left" class="divcss">
        <asp:Image ID="Image1" runat="server" Height="99px" 
            ImageUrl="~/images/example/example10.png" Width="133px" />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label1" runat="server" Font-Bold="True" 
            Font-Names="Times New Roman" Font-Size="Larger" Font-Strikeout="False" 
            ForeColor="White" Text="CodeSense Blog  ："></asp:Label>
&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label2" runat="server" Font-Bold="True" 
            Font-Names="Times New Roman" Font-Size="Medium" ForeColor="Silver" 
            Text="for Admin"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:ImageButton ID="ImageButton1" runat="server" Height="63px" 
            ImageUrl="~/images/example/helps.png" ToolTip="Looking for help" 
            Width="70px" onclick="ImageButton1_Click" />
        &nbsp;&nbsp; &nbsp;<asp:ImageButton ID="ImageButton3" runat="server" Height="61px" 
            ImageUrl="~/images/example/logout.png" ToolTip="log out" Width="67px" 
            onclick="ImageButton2_Click" />
        &nbsp;<asp:ImageButton ID="ImageButton2" runat="server" Height="61px" 
            ImageUrl="~/images/example/logout.png" ToolTip="log out" Width="67px" />
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
                <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
                    AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="User_ID" 
                    DataSourceID="SqlDataSource1" Font-Names="Times New Roman" ForeColor="Black" 
                    Width="850px" onrowcancelingedit="GridView1_RowCancelingEdit" 
                    onrowdeleting="GridView1_RowDeleting" 
                    onrowupdating="GridView1_RowUpdating" PageSize="7">
                    <Columns>
                        <asp:TemplateField HeaderText="User_ID" InsertVisible="False" 
                            SortExpression="User_ID">
                            <EditItemTemplate>
                                <asp:Label ID="lbluserid" runat="server" Text='<%# Eval("User_ID") %>'></asp:Label>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label3" runat="server" Text='<%# Bind("User_ID") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:BoundField DataField="Password" HeaderText="Password" ReadOnly="True" 
                            SortExpression="Password" />
                        <asp:TemplateField HeaderText="Email_ID" SortExpression="Email_ID">
                            <EditItemTemplate>
                                <asp:Label ID="lblemailid" runat="server" Text='<%# Eval("Email_ID") %>'></asp:Label>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label2" runat="server" Text='<%# Bind("Email_ID") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:BoundField DataField="First_Name" HeaderText="First_Name" ReadOnly="True" 
                            SortExpression="First_Name" />
                        <asp:BoundField DataField="Last_Name" HeaderText="Last_Name" ReadOnly="True" 
                            SortExpression="Last_Name" />
                        <asp:BoundField DataField="Country" HeaderText="Country" ReadOnly="True" 
                            SortExpression="Country" />
                        <asp:BoundField DataField="Create_dte" HeaderText="Create_dte" ReadOnly="True" 
                            SortExpression="Create_dte" />
                        <asp:BoundField DataField="Modified_dte" HeaderText="Modified_dte" 
                            SortExpression="Modified_dte" ReadOnly="True" />
                        <asp:TemplateField HeaderText="User_status" SortExpression="User_status">
                            <EditItemTemplate>
                                <asp:TextBox ID="txtuserstatus" runat="server" 
                                    Text='<%# Bind("User_status") %>'></asp:TextBox>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label1" runat="server" Text='<%# Bind("User_status") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField ShowHeader="False">
                            <EditItemTemplate>
                                &nbsp;<asp:Button ID="btnUpdate" runat="server" CausesValidation="False" 
                                    CommandName="Update" Text="Update" Width="50px" />
                                <asp:Button ID="btnCancel" runat="server" CausesValidation="False" 
                                    CommandName="Cancel" Text="Cancel" Width="50px" />
                            </EditItemTemplate>
                            <ItemTemplate>
                                &nbsp;<asp:Button ID="btnEdit" runat="server" CausesValidation="False" 
                                    CommandName="Edit" Text="Edit" Width="50px" />
                                <asp:Button ID="btnSelect" runat="server" CausesValidation="False" 
                                    CommandName="Select" Text="Select" Width="50px" />
                                <asp:Button ID="btnDelete" runat="server" CausesValidation="False" 
                                    CommandName="Delete" Text="Delete" Width="50px" />
                            </ItemTemplate>
                            <HeaderStyle Width="55px" />
                            <ItemStyle Width="55px" />
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
                    ConnectionString="<%$ ConnectionStrings:CodeSenseBlogConnectionString %>" 
                    OldValuesParameterFormatString="original_{0}" 
                    SelectCommand="SELECT * FROM [Users]" ConflictDetection="CompareAllValues" 
                    DeleteCommand="DELETE FROM [Users] WHERE [User_ID] = @original_User_ID AND [Password] = @original_Password AND [Email_ID] = @original_Email_ID AND [First_Name] = @original_First_Name AND [Last_Name] = @original_Last_Name AND [Country] = @original_Country AND [Create_dte] = @original_Create_dte AND (([Modified_dte] = @original_Modified_dte) OR ([Modified_dte] IS NULL AND @original_Modified_dte IS NULL)) AND [User_status] = @original_User_status AND (([Image] = @original_Image) OR ([Image] IS NULL AND @original_Image IS NULL))" 
                    InsertCommand="INSERT INTO [Users] ([Password], [Email_ID], [First_Name], [Last_Name], [Country], [Create_dte], [Modified_dte], [User_status], [Image]) VALUES (@Password, @Email_ID, @First_Name, @Last_Name, @Country, @Create_dte, @Modified_dte, @User_status, @Image)" 
                    UpdateCommand="UPDATE [Users] SET [Password] = @Password, [Email_ID] = @Email_ID, [First_Name] = @First_Name, [Last_Name] = @Last_Name, [Country] = @Country, [Create_dte] = @Create_dte, [Modified_dte] = @Modified_dte, [User_status] = @User_status, [Image] = @Image WHERE [User_ID] = @original_User_ID AND [Password] = @original_Password AND [Email_ID] = @original_Email_ID AND [First_Name] = @original_First_Name AND [Last_Name] = @original_Last_Name AND [Country] = @original_Country AND [Create_dte] = @original_Create_dte AND (([Modified_dte] = @original_Modified_dte) OR ([Modified_dte] IS NULL AND @original_Modified_dte IS NULL)) AND [User_status] = @original_User_status AND (([Image] = @original_Image) OR ([Image] IS NULL AND @original_Image IS NULL))">
                    <DeleteParameters>
                        <asp:Parameter Name="original_User_ID" Type="Int32" />
                        <asp:Parameter Name="original_Password" Type="String" />
                        <asp:Parameter Name="original_Email_ID" Type="String" />
                        <asp:Parameter Name="original_First_Name" Type="String" />
                        <asp:Parameter Name="original_Last_Name" Type="String" />
                        <asp:Parameter Name="original_Country" Type="String" />
                        <asp:Parameter DbType="Date" Name="original_Create_dte" />
                        <asp:Parameter DbType="Date" Name="original_Modified_dte" />
                        <asp:Parameter Name="original_User_status" Type="String" />
                        <asp:Parameter Name="original_Image" Type="String" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="Password" Type="String" />
                        <asp:Parameter Name="Email_ID" Type="String" />
                        <asp:Parameter Name="First_Name" Type="String" />
                        <asp:Parameter Name="Last_Name" Type="String" />
                        <asp:Parameter Name="Country" Type="String" />
                        <asp:Parameter DbType="Date" Name="Create_dte" />
                        <asp:Parameter DbType="Date" Name="Modified_dte" />
                        <asp:Parameter Name="User_status" Type="String" />
                        <asp:Parameter Name="Image" Type="String" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="Password" Type="String" />
                        <asp:Parameter Name="Email_ID" Type="String" />
                        <asp:Parameter Name="First_Name" Type="String" />
                        <asp:Parameter Name="Last_Name" Type="String" />
                        <asp:Parameter Name="Country" Type="String" />
                        <asp:Parameter DbType="Date" Name="Create_dte" />
                        <asp:Parameter DbType="Date" Name="Modified_dte" />
                        <asp:Parameter Name="User_status" Type="String" />
                        <asp:Parameter Name="Image" Type="String" />
                        <asp:Parameter Name="original_User_ID" Type="Int32" />
                        <asp:Parameter Name="original_Password" Type="String" />
                        <asp:Parameter Name="original_Email_ID" Type="String" />
                        <asp:Parameter Name="original_First_Name" Type="String" />
                        <asp:Parameter Name="original_Last_Name" Type="String" />
                        <asp:Parameter Name="original_Country" Type="String" />
                        <asp:Parameter DbType="Date" Name="original_Create_dte" />
                        <asp:Parameter DbType="Date" Name="original_Modified_dte" />
                        <asp:Parameter Name="original_User_status" Type="String" />
                        <asp:Parameter Name="original_Image" Type="String" />
                    </UpdateParameters>
                </asp:SqlDataSource>
    </div>
   </div>
    </form>
</body>
</html>
