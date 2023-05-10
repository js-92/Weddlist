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
            SqlCommand cmd1 = new SqlCommand("select email from customer where Id=" + Session["l_id"], con);
            string email = Convert.ToString(cmd1.ExecuteScalar());
            SqlCommand cmd = new SqlCommand("select * from orders where customer_email=@customer_email", con);
            cmd.Parameters.AddWithValue("@customer_email", email);
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            cmd.ExecuteScalar();
            sda.Fill(ds);
            Repeater1.DataSource = ds.Tables[0];
            Repeater1.DataBind();
            con.Close();
        }
        catch (Exception)
        {
            Response.Redirect("404.aspx");
        } 
    }
    public void checkSession()
    {
        if (string.IsNullOrEmpty(Convert.ToString(Session["l_id"])))
        {
            Response.Write("<script>alert('You have to Login first');window.location.replace('Index.aspx')</script>");
        }
    }
}