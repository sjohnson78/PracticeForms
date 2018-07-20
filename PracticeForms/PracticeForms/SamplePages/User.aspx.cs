using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PracticeForms.SamplePages
{
    public partial class User : System.Web.UI.Page
    {
        // create a list to collect info since we aren't using a database
        // the <> contains the data type of the list, in this case it's a list of type UserClass (the class we just created)
        // userRegistrations is just the name of this list.

        public static List<UserClass> userRegistrations = new List<UserClass>();

        protected void Page_Load(object sender, EventArgs e)
        {
            Message.Text = "";
        }

        protected void Submit_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                string firstName = FirstName.Text;
                string lastName = LastName.Text;
                string userName = UserName.Text;
                string emailAddress = EmailAddress.Text;
                string confirmEmail = ConfirmEmail.Text;
                string password = Password.Text;
                string confirmPassword = ConfirmPassword.Text;
                bool terms = Terms.Checked;

                Message.Text = firstName + lastName + userName + emailAddress + confirmEmail + password + confirmPassword;

                if (terms) // this means if terms == true, aka is the checkbox checked
                {
                    // do webgrid processing here

                    UserClass theUserRegistration = new UserClass(firstName, lastName, userName, emailAddress, confirmEmail, password, confirmPassword);

                    // add this instance to the list of entries
                    userRegistrations.Add(theUserRegistration);

                    // attach the collection of entries to the GridView control
                    // we need to create the GridView in the .aspx page first.

                    UserRegistrations.DataSource = userRegistrations; // userRegistrations is the name of the List<T> we created above
                    UserRegistrations.DataBind();


                }
                else
                {
                    Message.Text = "You did not agree to the terms!";
                }

            }
        }

        protected void Clear_Click(object sender, EventArgs e)
        {
            FirstName.Text = "";
            LastName.Text = "";
            UserName.Text = "";
            EmailAddress.Text = "";
            ConfirmEmail.Text = "";
            Password.Text = "";
            ConfirmPassword.Text = "";
            Terms.Checked = false;            
        }
    }
}