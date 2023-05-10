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
        //try
        //{
            SqlConnection con = new SqlConnection(strConnString);
            con.Open();
            SqlCommand cmd = new SqlCommand("select email from customer where Id='"+ Session["l_id"]+"' ", con);
            string email = Convert.ToString(cmd.ExecuteScalar());
            Label3.Text = email;
            SqlCommand cmd1 = new SqlCommand("select * from queries where customer_email=@email", con);
            cmd1.Parameters.AddWithValue("@email", email);
            SqlDataAdapter sda = new SqlDataAdapter(cmd1);
            DataSet ds = new DataSet();
            cmd1.ExecuteScalar();
            sda.Fill(ds);
            Repeater1.DataSource = ds.Tables[0];
            Repeater1.DataBind();
        
            con.Close();
        //}
        //catch(Exception)
        //{
        //    Response.Write("<script>alert('Invalid Parameters');window.location.replace('Index.aspx')</script>");
        //}
    }
    protected void Button1_Clicked(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(strConnString);
        SqlCommand cmd = new SqlCommand("insert into queries values(@customer_name,@customer_email,@vendor_catagory,@query,@answer)", con);
        con.Open();
        cmd.Parameters.AddWithValue("@customer_name",TextBox1.Text);
        cmd.Parameters.AddWithValue("@customer_email",Label3.Text);
        cmd.Parameters.AddWithValue("@vendor_catagory",DropDownList1.SelectedItem.Text);
        cmd.Parameters.AddWithValue("@query",TextBox3.Text);
        cmd.Parameters.AddWithValue("@answer", "pending");
        cmd.ExecuteNonQuery();
        con.Close();
        Response.Write("<script>alert('Query Submitted!')</script>");
    }
    public void checkSession()
    {
        if (string.IsNullOrEmpty(Convert.ToString(Session["l_id"])))
        {
            Response.Redirect("404.aspx");
        }
    }
}