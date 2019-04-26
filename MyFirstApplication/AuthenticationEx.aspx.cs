using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Security;

namespace MyFirstApplication
{
    public partial class AuthenticationEx : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void cmdLogIn_Click(object sender, EventArgs e)
        {
            if (FormsAuthentication.Authenticate(txtEmailId.Text, txtPassword.Text))
            {
                FormsAuthentication.RedirectFromLoginPage(txtEmailId.Text, true);
            }
            else
            {
                Response.Write("Invalid User details");
            }
        }
    }
}