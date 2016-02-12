<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Blog1.aspx.cs" Inherits="Blog1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
        {
            width: 99%;
            height: 139px;
        }
        .style3
        {
            height: 32px;
        }
        .style4
        {
            height: 30px;
        }
        </style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div style="background-color: #FFFFFF; height: 100%; float: left; width: 859px; margin-left: 158px; margin-right: 0px;" 
        align="left">
<div style="height: 176px; width: 592px; float: left;" align="center">  
    <br /><br />
    <asp:Label ID="lblShowPostID" runat="server" Font-Bold="True" 
        Font-Names="Times New Roman" Font-Size="X-Large"></asp:Label>
    <br />
    </div>
<div style="height: 182px; width: 245px; float: left; margin-left: 0px; margin-right: 0px;">
    <asp:Image ID="img01" runat="server" Height="175px" 
        ImageUrl="~/images/blog/blog1.jpg" Width="245px" />
    </div>

<div style="height: 51%; width: 860px; margin-left: 0px;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

<div style="border-left: medium inset #C0C0C0; border-right: medium outset #C0C0C0; border-top: medium inset #C0C0C0; border-bottom: medium outset #C0C0C0; float: left; width: 553px; height: 524px; margin-left: 34px;">
    <asp:TextBox ID="txtPostContent" runat="server" Height="521px" ReadOnly="True" 
        TextMode="MultiLine" Width="545px"></asp:TextBox>
    </div>
<div style="width: 257px; height: 499px; float: left;">&nbsp;&nbsp;&nbsp;
    <br />
    <br />
    <br />
    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Label ID="lblRating" runat="server" Font-Size="Large" Text="Rating : "></asp:Label>&nbsp;&nbsp; &nbsp;&nbsp;
    <asp:Label ID="lblShowRating" runat="server"></asp:Label>
    <br />
    <br />
    <br />
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<asp:Label 
        ID="lblgiverating" runat="server" Font-Bold="True" 
        Font-Names="Times New Roman" ForeColor="Red" Text="Give your rating :"></asp:Label>
    <br />
    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:DropDownList ID="ddlrating" runat="server">
        <asp:ListItem>----select a grade----</asp:ListItem>
        <asp:ListItem>1</asp:ListItem>
        <asp:ListItem>2</asp:ListItem>
        <asp:ListItem>3</asp:ListItem>
        <asp:ListItem>4</asp:ListItem>
        <asp:ListItem>5</asp:ListItem>
    </asp:DropDownList>
    <br />
    <br />
    <br />
    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Label ID="lblopinion" runat="server" Font-Bold="True" 
        Font-Names="Times New Roman" ForeColor="Red" Text="Your opinion :"></asp:Label>
    <br />
    <br />
&nbsp;&nbsp;&nbsp;
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:RadioButton ID="rbtndislike" 
        runat="server" GroupName="opinion" Text="Dislike" />
&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:RadioButton ID="rbtnlike" runat="server" Checked="True" 
        GroupName="opinion" Text="Like" />
    <br />
    <br />
    <br />
    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Button ID="btnSubmit" runat="server" onclick="btnSubmit_Click" 
        Text="Submit" />
    </div>
</div>
<div style="height: 100%; width: 790px; margin-left: 34px; float: left; background-color: #FFFFFF;" 
        align="left">
    <br />
    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Label ID="lblComments" runat="server" Font-Size="Large" ForeColor="Red" 
        Text="Comments :"></asp:Label>
    <br />
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:TextBox ID="txtcommentcontent" runat="server" Width="472px"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Button ID="btnAdd" runat="server" onclick="btnAdd_Click" Text="Add" />
    <br />
    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource1" 
        Height="289px" Width="780px" onitemcommand="DataList1_ItemCommand" >
        <ItemTemplate>
            <table class="style1" style="border-style: solid; border-width: thin">
                <tr>
                    <td style="background-color: #000000" class="style3">
                    </td>
                </tr>
                <tr>
                    <td class="style4">
                        &nbsp;&nbsp;&nbsp; &nbsp;  <asp:Label ID="Label1" runat="server" Text='<%# Eval("User_ID") %>'></asp:Label>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Label ID="Label2" runat="server" Text='<%# Eval("Comment_dte") %>'></asp:Label>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="Label4" runat="server" 
                            Text='<%# Eval("Comment_ID") %>' Visible="False"></asp:Label>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Button ID="btnReply" runat="server" CausesValidation="False" 
                            Text="Reply" CommandArgument="1" CommandName="Reply" 
                           />
                  
                        <br />
                        &nbsp;<asp:TextBox ID="TextBox1" runat="server" Height="45px" ReadOnly="True" 
                            Text='<%# Eval("Comment_text") %>' TextMode="MultiLine" Width="627px"></asp:TextBox>
                            <br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:GridView ID="GridView1" 
                            runat="server" AllowPaging="True" CellPadding="4" DataSourceID="SqlDataSource1" 
                            ForeColor="#333333" GridLines="None" PageSize="3" Width="606px">
                            <AlternatingRowStyle BackColor="White" />
                            <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                            <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                            <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
                            <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
                            <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
                            <SortedAscendingCellStyle BackColor="#FDF5AC" />
                            <SortedAscendingHeaderStyle BackColor="#4D0000" />
                            <SortedDescendingCellStyle BackColor="#FCF6C0" />
                            <SortedDescendingHeaderStyle BackColor="#820000" />
                        </asp:GridView>
&nbsp;<asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                            ConnectionString="<%$ ConnectionStrings:CodeSenseBlogConnectionString %>" 
                            SelectCommand="SELECT Comment_ID, Comment_dte, Comment_text, User_ID FROM Comment WHERE (Parent_comment_ID = @parent)">
                            <SelectParameters>
                                <asp:ControlParameter ControlID="Label4" Name="parent" PropertyName="Text" 
                                    Type="Int16" />
                            </SelectParameters>
                        </asp:SqlDataSource>
                        <br />
                    </td>
                </tr>
                <tr>
                    <td style="background-color: #000000">
                        &nbsp;</td>
                </tr>
            </table>
        </ItemTemplate>
    </asp:DataList>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:CodeSenseBlogConnectionString %>" 
        
        
        SelectCommand="SELECT Comment.Comment_text, Comment.Comment_dte, Comment.User_ID, Comment.Comment_ID FROM Comment INNER JOIN Post ON Comment.Post_ID = Post.Post_ID WHERE (Post.Post_ID = @postid) AND (Comment.Parent_comment_ID = @parentcomment)">
        <SelectParameters>
            <asp:QueryStringParameter Name="postid" QueryStringField="id" Type="Int16" />
            <asp:Parameter DefaultValue="0" Name="parentcomment" Type="Int16" />
        </SelectParameters>
    </asp:SqlDataSource>
    </div>

</div>
</asp:Content>

