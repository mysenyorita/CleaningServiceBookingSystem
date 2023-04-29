<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="CleaningServiceBookingSystem.Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="jumbotron">
        <h1>Home Cleaning Service</h1>
        <p class="lead">Taking cleanliness to the next level.</p>
    </div>
<style>
    .jumbotron {
      background-image: url(bg.jpg);
      background-size: cover;
      background-position: center;
      color: #fff;
      text-shadow: 1px 1px 1px rgba(0, 0, 0, 0.8);
    }

</style>
    <div class="row">
        <div class="col-md-4">
            <h2>Professional</h2>
            <p>
                Daisy Cleaning Service is in charge of all general cleaning around the facility, home, or office building.
            </p>          
        </div>
        <div class="col-md-4">
            <h2>Affordable</h2>
            <p>
                Lowest rate for residential and commercial cleaning services.
            </p>
        </div>
        <div class="col-md-4">
            <h2>Reliable</h2>
            <p>
                Leading trusted and recommended service in the cleaning industry.
            </p>
        </div>
    </div>

</asp:Content>
