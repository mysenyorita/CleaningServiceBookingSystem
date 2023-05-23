<%@ Page Title="Reservation" Language="C#" MasterPageFile="~/Site.Master" CodeBehind="reservation.aspx.cs" Inherits="CleaningServiceBookingSystem.reservation" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" Runat="Server">
    
    <h3>     Reservation Form</h3>
    <asp:Calendar runat="server"></asp:Calendar>
            <br/>
    <p>Hours Required</p>  
                             <div>  
                                 <asp:DropDownList ID="DropDownListHoursRequired" runat="server" >  
                                 <asp:ListItem Value="">Hours</asp:ListItem>  
                                 <asp:ListItem>3 HOURS </asp:ListItem>  
                                 <asp:ListItem>4 HOURS </asp:ListItem>  
                                 <asp:ListItem>5 HOURS </asp:ListItem>  
                                 <asp:ListItem>6 HOURS </asp:ListItem>  
                                 <asp:ListItem>7 HOURS </asp:ListItem>
                                     <asp:ListItem>8 HOURS </asp:ListItem>  
                                 </asp:DropDownList>  
                             </div>  
                             <br />

    <p>Select a Property Type</p>  
                    <div>  
                        <asp:DropDownList ID="DropDownListPropertyType" runat="server" >  
                        <asp:ListItem Value="">Please Select</asp:ListItem>  
                        <asp:ListItem>Apartment Building </asp:ListItem>  
                        <asp:ListItem>Commercial Building</asp:ListItem>  
                        <asp:ListItem>Condominium</asp:ListItem>  
                        <asp:ListItem>Industrial Building</asp:ListItem>  
                        <asp:ListItem>Office Building</asp:ListItem>
                            <asp:ListItem>Residential House</asp:ListItem>  
                        </asp:DropDownList>  
                    </div>  
                    <br />
    <p>Select a Property Location</p>  
                        <div>  
                            <asp:DropDownList ID="DropDownListPropertyLocation" runat="server" >  
                            <asp:ListItem Value="">Please Select Address</asp:ListItem>  
                            <asp:ListItem>ClearView</asp:ListItem>  
                            <asp:ListItem>Northfield</asp:ListItem>  
                            <asp:ListItem>Nortgate</asp:ListItem>  
                            <asp:ListItem>Lightsview</asp:ListItem>  
                            <asp:ListItem>Broadview</asp:ListItem>
                            <asp:ListItem>Enfield</asp:ListItem>
                            </asp:DropDownList>  
                        </div>  
                        <br />
          <p> Service Charge: </p>  
     <div class="form-outline mb-4">
                <asp:TextBox runat="server" Enabled="True" Placeholder="Fees" ID="Fees" class="form-control"></asp:TextBox>
                <br/>
        </div>
    <h4>Client Information</h4>
            <div class="form-outline mb-4">
                <asp:TextBox runat="server" Enabled="True" Placeholder="Lastname" ID="txtLastName" class="form-control" required="required"></asp:TextBox>
                <br/>
                </div>
            
    <div class="form-outline mb-4">
        <asp:TextBox runat="server" Enabled="True" Placeholder="Firstname" ID="txtFirstName" class="form-control" required="required"></asp:TextBox>
        <br/>
        </div>
    
    <div class="form-outline mb-4">
        <asp:TextBox runat="server" Enabled="True" TextMode="Email" Placeholder="Email" ID="txtEmail" class="form-control" required="required"></asp:TextBox>
        <br/>
        </div>

    <div class="form-outline mb-4">
        <asp:TextBox runat="server" Enabled="True" TextMode="Phone" Placeholder="Phone" ID="txtPhone" class="form-control"></asp:TextBox>
        <br/>
        
    </div>
    <div class="form-outline mb-4">
        <asp:TextBox runat="server" Enabled="True" ID="txtPropertyType" Placeholder="Address" class="form-control"></asp:TextBox>
        <br/>
        </div>

    <div class="form-outline mb-4">
            <asp:Button Text="Reserved" runat="server" ID="btnReserved" OnClick="btnReserved_OnClick" class="btn btn-info btn-lg btn-block"></asp:Button>
            <br/>
                </div>
</asp:Content>