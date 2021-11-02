<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="About.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <br />
    <center>
        <br />
        <br />
        <br />
        <br />
          <div id="carouselExampleIndicators" class="carousel slide" data-bs-ride="carousel" style="width: 60rem; max-width: 50rem; max-height: 40rem">
          <div class="carousel-indicators">
            <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
            <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="1" aria-label="Slide 2"></button>
            <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="2" aria-label="Slide 3"></button>
          </div>
          <div class="carousel-inner">
            <div class="carousel-item active">
              <img src="Images/About01.jpg" class="d-block w-100" alt="...">
                <div class="carousel-caption d-none d-md-block" style="background-color: RGBA(0,0,0,0.15)">
                <h5>What we do?</h5>
                <p>We assist hospitals to minimize patient queues with our Que-Care system.</p>
              </div>
            </div>
            <div class="carousel-item">
              <img src="Images/About02.jpg" class="d-block w-100" alt="...">
                <div class="carousel-caption d-none d-md-block" style="background-color: RGBA(0,0,0,0.1)">
                <h5>What we do?</h5>
                <p>Que-Care is a vitual ticketing system, which allows patients to queue for doctor assistance at the comfort of their homes.</p>
              </div>
            </div>
            <div class="carousel-item">
              <img src="Images/About03.jpg" class="d-block w-100" alt="...">
                <div class="carousel-caption d-none d-md-block" style="background-color: RGBA(0,0,0,0.1)">
                <h5>What we do?</h5>
                <p>Say no to long hospital queues.</p>
              </div>
            </div>
          </div>
          <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide="prev">
            <span class="carousel-control-prev-icon" aria-hidden="true"></span>
            <span class="visually-hidden">Previous</span>
          </button>
          <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide="next">
            <span class="carousel-control-next-icon" aria-hidden="true"></span>
            <span class="visually-hidden">Next</span>
          </button>
        </div>
    </center>
    <br />
    <br />
    <br />
    <br />
   
    
</asp:Content>

