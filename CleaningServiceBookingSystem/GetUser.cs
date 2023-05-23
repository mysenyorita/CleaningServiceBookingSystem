using System;
using System.Web;
namespace CleaningServiceBookingSystem
{
    public class GetUser
    {
        public string GetUserName()
        {
            string User = HttpContext.Current.Session["Username"] as string;
            Console.WriteLine(User);
            return User;
        }
        
    }
}