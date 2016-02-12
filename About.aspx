<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="About.aspx.cs" Inherits="About" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link href="Style/Image.css" rel="stylesheet" type="text/css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div style="height: 959px; width: 1205px;">
    <div style="float: left; width: 121px; height: 941px;"></div>
    <div style="float: left; width: 592px; height: 949px; background-color: #000000;" 
            align="center">
        <br />
        <br />
        <asp:TextBox ID="txtAboutContent" runat="server" BackColor="Black" 
            Font-Names="Times New Roman" Font-Size="Medium" ForeColor="White" 
            Height="768px" ReadOnly="True" TextMode="MultiLine" Width="534px">   In the current milieu of electronic media, Weblogs, popularly known as blogs, are omnipresent in the 
World Wide Web. Modern developments in computer and IT infrastructure have not only greatly 
condensed the lead-time to starting and subsequently maintaining a blog, but have also made it an 
economically feasible and a viable venture.
  
    Consequently, this has led to the unfettered creation of a galaxy of blogs encompassing the entire 
gamut of topics that can possibly be addressed under the sun! However, there are examples galore of 
how the perils of imprudent content management can invariably dissipate a blog’s effectiveness.
In this context, the investors at CodeSense believe that a professionally edited blog, with carefully 
curated and focused content magnifies its success potential by:

   · Attracting high-quality writers and Subject Matter Experts (SME) to generate highly valued, 
     award-winning content
   · Fostering and enriching meaningful exchange of ideas via comments
   · Routinely introducing novel ideas, discussing cutting edge technologies, providing insightful 
     commentary, and
   · Significantly increasing the monetization potential of page traffic.

    The blog, in its initial avatar, will have about 10 to 12 dynamic web pages offering digital content on 
software programming. The website will be hosted on dedicated servers housed in a datacenter owned 
by CodeSense. Our software development team has been tasked with developing the blog based on a 
Three-Tier MVC architecture with MS SQLServer serving as the backend database. Also, in line with the 
company’s objective of generating traffic, our website will strive to be SEO compliant.</asp:TextBox>
    </div>
    <div align="center" 
            style="float: left; width: 210px; height: 946px; background-color: #000000;">
        
        <div class="divcss">
        <img alt="" src="images/example/example06.jpeg" title="Shyam"/>
        </div>
       <div class="divcss">
        <img alt="" src="images/example/example07.jpeg" title="Nitin"/>
        </div>
       <div class="divcss">
        <img alt="" src="images/example/example08.jpeg" title="Sai"/>
        </div>
     <div class="divcss">
        <img alt="" src="images/example/exaple09.jpeg" title="Huiting"/>
        </div>
       <asp:Image ID="Image3" runat="server" Height="396px" 
            ImageUrl="~/images/About01.jpg" Width="209px" />
        </div>
    </div>
</asp:Content>

