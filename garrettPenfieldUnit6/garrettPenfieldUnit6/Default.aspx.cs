using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace garrettPenfieldUnit6
{
    public partial class Default : System.Web.UI.Page
    {
        //Load events, automatically inserts todays date and selects the single king radio button
        protected void Page_Load(object sender, EventArgs e)
        {
            UnobtrusiveValidationMode = System.Web.UI.UnobtrusiveValidationMode.None;
            singleKingButton.Checked = true;
            arrivalDateBox.Text = DateTime.Today.ToShortDateString();
            //if postback (modify button on confirmation page is clicked) load all previous selected information
            if (PreviousPage != null)
            {
                Label arrivalDate = (Label)PreviousPage.FindControl("arrivalDate");
                arrivalDateBox.Text = arrivalDate.Text.Substring(0, 9);

                Label departureDate = (Label)PreviousPage.FindControl("departureDate");
                departureDateBox.Text = departureDate.Text.Substring(0, 9);

                Label noOfPeople = (Label)PreviousPage.FindControl("noOfPeople");
                peopleDropDown.SelectedValue = noOfPeople.Text;

                Label specialRequests = (Label)PreviousPage.FindControl("specialRequests");
                specialRequestsBox.Text = specialRequests.Text;

                Label firstName = (Label)PreviousPage.FindControl("firstName");
                firstNameBox.Text = firstName.Text;

                Label lastName = (Label)PreviousPage.FindControl("lastName");
                lastNameBox.Text = lastName.Text;

                Label email = (Label)PreviousPage.FindControl("email");
                addressBox.Text = email.Text;

                Label phoneNumber = (Label)PreviousPage.FindControl("phoneNumber");
                telephoneNumberBox.Text = phoneNumber.Text;

                Label preferredMethod = (Label)PreviousPage.FindControl("preferredMethod");
                contactDropDown.SelectedValue = preferredMethod.Text;

                Label bedType = (Label)PreviousPage.FindControl("bedType");
                if (bedType.Text == "Single King")
                {
                    singleKingButton.Checked = true;
                }
                else if (bedType.Text == "Two Queens")
                {
                    twoQueensButton.Checked = true;
                }
                else
                {
                    singleQueenButton.Checked = true;
                }
            }
        }

        Reservation newReservation = new Reservation();

        //When submit button is clicked save data into object, then save object into session state
        protected void submitButton_Click(object sender, EventArgs e)
        {
            int dropDown;
            int.TryParse(peopleDropDown.SelectedValue, out dropDown);
            newReservation.ArrivalDate = Convert.ToDateTime(arrivalDateBox.Text);
            newReservation.DepartureDate = Convert.ToDateTime(departureDateBox.Text);
            newReservation.NoOfPeople = dropDown;
            newReservation.SpecialRequests = specialRequestsBox.Text;
            newReservation.FirstName = firstNameBox.Text;
            newReservation.LastName = lastNameBox.Text;
            newReservation.Email = addressBox.Text;
            newReservation.Phone = telephoneNumberBox.Text;
            newReservation.PreferredMethod = contactDropDown.SelectedValue;
            if (singleKingButton.Checked)
            {
                newReservation.BedType = "Single King";
            }

            if (twoQueensButton.Checked)
            {
                newReservation.BedType = "Two Queens";
            }

            if (singleQueenButton.Checked)
            {
                newReservation.BedType = "Single Queen";
            }
            Session["Reservation"] = newReservation;
            Response.Redirect("~/ConfirmationPage.aspx");
        }

        //When the clear button is clicked clear the form and reset fields to their default values
        protected void clearButton_Click(object sender, EventArgs e)
        {
            arrivalDateBox.Text = DateTime.Today.ToShortDateString();
            departureDateBox.Text = String.Empty;
            peopleDropDown.SelectedIndex = 0;
            singleKingButton.Checked = true;
            twoQueensButton.Checked = false;
            singleQueenButton.Checked = false;
            specialRequestsBox.Text = String.Empty;
            firstNameBox.Text = String.Empty;
            lastNameBox.Text = String.Empty;
            addressBox.Text = String.Empty;
            telephoneNumberBox.Text = String.Empty;
            contactDropDown.SelectedIndex = 0;
        }
    }
}