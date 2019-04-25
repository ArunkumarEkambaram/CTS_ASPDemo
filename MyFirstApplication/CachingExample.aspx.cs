using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MyFirstApplication
{
    public partial class CachingExample : System.Web.UI.Page
    {
       

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Cache["UserID"] != null)
            {
                lblUser.Text = Cache["UserID"].ToString();
                gvEmp.DataSource = (DataSet)Cache["EmployeeDS"];
                gvEmp.DataBind();
            }
            else
            {
                lblUser.Text = "Cache Expires";
            }
        }
    }
}