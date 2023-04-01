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

        protected void BtnReset(object sender, EventArgs e)
        {
            txtEmail.Text = "";
            txtPassword.Text = "";
        }
    }
}