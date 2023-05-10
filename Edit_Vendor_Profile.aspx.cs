﻿using System;
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
        checkSession();
        int Id = Convert.ToInt32(Session["l_id"]);
        SqlConnection con = new SqlConnection(strConnString);
        con.Open();
        SqlCommand cmd = new SqlCommand("select email from vendor where Id=" + Id, con);
        string oldemail = Convert.ToString(cmd.ExecuteScalar());
        Label1.Text = oldemail;
        con.Close();
    }
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(strConnString);
        con.Open();
        SqlCommand cmd = new SqlCommand("select SubCategoryName from SubCategory where CategoryName='" + DropDownList1.SelectedItem + "' ", con);
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
        if (FileUpload1.HasFile == true)
        {
            String contenttype = FileUpload1.PostedFile.ContentType;
            if (contenttype == "image/jpeg" || contenttype == "image/png")
            {
                string p1 = Server.MapPath("Vendor_Profile");
                string p2 = System.IO.Path.GetExtension(FileUpload1.PostedFile.FileName);
                this.FileUpload1.SaveAs(p1 + "/" + Label1.Text + p2);
                p1 = ("Vendor_Profile/" + Label1.Text + p2);

                string p3 = Server.MapPath("Vendor_Id");
                string p4 = System.IO.Path.GetExtension(FileUpload2.PostedFile.FileName);
                this.FileUpload2.SaveAs(p3 + "/" + Label1.Text + p4);
                p3 = ("Vendor_Id/" + Label1.Text + p4);

                obj.UpdateVendor(TextBox1.Text.Trim(), TextBox2.Text.Trim(), RadioButtonList1.Text, TextBox3.Text.Trim(), TextBox4.Text.Trim(), DropDownList1.SelectedItem.Text, DropDownList2.SelectedItem.Text, TextBox5.Text.Trim(), RadioButtonList2.Text, TextBox6.Text.Trim(), TextBox7.Text.Trim(), DropDownList3.SelectedItem.Text, TextBox8.Text.Trim(), DropDownList4.SelectedItem.Text, TextBox9.Text.Trim(), Label1.Text, TextBox11.Text.Trim(), TextBox12.Text.Trim(), DropDownList5.SelectedItem.Text, DropDownList6.SelectedItem.Text, TextBox13.Text.Trim(), TextBox14.Text.Trim(), p1, DropDownList7.SelectedItem.Text, p3);
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
                    TextBox11.Text = "";
                    Response.Write("<script>alert('Data Edited Succesfully')</script>");
                }
                else
                {
                    Response.Write("<script>alert('Data Do  Not Edited Succesfully')</script>");
                    //Label2.Visible = true;
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