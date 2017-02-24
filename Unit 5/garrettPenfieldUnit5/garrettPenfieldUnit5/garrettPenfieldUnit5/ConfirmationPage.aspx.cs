using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace garrettPenfieldUnit5
{
    public partial class ConfirmationPage : System.Web.UI.Page
    {
        Reservation newReservation = new Reservation();
        //Setting labels to data stored in session state
        protected void Page_Load(object sender, EventArgs e)
        {
            //Creating object to pull data back out of the session state
            Reservation newReservation = (Reservation)Session["Reservation"];
            TimeSpan tsDays = newReservation.DepartureDate - newReservation.ArrivalDate;
            int days = tsDays.Days;
            firstName.Text = newReservation.FirstName;
            lastName.Text = newReservation.LastName;
            email.Text = newReservation.Email;
            phoneNumber.Text = newReservation.Phone;
            preferredMethod.Text = newReservation.PreferredMethod;
            arrivalDate.Text = newReservation.ArrivalDate.ToString();
            departureDate.Text = newReservation.DepartureDate.ToString();
            noOfDays.Text = tsDays.Days.ToString();
            noOfPeople.Text = newReservation.NoOfPeople.ToString();
            bedType.Text = newReservation.BedType;
            specialRequests.Text = newReservation.SpecialRequests;
        }

        //Setting cookies for first name and email, also making labels visible
        protected void submitRequestButton_Click(object sender, EventArgs e)
        {
            HttpCookie cookie = new HttpCookie("User Info");
            cookie["First Name"] = newReservation.FirstName;
            cookie["Email"] = newReservation.Email;
            cookie.Expires = DateTime.Now.AddDays(180);
            Response.Cookies.Add(cookie);
            submitLabel1.Visible = true;
            submitLabel2.Visible = true;
        }
    }
}