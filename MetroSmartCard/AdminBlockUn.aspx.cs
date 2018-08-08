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
public partial class AdminBlockUn : System.Web.UI.Page
{
    SqlConnection Conn = new SqlConnection("Data Source=.\\SQLEXPRESS;AttachDbFilename=|DataDirectory|\\MetroCardData.mdf;Integrated Security=True;User Instance=True");

    string SqlStr;
   

    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        Conn.Open();
        SqlStr = "Update  BlockCardTab set bStatus='N' where CardNo=" + GridView1.SelectedRow.Cells[3].Text + "";
        SqlCommand cmd2 = new SqlCommand(SqlStr, Conn);
        cmd2.ExecuteNonQuery();
        Conn.Close();

        MessageBox.Show("Card No : " + GridView1.SelectedRow.Cells[3].Text + " is unblocked successfully");

    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("AdminBlockUn.aspx");
    }
}
