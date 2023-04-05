using System;
using System.Web.Security;
using System.Web.UI;

namespace CleaningServiceBookingSystem
{
    public partial class Logut : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            // Log the user out
            FormsAuthentication.SignOut();

            // Clear the session state
            Session.Clear();

            // Redirect the user to the login page
            Response.Redirect("~/Signin.aspx");
        }
    }
}