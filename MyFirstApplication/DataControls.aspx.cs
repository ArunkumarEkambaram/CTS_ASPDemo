using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MyFirstApplication
{
    public partial class DataControls : System.Web.UI.Page
    {
        private SqlConnection conObj = null;
        private SqlDataAdapter adapter = null;
        private DataSet dataSet = null;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                //Bound Dropdownlist               
                ddlCity.DataSource = GetUniqueCities();                
                ddlCity.DataTextField = "cCity";
                ddlCity.DataBind();
            }            
        }

        public DataTable GetEmployee()
        {
            conObj = new SqlConnection(ConfigurationManager.ConnectionStrings["HRCon"].ConnectionString);
            adapter = new SqlDataAdapter("Select cEmployeeCode,vFirstName,cCity,cState from Employee Where cCity=@cCity", conObj);
            adapter.SelectCommand.Parameters.AddWithValue("@cCity", ddlCity.SelectedItem.Text);
            dataSet = new DataSet();
            adapter.Fill(dataSet, "Employee");
            return dataSet.Tables["Employee"];
        }

        protected void btnSearch_Click(object sender, EventArgs e)
        {           
            gvDisplayEmployee.DataSource = GetEmployee();
            gvDisplayEmployee.DataBind();
        }   
        
        public DataTable GetUniqueCities()
        {
            conObj = new SqlConnection(ConfigurationManager.ConnectionStrings["HRCon"].ConnectionString);
            adapter = new SqlDataAdapter("Select distinct cCity from Employee", conObj);
            dataSet = new DataSet();
            adapter.Fill(dataSet);
            return dataSet.Tables[0];
        }
    }
}