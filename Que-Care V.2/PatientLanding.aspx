<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="PatientLanding.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            height: 20px;
        }
    .auto-style2 {
        height: 25px;
    }
    .auto-style3 {
        height: 7px;
    }
    </style>
    <link href="Styling/PatientLandingStyleSheet.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div class="centerall">
<p class="PatLand">
        <asp:Label ID="Label21" runat="server" Text="Label"></asp:Label>
</p>
<p class="PatLand">Here is your personal info</p>
    <div class="patientinfo">
        <table>
            <tr>
                <td class="auto-style1"><asp:Label ID="Label1" runat="server" Text="Name:" CssClass="bluecon"></asp:Label></td>
                <td class="auto-style1"><asp:Label ID="Label2" runat="server" Text="Joe" ></asp:Label></td>
            </tr>
            <tr>
                <td><asp:Label ID="Label3" runat="server" Text="Surname:" CssClass="bluecon" ></asp:Label></td>
                <td><asp:Label ID="Label4" runat="server" Text="Soap" ></asp:Label></td>
            </tr>
            <tr>
                <td><asp:Label ID="Label7" runat="server" Text="Street Address:" CssClass="bluecon"></asp:Label></td>
                <td><asp:Label ID="Label8" runat="server" Text="Vincent"></asp:Label></td>
            </tr>
            <tr>
                <td class="auto-style2"><asp:Label ID="Label9" runat="server" Text="City:" CssClass="bluecon"></asp:Label></td>
                <td class="auto-style2"><asp:Label ID="Label10" runat="server" Text="East London"></asp:Label></td>
            </tr>
            <tr>
                <td class="auto-style3"><asp:Label ID="Label11" runat="server" Text="Province:" CssClass="bluecon"></asp:Label></td>
                <td class="auto-style3"><asp:Label ID="Label12" runat="server" Text="Eastern Cape"></asp:Label></td>
            </tr>
            <tr>
                <td><asp:Label ID="Label13" runat="server" Text="Sex:" CssClass="bluecon"></asp:Label></td>
                <td><asp:Label ID="Label14" runat="server" Text="Male"></asp:Label></td>
            </tr>
            <tr>
                <td><asp:Label ID="Label15" runat="server" Text="Date of birth:" CssClass="bluecon"></asp:Label></td>
                <td><asp:Label ID="Label16" runat="server" Text="1 January 2021"></asp:Label></td>
            </tr>
            <tr>
                <td><asp:Label ID="Label17" runat="server" Text="Cell Number:" CssClass="bluecon"></asp:Label></td>
                <td><asp:Label ID="Label18" runat="server" Text="072 723 8456"></asp:Label></td>
            </tr>
            <tr>
                <td><asp:Label ID="Label19" runat="server" Text="Email:" CssClass="bluecon"></asp:Label></td>
                <td><asp:Label ID="Label20" runat="server" Text="joe.soap@gmail.com"></asp:Label></td>
            </tr>
        </table>
    </div>
    <br />
    <div class="maketicket">
        <p>Need to make a appointment visit the <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/VirtualTicket.aspx">Virtual Ticket Page</asp:HyperLink>.</p>
    </div>
    </div>
</asp:Content>

