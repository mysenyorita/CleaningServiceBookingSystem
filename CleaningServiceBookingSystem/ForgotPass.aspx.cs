using System;
using System.Web.UI;

namespace CleaningServiceBookingSystem
{
    public partial class ForgotPass : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            string email = txtEmail.Text.Trim();
            // TODO: validate email address
            // TODO: check if email address exists in the database
            // TODO: generate a new password and send it to the user's email address
            // TODO: display a message to inform the user that an email has been sent
        }

    }
}