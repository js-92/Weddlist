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
            SqlCommand cmd = new SqlCommand("select * from orders where status='pending' AND vendor_email=@vendor_email", con);
            cmd.Parameters.AddWithValue("@vendor_email", email);
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            cmd.ExecuteScalar();
            sda.Fill(ds);
            Repeater1.DataSource = ds.Tables[0];
            Repeater1.DataBind();
            con.Close();
        }
        catch(Exception){
            Response.Redirect("404.aspx");
        }      
    }
    protected void Button1_Clicked(object sender, EventArgs e)
    {
        Button btn = (Button)sender;
        string email = btn.CommandArgument.ToString();
        SqlConnection con = new SqlConnection(strConnString);
        SqlCommand cmd = new SqlCommand("update orders set status='confirmed' where customer_email=@customer_email", con);
        cmd.Parameters.AddWithValue("customer_email", email);
        con.Open();
        cmd.ExecuteNonQuery();
        con.Close();
    }
    public void checkSession()
    {
        if (string.IsNullOrEmpty(Convert.ToString(Session["l_id"])))
        {
            Response.Redirect("404.aspx");
        }
    }
}