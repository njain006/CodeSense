<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Search.aspx.cs" Inherits="Search" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div style="height: 100%; background-color: #FFFFFF; width: 1450px; margin-left: 243px; margin-right: 0px;" 
        align="center">
   <div style="height: 199px; width: 1123px; background-image: url('images/Awesome-Keyboard-Macro-Wallpaper-High-Definition.jpg'); margin-left: 130px;" 
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
               Font-Names="Times New Roman" Font-Size="XX-Large" Text="Search Result"></asp:Label>
       </div></div><br /><br />
       <div align="center" 
         
         style="border-top: medium inset #C0C0C0; border-bottom: medium outset #C0C0C0; border-left: medium outset #C0C0C0; border-right: medium inset #C0C0C0; height: 100%; width: 1205px; margin-left: 67px; border-style: none inset outset outset; background-color: #FFFFFF;">
           
           <br />
           <br />
           <br />
           <asp:DataList ID="DataList1" runat="server" 
               DataSourceID="SqlDataSource1" RepeatColumns="3">
               <ItemTemplate>
                   <a href='Blog1.aspx?id=<%# Eval("Post_ID") %>'>
                   <asp:Image ID="Image3" runat="server" Height="230px" 
                       ImageUrl='<%# Eval("Image") %>' Width="312px" />
                   </a>
                   <br />
                   <br />
                   <asp:TextBox ID="TextBox1" runat="server" MaxLength="20" ReadOnly="True" 
                       Text='<%# Eval("Post_Content") %>'></asp:TextBox>
                   <br />
                   <asp:Label ID="Label2" runat="server" Text='<%# Eval("Published_dte") %>'></asp:Label>
                   <br />
                   <br />
                   <br />
                   <br />
               </ItemTemplate>
           </asp:DataList>
           <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
               ConnectionString="<%$ ConnectionStrings:CodeSenseBlogConnectionString %>" 
               
               
               SelectCommand="SELECT Post_Content, Image, Published_dte, Post_ID FROM Post WHERE (Post_Content LIKE '%' + @search + '%')">
               <SelectParameters>
                   <asp:SessionParameter Name="search" SessionField="Search" Type="String" />
               </SelectParameters>
           </asp:SqlDataSource>
           
        </div>






</div>
</asp:Content>

