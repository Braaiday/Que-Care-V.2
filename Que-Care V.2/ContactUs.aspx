<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="ContactUs.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="container" style="text-align: center">
        <br />
        <h1>Please fill in the form to connect with us.</h1>
        <br />
        <br />
        <h5>Required fields are marked with an asterisk (*).</h5>
        <br />
        <br />
        <asp:Label ID="lblFullName" runat="server" Text="Fullname* :"></asp:Label>
        <asp:TextBox ID="txtFulName" runat="server" Width="350px"></asp:TextBox>
        <br />
        <br />
        <asp:Label ID="lblEmailAddress" runat="server" Text="Email Address* :"></asp:Label>
        <asp:TextBox ID="txtEmailAddress" runat="server" Width="350px"></asp:TextBox>
        <br />
        <br />
        <asp:Label ID="lblPhoneNumber" runat="server" Text="Phone Number* :"></asp:Label>
        <asp:TextBox ID="txtPhoneNumber" runat="server" Width="350px"></asp:TextBox>
        <br />
        <br />
        <asp:Label ID="lblGetInTouch" runat="server" Text="Please specify what you would like to get in touch about :"></asp:Label>
        <asp:DropDownList ID="DropDownList1" runat="server" Width="150px">
            <asp:ListItem>----</asp:ListItem>
            <asp:ListItem>Operating Hours</asp:ListItem>
            <asp:ListItem>Careers</asp:ListItem>
            <asp:ListItem>Vacancies</asp:ListItem>
            <asp:ListItem>General Enquiry</asp:ListItem>
            <asp:ListItem>Other</asp:ListItem>
        </asp:DropDownList>
        <br />
        <br />
        <asp:Label ID="lblMessage" runat="server" Text="Message* :"></asp:Label>
        <asp:TextBox ID="txtMessage" runat="server" Width="700px" Height="50px"></asp:TextBox>
        <br />
        <br />
        <asp:CheckBox ID="SignatureCheckBox" runat="server" />
        <asp:Label ID="lblCheck" runat="server" Text="I agree to share my information and understand that it will be used by Que-Care's Privacy Policy"></asp:Label>
        <br />
        <br />
        <asp:Button ID="btnSubmit" runat="server" Text="Submit" Width="100px" Height="40px" />
    </div>
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
</asp:Content>

