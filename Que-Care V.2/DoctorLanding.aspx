<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="DoctorLanding.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <br />
    <br />
    <center>
        <div class="card text-white bg-secondary mb-3" style="max-width: 70rem;">
          <div class="card-header"><h1>Doctor Page</h1></div>
          <div class="card-body">
            <asp:Label ID="Label3" runat="server" Text="Welcome " CssClass="text-lg-center"></asp:Label>
              <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
              <br />
                 <img src="Images/DrLanding.png"/>
                <br />
                  <div class="container">
                    <br />
                      <table>
                          <tr>
                              <td>
                                  <div class="card text-white bg-secondary mb-3" style="max-width: 20rem; min-height: 12rem; margin: 20px;">
                                      <div class="card-header">Schedule</div>
                                      <div class="card-body">
                                        <h4 class="card-title">See who has an appointment with you.</h4>
                                        <asp:Button ID="Button2" runat="server" CssClass="btn btn-primary" Text="See Schedule" OnClick="btnDoctorsSchedule_Click" />
                                      </div>
                                    </div>
                              </td>
                              <td>
                                  <div class="card text-white bg-secondary mb-3" style="max-width: 20rem; min-height: 12rem; margin: 20px;">
                                      <div class="card-header">Profile</div>
                                      <div class="card-body">
                                        <h4 class="card-title">See your profile information.</h4>
                                        <asp:Button ID="Button3" runat="server" Width="151px" Text="See Profile" CssClass="btn btn-primary" OnClick="Button1_Click"/>
                                      </div>
                                    </div>
                              </td>
                          </tr>
                      </table>
                    <br />
                  </div>
                </div> 
              </div>
            </center>
            <br />
            <br />
</asp:Content>

