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
        int Id = Convert.ToInt32(Session["l_id"]);
        SqlConnection con = new SqlConnection(strConnString);
        con.Open();
        SqlCommand cmd = new SqlCommand("select email from customer where Id=" + Id, con);
        string oldemail = Convert.ToString(cmd.ExecuteScalar());
        Label1.Text = oldemail;
        con.Close();
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
    protected void Button1_Click(object sender, EventArgs e)
    {
        if (FileUpload1.HasFile == true)
        {
            String contenttype = FileUpload1.PostedFile.ContentType;
            if (contenttype == "image/jpeg" || contenttype == "image/png")
            {
                string p1 = Server.MapPath("Customer_Profile");
                string p2 = System.IO.Path.GetExtension(FileUpload1.PostedFile.FileName);
                this.FileUpload1.SaveAs(p1 + "/" + Label1.Text + p2);
                p1 = ("Customer_Profile/" + Label1.Text + p2);
                obj.UpdateCustomer(TextBox1.Text.Trim(), TextBox2.Text.Trim(), TextBox3.Text.Trim(), DropDownList3.SelectedItem.Text, TextBox4.Text.Trim(), Label1.Text, TextBox6.Text.Trim(), TextBox7.Text.Trim(), DropDownList1.SelectedItem.Text, DropDownList2.SelectedItem.Text, TextBox8.Text.Trim(), TextBox9.Text.Trim(), p1);
                if (obj.flag == 1)
                {
                    TextBox1.Text = "";
                    TextBox2.Text = "";
                    TextBox3.Text = "";
                    TextBox4.Text = "";
                    TextBox6.Text = "";
                    TextBox7.Text = "";
                    TextBox8.Text = "";
                    TextBox9.Text = "";
                    Response.Write("<script>alert('Data Edited Succesfully')</script>");
                }
                else
                {
                    Response.Write("<script>alert('Data Do Not Edited Succesfully')</script>");
                }
            }
        }
        else
        {
            Response.Write("<script>alert('File is Missing')</script>");
        }
    }
    public void checkSession()
    {
        if (string.IsNullOrEmpty(Convert.ToString(Session["l_id"])))
        {
            Response.Redirect("404.aspx");
        }
    }
}