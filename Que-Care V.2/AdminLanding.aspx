<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="AdminLanding.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link href="Styling/RegistrationStyleSheet.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:SqlDataSource runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:QueCareConnectionString %>" DeleteCommand="DELETE FROM [Doctor] WHERE [Doc_ID] = @original_Doc_ID AND (([Doc_Name] = @original_Doc_Name) OR ([Doc_Name] IS NULL AND @original_Doc_Name IS NULL)) AND [Doc_Surname] = @original_Doc_Surname AND (([Doc_Cell] = @original_Doc_Cell) OR ([Doc_Cell] IS NULL AND @original_Doc_Cell IS NULL)) AND (([Doc_Sex] = @original_Doc_Sex) OR ([Doc_Sex] IS NULL AND @original_Doc_Sex IS NULL)) AND (([Doc_Email] = @original_Doc_Email) OR ([Doc_Email] IS NULL AND @original_Doc_Email IS NULL)) AND (([Doc_UserName] = @original_Doc_UserName) OR ([Doc_UserName] IS NULL AND @original_Doc_UserName IS NULL)) AND (([Doc_Password] = @original_Doc_Password) OR ([Doc_Password] IS NULL AND @original_Doc_Password IS NULL)) AND (([DocSpec_ID] = @original_DocSpec_ID) OR ([DocSpec_ID] IS NULL AND @original_DocSpec_ID IS NULL)) AND (([Dept_ID] = @original_Dept_ID) OR ([Dept_ID] IS NULL AND @original_Dept_ID IS NULL))" InsertCommand="INSERT INTO [Doctor] ([Doc_ID], [Doc_Name], [Doc_Surname], [Doc_Cell], [Doc_Sex], [Doc_Email], [Doc_UserName], [Doc_Password], [DocSpec_ID], [Dept_ID]) VALUES (@Doc_ID, @Doc_Name, @Doc_Surname, @Doc_Cell, @Doc_Sex, @Doc_Email, @Doc_UserName, @Doc_Password, @DocSpec_ID, @Dept_ID)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [Doctor]" UpdateCommand="UPDATE [Doctor] SET [Doc_Name] = @Doc_Name, [Doc_Surname] = @Doc_Surname, [Doc_Cell] = @Doc_Cell, [Doc_Sex] = @Doc_Sex, [Doc_Email] = @Doc_Email, [Doc_UserName] = @Doc_UserName, [Doc_Password] = @Doc_Password, [DocSpec_ID] = @DocSpec_ID, [Dept_ID] = @Dept_ID WHERE [Doc_ID] = @original_Doc_ID AND (([Doc_Name] = @original_Doc_Name) OR ([Doc_Name] IS NULL AND @original_Doc_Name IS NULL)) AND [Doc_Surname] = @original_Doc_Surname AND (([Doc_Cell] = @original_Doc_Cell) OR ([Doc_Cell] IS NULL AND @original_Doc_Cell IS NULL)) AND (([Doc_Sex] = @original_Doc_Sex) OR ([Doc_Sex] IS NULL AND @original_Doc_Sex IS NULL)) AND (([Doc_Email] = @original_Doc_Email) OR ([Doc_Email] IS NULL AND @original_Doc_Email IS NULL)) AND (([Doc_UserName] = @original_Doc_UserName) OR ([Doc_UserName] IS NULL AND @original_Doc_UserName IS NULL)) AND (([Doc_Password] = @original_Doc_Password) OR ([Doc_Password] IS NULL AND @original_Doc_Password IS NULL)) AND (([DocSpec_ID] = @original_DocSpec_ID) OR ([DocSpec_ID] IS NULL AND @original_DocSpec_ID IS NULL)) AND (([Dept_ID] = @original_Dept_ID) OR ([Dept_ID] IS NULL AND @original_Dept_ID IS NULL))" ID="doctor">
        <DeleteParameters>
            <asp:Parameter Name="original_Doc_ID" Type="Int32" />
            <asp:Parameter Name="original_Doc_Name" Type="String" />
            <asp:Parameter Name="original_Doc_Surname" Type="String" />
            <asp:Parameter Name="original_Doc_Cell" Type="String" />
            <asp:Parameter Name="original_Doc_Sex" Type="String" />
            <asp:Parameter Name="original_Doc_Email" Type="String" />
            <asp:Parameter Name="original_Doc_UserName" Type="String" />
            <asp:Parameter Name="original_Doc_Password" Type="String" />
            <asp:Parameter Name="original_DocSpec_ID" Type="Int32" />
            <asp:Parameter Name="original_Dept_ID" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="Doc_ID" Type="Int32" />
            <asp:Parameter Name="Doc_Name" Type="String" />
            <asp:Parameter Name="Doc_Surname" Type="String" />
            <asp:Parameter Name="Doc_Cell" Type="String" />
            <asp:Parameter Name="Doc_Sex" Type="String" />
            <asp:Parameter Name="Doc_Email" Type="String" />
            <asp:Parameter Name="Doc_UserName" Type="String" />
            <asp:Parameter Name="Doc_Password" Type="String" />
            <asp:Parameter Name="DocSpec_ID" Type="Int32" />
            <asp:Parameter Name="Dept_ID" Type="Int32" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="Doc_Name" Type="String" />
            <asp:Parameter Name="Doc_Surname" Type="String" />
            <asp:Parameter Name="Doc_Cell" Type="String" />
            <asp:Parameter Name="Doc_Sex" Type="String" />
            <asp:Parameter Name="Doc_Email" Type="String" />
            <asp:Parameter Name="Doc_UserName" Type="String" />
            <asp:Parameter Name="Doc_Password" Type="String" />
            <asp:Parameter Name="DocSpec_ID" Type="Int32" />
            <asp:Parameter Name="Dept_ID" Type="Int32" />
            <asp:Parameter Name="original_Doc_ID" Type="Int32" />
            <asp:Parameter Name="original_Doc_Name" Type="String" />
            <asp:Parameter Name="original_Doc_Surname" Type="String" />
            <asp:Parameter Name="original_Doc_Cell" Type="String" />
            <asp:Parameter Name="original_Doc_Sex" Type="String" />
            <asp:Parameter Name="original_Doc_Email" Type="String" />
            <asp:Parameter Name="original_Doc_UserName" Type="String" />
            <asp:Parameter Name="original_Doc_Password" Type="String" />
            <asp:Parameter Name="original_DocSpec_ID" Type="Int32" />
            <asp:Parameter Name="original_Dept_ID" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <asp:SqlDataSource runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:QueCareConnectionString %>" DeleteCommand="DELETE FROM [Receptionist] WHERE [Recept_ID] = @original_Recept_ID AND (([Recept_Name] = @original_Recept_Name) OR ([Recept_Name] IS NULL AND @original_Recept_Name IS NULL)) AND (([Recept_Surname] = @original_Recept_Surname) OR ([Recept_Surname] IS NULL AND @original_Recept_Surname IS NULL)) AND (([Recept_StreetAddress] = @original_Recept_StreetAddress) OR ([Recept_StreetAddress] IS NULL AND @original_Recept_StreetAddress IS NULL)) AND (([Recept_City] = @original_Recept_City) OR ([Recept_City] IS NULL AND @original_Recept_City IS NULL)) AND [Recept_Province] = @original_Recept_Province AND (([Recept_Cell] = @original_Recept_Cell) OR ([Recept_Cell] IS NULL AND @original_Recept_Cell IS NULL)) AND (([Recept_Email] = @original_Recept_Email) OR ([Recept_Email] IS NULL AND @original_Recept_Email IS NULL)) AND (([Recept_UserName] = @original_Recept_UserName) OR ([Recept_UserName] IS NULL AND @original_Recept_UserName IS NULL)) AND (([Recept_Password] = @original_Recept_Password) OR ([Recept_Password] IS NULL AND @original_Recept_Password IS NULL))" InsertCommand="INSERT INTO [Receptionist] ([Recept_ID], [Recept_Name], [Recept_Surname], [Recept_StreetAddress], [Recept_City], [Recept_Province], [Recept_Cell], [Recept_Email], [Recept_UserName], [Recept_Password]) VALUES (@Recept_ID, @Recept_Name, @Recept_Surname, @Recept_StreetAddress, @Recept_City, @Recept_Province, @Recept_Cell, @Recept_Email, @Recept_UserName, @Recept_Password)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [Receptionist]" UpdateCommand="UPDATE [Receptionist] SET [Recept_Name] = @Recept_Name, [Recept_Surname] = @Recept_Surname, [Recept_StreetAddress] = @Recept_StreetAddress, [Recept_City] = @Recept_City, [Recept_Province] = @Recept_Province, [Recept_Cell] = @Recept_Cell, [Recept_Email] = @Recept_Email, [Recept_UserName] = @Recept_UserName, [Recept_Password] = @Recept_Password WHERE [Recept_ID] = @original_Recept_ID AND (([Recept_Name] = @original_Recept_Name) OR ([Recept_Name] IS NULL AND @original_Recept_Name IS NULL)) AND (([Recept_Surname] = @original_Recept_Surname) OR ([Recept_Surname] IS NULL AND @original_Recept_Surname IS NULL)) AND (([Recept_StreetAddress] = @original_Recept_StreetAddress) OR ([Recept_StreetAddress] IS NULL AND @original_Recept_StreetAddress IS NULL)) AND (([Recept_City] = @original_Recept_City) OR ([Recept_City] IS NULL AND @original_Recept_City IS NULL)) AND [Recept_Province] = @original_Recept_Province AND (([Recept_Cell] = @original_Recept_Cell) OR ([Recept_Cell] IS NULL AND @original_Recept_Cell IS NULL)) AND (([Recept_Email] = @original_Recept_Email) OR ([Recept_Email] IS NULL AND @original_Recept_Email IS NULL)) AND (([Recept_UserName] = @original_Recept_UserName) OR ([Recept_UserName] IS NULL AND @original_Recept_UserName IS NULL)) AND (([Recept_Password] = @original_Recept_Password) OR ([Recept_Password] IS NULL AND @original_Recept_Password IS NULL))" ID="receptionist">
        <DeleteParameters>
            <asp:Parameter Name="original_Recept_ID" Type="Int32" />
            <asp:Parameter Name="original_Recept_Name" Type="String" />
            <asp:Parameter Name="original_Recept_Surname" Type="String" />
            <asp:Parameter Name="original_Recept_StreetAddress" Type="String" />
            <asp:Parameter Name="original_Recept_City" Type="String" />
            <asp:Parameter Name="original_Recept_Province" Type="String" />
            <asp:Parameter Name="original_Recept_Cell" Type="String" />
            <asp:Parameter Name="original_Recept_Email" Type="String" />
            <asp:Parameter Name="original_Recept_UserName" Type="String" />
            <asp:Parameter Name="original_Recept_Password" Type="String" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="Recept_ID" Type="Int32" />
            <asp:Parameter Name="Recept_Name" Type="String" />
            <asp:Parameter Name="Recept_Surname" Type="String" />
            <asp:Parameter Name="Recept_StreetAddress" Type="String" />
            <asp:Parameter Name="Recept_City" Type="String" />
            <asp:Parameter Name="Recept_Province" Type="String" />
            <asp:Parameter Name="Recept_Cell" Type="String" />
            <asp:Parameter Name="Recept_Email" Type="String" />
            <asp:Parameter Name="Recept_UserName" Type="String" />
            <asp:Parameter Name="Recept_Password" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="Recept_Name" Type="String" />
            <asp:Parameter Name="Recept_Surname" Type="String" />
            <asp:Parameter Name="Recept_StreetAddress" Type="String" />
            <asp:Parameter Name="Recept_City" Type="String" />
            <asp:Parameter Name="Recept_Province" Type="String" />
            <asp:Parameter Name="Recept_Cell" Type="String" />
            <asp:Parameter Name="Recept_Email" Type="String" />
            <asp:Parameter Name="Recept_UserName" Type="String" />
            <asp:Parameter Name="Recept_Password" Type="String" />
            <asp:Parameter Name="original_Recept_ID" Type="Int32" />
            <asp:Parameter Name="original_Recept_Name" Type="String" />
            <asp:Parameter Name="original_Recept_Surname" Type="String" />
            <asp:Parameter Name="original_Recept_StreetAddress" Type="String" />
            <asp:Parameter Name="original_Recept_City" Type="String" />
            <asp:Parameter Name="original_Recept_Province" Type="String" />
            <asp:Parameter Name="original_Recept_Cell" Type="String" />
            <asp:Parameter Name="original_Recept_Email" Type="String" />
            <asp:Parameter Name="original_Recept_UserName" Type="String" />
            <asp:Parameter Name="original_Recept_Password" Type="String" />
        </UpdateParameters>
    </asp:SqlDataSource>

        
            <div class="container">
                <div class="card">
                    <div class="card-header">
                        <h1>Table Data for Doctor</h1>
                    </div>
                    <div class="card-body">
                        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" DataSourceID="doctor">
                            <Columns>
                                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" />
                            </Columns>
                        </asp:GridView>
                    </div>
                    <div class="card-footer text-right">
                        &copy; Que-Care
                    </div>
                </div>
            </div>
        
       
            <div class="container">
                <div class="card">
                    <div class="card-header">
                        <h1>Table Data for Receptionist</h1>
                    </div>
                    <div class="card-body">
                        <asp:GridView ID="GridView2" runat="server" AllowPaging="True" AllowSorting="True" DataSourceID="receptionist">
                            <Columns>
                                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" />
                            </Columns>
                        </asp:GridView>
                    </div>
                    <div class="card-footer text-black text-right">
                        &copy; Que-Care
                    </div>
                </div>
            </div>
        <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    
</asp:Content>

