<%@ Page Title="Title" Language="C#" MasterPageFile="~/Site.Master" CodeBehind="~/ForgotPass.aspx.cs" Inherits="CleaningServiceBookingSystem.ForgotPass" %>

<asp:Content runat="server" ID="Content_ForgetPass" ContentPlaceHolderID="MainContent">
    <section>
        <div class="form-group">
            <br/>
            <label for="txtEmail">Email Address</label>
            <asp:TextBox ID="txtEmail" runat="server" CssClass="form-control" placeholder="Enter your email address"></asp:TextBox>
        </div>
        <div class="form-group">
            <asp:Button ID="btnSubmit" runat="server" Text="Submit" CssClass="btn btn-primary btn-block" OnClick="btnSubmit_Click" />
        </div>
    </section>
</asp:Content>