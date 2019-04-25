using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace MyFirstApplication
{
    public partial class DataControlsEx2 : System.Web.UI.Page
    {
        private SqlConnection conObj = null;
        private SqlDataAdapter adapter = null;
        private DataSet dataSet = null;

        protected void Page_Load(object sender, EventArgs e)
        {
           if(!IsPostBack)
            {
                DataSet ds = GetEmployeeData();
                dlProducts.DataSource = ds.Tables["Employee"];
                dlProducts.DataBind();
            }
        }

        public DataSet GetEmployeeData()
        {
            conObj = new SqlConnection(ConfigurationManager.ConnectionStrings["HRCon"].ConnectionString);
            adapter = new SqlDataAdapter("Select cEmployeeCode,vFirstName,cCity,cState from Employee", conObj);
            dataSet = new DataSet();
            adapter.Fill(dataSet, "Employee");
            return dataSet;
        }

        protected void dlProducts_ItemCommand(object source, DataListCommandEventArgs e)
        {
            if(e.CommandName=="Details")
            {
                Response.Redirect("EmployeeProfilePage.aspx?EmpID="+e.CommandArgument);
            }
        }
    }
}