using System;
using System.Configuration;
using System.Data.SqlClient;
using System.Web.UI;

namespace CleaningServiceBookingSystem
{
    public partial class Reservation : Page
    {
        private string _calendarDate;
        private string _serviceHour;
        private string _propertyType;
        private string _propertyLocation;

        protected string ServiceCharge;

        // User
        private string _rFname;
        private string _rLname;
        private string _rEmail;
        private string _rNum;
        private string _rAddress;

        protected void Page_Load(object sender, EventArgs e)
        {
            ServiceCharge = "₱" + "5999"; // TO BE UPDATED
        }


        protected void btnReserved_OnClick(object sender, EventArgs e)
        {
            // Selection
            _calendarDate = CalendarPicker.SelectedDate.ToString("yyyy-MM-dd");
            _serviceHour = DropDownListHoursRequired.SelectedItem.Value;
            _propertyType = DropDownListPropertyType.SelectedItem.Value;
            _propertyLocation = DropDownListPropertyLocation.SelectedItem.Value;
            // User Info
            _rFname = txtFirstName.Text;
            _rLname = txtLastName.Text;
            _rEmail = txtEmail.Text;
            _rNum = txtPhone.Text;
            _rAddress = txtAddress.Text;

            Console.WriteLine("Date: " + _calendarDate + "\nServiceHour: " + _serviceHour + "\nPropertyType: " +
                              _propertyType
                              + "\nPropertyLocation: " + _propertyLocation + "\n\nFname: " + _rFname
                              + "\nLname: " + _rLname + "\nEmail: " + _rEmail + "\nNum: " + _rNum + "\nAddress: " +
                              _rAddress);

            SQL_Insertion();
        }

        private void SQL_Insertion()
        {
            // Check if user already exists with the same email or username
            using (var connection =
                   new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString))
            {
                connection.Open();
                var command = new SqlCommand(
                    "SELECT COUNT(*) FROM reservation.reservations WHERE date = @Date AND hours = @Hour AND prop_type = @Type " +
                    "AND prop_location = @Location ",
                    connection);
                command.Parameters.AddWithValue("@Date", _calendarDate);
                command.Parameters.AddWithValue("@Hour", _serviceHour);
                command.Parameters.AddWithValue("@Type", _propertyType);
                command.Parameters.AddWithValue("@Location", _propertyLocation);
                var count = (int)command.ExecuteScalar();
                if (count > 0)
                {
                    // User already exists with same email or username
                    string script = "showPopupMessage('Unsuccessful', 'Failed due to duplicate reservation');";
                    ClientScript.RegisterStartupScript(this.GetType(), "ShowPopupScript", script, true);
                    return;
                }

                InsertData();
            }

            // INSERT DATA TO DATABASE
            void InsertData()
            {
                using (var connection =
                       new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString))
                {
                    try
                    {
                        connection.Open();

                        const string query =
                            "INSERT INTO reservation.reservations (id, date, hours, prop_type, prop_location) " +
                            "VALUES (@randID, @Date, @Hour, @Type, @Location); " +
                            "INSERT INTO reservation.customers (cust_fname, cust_lname, cust_email, custo_number, cust_address, reservation_id) " +
                            "VALUES (@Fname, @Lname, @Email, @Num, @Address, @randID);";
                        var command = new SqlCommand(query, connection);
                        var GeneratedID = GenerateReservationID();
                        command.Parameters.AddWithValue("@randID", GeneratedID);
                        command.Parameters.AddWithValue("@Date", _calendarDate);
                        command.Parameters.AddWithValue("@Hour", _serviceHour);
                        command.Parameters.AddWithValue("@Type", _propertyType);
                        command.Parameters.AddWithValue("@Location", _propertyLocation);
                        command.Parameters.AddWithValue("@Fname", _rFname);
                        command.Parameters.AddWithValue("@Lname", _rLname);
                        command.Parameters.AddWithValue("@Email", _rEmail);
                        command.Parameters.AddWithValue("@Num", _rNum);
                        command.Parameters.AddWithValue("@Address", _rAddress);

                        command.ExecuteNonQuery();


                        string script = "showPopupMessage('Success', 'Reservation Booked successfully!');";
                        ClientScript.RegisterStartupScript(this.GetType(), "ShowPopupScript", script, true);

                        connection.Close();
                    }
                    catch (Exception ex)
                    {
                        // Error message
                        string script = "showPopupMessage('Error','" + ex + "');";
                        ClientScript.RegisterStartupScript(this.GetType(), "ShowPopupScript", script, true);
                    }
                }
            }

            string GenerateReservationID()
            {
                using (var connection =
                       new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString))
                {
                    connection.Open();
                    var command =
                        new SqlCommand("SELECT COUNT(*) FROM reservation.reservations WHERE id = @ReservationID",
                            connection);
                    string reservationID;
                    int count = 0;
                    do
                    {
                        reservationID = GenerateRandomID();
                        command.Parameters.AddWithValue("@ReservationID", reservationID);
                        count = (int)command.ExecuteScalar();
                        command.Parameters.Clear();

                        // If the ID already exists, generate a new one
                    } while (count > 0);

                    return reservationID;
                }
            }

            string GenerateRandomID()
            {
                Random random = new Random();
                int randID = random.Next(10000, 99999); // Generate a random number between 10000 and 99999
                return randID.ToString("D5");
            }
        }

        protected void btnTest_Click(object sender, EventArgs e)
        {
            string script = "showPopupMessage('Test', 'Test stored successfully!');";
            ClientScript.RegisterStartupScript(this.GetType(), "ShowPopupScript", script, true);
        }
    }
}