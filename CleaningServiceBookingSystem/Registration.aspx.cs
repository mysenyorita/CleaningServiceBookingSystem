using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CleaningServiceBookingSystem
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }
        protected void btnRegister_OnClick(object sender, EventArgs e)
        {
            var Lname = txtLastName.Text;
            var Fname = txtFirstName.Text;
            var phone = txtPhone.Text;
            var email = txtEmail;
            Console.WriteLine("Button Used");
            Response.Redirect("~/Default.aspx");
            
        }
    }
}