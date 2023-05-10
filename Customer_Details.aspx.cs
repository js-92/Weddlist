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
        int Id = Convert.ToInt32(Request.QueryString["Id"]);
        Response.Redirect("Edit_Customer_Detail.aspx?Id="+Id);
    }
    protected void Button2_Clicked(object sender, EventArgs e)
    {

    }
    public void checkSession()
    {
        if (string.IsNullOrEmpty(Convert.ToString(Session["l_id"])))
        {
            Response.Redirect("404.aspx");
        }
    }
}