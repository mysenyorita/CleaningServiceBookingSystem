using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services.Description;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace CleaningServiceBookingSystem
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void btnRegister_OnClick(object sender, EventArgs e)
        {
            string LastName;
            string FirstName;
            string Email;
            string Password;
            string Phone;
            string Street;
            string Barangay;
            string Municipality;
            string Province;
            string ZipCode;

            LastName = txtLastName.Text;
            FirstName = txtFirstName.Text;
            Email = txtEmail.Text;
            Password = txtPassword.Text;
            Phone = txtPhone.Text;
            Street = txtStreet.Text;
            Barangay = txtBarangay.Text;
            Municipality = txtMunicipality.Text;
            Province = txtProvince.Text;
            ZipCode = txtZipCode.Text;

            SqlConnection connection = new SqlConnection();

            connection.Open();

            string query = "INSERT INTO tblUsers (userid,passwordm)" ;

            SqlCommand command = new SqlCommand(query, connection);
        }
    }
}