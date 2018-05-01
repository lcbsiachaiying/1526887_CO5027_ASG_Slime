<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="_1526887_Slime.Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="CSS/Style.css" rel="stylesheet" runat="server" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form id="form1" runat="server">
    <div id="container">
        <h1>Log In</h1>
        <p>Email
            <asp:TextBox ID="TxtLoginEmail" runat="server" style="margin-left: 45px" Width="184px"></asp:TextBox>
        </p>
        <p>Password
            <asp:TextBox ID="TxtLoginPassword" runat="server" style="margin-left: 16px" Width="187px" TextMode="Password"></asp:TextBox>
        </p>
        <p>
            <asp:Button ID="BntLogin" runat="server" Height="27px" Text="Button" Width="127px" OnClick="BntLogin_Click" />
        </p>
        <p>
            <asp:Literal ID="LitErrorLogin" runat="server"></asp:Literal>
        </p>
        <p>&nbsp;</p>
        <h1>Register Account</h1>
        <p>Email
            <asp:TextBox ID="TxtRegEmail" runat="server" style="margin-left: 34px" Width="175px"></asp:TextBox>
        </p>
        <p>Password
            <asp:TextBox ID="TxtRegPassword" runat="server" style="margin-left: 14px" Width="162px" TextMode="Password"></asp:TextBox>
        </p>
        <p>Confirm Password
            <asp:TextBox ID="TxtRegConfirmPassword" runat="server" style="margin-left: 22px" Width="162px" TextMode="Password"></asp:TextBox>
        </p>
        <p>
            <asp:Button ID="BtnReg" runat="server" Height="29px" OnClick="BtnReg_Click" Text="Register" Width="131px" />
        </p>
        <p>
            <asp:Literal ID="LitErrorReg" runat="server"></asp:Literal>
        </p>

    </div>
    </form>
</asp:Content>
