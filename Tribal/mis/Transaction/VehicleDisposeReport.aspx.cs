﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class mis_Transaction_VehicleDisposeReport : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnSearchRcd_Click(object sender, EventArgs e)
    {
        hideTable.Visible = true;
        NoRcdTable.Visible = false;
    }
}