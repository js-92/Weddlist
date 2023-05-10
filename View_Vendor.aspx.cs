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
    }
    protected void Button1_Clicked(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(strConnString);
        SqlCommand cmd=new SqlCommand("insert into orders values(@customer_email,@event_date,@message,@vendor_email,@vendor_catagory,@vendor_subcatagory,@status)",con);
        con.Open();
        cmd.Parameters.AddWithValue("@customer_email",TextBox1.Text);
        cmd.Parameters.AddWithValue("@event_date", TextBox2.Text);
        cmd.Parameters.AddWithValue("@message",TextBox3.Text );
        cmd.Parameters.AddWithValue("@vendor_email", Label16.Text);
        cmd.Parameters.AddWithValue("@vendor_catagory", Label17.Text);
        cmd.Parameters.AddWithValue("@vendor_subcatagory", Label18.Text);
        cmd.Parameters.AddWithValue("@status","pending");
        cmd.ExecuteNonQuery();
        con.Close();
        Response.Write("<script>alert('Vendor Hired!')</script>");
    }
    protected void Button2_Clicked(object sender, EventArgs e)
    {
        int Id = Convert.ToInt32(Request.QueryString["Id"]);
        SqlConnection con = new SqlConnection(strConnString);
        SqlCommand cmd = new SqlCommand("select email,catagory,subcatagory from vendor where Id=" + Id, con);
        SqlDataAdapter sda = new SqlDataAdapter(cmd);
        DataSet ds = new DataSet();
        con.Open();
        cmd.ExecuteScalar();
        sda.Fill(ds);
        Label16.Text = Convert.ToString(ds.Tables[0].Rows[0]["email"]);
        Label17.Text = Convert.ToString(ds.Tables[0].Rows[0]["catagory"]);
        Label18.Text = Convert.ToString(ds.Tables[0].Rows[0]["subcatagory"]);
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