using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services.Description;
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
            string LName;
            string FName;
            string FullName;

            LName = txtLastName.Text;
            FName = txtFirstName.Text;
            FullName = FName + " " + LName;
            
        }
    }
}