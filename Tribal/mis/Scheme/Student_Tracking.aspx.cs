﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class mis_Scheme_Student_Tracking : System.Web.UI.Page
{
	protected void Page_Load(object sender, EventArgs e)
	{
		 
	}

    protected void btnSerch_Click(object sender, EventArgs e)
    {
		Studenttraking.Visible = true;
		Student.Visible = false;
	}
}