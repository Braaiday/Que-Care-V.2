<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Register.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    
    <link href="Styling/RegistrationStyleSheet.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <br />
    <br />
    <div class="container">
        <div class="row cold-md-6 cold-md-offset-3">
            <div class="card card-primary">
                <div class="card-heading text-center">
                    <h1>Patient Registration</h1>
                </div>
                <div class="card-body">
                    <div class="container">
                        <div class="mystuff">
                            <div class="leftstuff">
                                 <div class="form-group">
                            <asp:Label ID="lblRegisterName" runat="server" Text="Name :"></asp:Label>
                            <br />
                            <asp:TextBox ID="txtRegisterName" runat="server" Width="350px" CssClass="form-control input-sm"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ForeColor="red" ControlToValidate="txtRegisterName" ErrorMessage="Please fill in your name."></asp:RequiredFieldValidator>
                        </div>
                        <div class="form-group">
                            <asp:Label ID="lblRegisterSurname" runat="server" Text="Surname :"></asp:Label>
                            <br />
                            <asp:TextBox ID="txtRegisterSurname" runat="server" Width="350px" CssClass="form-control input-sm"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ForeColor="red" ControlToValidate="txtRegisterSurname" ErrorMessage="Please fill in your surname."></asp:RequiredFieldValidator>
                        </div>
                        <div class="form-group">
                            <asp:Label ID="lblRegisterStreetAddress" runat="server" Text="StreetAddress :"></asp:Label>
                            <br />
                            <asp:TextBox ID="txtRegisterStreetAddress" runat="server" Width="350px" CssClass="form-control input-sm"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ForeColor="red" ControlToValidate="txtRegisterStreetAddress" ErrorMessage="Please fill in your address."></asp:RequiredFieldValidator>
                        </div>
                        <div class="form-group">
                            <asp:Label ID="lblRegisterCity" runat="server" Text="City :"></asp:Label>
                            <br />
                            <asp:TextBox ID="txtRegisterCity" runat="server" Width="350px" CssClass="form-control input-sm"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ForeColor="red" ControlToValidate="txtRegisterCity" ErrorMessage="Please fill in your city."></asp:RequiredFieldValidator>
                        </div>
                        <div class="form-group">
                            <asp:Label ID="lblRegisterProvince" runat="server" Text="Province :"></asp:Label>
                            <br />
                            <asp:DropDownList ID="DropDownList1" runat="server" Width="350px" CssClass="form-control input-sm">
                                <asp:ListItem>Eastern Cape</asp:ListItem>
                                <asp:ListItem>Western Cape</asp:ListItem>
                                <asp:ListItem>Northern Cape</asp:ListItem>
                                <asp:ListItem>North-West</asp:ListItem>
                                <asp:ListItem>Gauteng</asp:ListItem>
                                <asp:ListItem>Mpumalanga</asp:ListItem>
                                <asp:ListItem>Limpopo</asp:ListItem>
                                <asp:ListItem>Free State</asp:ListItem>
                                <asp:ListItem>KwaZulu-Natal</asp:ListItem>
                            </asp:DropDownList>
                        </div>
                        <div class="form-group">
                            <asp:Label ID="lblRegisterSex" runat="server" Text="Sex :"></asp:Label>
                            <br />
                            <asp:DropDownList ID="DropDownRegisterSex" runat="server" Width="350px" CssClass="form-control input-sm">
                                <asp:ListItem>Female</asp:ListItem>
                                <asp:ListItem>Male</asp:ListItem>
                                <asp:ListItem>Other</asp:ListItem>
                            </asp:DropDownList>
                        </div>
                        <div class="form-group">
                            <asp:Label ID="lblRegisterDOB" runat="server" Text="DOB :"></asp:Label>
                            <br />
                            <asp:TextBox ID="txtRegisterDOB" runat="server" Width="350px" TextMode="Date" CssClass="form-control input-sm"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ForeColor="red" ControlToValidate="txtRegisterDOB" ErrorMessage="Please fill in your date of birth."></asp:RequiredFieldValidator>
                        </div>
                            </div>
                            <div class="rightstuff">
                                <div class="form-group">
                            <asp:Label ID="lblRegisterCellNumber" runat="server" Text="Cell Number :"></asp:Label>
                            <br />
                            <asp:TextBox ID="txtRegisterCellNumber" runat="server" Width="350px" CssClass="form-control input-sm"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ForeColor="red" ControlToValidate="txtRegisterCellNumber" ErrorMessage="Please fill in your cell number."></asp:RequiredFieldValidator>
                        </div>
                        <div class="form-group">
                            <asp:Label ID="lblRegisterEmail" runat="server" Text="Email :"></asp:Label>
                            <br />
                            <asp:TextBox ID="txtRegisterEmail" runat="server" Width="350px" CssClass="form-control input-sm"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ForeColor="red" ControlToValidate="txtRegisterEmail" CssClass="alert" ErrorMessage="Please supply an email."></asp:RequiredFieldValidator>
                        </div>
                        <div class="form-group">
                            <asp:Label ID="lblRegisterUsername" runat="server" Text="Username :"></asp:Label>
                            <br />
                            <asp:TextBox ID="txtUsername" runat="server" Width="350px" OnTextChanged="txtRegisterUsername_TextChanged" CssClass="form-control input-sm"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ForeColor="red" ErrorMessage="Please supply a username." ControlToValidate="txtUsername" CssClass="alert"></asp:RequiredFieldValidator>
                        </div>
                        <div class="form-group">
                            <asp:Label ID="lblRegisterPassword" runat="server" Text="Password :"></asp:Label>
                            <br />
                            <asp:TextBox ID="txtRegisterPassword" TextMode="Password" runat="server" Width="350px" CssClass="form-control input-sm"></asp:TextBox>
                        </div>
                        <div class="form-group">
                            <asp:Label ID="lblRegisterConfirmPassword" runat="server" Text="Confirm Password :"></asp:Label>
                            <br />
                            <asp:TextBox ID="TextBox1" TextMode="Password" runat="server" Width="350px" CssClass="form-control input-sm"></asp:TextBox>
                            <asp:CompareValidator ID="CompareValidator1" runat="server" ForeColor="red" ErrorMessage="Passwords do not match" ControlToCompare="txtRegisterPassword" ControlToValidate="TextBox1" CssClass="alert"></asp:CompareValidator>
                        </div>
                        <div class="form-group justify-content-center">
                            <br />
                            <asp:Button ID="btnRegister" runat="server" Text="Register" CssClass="btn btn-primary" OnClick="btnRegister_Click" Height="45px" Width="126px" />
                            <br />
                        </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="card-footer text-right">
                    &copy; Que-Care
                </div>
            </div>
        </div>
    </div>
    <br />
</asp:Content>

