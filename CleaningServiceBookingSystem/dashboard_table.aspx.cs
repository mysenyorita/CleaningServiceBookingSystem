using System;
using System.Web;
using System.Web.UI;

namespace CleaningServiceBookingSystem
{
    public partial class dashboard_table : Page
    {
        public string UserNameDashboard;
        protected void Page_Load(object sender, EventArgs e)
        {
            UserNameDashboard = Bundle.GetUserName();
        }
    }
}