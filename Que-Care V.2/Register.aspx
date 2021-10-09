<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Register.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="container" style="text-align: center;">
        <h1>Register</h1>
    </div>
    <div class="container" style="text-align: center; float: left; width: 50%; height: 100px;">
        <asp:Label ID="lblRegisterName" runat="server" Text="Name :"></asp:Label>
        <br />
        <asp:TextBox ID="txtRegisterName" runat="server" Width="350px"></asp:TextBox>
        <br />
        <asp:Label ID="lblRegisterSurname" runat="server" Text="Surname :"></asp:Label>
        <br />
        <asp:TextBox ID="txtRegisterSurname" runat="server" Width="350px"></asp:TextBox>
        <br />
    </div>
    <div class="container" style="text-align: center; float: right; width: 50%; height: 100px;">
        <asp:Label ID="lblRegisterStreetAddress" runat="server" Text="StreetAddress :"></asp:Label>
        <br />
        <asp:TextBox ID="txtRegisterStreetAddress" runat="server" Width="350px"></asp:TextBox>
        <br />
        <asp:Label ID="lblRegisterCity" runat="server" Text="City :"></asp:Label>
        <br />
        <asp:TextBox ID="txtRegisterCity" runat="server" Width="350px"></asp:TextBox>
        <br />
        <asp:Label ID="lblRegisterProvince" runat="server" Text="Province :"></asp:Label>
        <br />
        <asp:DropDownList ID="DropDownList1" runat="server" Width="350px">
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
        <br />
    </div>
    <div class="container" style="text-align: center; float: left; width: 50%; height: 100px;">
        <asp:Label ID="lblRegisterSex" runat="server" Text="Sex :"></asp:Label>
        <br />
        <asp:DropDownList ID="DropDownRegisterSex" runat="server" Width="350px">
            <asp:ListItem>Female</asp:ListItem>
            <asp:ListItem>Male</asp:ListItem>
            <asp:ListItem>Other</asp:ListItem>
        </asp:DropDownList>
        <br />
        <asp:Label ID="lblRegisterDOB" runat="server" Text="DOB :"></asp:Label>
        <br />
        <asp:TextBox ID="txtRegisterDOB" runat="server" Width="350px" TextMode="Date"></asp:TextBox>
        <br />
        <asp:Label ID="lblRegisterCellNumber" runat="server" Text="Cell Number :"></asp:Label>
        <br />
        <asp:TextBox ID="txtRegisterCellNumber" runat="server" Width="350px"></asp:TextBox>
        <br />
        <asp:Label ID="lblRegisterEmail" runat="server" Text="Email :"></asp:Label>
        <br />
        <asp:TextBox ID="txtRegisterEmail" runat="server" Width="350px"></asp:TextBox>
        <br />
    </div>
    <div class="container" style="text-align: center; float: right; width: 50%; height: 100px;">
        <br />
        <asp:Label ID="lblRegisterUsername" runat="server" Text="Username :"></asp:Label>
        <br />
        <asp:TextBox ID="txtUsername" runat="server" Width="350px" OnTextChanged="txtRegisterUsername_TextChanged"></asp:TextBox>
        <br />
        <asp:Label ID="lblRegisterPassword" runat="server" Text="Password :"></asp:Label>
        <br />
        <asp:TextBox ID="txtRegisterPassword" runat="server" Width="350px"></asp:TextBox>
        <br />
        <asp:Label ID="lblRegisterConfirmPassword" runat="server" Text="Confirm Password :"></asp:Label>
        <br />
        <asp:TextBox ID="TextBox1" runat="server" Width="350px"></asp:TextBox>
        <br />
        <asp:Button style="margin-top: 10px" ID="btnRegister" runat="server" Text="Register" Width="100px" Height="40px" OnClick="btnRegister_Click" />
    </div>
</asp:Content>

