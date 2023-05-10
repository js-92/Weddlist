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
    Class1 obj = new Class1();
    string strConnString = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
    protected void Page_Load(object sender, EventArgs e)
    {
        checkSession();
    }
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(strConnString);
        con.Open();
        SqlCommand cmd1 = new SqlCommand("select Id from state where sname= '" + DropDownList1.SelectedItem + "'", con);
        string id = Convert.ToString(cmd1.ExecuteScalar());
        SqlCommand cmd = new SqlCommand("select cityname from city where sid='" + id + "' ", con);
        SqlDataReader dr = cmd.ExecuteReader();
        DropDownList2.DataSource = dr;
        DropDownList2.Items.Clear();
        DropDownList2.Items.Add(".....Please Select city...");
        DropDownList2.DataTextField = "cityname";
        DropDownList2.DataBind();
        con.Close();
    }
    protected void DropDownList3_SelectedIndexChanged(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(strConnString);
        con.Open();
        SqlCommand cmd = new SqlCommand("select SubCategoryName from SubCategory where CategoryName='" + DropDownList3.SelectedItem + "' ", con);
        SqlDataReader dr = cmd.ExecuteReader();
        DropDownList4.DataSource = dr;
        DropDownList4.Items.Clear();
        DropDownList4.Items.Add(".....Please Select SubCatagory...");
        DropDownList4.DataTextField = "SubCategoryName";
        DropDownList4.DataBind();
        con.Close();
    }
    protected void Button1_Clicked(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(strConnString);
        SqlCommand cmd = new SqlCommand("select * from vendor where state='" + DropDownList1.SelectedItem.Text + "' AND  city='" + DropDownList2.SelectedItem.Text + "' AND catagory='" + DropDownList3.SelectedItem.Text + "' AND subcatagory='" + DropDownList4.SelectedItem.Text + "' ", con);
        SqlDataAdapter sda = new SqlDataAdapter(cmd);
        DataSet ds = new DataSet();
        con.Open();
        cmd.ExecuteScalar();
        sda.Fill(ds);
        Repeater1.DataSource = ds.Tables[0];
        Repeater1.DataBind();
        con.Close();
    }
    //protected void Button2_Clicked(object sender, EventArgs e)
    //{
    //    Button btn = (Button)sender;
    //    string Id = btn.CommandArgument.ToString();
    //    Response.Redirect("View_Vendor.aspx?Id=" + Id);
    //}
    public void checkSession()
    {
        if (string.IsNullOrEmpty(Convert.ToString(Session["l_id"])))
        {
            Response.Redirect("404.aspx");
        }
    }
}