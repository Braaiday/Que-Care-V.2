<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="ViewPatientInfo.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    </asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="container-fluid" style="margin-left: 1px; margin-top: 20px; margin-bottom: 20px">
        <div class="row">
            <div class="col-md-5">
                <div class="card">
                    <div class="card-header" style="background-color: lightsteelblue;">
                        <div class="card-body">
                            <div class="row">
                                <div class="col">
                                    <center>
                                        <h4>Check Patient Information</h4>

                                    </center>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col">
                                <hr>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-6">
                                <label>Name</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox1" runat="server" placeholder="Name"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <label>Surname</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox2" runat="server" placeholder="Surname"></asp:TextBox>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col">
                                <label>Address</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox3" runat="server" placeholder="Address" TextMode="MultiLine" Rows="2"></asp:TextBox>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-6">
                                <label>Cell Number</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox4" runat="server" placeholder="Cell Number" TextMode="Number"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <label>Email</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox5" runat="server" placeholder="Email" TextMode="Email"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-md-4">
                                <label>Gender</label>
                                <div class="form-group">
                                    <asp:TextBox class="form-control" ID="TextBox6" runat="server" placeholder="gender"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-md-4">
                                <label>Age group</label>
                                <div class="form-group">
                                    <asp:TextBox class="form-control" ID="TextBox7" runat="server" placeholder="age group" TextMode="Number"></asp:TextBox>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-4">
                                <label>Health Information</label>
                                <div class="form-group">
                                    <asp:DropDownList class="form-control" ID="DropDownList1" runat="server">
                                        <asp:ListItem Text="Select" Value="select" />
                                        <asp:ListItem Text="Previous Illnesss" Value="Previous Illness" />
                                        <asp:ListItem Text="Last Visit" Value="Last Visit" />
                                        <asp:ListItem Text="Diagnosis" Value="Diagnosis" />
                                        <asp:ListItem Text="Treatment" Value="Treatment" />
                                        <asp:ListItem Text="Symptoms" Value="Symptoms" />
                                        <asp:ListItem Text="Test results" Value="Test results" />
                                        <asp:ListItem Text="Prescriptions" Value="Prescriptions" />
                                        <asp:ListItem Text="Dental records" Value="Dental records" />
                                        <asp:ListItem Text="Genetic information" Value="Genetic information" />
                                        <asp:ListItem Text="Specialist reports" Value="Specialist reports" />
                                        <asp:ListItem Text="Appointment and billing details" Value="Appointment and billing details" />

                                    </asp:DropDownList>
                                </div>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-8 mx-auto">
                                <center>
                                    <div class="form-group">

                                        <br>
                                        <br>
                                        <a href="SecretaryLanding.aspx" class="btn btn-primary">Receptionist</a><br />
                                        <a href="Home Page.aspx"><< Back to Home</a>
                                    </div>
                                </center>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
     </asp:Content>

