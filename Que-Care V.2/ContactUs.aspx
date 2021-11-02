<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="ContactUs.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="header" style="border-style: solid; border-width: medium; background-color: deepskyblue; border-color: white">
        <h1 class="text-center">Get assistance</h1>
    </div>

    <br />
    <br />

    <div class="container" style="text-align: center">
        <img src="Images/ContactUs.jpg" style="width: 40rem; height: 250px" />
    </div>

    <br />
    <br />

    <h1 class="text-center">How can we help?</h1>

    <br />
    <br />

    <center>
        <table class="table" style="height:250px; width:60rem">
            <tr>
                <th>
                    <div class="card text-white bg-primary mb-3" style="max-width: 20rem; height:170px; margin: 30px">
                        <div class="card-header" style="text-align: center; font-size: 30px">Email us</div>
                        <div class="card-body">
                            <h4 class="card-title">info@que-care.com</h4>
                        </div>
                    </div>
                </th>
                <th>
                    <div class="card text-white bg-secondary mb-3" style="max-width: 20rem; height:170px; margin: 30px">
                        <div class="card-header" style="text-align: center; font-size: 30px">Meet with us</div>
                        <div class="card-body">
                            <h4 class="card-title">25 Oxford Rd</h4>
                            <h4 class="card-title">East London, 5201</h4>

                        </div>
                    </div>
                </th>
                <th>
                    <div class="card text-white bg-primary mb-3" style="max-width: 20rem; height:170px; margin: 30px">
                        <div class="card-header" style="text-align: center; font-size: 30px">Call us</div>
                        <div class="card-body">
                            <h4 class="card-title">(+27)40 878 2222</h4>
                            <p class="card-text">Please note that this service is available between 08:30 and 17:00.</p>
                        </div>
                    </div>
                </th>
            </tr>
        </table>
    </center>
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
</asp:Content>

