<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="PatientLanding.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
 <link href="Styling/PatientLandingStyleSheet.css" rel="stylesheet" />

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>
    <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>


    <script type="text/javascript">
        function getConfirmation(sender, title, message) {
            $("#spnTitle").text(title);
            $("#spnMsg").text(message);
            $('#modalPopUp').modal('show');
            $('#btnConfirm').attr('onclick', "$('#modalPopUp').modal('hide');setTimeout(function(){" + $(sender).prop('href') + "}, 50);");
            return false;
        }
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <center>
        <div class="container-fluid" style="margin-left: 30%; margin-top: 20px; margin-bottom: 20px;">
            <div class="row">
            <div class="col-md-5">
                <div class="card">
                    <div class="card-header" >
                        <div class="card-body">
                                <div class="col">
                                    <div class="row">
                                        <p class="PatLand">
                                         <asp:Label ID="Label5" runat="server" Text="Label"></asp:Label>
                                        </p>
                                    </div>
                                </div>
                                <div class="col">
                                    <div class="row">
                                        <h4>Here is your personal info</h4>
                                    </div>
                                </div>
                            <div class="row">
                                <div class="col">
                                    <hr>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col">
                                    <div class="patientinfo">
        <table class="table d-md-table-cell">
            <tr>
                <td class="auto-style1"><asp:Label ID="Label1" runat="server" Text="Name:" CssClass="bluecon"></asp:Label></td>
                <td class="auto-style1"><asp:Label ID="Label2" runat="server" Text="Joe" ></asp:Label></td>
            </tr>
            <tr>
                <td><asp:Label ID="Label3" runat="server" Text="Surname:" CssClass="bluecon" ></asp:Label></td>
                <td><asp:Label ID="Label4" runat="server" Text="Soap" ></asp:Label></td>
            </tr>
            <tr>
                <td><asp:Label ID="Label7" runat="server" Text="Street Address:" CssClass="bluecon"></asp:Label></td>
                <td><asp:Label ID="Label8" runat="server" Text="Vincent"></asp:Label></td>
            </tr>
            <tr>
                <td class="auto-style2"><asp:Label ID="Label9" runat="server" Text="City:" CssClass="bluecon"></asp:Label></td>
                <td class="auto-style2"><asp:Label ID="Label10" runat="server" Text="East London"></asp:Label></td>
            </tr>
            <tr>
                <td class="auto-style3"><asp:Label ID="Label11" runat="server" Text="Province:" CssClass="bluecon"></asp:Label></td>
                <td class="auto-style3"><asp:Label ID="Label12" runat="server" Text="Eastern Cape"></asp:Label></td>
            </tr>
            <tr>
                <td><asp:Label ID="Label13" runat="server" Text="Sex:" CssClass="bluecon"></asp:Label></td>
                <td><asp:Label ID="Label14" runat="server" Text="Male"></asp:Label></td>
            </tr>
            <tr>
                <td><asp:Label ID="Label15" runat="server" Text="Date of birth:" CssClass="bluecon"></asp:Label></td>
                <td><asp:Label ID="Label16" runat="server" Text="1 January 2021"></asp:Label></td>
            </tr>
            <tr>
                <td><asp:Label ID="Label17" runat="server" Text="Cell Number:" CssClass="bluecon"></asp:Label></td>
                <td><asp:Label ID="Label18" runat="server" Text="072 723 8456"></asp:Label></td>
            </tr>
            <tr>
                <td><asp:Label ID="Label19" runat="server" Text="Email:" CssClass="bluecon"></asp:Label></td>
                <td><asp:Label ID="Label20" runat="server" Text="joe.soap@gmail.com"></asp:Label></td>
            </tr>
        </table>
    </div>
    <br />
                                    <div class="maketicket" id="MakeTicket" runat="server" visible="false">
                                                        <p class="instruct">Need to make a appointment visit the virtual ticket page.</p>
                                                        <div class="form-group">
                                                                <a href="VirtualTicket.aspx" class="btn btn-primary btn-lg">Virtual Ticket Page.</a><br />
                                                                <br>
                                                                <br>
                                                            </div>
                                    </div>
                                    <div class="maketicket" id="HaveTicket" runat="server" visible="false">
                                             <div class="form-group">
                                                 <asp:Button CssClass="btn btn-success btn-lg" ID="Button1" runat="server" Text="View your ticket." OnClick="Button1_Click" />
                                                 <br>
                                                 <br>
                                             </div>
                                        <div runat="server" id="Ticket" class="card text-white bg-success mb-3" style="max-width: 40rem;" visible="false">
                                      <div class="card-header">Your Ticket</div>
                                          <div class="card-body">
                                            <h4 class="card-title">Here is your ticket info</h4>
                                            <table>
                                                <tbody>
                                                <tr class="table-danger">
                                                    <th scope="row">Ticket&nbsp;&nbsp;&nbsp;&nbsp;</th>
                                                    <td>Ticket Time&nbsp;&nbsp;&nbsp;&nbsp; </td>
                                                    <td>Ticket Date&nbsp;&nbsp;&nbsp;&nbsp; </td>
                                                    <td>Doctor&nbsp;&nbsp;&nbsp;&nbsp;  </td>
                                                </tr>
                                                <tr class="table-primary">
                                                    <td></td>
                                                    <td>
                                                        <asp:Label ID="Label6" runat="server" Text="Label"></asp:Label></td>
                                                    <td>
                                                        <asp:Label ID="Label21" runat="server" Text="Label"></asp:Label></td>
                                                    <td>
                                                        <asp:Label ID="Label22" runat="server" Text="Label"></asp:Label></td>
                                                </tr>
                                                </tbody>
                                            </table>
                                          </div>
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
                                                                            Yes, please</button>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>

                                                <asp:LinkButton ID="lnkDelete" runat="server" CssClass="btn btn-danger" OnClientClick="return getConfirmation(this, 'Please confirm','Are you sure you want to delete your ticket?');"  OnClick="lnkDelete_Click"><i class="glyphicon glyphicon-trash"></i>&nbsp;Cancel</asp:LinkButton>          <br />                                         
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
        </div>
        
    </center>
</asp:Content>

