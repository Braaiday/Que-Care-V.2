<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link href="Styling/LoginStyleSheet.css" rel="stylesheet" />
    <link href="Styling/bootstrap.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <div class="container" style="text-align: center">
        <br />
        <h1>Login</h1>
        <br />
        <br />
        <asp:Label ID="lblUsername" runat="server" Text="Username"></asp:Label>
        <br />
        <br />
        <asp:TextBox ID="txtUsername" runat="server" Width="350px"></asp:TextBox>
        <br />
        <br />
        <asp:Label ID="lblPassword" runat="server" Text="Password"></asp:Label>
        <br />
        <br />
        <asp:TextBox ID="txtPassword" TextMode="Password" runat="server" Width="350px"></asp:TextBox>
        <br />
        <br />
        <asp:Button ID="btnLogin" CssClass="btn btn-primary" runat="server" Text="Login" Width="100px" Height="40px" OnClick="btnLogin_Click" />
        <br />
        <br />
        <br />
        <p class="big">
            Not yet registered? No worries!
            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Register.aspx">Register</asp:HyperLink>.
            Forgot password?
            <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/CreateNewPassword.aspx">Create new password</asp:HyperLink>.
        </p>
    </div>
    <br />
    <br />
    <br />
    <br />
    <br />
    <div class="container" style="float: right; width: 100%; height: 300px;">
        <asp:Label ID="lblErrorMessage" CssClass="error" runat="server" Visible="False"></asp:Label>
        <br />
        <br />
        <br />
        <br />
        <asp:Label ID="Label1" CssClass="error" runat="server" Text="Incorrect login infromation. Please try again. " Visible="False"></asp:Label>
        <br />
    </div>
    <br />
    <br />
    <br />
    <br />
    <br />
    
</asp:Content>

