<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="VirtualTicket.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        #TextArea1 {
            height: 89px;
            width: 220px;
        }
        </style>
    <link href="Styling/VirtualTicketStyleSheet.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    
    <div class="VirtualTicketPage">
        <p class="greetings">Welcome, <asp:Label ID="Label6" runat="server" Text="Label"></asp:Label> choose a doctor, date and time that suits you.</p>
        <br />
        <div class="VirtualTicketForm">
            <h3>Create virtual ticket</h3>
            <div class="ticket">
                <div class="left-stuff">
            <div class="TimeAndDoctor">
                <div class="flexDoctor">
                    <asp:Label ID="Label1" runat="server" Text="Doctor" CssClass="mylabel"></asp:Label>
                    <asp:DropDownList ID="DropDownList1" runat="server" font-size="25px" Height="45px" Width="150px" CssClass="control1">
                    </asp:DropDownList>
                </div>
                <br />
                <div class="flexTime">
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
                </div>
            </div>
                </div>
                <div class="right-stuff">
                    <div class="calander">
                        <asp:Label ID="Label4" runat="server" Text="Select A Date"></asp:Label><br />
                    </div>
                    <div class="calander2">
                        <asp:Calendar ID="Calendar1" runat="server" Height="174px" Width="268px"></asp:Calendar>
                    </div>
                    <asp:Label ID="Label5" CssClass="mylabel" runat="server" Text="Describe your symptoms"></asp:Label>
                    <asp:TextBox ID="TextBox1" runat="server" Height="96px" Width="221px"></asp:TextBox>
                </div>
            </div>

        <asp:Button ID="Button1" runat="server" CssClass="control2" Text="Generate Ticket" Font-Size="25px" Height="70px" Width="200px" OnClick="Button1_Click1" />
        <p class="Links">Or see.</p>
        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Home Page.aspx">Home</asp:HyperLink>
        <br />
        <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/About.aspx">About</asp:HyperLink>
        <br />
        <asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl="~/ContactUs.aspx">Contact</asp:HyperLink>
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
    <br />
    <br />
        
</asp:Content>

