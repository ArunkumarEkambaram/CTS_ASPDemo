using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace MyFirstApplication
{
    /// <summary>
    /// Summary description for ImageHandler1
    /// </summary>
    public class ImageHandler1 : IHttpHandler
    {

        public void ProcessRequest(HttpContext context)
        {
            string id = context.Request.QueryString["Id"].ToString();
            SqlConnection conObj = new SqlConnection(ConfigurationManager.ConnectionStrings["ECOM"].ConnectionString);
            SqlCommand cmd = new SqlCommand("Select ProductImage from ProductDetails Where ID=@Id", conObj);
            cmd.Parameters.AddWithValue("@Id", id);
            if (conObj.State == ConnectionState.Closed)
            {
                conObj.Open();
            }
            SqlDataReader rdr = cmd.ExecuteReader(CommandBehavior.CloseConnection);
            if (rdr.HasRows)
            {
                rdr.Read();
            }
            context.Response.BinaryWrite((byte[])rdr["ProductImage"]);
            context.Response.End();
            conObj.Close();
        }

        public bool IsReusable
        {
            get
            {
                return false;
            }
        }
    }
}