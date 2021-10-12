<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="DoctorSchedule.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link href="Styling/bootstrap.css" rel="stylesheet" />
    <style>
table {
  font-family: arial, sans-serif;
  border-collapse: collapse;
  width: 100%;
}

td, th {
  border: 1px solid #dddddd;
  text-align: left;
  padding: 8px;
}

tr:nth-child(even) {
  background-color: #dddddd;
}
    .auto-style1 {
        box-shadow: -5px -5px rgba(77, 116, 179, 0.9);
        margin: 20px;
        width: 1400px;
        height: 250px;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <center>
     <div class="container-fluid" style="margin-left: 18%; margin-top: 20px; margin-bottom: 20px">
        <div class="row">
            <div class="col-md-8">
                <div class="card">
                    <div class="card-header" style="background-color: lightsteelblue;">
                        <div class="card-body">
                            <div class="row">
                                <div class="row">
                                    <h1>Doctors Patient Schedule</h1>
                                    <img src="Images/Schedule.png" class="auto-style1" />
                                </div>
                            </div>
                            <div class="row">
                                <div class="row">
                                   <div class="container" style="text-align: center">     
            <asp:ListView ID="ListView1" runat="server" allowpaging="true"  >
                <AlternatingItemTemplate>
                    <tr style="background-color: #FFFFFF;color: #284775;">
                        <td>
                            <asp:Label ID="P_NameLabel" runat="server" Text='<%# Eval("P_Name") %>' />
                        </td>
                        <td>
                            <asp:Label ID="SymptomsLabel" runat="server" Text='<%# Eval("Symptoms") %>' />
                        </td>
                        <td>
                            <asp:Label ID="Ticket_DateLabel" runat="server" Text='<%# Eval("Ticket_Date") %>' />
                        </td>
                        <td>
                            <asp:Label ID="Ticket_TimeLabel" runat="server" Text='<%# Eval("Ticket_Time") %>' />
                        </td>
                    </tr>
                </AlternatingItemTemplate>
                <EditItemTemplate>
                    <tr style="background-color: #999999;">
                        <td>
                            <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="Update" />
                            <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Cancel" />
                        </td>
                        <td>
                            <asp:TextBox ID="P_NameTextBox" runat="server" Text='<%# Bind("P_Name") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="SymptomsTextBox" runat="server" Text='<%# Bind("Symptoms") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="Ticket_DateTextBox" runat="server" Text='<%# Bind("Ticket_Date") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="Ticket_TimeTextBox" runat="server" Text='<%# Bind("Ticket_Time") %>' />
                        </td>
                    </tr>
                </EditItemTemplate>
                <EmptyDataTemplate>
                    <table runat="server" style="background-color: #FFFFFF;border-collapse: collapse;border-color: #999999;border-style:none;border-width:1px;">
                        <tr>
                            <td>No data was returned.</td>
                        </tr>
                    </table>
                </EmptyDataTemplate>
                <InsertItemTemplate>
                    <tr style="">
                        <td>
                            <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="Insert" />
                            <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Clear" />
                        </td>
                        <td>
                            <asp:TextBox ID="P_NameTextBox" runat="server" Text='<%# Bind("P_Name") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="SymptomsTextBox" runat="server" Text='<%# Bind("Symptoms") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="Ticket_DateTextBox" runat="server" Text='<%# Bind("Ticket_Date") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="Ticket_TimeTextBox" runat="server" Text='<%# Bind("Ticket_Time") %>' />
                        </td>
                    </tr>
                </InsertItemTemplate>
                <ItemTemplate>
                    <tr style="background-color: #E0FFFF;color: #333333;">
                        <td>
                            <asp:Label ID="P_NameLabel" runat="server" Text='<%# Eval("P_Name") %>' />
                        </td>
                        <td>
                            <asp:Label ID="SymptomsLabel" runat="server" Text='<%# Eval("Symptoms") %>' />
                        </td>
                        <td>
                            <asp:Label ID="Ticket_DateLabel" runat="server" Text='<%# Eval("Ticket_Date") %>' />
                        </td>
                        <td>
                            <asp:Label ID="Ticket_TimeLabel" runat="server" Text='<%# Eval("Ticket_Time") %>' />
                        </td>
                    </tr>
                </ItemTemplate>
                <LayoutTemplate>
                    <table runat="server">
                        <tr runat="server">
                            <td runat="server">
                                <table id="itemPlaceholderContainer" runat="server" border="1" style="background-color: #FFFFFF;border-collapse: collapse;border-color: #999999;border-style:none;border-width:1px;font-family: Verdana, Arial, Helvetica, sans-serif;">
                                    <tr runat="server" style="background-color: #E0FFFF;color: #333333;">
                                        <th runat="server">P_Name</th>
                                        <th runat="server">Symptoms</th>
                                        <th runat="server">Ticket_Date</th>
                                        <th runat="server">Ticket_Time</th>
                                    </tr>
                                    <tr id="itemPlaceholder" runat="server">
                                    </tr>
                                </table>
                            </td>
                        </tr>
                        <tr runat="server">
                            <td runat="server" style="text-align: center;background-color: #5D7B9D;font-family: Verdana, Arial, Helvetica, sans-serif;color: #FFFFFF">
                            </td>
                        </tr>
                    </table>
                </LayoutTemplate>
                <SelectedItemTemplate>
                    <tr style="background-color: #E2DED6;font-weight: bold;color: #333333;">
                        <td>
                            <asp:Label ID="P_NameLabel" runat="server" Text='<%# Eval("P_Name") %>' />
                        </td>
                        <td>
                            <asp:Label ID="SymptomsLabel" runat="server" Text='<%# Eval("Symptoms") %>' />
                        </td>
                        <td>
                            <asp:Label ID="Ticket_DateLabel" runat="server" Text='<%# Eval("Ticket_Date") %>' />
                        </td>
                        <td>
                            <asp:Label ID="Ticket_TimeLabel" runat="server" Text='<%# Eval("Ticket_Time") %>' />
                        </td>
                    </tr>
                </SelectedItemTemplate>
            </asp:ListView>
        <br />
        <asp:HyperLink ID="HyperLink4" runat="server" Font-Size="Larger" NavigateUrl="~/DoctorLanding.aspx">Back to my landing page.</asp:HyperLink>
            <br />
            <br />
        <div class="links" style="text-align: left" margin="margin-left: 20px">
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
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
</asp:Content>

