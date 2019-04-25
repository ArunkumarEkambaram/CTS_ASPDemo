using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MyFirstApplication
{
    public partial class ViewStateEx : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnChange_Click(object sender, EventArgs e)
        {
            lbl1.Text = "ASP.NET";
            lbl2.Text = "Java";
        }

        protected void btnNothing_Click(object sender, EventArgs e)
        {

        }
    }
}