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
            SqlCommand cmd = new SqlCommand("select * from customer where Id='" + Session["l_id"] + "'", con);
            con.Open();
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            sda.Fill(ds);
            Image1.ImageUrl = ds.Tables[0].Rows[0]["profile_pic"].ToString();
            Label1.Text = ds.Tables[0].Rows[0]["first_name"].ToString();
            Label2.Text = ds.Tables[0].Rows[0]["uname"].ToString();
            Label3.Text = ds.Tables[0].Rows[0]["email"].ToString();
            Label4.Text = ds.Tables[0].Rows[0]["phone"].ToString();
            Label5.Text = ds.Tables[0].Rows[0]["age"].ToString();
            Label6.Text = ds.Tables[0].Rows[0]["gender"].ToString();
            Label7.Text = ds.Tables[0].Rows[0]["dob"].ToString();
            Label8.Text = ds.Tables[0].Rows[0]["alt_phone"].ToString();
            Label9.Text = ds.Tables[0].Rows[0]["state"].ToString();
            Label10.Text = ds.Tables[0].Rows[0]["city"].ToString();
            Label11.Text = ds.Tables[0].Rows[0]["address"].ToString();
            con.Close();
        }
        catch (Exception)
        {
            Response.Redirect("404.aspx");
        } 
    }
    protected void Button1_Clicked(object sender, EventArgs e)
    {
        Response.Redirect("Edit_Customer_Profile.aspx");
    }
    public void checkSession()
    {
        if (string.IsNullOrEmpty(Convert.ToString(Session["l_id"])))
        {
            Response.Redirect("404.aspx");
        }
    }
}