using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Configuration;
using System.Data.SqlClient;
using System.Data;

public partial class DBTreeView : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            string StrConn = WebConfigurationManager.ConnectionStrings
                ["UPPart2ConnectionString"].ConnectionString;
            using (SqlConnection ObjConn = new SqlConnection(StrConn))
            {
                ObjConn.Open();
                using (SqlCommand ObjCM = new SqlCommand())
                {
                    ObjCM.Connection = ObjConn;
                    ObjCM.CommandText = "SELECT ID, name, part FROM TreeView WHERE part IS NULL";
                    SqlDataReader ObjDR = ObjCM.ExecuteReader();
                    while (ObjDR.Read())
                    {
                        TreeNode node = new TreeNode(ObjDR["name"].ToString(), ObjDR["id"].ToString());
                        TreeView1.Nodes.Add(node);
                        TreeViewNodes(ObjDR["id"].ToString(), node);
                    }
                    ObjDR.Close();
                }
                ObjConn.Close();
            }
        }
    }
    private void TreeViewNodes(string part, TreeNode partNode)
    {
        string StrConn = WebConfigurationManager.ConnectionStrings
                ["UPPart2ConnectionString"].ConnectionString;
        using (SqlConnection ObjConn = new SqlConnection(StrConn))
        {
            ObjConn.Open();
            using (SqlCommand ObjCM = new SqlCommand())
            {
                ObjCM.Connection = ObjConn;
                ObjCM.CommandText = "SELECT ID, name, part FROM TreeView WHERE Part =" + part;
                SqlDataReader ObjDR = ObjCM.ExecuteReader();
                while (ObjDR.Read())
                {
                    TreeNode node = new TreeNode(ObjDR["name"].ToString(), ObjDR["id"].ToString());
                    partNode.ChildNodes.Add(node);
                }
                ObjDR.Close();
            }
            ObjConn.Close();
        }
    }
}