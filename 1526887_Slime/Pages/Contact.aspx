<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="_1526887_Slime.Pages.Contact" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="../CSS/Style.css" rel="stylesheet" runat="server" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form id="form1" runat="server">
   <div  id="container">
       <h1>Contact Us</h1>
       <p>Name<asp:TextBox ID="TxtName" runat="server" style="margin-left: 35px" Width="177px"></asp:TextBox>
       </p> 
       <p>Email<asp:TextBox ID="TxtEmail" runat="server" style="margin-left: 41px" Width="177px"></asp:TextBox>
       </p>
       <p>Subject<asp:TextBox ID="TxtSubject" runat="server" style="margin-left: 26px" Width="177px"></asp:TextBox>
       </p>
       <p>Message</p><asp:TextBox ID="TxtMsg" runat="server" Height="122px" Width="242px" TextMode="MultiLine"></asp:TextBox>

       <br />
       <br />
       <asp:Button ID="BtnSend" runat="server" Height="31px" OnClick="BtnSend_Click" Text="Send" Width="147px" />
       <br />
       <br />
       <asp:Literal ID="LitErrorMsg" runat="server"></asp:Literal>

       <br />
       <br />
       <h1>Our Location</h1>
       <div id="map">
           <script src="../JS/Map.js"></script>
           <script async defer
    src="https://maps.googleapis.com/maps/api/js?key=AIzaSyD13FPUVOkrBQVEWjTZ4cdb7ahvdBAE2A0
&callback=initMap">
    </script>
       </div>
       <h1>Static Image</h1>
       <div id="staticmap">
           <img src="../Images/staticmap.PNG" alt="Static Image of Compan location"/>
       </div>
   </div>
     
    </form>
     
</asp:Content>
