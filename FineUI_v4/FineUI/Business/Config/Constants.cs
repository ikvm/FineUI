﻿
#region Comment

/*
 * Project：    FineUI
 * 
 * FileName:    Constants.cs
 * CreatedOn:   2008-04-07
 * CreatedBy:   30372245@qq.com
 * 
 * 
 * Description：
 *      ->
 *   
 * History：
 *       
 * 
 * 
 * 
 * 
 */

#endregion

using System;
using System.Collections.Generic;
using System.Text;

namespace FineUI
{
    /// <summary>
    /// 配置字段名称
    /// </summary>
    internal static class ConfigSectionName
    {
        public const string FineUI = "FineUI";
    }


    /// <summary>
    /// 字段属性名称
    /// </summary>
    internal static class ConfigPropertyName
    {
        public const string THEME = "Theme";
        public const string LANGUAGE = "Language";
        public const string FROMMESSAGETARGET = "FormMessageTarget";
        public const string FORMOFFSETRIGHT = "FormOffsetRight";
        public const string FORMLABELWIDTH = "FormLabelWidth";
        public const string FORMLABELSEPARATOR = "FormLabelSeparator";
        public const string FORMLABELALIGN = "FormLabelAlign";
        public const string ENABLEAJAX = "EnableAjax";
        public const string ENABLEAJAXLOADING = "EnableAjaxLoading";
        public const string AJAXLOADINGTYPE = "AjaxLoadingType";
        public const string AJAXTIMEOUT = "AjaxTimeout";
        public const string ENABLEBIGFONT = "EnableBigFont";
        public const string DEBUGMODE = "DebugMode";
        public const string ICONBASEPATH = "IconBasePath";
        public const string JSBASEPATH = "JSBasePath";
        public const string CUSTOMTHEMEBASEPATH = "CustomThemeBasePath";
        public const string CUSTOMTHEME = "CustomTheme";
        public const string ENABLEXSTATECOMPRESS = "EnableFStateCompress";
        public const string IEEDGE = "IEEdge";
    }

    /// <summary>
    /// 字段属性值
    /// </summary>
    internal static class ConfigPropertyValue
    {
        public const MessageTarget FORM_MESSAGETARGET_DEFAULT = MessageTarget.Side;
        public const string FORM_MESSAGETARGET_DEFAULT_STRING = "Side";

        public const LabelAlign FORM_LABELALIGN_DEFAULT = LabelAlign.Left;
        public const string FORM_LABELALIGN_DEFAULT_STRING = "Left";

        public const int FORM_OFFSETRIGHT_DEFAULT = 5;
        public const string FORM_OFFSETRIGHT_DEFAULT_STRING = "5";

        public const int FORM_LABELWIDTH_DEFAULT = 100;
        public const string FORM_LABELWIDTH_DEFAULT_STRING = "100";

        public const string FORM_LABELSEPARATOR_DEFAULT = "：";

        public const string THEME_DEFAULT = "neptune";

        public const string LANGUAGE_DEFAULT = "zh_CN";
        public const string LANGUAGE_EN = "en";
        public const string LANGUAGE_ZH_CN = "zh_CN";
        public const string LANGUAGE_ZH_TW = "zh_TW";
        public const string LANGUAGE_PT_BR = "pt_BR";
        public const string LANGUAGE_TR = "tr";
        public const string LANGUAGE_RU = "ru";


        // Ajax 超时时间（单位：秒）
        public const int AJAX_TIMEOUT_DEFAULT = 60;

        // 是否启用 Ajax
        public const bool ENABLE_AJAX_DEFAULT = true;

        public const bool ENABLE_AJAX_LOADING_DEFAULT = true;

        public const string AJAX_LOADING_TYPE_DEFAULT = "default";
        public const string AJAX_LOADING_TYPE_MASK = "mask";

        // 是否启用开发者模式（引入 JS 的非压缩版本，以及页面 JS 的格式化输出）
        public const bool DEBUG_MODE_DEFAULT = false;


        public const string ICON_BASE_PATH_DEFAULT = "~/icon";

        public const string EXTJS_BASE_PATH_DEFAULT = "~/extjs";

        public const string CUSTOM_THEME_BASE_PATH_DEFAULT = "~/theme";

        public const string CUSTOM_THEME_DEFAULT = "";


        public const bool ENABLE_XSTATE_COMPRESS = true;
    }



    /// <summary>
    /// 属性分类的名称
    /// </summary>
    internal static class CategoryName
    {
        /// <summary>
        /// 基本属性
        /// </summary>
        public const string BASEOPTIONS = "基本属性";

        /// <summary>
        /// 属性
        /// </summary>
        public const string OPTIONS = "属性";

        /// <summary>
        /// 表单验证
        /// </summary>
        public const string VALIDATION = "表单验证";


        /// <summary>
        /// 布局
        /// </summary>
        public const string LAYOUT = "布局";


        /// <summary>
        /// 事件
        /// </summary>
        public const string ACTION = "事件";

        ///// <summary>
        ///// 设计时
        ///// </summary>
        //public const string DESIGN_TIME = "设计时";

    }

}
