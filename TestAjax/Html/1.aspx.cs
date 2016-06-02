using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TestAjax.Html
{
    public partial class _1 : System.Web.UI.Page
    {
        private string value = string.Empty;
        protected void Page_Load(object sender, EventArgs e)
        {
            treeview.Attributes.Add("onclick", "postBackByObject()");
            if (!IsPostBack)
            {
                for (int i = 0; i < treeview.Nodes.Count; i++)
                {
                    SetChildNodeText(treeview.Nodes[i]);
                }
            }

        }


        private void SetChildNodeText(TreeNode node)
        {
            if (node.ChildNodes.Count > 0)
            {
                node.Text += " (" + node.ChildNodes.Count.ToString() + ")"; // append child node count to the text
            }
            else
            {
                node.Text += " (0)";
            }

            for (int i = 0; i < node.ChildNodes.Count; i++)
            {
                SetChildNodeText(node.ChildNodes[i]);
            }
        }

        protected void treeview_SelectedNodeChanged(object sender, EventArgs e)
        {
            this.Focus();

            if (treeview.SelectedNode.ChildNodes.Count==0)
            {
                return;
            }
            GetChildValue(treeview.SelectedNode);
            this.info.Text = value.Substring(0,value.Length-1);
        }
        private void GetChildValue(TreeNode tn)
        {
            if (tn!=treeview.SelectedNode)
            {
                value += tn.Text + "-";
            }
            
            foreach (TreeNode tnSub in tn.ChildNodes)
            {
                GetChildValue(tnSub);
            }
        }

        protected void treeview_TreeNodeCheckChanged(object sender, TreeNodeEventArgs e)
        {
            
        }
    }
}