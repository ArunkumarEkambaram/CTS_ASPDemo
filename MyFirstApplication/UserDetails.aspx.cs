using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MyFirstApplication
{
    public partial class UserDetails : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.Cookies["UserId"] != null && Request.Cookies["Password"] != null)
            {
                txtUserId.Attributes.Add("value", Request.Cookies["UserId"].Value);
                txtPassword.Attributes.Add("value", Request.Cookies["Password"].Value);
                // txtUserId.Text = Request.Cookies["UserId"].Value;
            }
        }

        protected void cmdSignIn_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                if (chkRemember.Checked)
                {
                    Response.Cookies.Add(new HttpCookie("UserId", txtUserId.Text));
                    Response.Cookies.Add(new HttpCookie("Password", txtPassword.Text));
                    Response.Cookies["UserId"].Expires = DateTime.Now.AddDays(2);
                    Response.Cookies["Password"].Expires = DateTime.Now.AddDays(2);
                }
                else
                {
                    Response.Cookies["UserId"].Expires = DateTime.Now.AddDays(-1);
                    Response.Cookies["Password"].Expires = DateTime.Now.AddDays(-1);
                }

                //Step 3
                string emailId = Session["EmailID"].ToString();
                string pass = Session["Password"].ToString();

                if (emailId == txtUserId.Text && pass == txtPassword.Text)
                {
                    Response.Redirect("HomePage.aspx");
                }

            }
        }

        protected void btnReset_Click(object sender, EventArgs e)
        {
            Response.Cookies["UserId"].Expires = DateTime.Now.AddDays(-1);
            Response.Cookies["Password"].Expires = DateTime.Now.AddDays(-1);
            Response.Redirect("UserDetails.aspx");
            txtUserId.Text = "";
            txtPassword.Text = "";
        }
    }
}