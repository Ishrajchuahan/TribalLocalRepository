﻿using System;
using System.Collections.Generic;

using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class mis_Registration_Rpt_SchoolRegistration : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        dv_rpt.Visible = false;
    }

    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        dv_rpt.Visible = true;
    }
}