using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
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
            string Email;
            string Password;

            Email = txtEmail.Text;
            Password = txtPassword.Text;
            if (Email == "admin@admin" && Password == "admin")
            {
                // Set the username to the Session variable
                Session["username"] = UserName;

                // Access the Signin button in the Site.Master page and update its text
                Button btnSignin = (Button)Master.FindControl("Signin");
                if (btnSignin != null)
                {
                    btnSignin.Text = Session["username"].ToString();
                }

                // Redirect to the default page
                Response.Redirect("~/Default.aspx");
            }
        }

        public object UserName { get; set; }
    }
}