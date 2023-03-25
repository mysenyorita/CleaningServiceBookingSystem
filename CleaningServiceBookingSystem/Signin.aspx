<%@ Page Title="Sign In" Language="C#" MasterPageFile="~/LoginReg.Master" AutoEventWireup="true" CodeBehind="Signin.aspx.cs" Inherits="CleaningServiceBookingSystem.Signin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <section class="vh-100">
        <div class="container-fluid">
            <div class="row">
                <div class="col-sm-6 text-black">

                    <div class="px-5 ms-xl-4">
                        <i class="fas fa-crow fa-2x me-3 pt-5 mt-xl-4" style="color: #709085;"></i>
                        <span class="h1 fw-bold mb-0">Daisy Cleaning Services</span>
                    </div>

                    <div class="d-flex align-items-center h-custom-2 px-5 ms-xl-4 mt-5 pt-5 pt-xl-0 mt-xl-n5">

                        <div style="width:23rem;">

                            <h3 class="fw-normal mb-3 pb-3" style="letter-spacing: 1px;">Log in</h3>

                            <div class="form-outline">
                                <asp:TextBox runat="server" Enabled="true" Textmode="email" ID="txtEmail" class="form-control" required="required"></asp:TextBox>
                                <asp:Label runat="server" class= "form-label" for="form2Example18">Email Address</asp:Label>
                            </div>

                            <div class="form-outline mb-4"> 
                                <asp:TextBox runat="server" Enabled="True" TextMode="Password" ID="txtPassword" class="form-control form-control-lg" required="required" placeholder="Password"> </asp:TextBox>
                                <label class="form-label" for="form2Example28">Password</label>
                            </div>

                            <div class="pt-1 mb-4">
                                <asp:Button Text="Login" runat="server" ID="btnLogin" OnClick-="btnLogin_Click" class="btn btn-info btn-lg btn-block" />
                            </div>

                            <div class="pt-1 mb-4">
                                <asp:Button runat="server" Text="Reset" OnClick="BtnReset_Click" ID="BtnReset" class="btn btn-info btn-lg btn-block"/>
                            </div>

                            <p class="small mb-5 pb-lg-2"><a class="text-muted" href="#!">Forgot password?</a></p>
                            <p>Don't have an account? <a href="Registration.aspx" class="link-info">Register here</a></p>

                        </div>
                    </div>
                </div>

                <div class="col-sm-6 px-0 d-none d-sm-block">
                    <img src="https://bookdirtbusters.com/wp-content/uploads/2020/10/house-cleaning-service.jpeg"
                    alt="Login image" width="600" height="400" style="object-fit:cover;" object-position:80% 100%;">
                </div>
            </div>
        </div>
    </section>
</asp:Content>
