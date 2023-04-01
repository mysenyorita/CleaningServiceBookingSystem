<%@ Page Title="" Language="C#" MasterPageFile="~/LoginReg.Master" AutoEventWireup="true" CodeBehind="Registration.aspx.cs" Inherits="CleaningServiceBookingSystem.WebForm2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <section class="vh-100">
        <div class="container-fluid">
            <div class="row">
                <div class="col-sm-6 text-black">
                    <div class="px-5 ms-xl-4">
                        <i class="fas fa-crow fa-2x me-3 pt-5 mt-xl-4" style="color: #709085;"></i>
                        <span class="h1 fw-bold mb-0">Daisy Cleaning Services</span>
                    </div>

                    <br/>
                    <div class="d-flex align-items-center h-custom-2 px-5 ms-xl-4 mt-5 pt-5 pt-xl-0 mt-xl-n5">

                        <div style="width:23rem;">

                            <h3 class="fw-normal mb-3 pb-3" style="letter-spacing: 1px;">Register</h3>

                            <div class="form-outline mb-4"">
                                <asp:TextBox runat="server" Enabled="True" ID="txtLastName" class="form-control" required="required"></asp:TextBox>
                                <asp:Label runat="server" class= "form-label" for="lblLastName">Last Name</asp:Label>
                            </div>

                            <div class="form-outline mb-4"">
                                <asp:TextBox runat="server" Enabled="True" ID="txtFirstName" class="form-control" required="required"></asp:TextBox>
                                <asp:Label runat="server" class= "form-label" for="lblFirstName">First Name</asp:Label>
                            </div>

                            <div class="form-outline mb-4"> 
                                <asp:TextBox runat="server" Enabled="True" TextMode="Email" ID="txtPassword" class="form-control" required="required"></asp:TextBox>
                                <asp:Label runat="server" class="form-label" for="lblEmail">Email</asp:Label>
                            </div>


                            <div class="pt-1 mb-4">
                                <asp:Button Text="Register" runat="server" ID="btnLogin" OnClick-="btnLogin_Click" class="btn btn-info btn-lg btn-block" />
                            </div>                          
                                                                                    
                            <p>Already have an account? <a href="Signin.aspx" class="link-info">Sign In</a></p>

                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>    

</asp:Content>
