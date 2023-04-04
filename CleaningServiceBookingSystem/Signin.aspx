<%@ Page Title="Sign In" Language="C#" MasterPageFile="~/LoginReg.Master" AutoEventWireup="true" CodeBehind="Signin.aspx.cs" Inherits="CleaningServiceBookingSystem.Signin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <section class="vh-100">
        <div class="container-fluid">
            <div class="row">
                <div class="col-sm-6 text-black">

                    <div <span class="fa-stack fa-lg">
                        <i class="fa fa-circle-thin fa-stack-2x"></i>
                        <i class="fa fa-twitter fa-stack-1x"></i>
                         </span>
                    </div>
                    <br/>
                    <div class="d-flex align-items-center h-custom-2 px-5 ms-xl-4 mt-5 pt-5 pt-xl-0 mt-xl-n5">

                        <div style="width:23rem;">

                            <h3 class="fw-normal mb-3 pb-3" style="letter-spacing: 1px;">Log in</h3>

                            <div class="form-outline mb-4">
                                <asp:TextBox runat="server" Enabled="True" Textmode="Email" ID="txtEmail" class="form-control" required="required"></asp:TextBox>
                                <asp:Label runat="server" class= "form-label" for="lblEmailAddress">Email Address</asp:Label>
                            </div>

                            <div class="form-outline mb-4"> 
                                <asp:TextBox runat="server" Enabled="True" TextMode="Password" ID="txtPassword" class="form-control" required="required"></asp:TextBox>
                                <asp:Label runat="server" class="form-label" for="lblPassword">Password</asp:Label>
                            </div>
                          

                            <p><asp:CheckBox runat="server" ID="cbxRememberMe"></asp:CheckBox>Remember Me</p>
                            <p class="small mb-5 pb-lg-2"><a class="text-muted" href="#!">Forgot password?</a></p>
                            <p>Don't have an account? <a href="Registration.aspx" class="link-info">Register here</a></p>

                        </div>
                    </div>
                </div>

                <div class="col-sm-6 px-0 d-none d-sm-block">
                    <img src="https://scontent.xx.fbcdn.net/v/t1.15752-9/337406375_253370323703190_3416556928671028571_n.jpg?stp=dst-jpg_p206x206&_nc_cat=101&ccb=1-7&_nc_sid=aee45a&_nc_eui2=AeGyEPMap6u6VQg9C1KdIFLQ-b7PqR5Yzab5vs-pHljNpozefiOWrkSn-lQE1Y2dJMUZI01F1FqUPMWSUj-z952a&_nc_ohc=sSYIAWWFJ0sAX_q05PL&_nc_ad=z-m&_nc_cid=0&_nc_ht=scontent.xx&oh=03_AdT7LizIrChgOzbDVtiDA5sAQBc_izVyzie-PCWvb2m0vA&oe=64532651"
                    alt="Login image" class="w-100 vh-100" style="object-fit: contain; object-position: left;">
                </div>
            </div>
        </div>
    </section>

</asp:Content>
