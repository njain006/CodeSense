<%@ Page Title="" Language="C#" MasterPageFile="~/AboutAuthor.master" AutoEventWireup="true" CodeFile="AddPost.aspx.cs" Inherits="AddPost" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
    {
        width: 100%;
        height: 100px;
    }
    .style2
    {
        width: 332px;
    }
    .style3
    {
        width: 394px;
    }
    .style4
    {
        width: 332px;
        height: 38px;
    }
    .style5
    {
        width: 394px;
        height: 38px;
    }
    .style6
    {
        height: 38px;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div style="height: 918px">
<br /><br />
<div style="height: 131px">
    <asp:Label ID="lblShow" runat="server" Font-Bold="True" 
        Font-Names="Times New Roman" ForeColor="Red" 
        Text="Choose the category , photo and enter your post content"></asp:Label>
    <br />
    <br />
    <table align="center" class="style1">
        <tr>
            <td align="center" class="style4">
                <asp:Label ID="lblID" runat="server" Font-Bold="True" Text="Your ID :"></asp:Label>
            </td>
            <td align="center" class="style5">
                <asp:Label ID="lblCategory" runat="server" Font-Bold="True" 
                    Text="Choose your post category :"></asp:Label>
            </td>
            <td align="center" class="style6">
                <asp:FileUpload ID="FileUpload1" runat="server" />
            </td>
        </tr>
        <tr>
            <td align="center" class="style2">
                <asp:Label ID="lblShowID" runat="server">12</asp:Label>
            </td>
            <td align="center" class="style3">
                <asp:DropDownList ID="ddlCategory" runat="server" AutoPostBack="True" 
                    DataSourceID="SqlDataSource1" DataTextField="Category_Name" 
                    DataValueField="Category_ID" Height="16px" Width="165px">
                    <asp:ListItem>---Choose one category---</asp:ListItem>
                    <asp:ListItem>C </asp:ListItem>
                    <asp:ListItem>C++</asp:ListItem>
                    <asp:ListItem>CSS</asp:ListItem>
                    <asp:ListItem>Java</asp:ListItem>
                    <asp:ListItem>JQuery</asp:ListItem>
                    <asp:ListItem>Oracle</asp:ListItem>
                    <asp:ListItem>PHP</asp:ListItem>
                    <asp:ListItem>SQL</asp:ListItem>
                    <asp:ListItem>VB</asp:ListItem>
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:CodeSenseBlogConnectionString %>" 
                    SelectCommand="SELECT * FROM [Category]">
                </asp:SqlDataSource>
            </td>
            <td align="center">
                &nbsp;&nbsp;
                <asp:Button ID="btnAddPost" runat="server" Font-Bold="True" Text="Add Post" 
                    Width="108px" onclick="btnAddPost_Click" />
               &nbsp;&nbsp; 
                <asp:Button ID="btnClear" runat="server" Font-Bold="True" Text="Clear" 
                    Width="108px" Height="21px" onclick="btnClear_Click" />
            </td>
        </tr>
    </table>
    </div><br />
<div align="center" style="height: 650px">
    <br />
    <br />
    <asp:TextBox ID="txtPostContent" runat="server" Height="558px" 
        TextMode="MultiLine" Width="839px"></asp:TextBox>
    </div>


</div>
</asp:Content>

