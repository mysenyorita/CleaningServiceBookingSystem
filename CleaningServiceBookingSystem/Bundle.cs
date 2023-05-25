using System;
using System.Web;
using System.Web.UI;

namespace CleaningServiceBookingSystem
{
    public static class Bundle
    {
        public static string GetUserName()
        {
            string User = HttpContext.Current.Session["Username"] as string;
            Console.WriteLine(User);
            return User;
        }
    }
}