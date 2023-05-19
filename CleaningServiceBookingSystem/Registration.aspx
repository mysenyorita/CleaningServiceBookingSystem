<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="~/Registration.aspx.cs" Inherits="CleaningServiceBookingSystem.WebForm2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <section class="vh-100">
        <div class="container-fluid">
            <div class="row">
                <div class="col-sm-6 text-black">
                    <div class="px-5 ms-xl-4">
                        <i class="fas fa-crow fa-2x me-3 pt-5 mt-xl-4" style="color: #709085;"></i>
                        <br/>
                        <span class="h1 fw-bold mb-0">REGISTER</span>
                    </div>

                    <br/>
                    <div class="d-flex align-items-center h-custom-2 px-5 ms-xl-4 mt-5 pt-5 pt-xl-0 mt-xl-n5">

                        <div style="width:23rem;">

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
                                <asp:TextBox runat="server" Enabled="True" TextMode="Password" Placeholder="Password" ID="txtPassword" class="form-control" required="required"></asp:TextBox>
                                <br/>
                            </div>

                            <div class="form-outline mb-4">
                                <asp:TextBox runat="server" Enabled="True" TextMode="Phone" Placeholder="Phone" ID="txtPhone" class="form-control"></asp:TextBox>
                                <br/>
                            </div>
                            <div class="form-outline mb-4">
                                <asp:TextBox runat="server" Enabled="True" ID="txtStreet" Placeholder="Street" class="form-control"></asp:TextBox>
                                <br/>
                            </div>
                            <div class="form-outline mb-4">
                                <asp:TextBox runat="server" Enabled="True" ID="txtBarangay" Placeholder="Barangay" class="form-control"></asp:TextBox>
                                <br/>
                            </div>
                            <div class="form-outline mb-4">
                                <asp:TextBox runat="server" Enabled="True" ID="txtMunicipality" Placeholder="Municipality" class="form-control"></asp:TextBox>
                                <br/>
                            </div>
                            <div class="form-outline mb-4">
                                <asp:TextBox runat="server" Enabled="True" ID="txtProvince" Placeholder="Province" class="form-control"></asp:TextBox>
                                <br/>
                            </div>
                            <div class="form-outline mb-4">
                                <asp:TextBox runat="server" Enabled="True" ID="txtZipCode" Placeholder="Zip Code" class="form-control"></asp:TextBox>
                                <br/>
                            </div>
                        </div>
                        
                        <!-- LABEL OR REGISTRATION STATUS -->
                        <div class="fw-normal mb-3 pb-3">
                            <asp:Label runat="server" ID="lblStatus" CssClass="text-danger" EnableViewState="false"></asp:Label>
                        </div>

                        <div class="pt-1 mb-4">
                            <asp:Button Text="Register" runat="server" ID="btnRegister" OnClick="btnRegister_OnClick" class="btn btn-info btn-lg btn-block"></asp:Button>
                        </div>

                        <p>Already have an account? <a href="Signin.aspx" class="link-info">Sign In</a></p>
                    </div>
                </div>
            </div>
        </div>
    </section>

</asp:Content>