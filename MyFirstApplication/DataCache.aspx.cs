using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Caching;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MyFirstApplication
{
    public partial class DataCache : System.Web.UI.Page
    {
        private SqlConnection conObj = null;
        private SqlCommand cmdObj = null;

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            conObj = new SqlConnection(ConfigurationManager.ConnectionStrings["HRCon"].ConnectionString);
            SqlDataAdapter adapter = new SqlDataAdapter("Select cEmployeeCode,vFirstName,cCity,cState from Employee", conObj);           
            DataSet dataSet = new DataSet();
            adapter.Fill(dataSet, "Employee");

            //Cache["UserID"] = txtUserID.Text;
            Cache.Insert("UserID", txtUserID.Text, null, Cache.NoAbsoluteExpiration, new TimeSpan(0, 0, 10));
            Cache.Insert("EmployeeDS", dataSet, null, Cache.NoAbsoluteExpiration, new TimeSpan(0, 0, 10)); ;

            Response.Redirect("CachingExample.aspx");

        }
    }
}