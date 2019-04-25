using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace MyFirstApplication
{
    public partial class Page1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection("Data Source=arun-pc;initial catalog=hr;integrated security=true");
            SqlDataAdapter adapter = new SqlDataAdapter("Select * from Position", con);
            DataSet ds = new DataSet();
            adapter.Fill(ds, "Position");
            gvPosition.DataSource = ds.Tables["Position"];
            gvPosition.DataBind();
        }
    }
}