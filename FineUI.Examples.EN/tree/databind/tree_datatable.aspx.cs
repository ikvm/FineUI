﻿using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Text;

namespace FineUI.Examples.tree.databind
{
    public partial class tree_datatable : PageBase
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                LoadData();
            }
        }

        private void LoadData()
        {
            // 模拟从数据库返回数据表
            DataTable table = CreateDataTable();

            DataSet ds = new DataSet();
            ds.Tables.Add(table);
            ds.Relations.Add("TreeRelation", ds.Tables[0].Columns["Id"], ds.Tables[0].Columns["ParentId"]);

            foreach (DataRow row in ds.Tables[0].Rows)
            {
                if (row.IsNull("ParentId"))
                {
                    TreeNode node = new TreeNode();
                    node.Text = row["Text"].ToString();
                    node.Expanded = true;
                    Tree1.Nodes.Add(node);

                    ResolveSubTree(row, node);
                }
            }
        }

        private void ResolveSubTree(DataRow dataRow, TreeNode treeNode)
        {
            DataRow[] rows = dataRow.GetChildRows("TreeRelation");
            if (rows.Length > 0)
            {
                treeNode.Expanded = true;
                foreach (DataRow row in rows)
                {
                    TreeNode node = new TreeNode();
                    node.Text = row["Text"].ToString();
                    treeNode.Nodes.Add(node);

                    ResolveSubTree(row, node);
                }
            }
        }

        #region CreateDataTable

        private DataTable CreateDataTable()
        {
            DataTable table = new DataTable();
            DataColumn column1 = new DataColumn("Id", typeof(string));
            DataColumn column2 = new DataColumn("Text", typeof(String));
            DataColumn column3 = new DataColumn("ParentId", typeof(string));
            table.Columns.Add(column1);
            table.Columns.Add(column2);
            table.Columns.Add(column3);

            DataRow row = table.NewRow();
            row[0] = "china";
            row[1] = "China";
            row[2] = DBNull.Value;
            table.Rows.Add(row);

            row = table.NewRow();
            row[0] = "henan";
            row[1] = "Henan Province";
            row[2] = "china";
            table.Rows.Add(row);

            row = table.NewRow();
            row[0] = "zhumadian";
            row[1] = "Zhumadian City";
            row[2] = "henan";
            table.Rows.Add(row);

            row = table.NewRow();
            row[0] = "luohe";
            row[1] = "Luohe City";
            row[2] = "henan";
            table.Rows.Add(row);

            row = table.NewRow();
            row[0] = "anhui";
            row[1] = "Anhui Province";
            row[2] = "china";
            table.Rows.Add(row);

            row = table.NewRow();
            row[0] = "hefei";
            row[1] = "Hefei City";
            row[2] = "anhui";
            table.Rows.Add(row);

            row = table.NewRow();
            row[0] = "golden";
            row[1] = "Golden Pond Community";
            row[2] = "hefei";
            table.Rows.Add(row);

            row = table.NewRow();
            row[0] = "ustc";
            row[1] = "University of Science and Technology of China";
            row[2] = "hefei";
            table.Rows.Add(row);

            return table;
        }


        #endregion

    }
}
