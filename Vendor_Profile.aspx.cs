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
            SqlCommand cmd = new SqlCommand("select * from vendor where Id='" + Session["l_id"] + "'", con);
            con.Open();
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            sda.Fill(ds);
            Image1.ImageUrl = ds.Tables[0].Rows[0]["upload_pic"].ToString();
            Label1.Text = ds.Tables[0].Rows[0]["name"].ToString();
            Label2.Text = ds.Tables[0].Rows[0]["age"].ToString();
            Label3.Text = ds.Tables[0].Rows[0]["gender"].ToString();
            Label4.Text = ds.Tables[0].Rows[0]["dob"].ToString();
            Label5.Text = ds.Tables[0].Rows[0]["name_of_company"].ToString();
            Label6.Text = ds.Tables[0].Rows[0]["catagory"].ToString();
            Label7.Text = ds.Tables[0].Rows[0]["subcatagory"].ToString();
            Label8.Text = ds.Tables[0].Rows[0]["services"].ToString();
            Label9.Text = ds.Tables[0].Rows[0]["include_meterials"].ToString();
            Label10.Text = ds.Tables[0].Rows[0]["num_of_staff"].ToString();
            Label11.Text = ds.Tables[0].Rows[0]["charge_per_hr"].ToString();
            Label12.Text = ds.Tables[0].Rows[0]["payment_type"].ToString();
            Label13.Text = ds.Tables[0].Rows[0]["first_deposite"].ToString();
            Label14.Text = ds.Tables[0].Rows[0]["notice_of_advbook"].ToString();
            Label15.Text = ds.Tables[0].Rows[0]["link_of_portfolio"].ToString();
            Label16.Text = ds.Tables[0].Rows[0]["email"].ToString();
            Label17.Text = ds.Tables[0].Rows[0]["phone"].ToString();
            Label18.Text = ds.Tables[0].Rows[0]["alt_phone"].ToString();
            Label19.Text = ds.Tables[0].Rows[0]["state"].ToString();
            Label20.Text = ds.Tables[0].Rows[0]["city"].ToString();
            Label21.Text = ds.Tables[0].Rows[0]["address"].ToString();
            Label22.Text = ds.Tables[0].Rows[0]["pin"].ToString();
            Label22.Text = ds.Tables[0].Rows[0]["prefered_id"].ToString();
            con.Close();
        }
        catch (Exception)
        {
            Response.Redirect("404.aspx");
        } 
    }
    protected void Button1_Clicked(object sender, EventArgs e)
    {
        Response.Redirect("Edit_Vendor_Profile.aspx");
    }
    public void checkSession()
    {
        if (string.IsNullOrEmpty(Convert.ToString(Session["l_id"])))
        {
            Response.Redirect("404.aspx");
        }
    }
}