<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="_1526887_Slime.Admin.Index" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="../CSS/Style.css" rel="stylesheet" runat="server" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div id="container">
        <h1>Administrator Account</h1>
        <p>Welcome to the Admin Panel !</p>
        <p><a href="Add.aspx">Add Products</a></p>
         <p>
             <asp:Button ID="BtnLogOut" runat="server" Height="36px" OnClick="BtnLogOut_Click" Text="Log Out" Width="169px" />
         </p>
    </div>
    
</asp:Content>
