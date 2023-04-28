using System;
using System.Configuration;
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
            var LastName = txtLastName.Text;;
            var FirstName = txtFirstName.Text ;
            var Email = txtEmail.Text;
            var Password = txtPassword.Text;
            var Phone = txtPhone.Text;
            var Street = txtStreet.Text;
            var Barangay = txtBarangay.Text;
            var Municipality = txtMunicipality.Text;
            var Province = txtProvince.Text;
            var ZipCode = txtZipCode.Text;
            
            using (var connection = new SqlConnection(ConfigurationManager.ConnectionStrings["MyConnectionString"].ConnectionString))
            {
                // Open SqlConnection
                connection.Open();

                // Create the SQL query with parameterized values
                const string query =
                    "INSERT INTO dbo.Users (Email, Password, LastName, FirstName, Phone, Street, Barangay, Municipality, Province, ZipCode, DateRegistered) VALUES (@Email, @Password, @LastName, @FirstName, @Phone, @Street, @Barangay, @Municipality, @Province, @ZipCode, GETDATE())";
                var command = new SqlCommand(query, connection);

                // Add parameterized values to the SqlCommand object
                command.Parameters.AddWithValue("@Email", Email);
                command.Parameters.AddWithValue("@Password", Password);
                command.Parameters.AddWithValue("@LastName", LastName);
                command.Parameters.AddWithValue("@FirstName", FirstName);
                command.Parameters.AddWithValue("@Phone", Phone);
                command.Parameters.AddWithValue("@Street", Street);
                command.Parameters.AddWithValue("@Barangay", Barangay);
                command.Parameters.AddWithValue("@Municipality", Municipality);
                command.Parameters.AddWithValue("@Province", Province);
                command.Parameters.AddWithValue("@ZipCode", ZipCode);

                // Execute the query
                command.ExecuteNonQuery();
            }
        }
    }
}