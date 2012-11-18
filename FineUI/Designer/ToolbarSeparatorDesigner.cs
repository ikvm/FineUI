﻿
#region Comment

/*
 * Project：    FineUI
 * 
 * FileName:    ToolbarSeparatorDesigner.cs
 * CreatedOn:   2008-06-09
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

namespace FineUI
{
    /// <summary>
    /// 按钮设计时
    /// </summary>
    public class ToolbarSeparatorDesigner : ControlBaseDesigner
    {
        /// <summary>
        /// 设计时展示
        /// </summary>
        /// <returns></returns>
        public override string GetDesignTimeHtml()
        {
            return "&nbsp;|&nbsp;";
        }

    }
}
