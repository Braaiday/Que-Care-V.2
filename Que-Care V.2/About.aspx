<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="About.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link href="Styling/AboutStyleSheet.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <div class="container">
        <div class="container" style="text-align: center; float: left; width:50%;height: 100px;">
            <br />
            <h1>What we do?</h1>
            <br />
            <p>We assist hospitals to minimize patient queues with our Que-Care system.</p> 
        </div>
        <div class="container">
            <img src="Images/About01.jpg" class="image1" style="height: 150px;float: right; width:35%;"/>
           
        </div>
         
        <div class="container">
            <img src="Images/About02.jpg" class="image1" style="float: left; width: 35%; height: 250px" />
        </div>
         <div class="container" style="text-align: center; float: right; width:50%;height: 100px;">
         <p>Que-Care is a vitual ticketing system, which allows patients to queue for</p>
            <br />
            <p>doctor assistance at the comfort of their homes.</p>
             </div>
        <div class="container">
            <img src="Images/About03.jpg" class="image1" style="float: right; width: 35%; height: 250px;" />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            </div> 
         <div class="container" style="text-align: center; float: left; width:50%;height: 50px;">
         <h1>"Say no to long hospital queues.</h1>
            <br />
            <h1>Great!"</h1>
             </div>
         </div> 
</asp:Content>

