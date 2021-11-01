<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="ContactUs.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="header" style="border-style: solid; border-width: medium; background-color: deepskyblue; border-color: white">
        <h1 class="text-center">Get assistance</h1>
    </div>

    <br />
    <br />

    <div class="container" style="text-align:center">
        <img src="Images/ContactUs.jpg" style="width: 40rem ; height: 250px" />
    </div>

    <br />
    <br />

    <h1 class="text-center">How can we help?</h1>

    <br />
    <br />


    <div class="container" width="100%">
    <div class="container" style="height: 190px; float: right; width: 30%; background-color: Highlight">
        <h1>Call us</h1>
        <br />
        <h5>(+27)40 878 2222</h5>
        <br />
        <br />
        <br />
        <br />
        <br />
    </div>

    <div class="container" style="height: 190px; float: right; width: 40%; background-color: deepskyblue">
        <h1>Meet with us</h1>
        <br />
        <h5>25 Oxford Rd</h5>
        <h5>East London, 5201</h5>
        <br />
        <br />

    </div>

        <div class="container" style="height: 190px; float: left; width: 30%; background-color: Highlight">
        <h1>Email us</h1>
        <br />
        <h5>info@que-care.com</h5>
        <br />
        <br />
        <br />
    </div>

        </div>

    
    <center>
    <table>
        <tr>
            <th>
                <div class="card text-white bg-primary mb-3" style="max-width: 20rem; margin: 30px">
                  <div class="card-header" style="text-align: center;font-size:30px">Email us</div>
                  <div class="card-body">
                    <h4 class="card-title">Primary card title</h4>
                    <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                  </div>
                </div>
            </th>
            <th>
                <div class="card text-white bg-secondary mb-3" style="max-width: 20rem; margin: 30px">
                  <div class="card-header" style="text-align: center;font-size:30px">Meet with us</div>
                  <div class="card-body">
                    <h4 class="card-title">Secondary card title</h4>
                    <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                  </div>
                </div>
            </th>
            <th>
                <div class="card text-white bg-primary mb-3" style="max-width: 20rem; margin: 30px">
                  <div class="card-header" style="text-align: center;font-size:30px">Call us</div>
                  <div class="card-body">
                    <h4 class="card-title">Primary card title</h4>
                    <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
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

