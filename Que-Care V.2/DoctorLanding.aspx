<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="DoctorLanding.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <div class="container" style="text-align: center">
        <br />
         <h1>Doctors Page</h1>
              <asp:Label ID="Label3" runat="server" Text="Welcome "></asp:Label>
              <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
        <br />
              <br />
              <br />
              <br />
         <img src="Images/DrLanding.png" class="image1" style="width: 900px; height: 250px" />
        <br />
    
        <div class="container">
            <br />
            <asp:Button ID="btnDoctorsSchedule" runat="server" CssClass="btn btn-primary" Text="Doctors Schedule" Width="151px" Height="79px"  OnClick="btnDoctorsSchedule_Click" />
            <asp:Button ID="Button1" runat="server" Width="151px" CssClass="btn btn-primary" Text="Doctor Profile" Height="79px"  OnClick="Button1_Click"/>
            <br />
        </div>
    </div>
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
</asp:Content>

