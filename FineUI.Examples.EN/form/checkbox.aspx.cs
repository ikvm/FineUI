﻿using System;
using System.Collections.Generic;

using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FineUI.Examples.form
{
    public partial class checkbox : PageBase
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void CheckBox1_CheckedChanged(object sender, EventArgs e)
        {
            labResult.Text = "CheckBox status: " + (CheckBox1.Checked ? "Checked" : "Unchecked");
        }


    }
}