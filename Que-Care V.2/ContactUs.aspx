<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="ContactUs.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <br />
    <div class="header" style="border-style: solid; border-width: medium;  border-color: white">
        <h1 class="text-center">Get assistance</h1>
    </div>

    <br />
    <br />

    <div class="container" style="text-align: center;">
        <img src="Images/ContactUs.jpg" style="max-width: 40rem; height: 250px" />
    </div>

    <br />
    <br />

    <h1 class="text-center">How can we help?</h1>

    <br />
    <br />

    <center>
        <table class="table" style="height:280px; width:80rem">
            <tr>
                <th>
                    <div class="card text-white bg-primary mb-3" style="max-width: 30rem; height:170px; margin: 30px; min-width: 20rem">
                        <div class="card-header" style="text-align: center; font-size: 30px">Email us</div>
                        <div class="card-body" style="text-align: center">
                            <h4 class="card-title">info@que-care.com</h4>
                        </div>
                    </div>
                </th>
                <th>
                    <div class="card text-white bg-secondary mb-3" style="max-width: 30rem; height:170px; margin: 30px; min-width: 20rem">
                        <div class="card-header" style="text-align: center; font-size: 30px">Meet with us</div>
                        <div class="card-body" style="text-align: center">
                            <h4 class="card-title">25 Oxford Rd</h4>
                            <h4 class="card-title">East London, 5201</h4>

                        </div>
                    </div>
                </th>
                <th>
                    <div class="card text-white bg-primary mb-3" style="max-width: 30rem; height:170px; margin: 30px; min-width: 20rem">
                        <div class="card-header" style="text-align: center; font-size: 30px">Call us</div>
                        <div class="card-body" style="text-align: center">
                            <h4 class="card-title">(+27)40 878 2222</h4>
                            <p class="card-text">Please note that this service is available between 08:30 and 17:00.</p>
                        </div>
                    </div>
                </th>
            </tr>
        </table>
    </center>
</asp:Content>

