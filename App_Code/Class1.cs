using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.Sql;
using System.Data.SqlClient;
using System.Data.SqlTypes;

public class Class1
{
    public int flag = 0;
    SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\v11.0;AttachDbFilename=C:\PROJECTS\WeddingSite\App_Data\Database.mdf;Integrated Security=True");
	public Class1()
	{
		//
		// TODO: Add constructor logic here
		//
	}
    public void CustomerRegister(string first_name, string last_name, string age, string gender, string dob, string email, string phone, string alt_phone,string state,string city, string address, string uname,string profile_pic, string password, string reenterpassword) 
    {
        if (Equals(password, reenterpassword))
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("insert into customer values(@first_name,@last_name,@age,@gender,@dob,@email,@phone,@alt_phone,@state,@city,@address,@uname,@profile_pic,@password,@reenterpassword)", con);
            cmd.Parameters.AddWithValue("@first_name", first_name);
            cmd.Parameters.AddWithValue("@last_name", last_name);
            cmd.Parameters.AddWithValue("@age", age);
            cmd.Parameters.AddWithValue("@gender", gender);
            cmd.Parameters.AddWithValue("@dob", dob);
            cmd.Parameters.AddWithValue("@email", email);
            cmd.Parameters.AddWithValue("@phone", phone);
            cmd.Parameters.AddWithValue("@alt_phone", alt_phone);
            cmd.Parameters.AddWithValue("@state", state);
            cmd.Parameters.AddWithValue("@city", city);            
            cmd.Parameters.AddWithValue("@address", address);
            cmd.Parameters.AddWithValue("@uname", uname);
            cmd.Parameters.AddWithValue("@profile_pic", profile_pic);
            cmd.Parameters.AddWithValue("@password", password);
            cmd.Parameters.AddWithValue("@reenterpassword", reenterpassword);
            cmd.ExecuteNonQuery();
            cmd.CommandText = "select max(Id) from customer";
            int l_id = Convert.ToInt32(cmd.ExecuteScalar());
            SqlCommand cmd1 = new SqlCommand("insert into login values(@l_id,@email,@password,@type)", con);
            cmd1.Parameters.AddWithValue("@l_id", l_id);
            cmd1.Parameters.AddWithValue("@email", email);
            cmd1.Parameters.AddWithValue("@password", password);
            cmd1.Parameters.AddWithValue("@type", "customer");
            cmd1.ExecuteNonQuery();
            flag = 1;
            con.Close();
        }
    }
    public void VendorRegister(string name, string age, string gender, string dob, string name_of_company, string catagory, string subcatagory, string services, string include_meterials, string num_of_staff, string charge_per_hr, string payment_type, string first_deposite, string notice_of_advbook, string link_of_portfolio, string email, string phone, string alt_phone, string state,string city, string address, string pin, string upload_pic, string prefered_id, string upload_id, string password, string reenterpassword)
    {
        if (Equals(password, reenterpassword))
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("insert into vendor values(@name,@age,@gender,@dob,@name_of_company,@catagory,@subcatagory,@services,@include_meterials,@num_of_staff,@charge_per_hr,@payment_type,@first_deposite,@notice_of_advbook,@link_of_portfolio,@email,@phone,@alt_phone,@state,@city,@address,@pin,@upload_pic,@prefered_id,@upload_id,@password,@reenterpassword)", con);
            cmd.Parameters.AddWithValue("@name", name);
            cmd.Parameters.AddWithValue("@age", age);
            cmd.Parameters.AddWithValue("@gender", gender);
            cmd.Parameters.AddWithValue("@dob", dob);

            cmd.Parameters.AddWithValue("@name_of_company", name_of_company);
            cmd.Parameters.AddWithValue("@catagory", catagory);
            cmd.Parameters.AddWithValue("@subcatagory", subcatagory);
            cmd.Parameters.AddWithValue("@services", services);
            cmd.Parameters.AddWithValue("@include_meterials", include_meterials);

            cmd.Parameters.AddWithValue("@num_of_staff", num_of_staff);
            cmd.Parameters.AddWithValue("@charge_per_hr", charge_per_hr);
            cmd.Parameters.AddWithValue("@payment_type", payment_type);
            cmd.Parameters.AddWithValue("@first_deposite", first_deposite);
            cmd.Parameters.AddWithValue("@notice_of_advbook", notice_of_advbook);
            cmd.Parameters.AddWithValue("@link_of_portfolio", link_of_portfolio);

            cmd.Parameters.AddWithValue("@email", email);
            cmd.Parameters.AddWithValue("@phone", phone);
            cmd.Parameters.AddWithValue("@alt_phone", alt_phone);
            cmd.Parameters.AddWithValue("@state", state);
            cmd.Parameters.AddWithValue("@city", city);
            cmd.Parameters.AddWithValue("@address", address);
            cmd.Parameters.AddWithValue("@pin", pin);
            cmd.Parameters.AddWithValue("@upload_pic", upload_pic);
            cmd.Parameters.AddWithValue("@prefered_id", prefered_id);
            cmd.Parameters.AddWithValue("@upload_id", upload_id);
            cmd.Parameters.AddWithValue("@password", password);
            cmd.Parameters.AddWithValue("@reenterpassword", reenterpassword);
            cmd.ExecuteNonQuery();
            cmd.CommandText = "select max(Id) from vendor";
            int l_id = Convert.ToInt32(cmd.ExecuteScalar());
            SqlCommand cmd1 = new SqlCommand("insert into login values(@l_id,@email,@password,@type)", con);
            cmd1.Parameters.AddWithValue("@l_id", l_id);
            cmd1.Parameters.AddWithValue("@email", email);
            cmd1.Parameters.AddWithValue("@password", password);
            cmd1.Parameters.AddWithValue("@type", "vendor");
            cmd1.ExecuteNonQuery();
            flag = 1;
            con.Close();
        }
    }
    public string[] login(string email, string password)
    {
        string[] type = new string[2];
        con.Open();
        SqlCommand cmd = new SqlCommand("select * from login where email=@email and password=@password", con);
        cmd.Parameters.AddWithValue("@email", email);
        cmd.Parameters.AddWithValue("@password", password);
        SqlDataReader sdr = cmd.ExecuteReader();
        if (sdr.Read())
        {
            type[0] = Convert.ToString(sdr["type"]);
            type[1] = Convert.ToString(sdr["l_id"]);
        }
        con.Close();
        return type;
    }
    public void EmailExist(string email)
    {
        con.Open();
        SqlCommand cmd = new SqlCommand("select * from login where email=@email", con);
        cmd.Parameters.AddWithValue("@email", email);
        SqlDataAdapter sda = new SqlDataAdapter(cmd);
        DataSet ds = new DataSet();
        sda.Fill(ds);
        if (ds.Tables[0].Rows.Count > 0)
        {
            flag = 1;
        }
        else
        {
            flag = 0;
        }
        con.Close();
    }
    public void AddAdmin(string AdminId,string Adminpass,string NewAdmin,string NewAdminPass)
    {
        con.Open();
        SqlCommand cmd = new SqlCommand("select * from admin where email=@AdminId and password=@Adminpass", con);
        cmd.Parameters.AddWithValue("@AdminId", AdminId);
        cmd.Parameters.AddWithValue("@Adminpass", Adminpass);
        SqlDataAdapter sda = new SqlDataAdapter(cmd);
        DataSet ds = new DataSet();
        cmd.ExecuteScalar();
        sda.Fill(ds);
        if (ds.Tables[0].Rows.Count>0)
        {
            SqlCommand cmd1 = new SqlCommand("insert into admin values(@NewAdmin,@NewAdminPass)", con);
            cmd1.Parameters.AddWithValue("@NewAdmin", NewAdmin);
            cmd1.Parameters.AddWithValue("@NewAdminPass", NewAdminPass);
            cmd1.ExecuteNonQuery();
            cmd1.CommandText = "select max(Id) from admin";
            int l_id = Convert.ToInt32(cmd1.ExecuteScalar());
            SqlCommand cmd2 = new SqlCommand("insert into login values(@l_id,@NewAdmin,@NewAdminPass,@type)", con);
            cmd2.Parameters.AddWithValue("@l_id", l_id);
            cmd2.Parameters.AddWithValue("@NewAdmin", NewAdmin);
            cmd2.Parameters.AddWithValue("@NewAdminPass", NewAdminPass);
            cmd2.Parameters.AddWithValue("@type","admin");
            cmd2.ExecuteNonQuery();
            flag = 1;
        }
        else
        {
            flag = 0;
        }
        con.Close();
    }
    public void UpdateCustomer(string first_name, string last_name, string age, string gender, string dob, string email, string phone, string alt_phone, string state, string city, string address, string uname, string profile_pic)
    {
            con.Open();
            SqlCommand cmd = new SqlCommand("update customer set first_name=@first_name,last_name=@last_name,age=@age,gender=@gender,dob=@dob,email=@email,phone=@phone,alt_phone=@alt_phone,state=@state,city=@city,address=@address,uname=@uname,profile_pic=@profile_pic where email=@email", con);
            cmd.Parameters.AddWithValue("@first_name", first_name);
            cmd.Parameters.AddWithValue("@last_name", last_name);
            cmd.Parameters.AddWithValue("@age", age);
            cmd.Parameters.AddWithValue("@gender", gender);
            cmd.Parameters.AddWithValue("@dob", dob);
            cmd.Parameters.AddWithValue("@email", email);
            cmd.Parameters.AddWithValue("@phone", phone);
            cmd.Parameters.AddWithValue("@alt_phone", alt_phone);
            cmd.Parameters.AddWithValue("@state", state);
            cmd.Parameters.AddWithValue("@city", city);
            cmd.Parameters.AddWithValue("@address", address);
            cmd.Parameters.AddWithValue("@uname", uname);
            cmd.Parameters.AddWithValue("@profile_pic", profile_pic);
            cmd.ExecuteNonQuery();
            flag = 1;
            con.Close();
    }
    public void UpdateVendor(string name, string age, string gender, string dob, string name_of_company, string catagory, string subcatagory, string services, string include_meterials, string num_of_staff, string charge_per_hr, string payment_type, string first_deposite, string notice_of_advbook, string link_of_portfolio, string email, string phone, string alt_phone, string state, string city, string address, string pin, string upload_pic, string prefered_id, string upload_id)
    {
            con.Open();
            SqlCommand cmd = new SqlCommand("update vendor set name=@name,age=@age,gender=@gender,dob=@dob,name_of_company=@name_of_company,catagory=@catagory,subcatagory=@subcatagory,services=@services,include_meterials=@include_meterials,num_of_staff=@num_of_staff,charge_per_hr=@charge_per_hr,payment_type=@payment_type,first_deposite=@first_deposite,notice_of_advbook=@notice_of_advbook,link_of_portfolio=@link_of_portfolio,email=@email,phone=@phone,alt_phone=@alt_phone,state=@state,city=@city,address=@address,pin=@pin,upload_pic=@upload_pic,prefered_id=@prefered_id,upload_id=@upload_id where email=@email", con);
            cmd.Parameters.AddWithValue("@name", name);
            cmd.Parameters.AddWithValue("@age", age);
            cmd.Parameters.AddWithValue("@gender", gender);
            cmd.Parameters.AddWithValue("@dob", dob);

            cmd.Parameters.AddWithValue("@name_of_company", name_of_company);
            cmd.Parameters.AddWithValue("@catagory", catagory);
            cmd.Parameters.AddWithValue("@subcatagory", subcatagory);
            cmd.Parameters.AddWithValue("@services", services);
            cmd.Parameters.AddWithValue("@include_meterials", include_meterials);

            cmd.Parameters.AddWithValue("@num_of_staff", num_of_staff);
            cmd.Parameters.AddWithValue("@charge_per_hr", charge_per_hr);
            cmd.Parameters.AddWithValue("@payment_type", payment_type);
            cmd.Parameters.AddWithValue("@first_deposite", first_deposite);
            cmd.Parameters.AddWithValue("@notice_of_advbook", notice_of_advbook);
            cmd.Parameters.AddWithValue("@link_of_portfolio", link_of_portfolio);

            cmd.Parameters.AddWithValue("@email", email);
            cmd.Parameters.AddWithValue("@phone", phone);
            cmd.Parameters.AddWithValue("@alt_phone", alt_phone);
            cmd.Parameters.AddWithValue("@state", state);
            cmd.Parameters.AddWithValue("@city", city);
            cmd.Parameters.AddWithValue("@address", address);
            cmd.Parameters.AddWithValue("@pin", pin);
            cmd.Parameters.AddWithValue("@upload_pic", upload_pic);
            cmd.Parameters.AddWithValue("@prefered_id", prefered_id);
            cmd.Parameters.AddWithValue("@upload_id", upload_id);
            cmd.ExecuteNonQuery();
            flag = 1;
            con.Close();
    }

}