using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MyFirstApplication
{
    public partial class HomePage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //Step 3
            if (Session["FullName"] != null || Session["UserID"] != null)
            {
                lblUser.Text = Session["FullName"].ToString();
            }
            else
            {
                Response.Redirect("UserDetails.aspx");
            }
        }

        protected void cmdSignOut_Click(object sender, EventArgs e)
        {
            //Session.Remove("UserID");
            //Session.Remove("Password");
            //Step 4
            Session.RemoveAll();
            if(Session["UserId"]==null)
            {
                Response.Redirect("UserDetails.aspx");
            }
        }
    }
}