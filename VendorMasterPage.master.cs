﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class VendorMasterPage : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
    
    }
    protected void Button1Clicked(object sender, EventArgs e)
    {
        Session.Remove("l_id");
        Session.Remove("type");
        Session.Clear();
        Session.Abandon();
        Response.Redirect("Index.aspx");
    }
}
