using MyFirstApplication.ServiceReference1;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MyFirstApplication
{
    public partial class GetPositionData : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {            
            MyServiceSoapClient obj = new MyServiceSoapClient();
            DataSet ds = obj.GetPosition();
            gvPosition.DataSource = ds.Tables[0];
            gvPosition.DataBind();
        }
    }
}