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
             <asp:ListView ID="ListView1" runat="server">
                 <AlternatingItemTemplate>
                     <li style="background-color: #FFFFFF;color: #284775;">P_Name:
                         <asp:Label ID="P_NameLabel" runat="server" Text='<%# Eval("P_Name") %>' />
                         <br />
                         P_Surname:
                         <asp:Label ID="P_SurnameLabel" runat="server" Text='<%# Eval("P_Surname") %>' />
                         <br />
                         P_StreetAddress:
                         <asp:Label ID="P_StreetAddressLabel" runat="server" Text='<%# Eval("P_StreetAddress") %>' />
                         <br />
                         P_City:
                         <asp:Label ID="P_CityLabel" runat="server" Text='<%# Eval("P_City") %>' />
                         <br />
                         P_Province:
                         <asp:Label ID="P_ProvinceLabel" runat="server" Text='<%# Eval("P_Province") %>' />
                         <br />
                         P_Sex:
                         <asp:Label ID="P_SexLabel" runat="server" Text='<%# Eval("P_Sex") %>' />
                         <br />
                         P_DOB:
                         <asp:Label ID="P_DOBLabel" runat="server" Text='<%# Eval("P_DOB") %>' />
                         <br />
                         P_CellNumber:
                         <asp:Label ID="P_CellNumberLabel" runat="server" Text='<%# Eval("P_CellNumber") %>' />
                         <br />
                         P_Email:
                         <asp:Label ID="P_EmailLabel" runat="server" Text='<%# Eval("P_Email") %>' />
                         <br />
                     </li>
                 </AlternatingItemTemplate>
                 <EditItemTemplate>
                     <li style="background-color: #999999;">P_Name:
                         <asp:TextBox ID="P_NameTextBox" runat="server" Text='<%# Bind("P_Name") %>' />
                         <br />
                         P_Surname:
                         <asp:TextBox ID="P_SurnameTextBox" runat="server" Text='<%# Bind("P_Surname") %>' />
                         <br />
                         P_StreetAddress:
                         <asp:TextBox ID="P_StreetAddressTextBox" runat="server" Text='<%# Bind("P_StreetAddress") %>' />
                         <br />
                         P_City:
                         <asp:TextBox ID="P_CityTextBox" runat="server" Text='<%# Bind("P_City") %>' />
                         <br />
                         P_Province:
                         <asp:TextBox ID="P_ProvinceTextBox" runat="server" Text='<%# Bind("P_Province") %>' />
                         <br />
                         P_Sex:
                         <asp:TextBox ID="P_SexTextBox" runat="server" Text='<%# Bind("P_Sex") %>' />
                         <br />
                         P_DOB:
                         <asp:TextBox ID="P_DOBTextBox" runat="server" Text='<%# Bind("P_DOB") %>' />
                         <br />
                         P_CellNumber:
                         <asp:TextBox ID="P_CellNumberTextBox" runat="server" Text='<%# Bind("P_CellNumber") %>' />
                         <br />
                         P_Email:
                         <asp:TextBox ID="P_EmailTextBox" runat="server" Text='<%# Bind("P_Email") %>' />
                         <br />
                         <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="Update" />
                         <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Cancel" />
                     </li>
                 </EditItemTemplate>
                 <EmptyDataTemplate>
                     No data was returned.
                 </EmptyDataTemplate>
                 <InsertItemTemplate>
                     <li style="">P_Name:
                         <asp:TextBox ID="P_NameTextBox" runat="server" Text='<%# Bind("P_Name") %>' />
                         <br />P_Surname:
                         <asp:TextBox ID="P_SurnameTextBox" runat="server" Text='<%# Bind("P_Surname") %>' />
                         <br />P_StreetAddress:
                         <asp:TextBox ID="P_StreetAddressTextBox" runat="server" Text='<%# Bind("P_StreetAddress") %>' />
                         <br />P_City:
                         <asp:TextBox ID="P_CityTextBox" runat="server" Text='<%# Bind("P_City") %>' />
                         <br />P_Province:
                         <asp:TextBox ID="P_ProvinceTextBox" runat="server" Text='<%# Bind("P_Province") %>' />
                         <br />P_Sex:
                         <asp:TextBox ID="P_SexTextBox" runat="server" Text='<%# Bind("P_Sex") %>' />
                         <br />P_DOB:
                         <asp:TextBox ID="P_DOBTextBox" runat="server" Text='<%# Bind("P_DOB") %>' />
                         <br />P_CellNumber:
                         <asp:TextBox ID="P_CellNumberTextBox" runat="server" Text='<%# Bind("P_CellNumber") %>' />
                         <br />P_Email:
                         <asp:TextBox ID="P_EmailTextBox" runat="server" Text='<%# Bind("P_Email") %>' />
                         <br />
                         <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="Insert" />
                         <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Clear" />
                     </li>
                 </InsertItemTemplate>
                 <ItemSeparatorTemplate>
<br />
                 </ItemSeparatorTemplate>
                 <ItemTemplate>
                     <li style="background-color: #E0FFFF;color: #333333;">P_Name:
                         <asp:Label ID="P_NameLabel" runat="server" Text='<%# Eval("P_Name") %>' />
                         <br />
                         P_Surname:
                         <asp:Label ID="P_SurnameLabel" runat="server" Text='<%# Eval("P_Surname") %>' />
                         <br />
                         P_StreetAddress:
                         <asp:Label ID="P_StreetAddressLabel" runat="server" Text='<%# Eval("P_StreetAddress") %>' />
                         <br />
                         P_City:
                         <asp:Label ID="P_CityLabel" runat="server" Text='<%# Eval("P_City") %>' />
                         <br />
                         P_Province:
                         <asp:Label ID="P_ProvinceLabel" runat="server" Text='<%# Eval("P_Province") %>' />
                         <br />
                         P_Sex:
                         <asp:Label ID="P_SexLabel" runat="server" Text='<%# Eval("P_Sex") %>' />
                         <br />
                         P_DOB:
                         <asp:Label ID="P_DOBLabel" runat="server" Text='<%# Eval("P_DOB") %>' />
                         <br />
                         P_CellNumber:
                         <asp:Label ID="P_CellNumberLabel" runat="server" Text='<%# Eval("P_CellNumber") %>' />
                         <br />
                         P_Email:
                         <asp:Label ID="P_EmailLabel" runat="server" Text='<%# Eval("P_Email") %>' />
                         <br />
                     </li>
                 </ItemTemplate>
                 <LayoutTemplate>
                     <ul id="itemPlaceholderContainer" runat="server" style="font-family: Verdana, Arial, Helvetica, sans-serif;">
                         <li runat="server" id="itemPlaceholder" />
                     </ul>
                     <div style="text-align: center;background-color: #5D7B9D;font-family: Verdana, Arial, Helvetica, sans-serif;color: #FFFFFF;">
                     </div>
                 </LayoutTemplate>
                 <SelectedItemTemplate>
                     <li style="background-color: #E2DED6;font-weight: bold;color: #333333;">P_Name:
                         <asp:Label ID="P_NameLabel" runat="server" Text='<%# Eval("P_Name") %>' />
                         <br />
                         P_Surname:
                         <asp:Label ID="P_SurnameLabel" runat="server" Text='<%# Eval("P_Surname") %>' />
                         <br />
                         P_StreetAddress:
                         <asp:Label ID="P_StreetAddressLabel" runat="server" Text='<%# Eval("P_StreetAddress") %>' />
                         <br />
                         P_City:
                         <asp:Label ID="P_CityLabel" runat="server" Text='<%# Eval("P_City") %>' />
                         <br />
                         P_Province:
                         <asp:Label ID="P_ProvinceLabel" runat="server" Text='<%# Eval("P_Province") %>' />
                         <br />
                         P_Sex:
                         <asp:Label ID="P_SexLabel" runat="server" Text='<%# Eval("P_Sex") %>' />
                         <br />
                         P_DOB:
                         <asp:Label ID="P_DOBLabel" runat="server" Text='<%# Eval("P_DOB") %>' />
                         <br />
                         P_CellNumber:
                         <asp:Label ID="P_CellNumberLabel" runat="server" Text='<%# Eval("P_CellNumber") %>' />
                         <br />
                         P_Email:
                         <asp:Label ID="P_EmailLabel" runat="server" Text='<%# Eval("P_Email") %>' />
                         <br />
                     </li>
                 </SelectedItemTemplate>
             </asp:ListView>
                
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
    <br />
    <br />
    <br />
    <br />
    <br />
</asp:Content>
    

