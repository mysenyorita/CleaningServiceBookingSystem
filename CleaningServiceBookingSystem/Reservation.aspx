<%@ Page Title="Reservation" Language="C#" MasterPageFile="~/Site.Master" CodeBehind="reservation.aspx.cs" Inherits="CleaningServiceBookingSystem.Reservation" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" Runat="Server">
    <asp:HiddenField ID="CalendarDateHiddenField" runat="server"/>
    <style>
    
    .service-charge{ 
    font-size: large;
    }
    .next-month-day {
        background-color: #ccc;
    }
        .form-group .form-control {
            display: inline-block;
            width: 50%;
        }

        .calendar-container {
            position: relative;
        }
        .calendar-icon {
            position: absolute;
            top: 50%;
            right: 10px;
            transform: translateY(-50%);
            pointer-events: none;
        }

        .calendar-icon::before {
            content: "\25BE";
            font-size: 14px;
            color: #555555;
        }
        .calendar-container {
                position: relative;
                display: inline-block;
            }
        
            .calendar-input {
                width: 100%;
                padding: 5px;
                border: 1px solid #ccc;
                border-radius: 4px;
                box-sizing: border-box;
                font-family: Arial, sans-serif;
                font-size: 14px;
            }
        
            .calendar-table {
                width: 100%;
                border-collapse: collapse;
                margin-top: 10px;
            }
        
            .calendar-table th,
            .calendar-table td {
                padding: 5px;
                text-align: center;
            }
        
            .calendar-table th {
                background-color: #f2f2f2;
                font-weight: bold;
                border-bottom: 1px solid #ccc;
            }
        
            .calendar-table td {
                border-bottom: 1px solid #ccc;
            }
        
            .calendar-table td.disabled-day {
                color: #999;
            }
        
            .calendar-table td.today {
                background-color: #eaf3ff;
            }
    </style>

    <script type="text/javascript">
        window.onload = function () {
            var calendarPicker = document.getElementById('<%= CalendarPicker.ClientID %>');
            var calendarInput = document.createElement('input');
            calendarInput.type = 'date';
            calendarInput.className = 'calendar-input';
            calendarPicker.parentNode.replaceChild(calendarInput, calendarPicker);
        
            var today = new Date().toISOString().split('T')[0];
            calendarInput.min = today;
        
            calendarInput.addEventListener('change', function () {
                var selectedDate = calendarInput.value;
                document.getElementById('<%= CalendarDateHiddenField.ClientID %>').value = selectedDate;
            });
        
            // Disable days before today
            var calendarTable = document.getElementsByClassName('calendar-table')[0];
            var calendarDays = calendarTable.getElementsByTagName('td');
            for (var i = 0; i < calendarDays.length; i++) {
                var calendarDay = calendarDays[i];
                var dayDate = new Date(calendarDay.getAttribute('data-date'));
                if (dayDate < new Date(today)) {
                    calendarDay.classList.add('disabled-day');
                }
            }
        };


        function showPopupMessage(title, message) {
            // Display the popup message using JavaScript alert
            alert(title + ": " + message);
        }
    </script>

    <div class="container">
        <h3>Reservation Form</h3>

        <h4>Client Information</h4>

        <div class="form-group">
            <asp:TextBox runat="server" Enabled="True" Placeholder="Firstname" ID="txtFirstName" CssClass="form-control" required="true" ></asp:TextBox>
        </div>

        <div class="form-group">
            <asp:TextBox runat="server" Enabled="True" Placeholder="Lastname" ID="txtLastName" CssClass="form-control" required="true"></asp:TextBox>
        </div>

        <div class="form-group">
            <asp:TextBox runat="server" Enabled="True" TextMode="Email" Placeholder="Email" ID="txtEmail" CssClass="form-control" required="true"></asp:TextBox>
        </div>

        <div class="form-group">
            <asp:TextBox runat="server" Enabled="True" TextMode="Phone" Placeholder="Phone" ID="txtPhone" CssClass="form-control" required="true"></asp:TextBox>
        </div>

        <div class="form-group">
            <asp:TextBox runat="server" Enabled="True" ID="txtAddress" Placeholder="Address" CssClass="form-control" required="true"></asp:TextBox>
        </div>

        <div class="form-group.inlined calendar-container">
            <label for="CalendarPicker">Select Date:</label>
            <asp:Calendar runat="server" ID="CalendarPicker"></asp:Calendar>
            <span class="calendar-icon"></span>
        </div>

        <div class="form-group.inlined">
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

        <div class="form-group.inlined">
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

        <div class="form-group.inlined">
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

        <br>
        <div class="form-group service-charge">
            <label>Service Charge: <%= ServiceCharge %></label>
        </div>

        <div class="form-group">
            <asp:Button Text="Submit Reservation" runat="server" ID="btnReserve" OnClick="btnReserved_OnClick" CssClass="btn btn-info btn-lg btn-block"/>
        </div>
    </div>
</asp:Content>