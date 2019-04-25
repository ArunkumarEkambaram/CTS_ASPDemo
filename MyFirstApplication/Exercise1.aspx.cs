using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MyFirstApplication
{
    public partial class Exercise1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void cmdSubmit_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                //Step 2
                Session["FullName"] = txtFullName.Text;
                Session["EmailID"] = txtEmailID.Text;
                Session["Password"] = txtPassword.Text;
                Response.Redirect("UserDetails.aspx");
            }
        }

        public void SalaryGreaterThan5000(object sender, ServerValidateEventArgs e)
        {
            if (int.Parse(e.Value) > 5000)
            {
                e.IsValid = true;
            }
            else
            {
                e.IsValid = false;
            }
        }
    }
}