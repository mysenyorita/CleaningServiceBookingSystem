using System;
using System.Web;
using System.Web.UI;

namespace CleaningServiceBookingSystem
{
    public partial class SiteMaster : MasterPage
    {
        public string UserName;
         protected void Page_Load(object sender, EventArgs e)
         {
             UserName = HttpContext.Current.Session["Username"] as string;

         }
    }
}