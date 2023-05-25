<%@ Page Title="Reservation" Language="C#" MasterPageFile="~/Site.Master" CodeBehind="reservation.aspx.cs" Inherits="CleaningServiceBookingSystem.Reservation" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" Runat="Server">
    <script type="text/javascript">
        function showPopupMessage(title, message) {
            // Display the popup message using JavaScript alert
            alert(title + ": " + message);
        }
    </script>

    <div class="container">
        <h3>Reservation Form</h3>

        <div class="form-group">
            <label for="CalendarPicker">Select Date:</label>
            <asp:Calendar runat="server" ID="CalendarPicker" CssClass="form-control"></asp:Calendar>
        </div>

        <div class="form-group">
            <label for="DropDownListHoursRequired">Hours Required:</label>
            <asp:DropDownList ID="DropDownListHoursRequired" runat="server" CssClass="form-control">
                <asp:ListItem Value="3">3 HOURS</asp:ListItem>
                <asp:ListItem Value="4">4 HOURS</asp:ListItem>
                <asp:ListItem Value="5">5 HOURS</asp:ListItem>
                <asp:ListItem Value="6">6 HOURS</asp:ListItem>
                <asp:ListItem Value="7">7 HOURS</asp:ListItem>
                <asp:ListItem Value="8">8 HOURS</asp:ListItem>
            </asp:DropDownList>
        </div>

        <div class="form-group">
            <label for="DropDownListPropertyType">Select a Property Type:</label>
            <asp:DropDownList ID="DropDownListPropertyType" runat="server" CssClass="form-control">
                <asp:ListItem Value="1">Apartment Building</asp:ListItem>
                <asp:ListItem Value="2">Commercial Building</asp:ListItem>
                <asp:ListItem Value="3">Condominium</asp:ListItem>
                <asp:ListItem Value="4">Industrial Building</asp:ListItem>
                <asp:ListItem Value="5">Office Building</asp:ListItem>
                <asp:ListItem Value="6">Residential House</asp:ListItem>
            </asp:DropDownList>
        </div>

        <div class="form-group">
            <label for="DropDownListPropertyLocation">Select a Property Location:</label>
            <asp:DropDownList ID="DropDownListPropertyLocation" runat="server" CssClass="form-control">
                <asp:ListItem Value="1">ClearView</asp:ListItem>
                <asp:ListItem Value="2">Northfield</asp:ListItem>
                <asp:ListItem Value="3">Nortgate</asp:ListItem>
                <asp:ListItem Value="4">Lightsview</asp:ListItem>
                <asp:ListItem Value="5">Broadview</asp:ListItem>
                <asp:ListItem Value="6">Enfield</asp:ListItem>
            </asp:DropDownList>
        </div>

        <div class="form-group">
            <label>Service Charge: <%= ServiceCharge %></label>
        </div>

        <h4>Client Information</h4>

        <div class="form-group">
            <asp:TextBox runat="server" Enabled="True" Placeholder="Lastname" ID="txtLastName" CssClass="form-control"></asp:TextBox>
        </div>

        <div class="form-group">
            <asp:TextBox runat="server" Enabled="True" Placeholder="Firstname" ID="txtFirstName" CssClass="form-control"></asp:TextBox>
        </div>

        <div class="form-group">
            <asp:TextBox runat="server" Enabled="True" TextMode="Email" Placeholder="Email" ID="txtEmail" CssClass="form-control"></asp:TextBox>
        </div>

        <div class="form-group">
            <asp:TextBox runat="server" Enabled="True" TextMode="Phone" Placeholder="Phone" ID="txtPhone" CssClass="form-control"></asp:TextBox>
        </div>

        <div class="form-group">
            <asp:TextBox runat="server" Enabled="True" ID="txtAddress" Placeholder="Address" CssClass="form-control"></asp:TextBox>
        </div>

        <div class="form-group">
            <asp:Button Text="Submit Reservation" runat="server" ID="btnReserve" OnClick="btnReserved_OnClick" CssClass="btn btn-info btn-lg btn-block" />
        </div>
    </div>
</asp:Content>
