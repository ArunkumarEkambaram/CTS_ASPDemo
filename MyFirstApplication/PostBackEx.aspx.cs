using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MyFirstApplication
{
    public partial class PastBackEx : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //if (!IsPostBack)
            //{
            //    Response.Write("Page Load");
            //}
            //else
            //{
            //    Response.Write("Postback Occurred");
            //}

            if (!IsPostBack)
            {
                TextBox Name = (TextBox)Page.PreviousPage.FindControl("txtFullName");
                Response.Write(Name.Text);
            }
        }

        protected void btnClick_Click(object sender, EventArgs e)
        {
            Response.Write("Button CLicked");
        }

        protected void ddlState_SelectedIndexChanged(object sender, EventArgs e)
        {
            ddlCity.Items.Clear();
            ddlCity.Items.Add("--Select--");
            if (ddlState.SelectedValue == "1")
            {
                ddlCity.Items.Add(new ListItem("Chennai", "1"));
                ddlCity.Items.Add(new ListItem("Madurai", "2"));
            }
            else if (ddlState.SelectedValue == "2")
            {
                ddlCity.Items.Add("Amaravathi");
                ddlCity.Items.Add("Vijayawada");
            }
        }
    }
}