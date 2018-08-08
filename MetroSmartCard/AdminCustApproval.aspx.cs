using System;
using System.Data;
using System.Configuration;
using System.Collections;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Data.SqlClient;
using System.Windows.Forms;
public partial class AdminCustApproval : System.Web.UI.Page
{
    SqlConnection Conn = new SqlConnection("Data Source=.\\SQLEXPRESS;AttachDbFilename=|DataDirectory|\\MetroCardData.mdf;Integrated Security=True;User Instance=True");

    string SqlStr;
    protected void Page_Load(object sender, EventArgs e)
    {

    }



    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("adminCustApproval.aspx");
    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        
        Conn.Open();
        SqlStr = "Update customertab set approved='Y' where uName='" + GridView1.SelectedRow.Cells[1].Text + "'";
        SqlCommand cmd2 = new SqlCommand(SqlStr, Conn);
        cmd2.ExecuteNonQuery();
        Conn.Close();

        MessageBox.Show("User ID : " + GridView1.SelectedRow.Cells[1].Text + " is approved successfully");
    }
}

