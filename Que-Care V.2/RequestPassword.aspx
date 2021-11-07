<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="RequestPassword.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="container" style="text-align: center">
        <br />
        <h1>Please supply your email addresss.</h1>
        <br />
        <br />
        <asp:Label ID="lblUsername" runat="server" Text="Email :"></asp:Label>
        <br />
        <asp:TextBox ID="txtUsername" runat="server" Width="350px"></asp:TextBox>
        <br />
        <br />
        <br />
        <div class="container" id="message" runat="server" visible="false">
            <h3>Your username and password has been sent to your email inbox.</h3>
        </div>
        <asp:Button runat="server"  Text="Submit" CssClass="btn btn-primary" ID="btnSubmit" OnClick="btnSubmit_Click"/>
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        
</div>
</asp:Content>

