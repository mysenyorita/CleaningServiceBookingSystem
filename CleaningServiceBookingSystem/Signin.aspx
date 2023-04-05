<%@ Page Title="Sign In" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Signin.aspx.cs" Inherits="CleaningServiceBookingSystem.Signin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <style>
        body {
            background-image: url('bg.jpg');
            background-repeat: no-repeat;
            background-size: cover;
        }
    </style>
    <section class="vh-100">
        <div class="container-fluid">
            <div class="row">
                <div class="col-sm-6 text-black">
                    <div>
                        <span class="fa-stack fa-lg">
                            <i class="fa fa-circle-thin fa-stack-2x"></i>
                            <i class="fa fa-twitter fa-stack-1x"></i>
                        </span>
                    </div>
                    <br/>
                    <div class="d-flex align-items-center h-custom-2 px-5 ms-xl-4 mt-5 pt-5 pt-xl-0 mt-xl-n5">

                        <div>
                            <h3 class="fw-normal mb-3 pb-3" style="letter-spacing: 1px;">Log in</h3>
                            <div class="form-outline mb-4">
                                <asp:TextBox runat="server" Enabled="True" Textmode="Email" ID="txtEmail" class="form-control" required="required"></asp:TextBox>
                                <asp:Label runat="server" class="form-label" for="lblEmailAddress">Email Address</asp:Label>
                            </div>

                            <div class="form-outline mb-4">
                                <asp:TextBox runat="server" Enabled="True" TextMode="Password" ID="txtPassword" class="form-control" required="required" onkeydown="storeValue(event)"></asp:TextBox>
                                <asp:Label runat="server" class="form-label" for="lblPassword">Password</asp:Label>
                            </div>

                            <div class="form-outline mb-4">
                                <asp:Button runat="server" ID="btnLogin" class="btn btn-info btn-lg btn-block" Text="Login" OnClick="btnLogin_Click"></asp:Button>
                            </div>

                            <p><asp:CheckBox runat="server" ID="cbxRememberMe"></asp:CheckBox>Remember Me</p>
                            <p class="small mb-5 pb-lg-2">
                                <a class="text-muted" href="ForgotPass.aspx">Forgot password?</a>
                            </p>
                            <p>Don't have an account? <a href="Registration.aspx" class="link-info">Register here</a></p>

                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

</asp:Content>
