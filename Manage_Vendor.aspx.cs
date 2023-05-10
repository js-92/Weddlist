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
        SqlConnection con = new SqlConnection(strConnString);
        SqlCommand cmd = new SqlCommand("select upload_pic,name,email,phone,Id from vendor", con);
        SqlDataAdapter sda = new SqlDataAdapter(cmd);
        DataSet ds = new DataSet();
        con.Open();
        cmd.ExecuteScalar();
        sda.Fill(ds);
        Repeater1.DataSource = ds.Tables[0];
        Repeater1.DataBind();
        con.Close();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Button btn = (Button)sender;
        string Id = btn.CommandArgument.ToString();
        Response.Redirect("Vendor_Details.aspx?Id=" + Id );
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(strConnString);
        Button btn = (Button)sender;
        string Id = btn.CommandArgument.ToString();
        con.Open();
        SqlCommand cmd = new SqlCommand("delete from vendor where Id=" + Id, con);
        cmd.ExecuteNonQuery();
        SqlCommand cmd1 = new SqlCommand("delete from login where l_id=" + Id, con);
        cmd1.ExecuteNonQuery();
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