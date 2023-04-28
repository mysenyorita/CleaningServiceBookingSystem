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
            var LastName = txtLastName.Text;
            ;
            var FirstName = txtFirstName.Text;
            var Email = txtEmail.Text;
            var Password = txtPassword.Text;
            var Phone = txtPhone.Text;
            var Street = txtStreet.Text;
            var Barangay = txtBarangay.Text;
            var Municipality = txtMunicipality.Text;
            var Province = txtProvince.Text;
            var ZipCode = txtZipCode.Text;


            // Check if user already exists with the same email or username
            using (var connection =
                   new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString))
            {
                connection.Open();
                var command = new SqlCommand("SELECT COUNT(*) FROM UserInformation.Users WHERE Email = @Email",
                    connection);
                command.Parameters.AddWithValue("@Email", Email);
                var count = (int)command.ExecuteScalar();
                if (count > 0)
                {
                    // User already exists with same email or username
                    lblStatus.Text = "User with the same email already exists";
                    return;
                }
                InsertData();
            }

            void InsertData()
            {
                // INSERT DATA TO DATABASE
                using (var connection =
                       new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString))
                {
                    // Open SqlConnection
                    connection.Open();

                    // Create the SQL query with parameterized values
                    const string query =
                        "INSERT INTO UserInformation.Users (Email, Password, LastName, FirstName, Phone, Street, Barangay, Municipality, Province, ZipCode) VALUES (@Email, @Password, @LastName, @FirstName, @Phone, @Street, @Barangay, @Municipality, @Province, @ZipCode)";
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
}