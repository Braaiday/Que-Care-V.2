<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="ViewPatientInfo.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    
    </asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
<center>
<div class="container-fluid" style="margin-left: 0%; margin-top: 20px; margin-bottom: 20px">
    <div class="card-header">
        <div class="card-body">
            <div class="row">
                  <div class="col">    
                      <center>
                          <h4>Find Patient Details</h4>
                      </center>
                  </div>
            </div>
    <div class="row">
        <div class="col">
            <hr>
        </div>
    </div>
    <div class="row">
                  <div class="col">    
                      <center>
                          <div class="modifytext">
                                <label class="instruct">Search for a patient by typing in their name and click submit.</label>
                          </div>
                      </center>
                  </div>
   </div>
    <div class="row">
                  <div class="col-md-2">    
                      <center>
                          <div class="container-fluid" style="margin-left: 275%">
                              <br />
                                <asp:TextBox CssClass="form-control" ID="TextBox1" runat="server" placeholder="Name"></asp:TextBox> 
                          </div>
                      </center>
                  </div>
   </div>
    
    <br />
    <br />
    <div class="row">
                  <div class="col">    
                      <center>
                          <asp:Button ID="Button2" class="btn btn-lg btn-block btn-success" runat="server" Text="Submit" OnClick="Button2_Click" />
                      </center>
                  </div>
            </div>
    <div class="row">
        <div class="col">
            <hr>
        </div>
    </div>
    <div class="row">
         <div class="col">
             <div class="card text-white bg-secondary mb-3" style="max-width: 40rem;" runat="server" id="patdetails" visible="false">
              <div class="card-header">Patient Details</div>
              <div class="card-body">
                <h4 class="card-title">Here is the patient Info</h4>
                <table class="table-active">
                    <tr>
                        <th>
                            Name:
                        </th>
                        <th>
                            <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                        </th>
                    </tr>
                    <tr>
                        <th>
                            Surname:
                        </th>
                        <th>
                            <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
                        </th>
                    </tr>
                    <tr>
                        <th>
                            Street Address:
                        </th>
                        <th>
                            <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label>
                        </th>
                    </tr>
                    <tr>
                        <th>
                            City:
                        </th>
                        <th>
                            <asp:Label ID="Label4" runat="server" Text="Label"></asp:Label>
                        </th>
                    </tr>
                    <tr>
                        <th>
                            Province:
                        </th>
                        <th>
                            <asp:Label ID="Label5" runat="server" Text="Label"></asp:Label>
                        </th>
                    </tr>
                    <tr>
                        <th>
                            Gender:
                        </th>
                        <th>
                            <asp:Label ID="Label6" runat="server" Text="Label"></asp:Label>
                        </th>
                    </tr>
                    <tr>
                        <th>
                            DOB:
                        </th>
                        <th>
                            <asp:Label ID="Label7" runat="server" Text="Label"></asp:Label>
                        </th>
                    </tr>
                    <tr>
                        <th>
                            Cell Number:
                        </th>
                        <th>
                            <asp:Label ID="Label8" runat="server" Text="Label"></asp:Label>
                        </th>
                    </tr>
                    <tr>
                        <th>
                            Email:
                        </th>
                        <th>
                            <asp:Label ID="Label9" runat="server" Text="Label"></asp:Label>
                        </th>
                    </tr>
                </table>
              </div>
            </div>



         </div>
    </div>
            <div class="row">
                <div class="col">
                    <div class="alert alert-dismissible alert-danger" runat="server" visible="false" id="nopat">
                      <button type="button" class="btn-close" data-bs-dismiss="alert"></button>
                      <strong>Oh snap!</strong> <a href="#" class="alert-link">Patient does not exist,</a> try submitting again.
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
    <br />
    <br />
    <br />
    <br />

</asp:Content>
    

