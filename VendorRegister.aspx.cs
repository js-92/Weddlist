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
    Class1 obj = new Class1();
    string strConnString = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(strConnString);
        con.Open();
        SqlCommand cmd = new SqlCommand("select SubCategoryName from SubCategory where CategoryName='"+DropDownList1.SelectedItem+"' ", con);
        SqlDataReader dr = cmd.ExecuteReader();
        DropDownList2.DataSource = dr;
        DropDownList2.Items.Clear();
        DropDownList2.Items.Add(".....Please Select SubCatagory...");
        DropDownList2.DataTextField = "SubCategoryName";
        DropDownList2.DataBind();
        con.Close();
    }
    protected void DropDownList5_SelectedIndexChanged(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(strConnString);
        con.Open();
        SqlCommand cmd1 = new SqlCommand("select Id from state where sname= '" + DropDownList5.SelectedItem + "'", con);
        string id = Convert.ToString(cmd1.ExecuteScalar());
        SqlCommand cmd = new SqlCommand("select cityname from city where sid='" + id + "' ", con);
        SqlDataReader dr = cmd.ExecuteReader();
        DropDownList6.DataSource = dr;
        DropDownList6.Items.Clear();
        DropDownList6.Items.Add(".....Please Select city...");
        DropDownList6.DataTextField = "cityname";
        DropDownList6.DataBind();
        con.Close();
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        string upload_pic = Server.MapPath("Vendor_Profile");
        this.FileUpload1.SaveAs(upload_pic + "/" + this.FileUpload1.FileName);
        string upload_id = Server.MapPath("Vendor_Id");
        this.FileUpload2.SaveAs(upload_id + "/" + this.FileUpload2.FileName);

        obj.VendorRegister(TextBox1.Text.Trim(), TextBox2.Text.Trim(), RadioButtonList1.Text, TextBox3.Text.Trim(), TextBox4.Text.Trim(), DropDownList1.SelectedItem.Text, DropDownList2.SelectedItem.Text, TextBox5.Text.Trim(), RadioButtonList2.Text, TextBox6.Text.Trim(), TextBox7.Text.Trim(), DropDownList3.SelectedItem.Text, TextBox8.Text.Trim(), DropDownList4.SelectedItem.Text, TextBox9.Text.Trim(), TextBox10.Text.Trim(), TextBox11.Text.Trim(), TextBox12.Text.Trim(), DropDownList5.SelectedItem.Text, DropDownList6.SelectedItem.Text, TextBox13.Text.Trim(), TextBox14.Text.Trim(), upload_pic, DropDownList7.SelectedItem.Text, upload_id + "/" + this.FileUpload2.FileName, TextBox15.Text.Trim(), TextBox16.Text.Trim());
        if (obj.flag == 1)
        {
            Label12.Visible = true;
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
            TextBox12.Text = "";
            TextBox13.Text = "";
            TextBox14.Text = "";
            TextBox15.Text = "";
            TextBox16.Text = "";
        }
        else
        {
            Label13.Visible = true;
        }
    }
}