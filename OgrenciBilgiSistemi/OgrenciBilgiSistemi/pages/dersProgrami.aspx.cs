using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OgrenciBilgiSistemi.pages
{
    public partial class dersProgrami : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlCommand command = new SqlCommand();
            SqlDataAdapter adapter = new SqlDataAdapter();
            DataSet ds = new DataSet();

            SqlConnection connection = new SqlConnection();
            string strcon = ConfigurationManager.ConnectionStrings["OgrenciBilgiSistemiConnectionString"].ConnectionString;
            connection.ConnectionString = strcon;
            string ogrenciNo = Session["ogrenciNo"].ToString();
            command.Parameters.Add(new SqlParameter("@no", SqlDbType.VarChar)).Value = ogrenciNo.ToString();
            connection.Open();
            command.Connection = connection;
            command.CommandType = CommandType.StoredProcedure;
            command.CommandText = "dersProgrami";
            adapter = new SqlDataAdapter(command);
            adapter.Fill(ds);
            connection.Close();
            GridView1.DataSource = ds.Tables[0];
            GridView1.DataBind();
        }
    }
}