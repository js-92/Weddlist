using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data;
using System.Data.Sql;
using System.Data.SqlClient;
using System.Data.SqlTypes;

public partial class _Default : System.Web.UI.Page
{
    string strConnString = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
    protected void Page_Load(object sender, EventArgs e)
    {
        checkSession();
    }
    protected void Button1_Clicked(object sender,EventArgs e)
    {
        int Id = Convert.ToInt32(Request.QueryString["Id"]);
        SqlConnection con = new SqlConnection(strConnString);
        con.Open();
        SqlCommand cmd = new SqlCommand("delete from vendor where Id="+Id, con);
        cmd.ExecuteNonQuery();
        con.Close();
    }
    protected void Button2_Clicked(object sender, EventArgs e)
    {
        int Id = Convert.ToInt32(Request.QueryString["Id"]);
        Response.Redirect("Edit_Vendor_Detail.aspx?Id=" + Id);
    }
    public void checkSession()
    {
        if (string.IsNullOrEmpty(Convert.ToString(Session["l_id"])))
        {
            Response.Redirect("404.aspx");
        }
    }
}