<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="RegisterDoctorPage.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <br />
    <div class="container">
        <div class="row cold-md-6 cold-md-offset-3">
            <div class="card card-primary">
                <div class="card-heading text-center">
                    <h1>Doctor Registration</h1>
                </div>
                <center>
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
                            <asp:Label ID="lblDepartment" runat="server" Text="Department"></asp:Label>
                            <br />
                            <asp:DropDownList ID="DropDownList2" runat="server" CssClass="form-control input-sm" Width="350px">
                            </asp:DropDownList>
                        </div>
                       
                        <div class="form-group">
                            <asp:Label ID="lblSpecilization" runat="server" Text="Specilization"></asp:Label>
                            <br />
                            <asp:DropDownList ID="DropDownList1" runat="server" Width="350px" CssClass="form-control input-sm">
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
                            <br />
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
                            <asp:TextBox ID="txtUsername" runat="server" Width="350px" CssClass="form-control input-sm"></asp:TextBox>
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
                            <div>          
                                                        <div id="modalPopUp" class="modal fade" role="dialog">
                                                            <div class="modal-dialog">
                                                                <div class="modal-content">
                                                                    <div class="modal-header">
                                                                        <button type="button" class="close" data-dismiss="modal">&times;</button>
                                                                        <h4 class="modal-title">
                                                                            <span id="spnTitle">
                                                                            </span>
                                                                        </h4>
                                                                    </div>
                                                                    <div class="modal-body">
                                                                        <p>
                                                                            <span id="spnMsg">
                                                                            </span>                                .
                                                                        </p>
                                                                    </div>
                                                                    <div class="modal-footer">
                                                                        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                                                                        <button type="button" id="btnConfirm" class="btn btn-danger">
                                                                            Take me back to hub!</button>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>

                                                <asp:LinkButton ID="btnRegister" runat="server" CssClass="btn btn-primary"  OnClientClick="return getConfirmation(this, 'Added','Doctor  has been added to the database succesfully');" OnClick="btnRegister_Click" Height="45px" Width="126px" ><i class="glyphicon glyphicon-trash"></i>&nbsp;Register</asp:LinkButton>                           
                                         </div>
                            <br />
                        </div>
                            </div>
                        </div>
                    </div>
                </div>
                    </center>
                <div class="card-footer text-right">
                    &copy; Que-Care
                </div>
            </div>
        </div>
    </div>
    <br />
</asp:Content>

