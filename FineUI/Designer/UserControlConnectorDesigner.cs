﻿
#region Comment

/*
 * Project：    FineUI
 * 
 * FileName:    MenuDesigner.cs
 * CreatedOn:   2008-09-23
 * CreatedBy:   sanshi.ustc@gmail.com
 * 
 * 
 * Description：
 *      ->
 *   
 * History：
 *      ->
 * 
 * 
 * 
 * 
 */

#endregion

using System;
using System.Collections.Generic;
using System.Text;
using System.ComponentModel.Design;
using System.Web.UI.Design;
using System.Web.UI.WebControls;
using System.Web.UI;
using System.Web;

namespace FineUI
{

    public class UserControlConnectorDesigner : ControlBaseDesigner
    {


        public override string GetDesignTimeHtml()
        {
            
            return CreatePlaceHolderDesignTimeHtml();
        }

       
    }
}
