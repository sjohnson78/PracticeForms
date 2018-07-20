using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace PracticeForms
{
    public class UserClass
    {

        // these are properties?
        public string FirstName { get; set; }
        public string LastName { get; set; }
        public string UserName { get; set; }
        public string EmailAddress { get; set; }
        public string ConfirmEmail { get; set; }
        public string Password { get; set; }
        public string ConfirmPassword { get; set; }

        
        // a constructor that takes no parameters is called a DEFAULT CONSTRUCTOR
        //      default constructors are invoked whenever an object is instantiated by using 
        //      the new operator and no arguments are provided to "new"

        public UserClass()
        {
            // no code needed here, simple default constructor
        }

        // we also need to make a GREEDY CONSTRUCTOR that is invoked when we instantiate 
        //  a new object (UserClass in this example) and pass in the values needed

        // as far as I can tell, the variable names used in the greedy constructor don't
        // matter, we just use them within the constructor to assign values to the properties.
        // for my own benefit, I'll use the same variable names that I use in aspx.cs

        public UserClass(string firstName,
            string lastName,
            string userName,
            string emailAddress,
            string confirmEmail,
            string password,
            string confirmPassword)
        {
            // Property = variable is the syntax here, careful of case
            // we need property on the left and the variable that holds the value being
            // assigned on the right
            FirstName = firstName;
            LastName = lastName;
            UserName = userName;
            EmailAddress = emailAddress;
            ConfirmEmail = confirmEmail;
            Password = password;
            ConfirmPassword = confirmPassword;
        }

    }
}