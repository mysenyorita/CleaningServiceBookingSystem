using System;
using System.Web.UI;

namespace CleaningServiceBookingSystem
{
    public partial class Default : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.IsAuthenticated == false )
            {
                Response.Redirect("~/Signin.aspx");
                    
                Console.WriteLine("User is Not Authenticated \n");
            }
        }
    }
}