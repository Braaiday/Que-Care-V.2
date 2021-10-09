<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="CreateNewPassword.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="container" style="text-align: center">
        <br />
        <h1>Create New Password</h1>
        <br />
        <br />
        <asp:Label ID="lblUsername" runat="server" Text="Username :"></asp:Label>
        <br />
        <asp:TextBox ID="txtUsername" runat="server" Width="350px"></asp:TextBox>
        <br />
        <br />
        <asp:Label ID="lblNewPassword" runat="server" Text="New Password :"></asp:Label>
        <br />
        <asp:TextBox ID="txtNewPassword" runat="server" Width="350px"></asp:TextBox>
        <br />
        <br />
        <asp:Label ID="lblConfirmNewPassword" runat="server" Text="Confirm New Password :"></asp:Label>
        <br />
        <asp:TextBox ID="txtConformNewPassword" runat="server" Width="350px"></asp:TextBox>
        <br />
        <br />
        <asp:Button ID="btnNewPasswordSubmit" runat="server" Text="Submit" Width="100px" Height="40px" />
        <br />
        <br />
        <br />
</div>
</asp:Content>

