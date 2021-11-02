<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link href="Styling/LoginStyleSheet.css" rel="stylesheet" />
    
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <br />
    <br />
    <div class="container" style="margin-left: 33%; margin-top: 20px; margin-bottom: 20px; width: 500px">
        <div class="card">
            <div class="card-body justify-content-center">
                 <h1>Login</h1>
                    <hr />
                    <br />
                    <br />
                    <asp:Label ID="lblUsername" runat="server" Text="Username"></asp:Label>
                    <br />
                    <br />
                    <asp:TextBox ID="txtUsername" runat="server" CssClass="form-control" Width="350px"></asp:TextBox>
                    <br />
                    <br />
                    <asp:Label ID="lblPassword" runat="server" Text="Password"></asp:Label>
                    <br />
                    <br />
                    <asp:TextBox ID="txtPassword" TextMode="Password" runat="server" CssClass="form-control" Width="350px"></asp:TextBox>
                    <br />
                    <asp:Label ID="Label1" CssClass="error" runat="server" Text="Incorrect login infromation. Please try again. " Visible="False"></asp:Label>
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
                        <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/RequestPassword.aspx">Request your login details.</asp:HyperLink>.
                    </p>
                    
            </div>
        </div>
    </div>
    <br />
    <br />
    <br />    
</asp:Content>

