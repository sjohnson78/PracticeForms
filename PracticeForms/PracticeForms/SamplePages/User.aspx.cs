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
        protected void Page_Load(object sender, EventArgs e)
        {
            Message.Text = "";
        }

        protected void Submit_Click(object sender, EventArgs e)
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