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
                this.FileUpload1.SaveAs(p1 + "/" + TextBox5.Text + p2);
                p1 = ("Customer_Profile/" + TextBox5.Text + p2);
                obj.CustomerRegister(TextBox1.Text.Trim(), TextBox2.Text.Trim(), TextBox3.Text.Trim(), DropDownList3.SelectedItem.Text, TextBox4.Text.Trim(), TextBox5.Text.Trim(), TextBox6.Text.Trim(), TextBox7.Text.Trim(), DropDownList1.SelectedItem.Text, DropDownList2.SelectedItem.Text, TextBox8.Text.Trim(), TextBox9.Text.Trim(), p1, TextBox10.Text.Trim(), TextBox11.Text.Trim());
                if (obj.flag == 1)
                {
                    TextBox1.Text = "";
                    TextBox2.Text = "";
                    TextBox3.Text = "";
                    TextBox4.Text = "";
                    TextBox5.Text = "";
                    TextBox6.Text = "";
                    TextBox7.Text = "";
                    TextBox8.Text = "";
                    TextBox9.Text = "";
                    TextBox10.Text = "";
                    TextBox11.Text = "";
                    Response.Redirect("Thank.aspx");
                }
                else
                {
                    Label2.Visible = true;
                }
            }
        }
        else
        {
            Response.Write("<script>alert('File is Missing')</script>");
        }
    }
    protected void CheckEmail(object sender, EventArgs e)
    {
        obj.EmailExist(TextBox5.Text.Trim());
        if (obj.flag == 1)
        {
            Label1.Visible = true;
            //Response.Write("<script>alert('Email Already Exists!')</script>");
        }
        else
        {
            Label1.Visible = false;
        }
    }
}