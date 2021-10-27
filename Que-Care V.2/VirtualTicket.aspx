<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="VirtualTicket.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link href="Styling/VirtualTicketStyleSheet.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <center>
        <div class="VirtualTicketPage">
        <div class="VirtualTicketForm">
     <div class="container-fluid" style="margin-left: 15%; margin-top: 20px; margin-bottom: 20px">
        <div class="row">
            <div class="col-md-9">
                <div class="card">
                    <div class="card-header" >
                        <div class="card-body">
                            <div class="row">
                                <div class="col">
                                    <p class="greetings">Welcome, <asp:Label ID="Label6" runat="server" Text="Label"></asp:Label> choose a doctor, date and time that suits you.</p>
                                    <br />
                                </div>
                            </div>
                            <div class="row">
                                <div class="col">
                                    <h3>Create virtual ticket</h3>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col">
                                    <div class="ticket">
                                    <div class="left-stuff">
                                        <div class="card">
                                            <div class="card-header">
                                                <div class="card-body">
                                                <div class="TimeAndDoctor">
                                                <div class="flexDoctor">
                                                    <asp:Label ID="Label1" runat="server" Text="Doctor" CssClass="mylabel"></asp:Label>
                                                    <asp:DropDownList ID="DropDownList1" runat="server" font-size="25px" Height="45px" Width="150px" CssClass="control1">
                                                    </asp:DropDownList>
                                                </div>
                                                <br />
                                        <asp:Label ID="Label2" runat="server" Text="Time Slot" CssClass="mylabel"></asp:Label>
                                        <asp:DropDownList ID="DropDownList2" runat="server" font-size="25px" CssClass="control3" Height="45px" Width="150px">
                                            <asp:ListItem>06:00</asp:ListItem>
                                            <asp:ListItem>06:30</asp:ListItem>
                                            <asp:ListItem>07:00</asp:ListItem>
                                            <asp:ListItem>07:30</asp:ListItem>
                                            <asp:ListItem>08:00</asp:ListItem>
                                            <asp:ListItem>08:30</asp:ListItem>
                                            <asp:ListItem>09:00</asp:ListItem>
                                            <asp:ListItem>09:30</asp:ListItem>
                                            <asp:ListItem>10:00</asp:ListItem>
                                            <asp:ListItem>10:30</asp:ListItem>
                                            <asp:ListItem>11:00</asp:ListItem>
                                            <asp:ListItem>11:30</asp:ListItem>
                                            <asp:ListItem>12:00</asp:ListItem>
                                            <asp:ListItem>12:30</asp:ListItem>
                                            <asp:ListItem>14:00</asp:ListItem>
                                            <asp:ListItem>14:30</asp:ListItem>
                                            <asp:ListItem>15:00</asp:ListItem>
                                            <asp:ListItem>15:30</asp:ListItem>
                                        </asp:DropDownList>
                                        <br />
                                        <br />
                                        <asp:Label ID="Label5" CssClass="mylabel" runat="server" Text="Describe your symptoms.(Optional)"></asp:Label>
                                            <br />
                                            <textarea runat="server" class="form-control" id="yoursymptoms" rows="3" style="width:20rem"></textarea>
                                        </div>
                                    </div>
                                                </div>
                                            </div>
                                      </div>
                                        <div class="right-stuff">
                                            <div class="card">
                                            <div class="card-header">
                                                <div class="card-body">
                                            <asp:Label ID="Label4" runat="server" Text="Select A Date"></asp:Label><br />
                                            <div class="calander2">
                                                <asp:Calendar ID="Calendar1" runat="server" Height="240px" Width="268px"></asp:Calendar>
                                            </div>
                                            </div>
                                            </div>
                                            </div>
                                            </div>
                                      </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col">
                                    <br />
                                    <asp:Button ID="Button1" runat="server" CssClass="btn btn-success" Text="Generate Ticket" Font-Size="25px" Height="70px" Width="200px" OnClick="Button1_Click1" />
                                </div>
                            </div>
                            <div class="row">
                                <div class="col">
                                    <p class="Links">Or see.</p>
                                        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Home Page.aspx">Home</asp:HyperLink>
                                        <br />
                                        <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/About.aspx">About</asp:HyperLink>
                                        <br />
                                        <asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl="~/ContactUs.aspx">Contact</asp:HyperLink>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
      </div>
            </div>
        </div>
    </center>   
</asp:Content>

