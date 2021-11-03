<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="AddSpecilization.aspx.cs" Inherits="Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <br />
    <center>
        <div class="card text-white bg-secondary mb-3" style="max-width: 30rem; min-height: 35rem">
          <div class="card-header">Specilization</div>
          <div class="card-body">
            <h4 class="card-title" style="text-align: center">Add Specilization</h4>
              <asp:Label ID="Label1" runat="server" Text="Specilization"  ></asp:Label>
              <asp:TextBox ID="txtSpecializationName" runat="server"  CssClass="form-control"></asp:TextBox>
              <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ForeColor="red" ErrorMessage="Please give the Specilization a name." ControlToValidate="txtSpecializationName"></asp:RequiredFieldValidator>
              <br />
              <br />
              
              <asp:Label ID="Label2" runat="server" Text="Describe the function(Optional)"  ></asp:Label>
              <textarea  id="txtSpecializationFunction" name="txtSpecializationFunction" class="form-control"  rows="3"></textarea>
              <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Please describe what the apartment does." ControlToValidate="txtSpecializationFunction"></asp:RequiredFieldValidator>--%>
              <br />
              <br />
              <br />
              <br />
              <br />
              <asp:Button ID="btnAddSpecialization" runat="server" CssClass="btn btn-primary" Text="Add to system." OnClick="btnAddSpecialization_Click" />
          </div>
            <div class="card-footer text-right">
                    &copy; Que-Care
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

