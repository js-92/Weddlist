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

public partial class MainMasterPage : System.Web.UI.MasterPage
{
    Class1 obj = new Class1();
    string strConnString = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    public void Button1_Click(object sender, EventArgs e)
    {
        string[] type=new string[2];
        type = obj.login(TextBox1.Text.Trim(), TextBox2.Text.Trim());
        if (type[0] == "admin")
        {
            Session.Add("type", "admin");
            Session.Add("l_id", type[1]);
            Response.Redirect("Admin_Index.aspx");
        }
        else if (type[0] == "customer")
        {
            Session.Add("type", "customer");
            Session.Add("l_id", type[1]);
            Response.Redirect("Customer_Index.aspx");
        }
        else if (type[0] == "vendor")
        {
            Session.Add("type", "vendor");
            Session.Add("l_id", type[1]);
            Response.Redirect("Vendor_Index.aspx");
        }
        else
        {
            Response.Write("<script>alert('invalid uname or password')</script>");
        }

    }
}
