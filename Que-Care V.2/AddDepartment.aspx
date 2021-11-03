<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="AddDepartment.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <br />
    <center>
        <div class="card text-white bg-secondary mb-3" style="max-width: 30rem; min-height: 35rem">
          <div class="card-header">Department</div>
          <div class="card-body">
            <h4 class="card-title" style="text-align: center">Add Department</h4>
              <asp:Label ID="Label1" runat="server" Text="Department"  ></asp:Label>
              <asp:TextBox ID="txtDepartmentName" runat="server"  CssClass="form-control"></asp:TextBox>
              <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ForeColor="red" ErrorMessage="Please give the Specilization a name." ControlToValidate="txtDepartmentName"></asp:RequiredFieldValidator>
              <br />
              <br />
              
              <asp:Label ID="Label2" runat="server" Text="Describe the Department(Optional)"  ></asp:Label>
              <textarea  id="txtDepartmentFunction" name="txtDepartmentFunction" class="form-control"  rows="3"></textarea>
              <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Please describe what the apartment does." ControlToValidate="txtSpecializationFunction"></asp:RequiredFieldValidator>--%>
              <br />
              <br />
              <br />
              <br />
              <br />
              <asp:Button ID="btnAddDepartment" runat="server" CssClass="btn btn-primary" Text="Add to system." OnClick="btnAddSpecialization_Click" />
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

