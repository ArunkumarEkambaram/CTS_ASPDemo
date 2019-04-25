using System;
using System.Collections.Generic;
using System.Configuration; //Access Web.Config
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MyFirstApplication
{
    public partial class NewEmployee : System.Web.UI.Page
    {
        private SqlConnection conObj = null;
        private SqlCommand cmdObj = null;

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void cmdSubmit_Click(object sender, EventArgs e)
        {
            conObj = new SqlConnection(ConfigurationManager.ConnectionStrings["HRCon"].ConnectionString);
            cmdObj = new SqlCommand("usp_insertEmp", conObj);
            cmdObj.CommandType = CommandType.StoredProcedure;
            cmdObj.Parameters.AddWithValue("@FirstName", txtFirstName.Text);
            cmdObj.Parameters.AddWithValue("@LastName", txtLastName.Text);
            cmdObj.Parameters.AddWithValue("@Age", int.Parse(txtAge.Text));
            cmdObj.Parameters.AddWithValue("@EmailID", txtEmailID.Text);
            if (conObj.State == ConnectionState.Closed)
            {
                conObj.Open();
            }
            int result = cmdObj.ExecuteNonQuery();
            if (result > 0)
            {
                lblMessage.Text = "New Employee Created";
            }
            else
            {
                lblMessage.Text = "Error in Code";
            }
            if (conObj != null)
            {
                conObj.Close();
            }
        }
    }
}