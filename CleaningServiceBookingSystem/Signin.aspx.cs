using System;
using System.Configuration;
using System.Data.SqlClient;
using System.Web;
using System.Web.Security;

namespace CleaningServiceBookingSystem
{
    public partial class Signin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            string Email = txtEmail.Text;
            string Password = txtPassword.Text;


            // Check if user already exists with the same email or username
            using (var connection =
                   new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString))
            {
                connection.Open();

                var getLogin = new SqlCommand(
                    "SELECT COUNT(*) FROM UserInformation.Users WHERE Email = @Email AND Password = @Password",
                    connection);
                getLogin.Parameters.AddWithValue("@Email", Email);
                getLogin.Parameters.AddWithValue("@password", Password);
                var countEmail = (int)getLogin.ExecuteScalar();

                // Check if query returns a row
                if (countEmail > 0)
                {
                    string connectionString = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
                    string queryString = "SELECT FirstName FROM UserInformation.Users WHERE Email = @Email AND Password = @Password";

                    using (SqlConnection connect = new SqlConnection(connectionString))
                    {
                        SqlCommand command = new SqlCommand(queryString, connect);
                        command.Parameters.AddWithValue("@Email", Email);
                        command.Parameters.AddWithValue("@Password", Password);
                        connect.Open(); // Open the connection
                        SqlDataReader reader = command.ExecuteReader();
                        string localUser = "";
                        while (reader.Read())
                        {
                            string UserName = reader.GetString(0);
                            Session["UserName"] = UserName;
                            Console.WriteLine("READING");
                            UserName = localUser;
                        }
                        reader.Close();
                    }
                    connection.Close();

                    Console.WriteLine("UserName: {0}", Session["UserName"]);

                    Console.WriteLine("Login Successful");
                    // Create an authentication ticket with the user's email address
                    FormsAuthenticationTicket ticket = new FormsAuthenticationTicket(
                        1, // version number
                        Email, // user name
                        DateTime.Now, // issue time
                        DateTime.Now.AddMinutes(30), // expiration time
                        false, // is persistent
                        "" // user data (not used here)
                    );
                    // Encrypt the ticket and add it to the response cookie
                    string encryptedTicket = FormsAuthentication.Encrypt(ticket);
                    HttpCookie authCookie = new HttpCookie(FormsAuthentication.FormsCookieName, encryptedTicket);
                    Response.Cookies.Add(authCookie);
                    
                    
                    // Redirect to the default page
                    Response.Redirect("~/Default.aspx");
                }
                connection.Close();
            }
        }
    }
}