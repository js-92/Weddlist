using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.Sql;
using System.Data.SqlClient;
using System.Data.SqlTypes;
using System.Configuration;
public partial class _Default : System.Web.UI.Page
{
    string strConnString = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
    protected void Page_Load(object sender, EventArgs e)
    {
        checkSession();
        try
        {
            SqlConnection con = new SqlConnection(strConnString);
            con.Open();
            SqlCommand cmd1 = new SqlCommand("select email from vendor where Id=" + Session["l_id"], con);
            string email = Convert.ToString(cmd1.ExecuteScalar());
            Label1.Text = email;
            con.Close();
        }
        catch (Exception)
        {
            Response.Write("<script>alert('Invalid Parameters');window.location.replace('Index.aspx')</script>");
        }
    }
    public void checkSession()
    {
        if (string.IsNullOrEmpty(Convert.ToString(Session["l_id"])))
        {
            Response.Redirect("404.aspx");
        }
    }
}