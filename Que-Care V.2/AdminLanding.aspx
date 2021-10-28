<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="AdminLanding.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link href="Styling/RegistrationStyleSheet.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <br />
    <br />
        <center>
            <div class="container">
                <div class="card">
                    <div class="card-header">
                        <h1>Admin Hub</h1>
                    </div>
                    <div class="card-body">
                        <h1>Here you can manage the data important to the system by visiting the pages.</h1>
                        <table>
                            <tr>
                                <th>
                                    <div class="card text-white bg-secondary mb-3" style="max-width: 18rem; min-height: 14em; margin: 20px;">
                                      <div class="card-header">Doctors</div>
                                      <div class="card-body">
                                        <h4 class="card-title">Add Doctors to the system</h4>
                                            <p class="card-text"><asp:Button ID="Button1" runat="server" Text="Register Doctor" class="btn btn-primary" PostBackUrl="~/RegisterDoctorPage.aspx"/></p>
                                          </div>
                                    </div>
                                </th>
                                <th>
                                    <div class="card text-white bg-secondary mb-3" style="max-width: 18rem;  min-height: 14em; margin: 20px;"">
                                      <div class="card-header">Receptionists</div>
                                      <div class="card-body">
                                        <h4 class="card-title">Add Receptionists to the system</h4>
                                        <p class="card-text"><asp:Button ID="Button2" runat="server" Text="Register Receptionist" class="btn btn-warning" PostBackUrl="~/RegisterRecepPage.aspx"/></p>
                                      </div>
                                    </div>
                                </th>
                            </tr>
                            <tr>
                                <th>
                                    <div class="card text-white bg-secondary mb-3" style="max-width: 18rem;  min-height: 14em; margin: 20px;"">
                                      <div class="card-header">Departments</div>
                                      <div class="card-body">
                                        <h4 class="card-title">Add Departments to the system</h4>
                                        <p class="card-text"><asp:Button ID="Button3" runat="server" Text="Add Department" class="btn btn-success" PostBackUrl="~/AddDepartment.aspx"/></p>
                                      </div>
                        </div>
                                </th>
                                <th>
                                    <div class="card text-white bg-secondary mb-3" style="max-width: 18rem;  min-height: 14em; margin: 20px;"">
                                      <div class="card-header">Specilizations</div>
                                      <div class="card-body">
                                        <h4 class="card-title">Add Specilizations to the system</h4>
                                        <p class="card-text"><asp:Button ID="Button4" runat="server" Text="Add Specilization" class="btn btn-danger" PostBackUrl="~/AddSpecilization.aspx"/></p>
                                      </div>
                                    </div>
                                </th>
                            </tr>
                            
                        </table>
                    </div>
                    <div class="card-footer text-right">
                        &copy; Que-Care
                    </div>
                </div>
            </div>
        </center>
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    
</asp:Content>

