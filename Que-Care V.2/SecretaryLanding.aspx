<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="SecretaryLanding.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link href="Styling/SecLanding.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="container-fluid" style="margin-left: 30%; margin-top: 20px; margin-bottom: 20px">
        <div class="row">
            <div class="col-md-5">
                <div class="card">
                    <div class="card-header" >
                        <div class="card-body">
                            <div class="row">
                                <div class="col">
                                    <center>
                                        <h4>Receptionist Profile</h4>
                                        <p>
                                            <asp:Label ID="Label1" runat="server" Text="Welcome "></asp:Label>
                                            <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
                                        </p>

                                    </center>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col">
                                    <hr>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-6">
                                    <label>Name: <asp:Label ID="Label4" runat="server" Text="Label"></asp:Label></label>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-6">
                                    <label>Surname: <asp:Label ID="Label5" runat="server" Text="Label"></asp:Label></label>
                                </div>
                            </div>
                                <div class="row">
                                    <div class="col-md-6">
                                    <label>Street Address: <asp:Label ID="Label6" runat="server" Text="Label"></asp:Label></label>
                                </div>
                                </div>
                            
                            <div class="row">
                                <div class="col-md-4">
                                    <label>City: <asp:Label ID="Label7" runat="server" Text="Label"></asp:Label></label>
                                </div>
                                <div class="col-10">
                                    <label>Province: <asp:Label ID="Label8" runat="server" Text="Label"></asp:Label></label>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col">
                                    <label>Cell: <asp:Label ID="Label9" runat="server" Text="Label"></asp:Label></label>
                                </div>
                            </div>


                            <div class="row">
                                <div class="col-8 mx-auto">
                                    <center>
                                        <div class="form-group">
                                            <a href="ViewPatientInfo.aspx" class="btn btn-primary">View Patient Info</a><br />
                                            <br>
                                            <br>
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
        <br>
    </div>
    <div class="container">
            <img src="\Images\receptionist.jpg" class="image1" style="height: 300px; float: initial; width: 80%; margin-left: 10%;" />
            <br>
        </div>
    <br />
    <br />
</asp:Content>

