using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;

namespace CleaningServiceBookingSystem
{
    public partial class Signin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void btnLogin_Click(object sender, EventArgs e)
        {
            string Email = txtEmail.Text;
            string Password = txtPassword.Text;

            if (Email == "admin@admin" && Password == "admin")
            {
                // Create an authentication ticket with the user's email address
                FormsAuthenticationTicket ticket = new FormsAuthenticationTicket(
                    1, // version number
                    Email, // user name
                    DateTime.Now, // issue time
                    DateTime.Now.AddMinutes(30), // expiration time
                    false, // is persistent
                    "" // user data (not used here)
                );

                // Encrypt the ticket and add it to the response cookie
                string encryptedTicket = FormsAuthentication.Encrypt(ticket);
                HttpCookie authCookie = new HttpCookie(FormsAuthentication.FormsCookieName, encryptedTicket);
                Response.Cookies.Add(authCookie);

                // Redirect to the default page
                Response.Redirect("~/Default.aspx");
            }
        }


    }
}