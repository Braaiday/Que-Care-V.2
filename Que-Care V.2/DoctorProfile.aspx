<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="DoctorProfile.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <style>
table {
  font-family: arial, sans-serif;
  border-collapse: collapse;
  width: 100%;
}

.control{
    margin-left: 10px;
}
td, th {
  border: 1px solid #dddddd;
  text-align: left;
  padding: 8px;
}

tr:nth-child(even) {
  background-color: RGB(77, 116, 179);
}
</style>
    <center>
    <div class="container-fluid" style="margin-left: 30%; margin-top: 20px; margin-bottom: 20px">
        <div class="row">
            <div class="col-md-5">
                <div class="card">
                     <div class="card-header">
                        <div class="row">
                            <div class="col">
                                <h1>Doctors Profile</h1>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col">
                                <table>
  <tr>

    <th>Doctor ID</th>
    <td><asp:Label ID="Label1" runat="server" Text="Label"></asp:Label></td>

  </tr>

  <tr>

    <th> Doctor Name </th>
    <td><asp:Label ID="Label2" runat="server" Text="Label"></asp:Label> </td>
    
  </tr>
  
  <tr>
  
    <th> Doctor Surname </th>
    <td><asp:Label ID="Label3" runat="server" Text="Label"></asp:Label> </td>
  </tr>
  <tr>
    <th> Doctor Cell </th>
    <td><asp:Label ID="Label4" runat="server" Text="Label"></asp:Label> </td>

  </tr>
  <tr>
    <th> Doctor Sex </th>
    <td><asp:Label ID="Label5" runat="server" Text="Label"></asp:Label> </td>

  </tr>
 
     <tr>
     <th> Doctor Email </th>
    <td> <asp:Label ID="Label6" runat="server" Text="Label"></asp:Label> </td>
  </tr>

</table>
                            </div>
                        </div>
                         <div class="row">
                             <div class="col">
                                 <br />
                                  <asp:HyperLink ID="HyperLink4" runat="server" Font-Size="Larger" NavigateUrl="~/DoctorLanding.aspx" style="text-align: center">Back to my landing page.</asp:HyperLink>
    <div class="links" style="text-align: left" margin="margin-left: 20px">
        <br />
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
   </center> 
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
</asp:Content>

