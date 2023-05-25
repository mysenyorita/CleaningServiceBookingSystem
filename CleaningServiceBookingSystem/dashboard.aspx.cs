using System;
using System.Web;
using System.Web.Services.Description;
using System.Web.UI;
using CleaningServiceBookingSystem;

namespace CleaningServiceBookingSystem
{
    public partial class dashboard : Page
    {
        public string UserNameDashboard;
        protected void Page_Load(object sender, EventArgs e)
        {
            UserNameDashboard = Bundle.GetUserName();
        }
    }
}