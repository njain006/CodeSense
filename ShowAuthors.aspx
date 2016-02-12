<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="ShowAuthors.aspx.cs" Inherits="ShowAuthors" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
        {
            width: 100%;
            height: 82px;
        }
        .style2
        {
            width: 99px;
        }
        .style3
        {
            width: 99px;
            height: 20px;
        }
        .style4
        {
            height: 20px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div style="height: 100%; background-color: #FFFFFF; width: 1450px; margin-left: 243px; margin-right: 0px;" 
        align="center">
   <div style="height: 199px; width: 1123px; background-image: url('images/ShowAuthors.jpg'); margin-left: 130px;" 
        align="left"><br />
       <br />
       <br />
       <br />
       <br />
       <br />
       <br /> 
       <div style="border-top: medium inset #C0C0C0; border-left: medium outset #C0C0C0; border-right: medium inset #C0C0C0; height: 63px; width: 556px; background-color: #FFFFFF; margin-left: 208px; margin-bottom: 0px;" 
           align="center">
           <asp:Label ID="Label1" runat="server" Font-Bold="True" 
               Font-Names="Times New Roman" Font-Size="XX-Large" Text="Authors"></asp:Label>
       </div></div><br /><br />
       <div align="center"  
            
            style="border-top: medium inset #C0C0C0; border-bottom: medium outset #C0C0C0; border-left: medium outset #C0C0C0; border-right: medium inset #C0C0C0; height: 100%; width: 1205px; margin-left: 67px; border-style: none inset outset outset; background-color: #FFFFFF;">
         
           <br />
           <br />
           <asp:DataList ID="DataList1" runat="server" 
               DataSourceID="SqlDataSource1" RepeatColumns="3">
               <ItemTemplate>
                   <asp:Image ID="Image3" runat="server" Height="198px" 
                       ImageUrl='<%# Eval("Image") %>' Width="315px" />
                   <br />    <br />
                   <table class="style1">
                       <tr>
                           <td class="style3">
                               <asp:Label ID="Label2" runat="server" Text="Name :"></asp:Label>
                           </td>
                           <td class="style4">
                               <asp:Label ID="Label3" runat="server" Text='<%# Eval("First_Name") %>'></asp:Label>
                               ,<asp:Label ID="Label4" runat="server" Text='<%# Eval("Last_Name") %>'></asp:Label>
                           </td>
                       </tr>
                       <tr>
                           <td class="style2">
                               <asp:Label ID="Label5" runat="server" Text="Email_ID :"></asp:Label>
                           </td>
                           <td>
                               <asp:Label ID="Label6" runat="server" Text='<%# Eval("Email_ID") %>'></asp:Label>
                           </td>
                       </tr>
                       <tr>
                           <td class="style2">
                               <asp:Label ID="Label7" runat="server" Text="Country :"></asp:Label>
                           </td>
                           <td>
                               <asp:Label ID="Label8" runat="server" Text='<%# Eval("Country") %>'></asp:Label>
                           </td>
                       </tr>
                       <tr>
                           <td class="style2">
                               <asp:Label ID="Label9" runat="server" Text="Status :"></asp:Label>
                           </td>
                           <td>
                               <asp:Label ID="Label10" runat="server" Text='<%# Eval("User_status") %>'></asp:Label>
                           </td>
                       </tr>
                     
                   </table>
                   <br />
               </ItemTemplate>
           </asp:DataList>
           <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
               ConnectionString="<%$ ConnectionStrings:CodeSenseBlogConnectionString %>" 
               
               SelectCommand="SELECT Email_ID, First_Name, Last_Name, User_status, Country, Image FROM Users WHERE (User_status = @valid)">
               <SelectParameters>
                   <asp:Parameter DefaultValue="Valid" Name="valid" Type="String" />
               </SelectParameters>
           </asp:SqlDataSource>
         
        </div>






</div>
</asp:Content>

