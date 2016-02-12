<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="ContactUs.aspx.cs" Inherits="ContactUs" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    
    <style type="text/css">
    .auto-style2 {
        width: 374px;
    }
    .auto-style3 {
        width: 702px;
    }
    .auto-style4 {
        width: 374px;
        height: 20px;
    }
    .auto-style5 {
        width: 702px;
        height: 20px;
    }
    .auto-style6 {
        width: 702px;
        height: 20px;
        color: #FFFFFF;
    }
    .auto-style7 {
        color: #FFFFFF;
        font-size: large;
    }
    .auto-style8 {
        width: 374px;
        height: 20px;
        color: #FFFFFF;
    }
    .auto-style9 {
        border-collapse: collapse;
        width: 690px;
        max-width: 100%;
        table-layout: auto;
        height: 105px;
        top: 245px;
        right: -8px;
        bottom: -245px;
        left: 8px;
        margin-bottom: 20px;
    }
    .auto-style10 {
        font-size: large;
    }
        .style1
        {
            width: 374px;
            height: 20px;
            color: #000000;
        }
        .style2
        {
            width: 702px;
            height: 20px;
            color: #000000;
        }
        .style3
        {
            width: 374px;
            color: #000000;
        }
        .style4
        {
            width: 702px;
            color: #000000;
        }
    </style>
    
</asp:Content>

<asp:Content ID="Content2" runat="server" contentplaceholderid="ContentPlaceHolder1">
  
    <link href="Style/BackGround.css" rel="stylesheet" />
       <div style="height: 199px; width: 1123px; background-image: url('images/contactusnew.jpg'); margin-left: 130px;" 
        align="left"><br />
       <br />
       <br />
       <br />
       <br />
       <br />
       <br /> 
       <div style="border-top: medium inset #C0C0C0; border-left: medium outset #C0C0C0; border-right: medium inset #C0C0C0; height: 63px; width: 556px; background-color: #000000; margin-left: 208px; margin-bottom: 0px;" 
           align="center">
           <asp:Label ID="Label1" runat="server" Font-Bold="True" 
               Font-Names="Times New Roman" Font-Size="XX-Large" Text=" Contact Us" 
               ForeColor="White"></asp:Label>
    <div style="height: 729px"><table style="margin: auto; clip: rect(auto, auto, auto, auto); border-spacing: inherit; color: #000000 ;" align="left" bgcolor="White" class="auto-style9" >
       <tr class="auto-style7">
       <td class="style1">BUSINESS HOURS</td>
       <td class="style2" width="20">Code Sense LLC.</td>
       </tr>
        <tr class="auto-style7">
       <td class="style3">Mon - Fri 8:00am - 5:00pm</td>
       <td class="style4">FIU Broward Campus</td>
       </tr>
        <tr class="auto-style10">
       <td class="auto-style4">Sat 9:00am - 3:00 pm </td>
       <td class="auto-style5">Direct: 555-555-5555</td>
       </tr>
        <tr class="auto-style7">
       <td class="style3">Sun	Closed</td>
       <td class="style4">DND: 000-000-0000</td>
       </tr>
</table>
       </body>
       </div>
</asp:Content>


