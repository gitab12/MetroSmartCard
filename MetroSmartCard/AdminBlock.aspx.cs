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

public partial class AdminBlock : System.Web.UI.Page
{
    SqlConnection Conn = new SqlConnection("Data Source=.\\SQLEXPRESS;AttachDbFilename=|DataDirectory|\\MetroCardData.mdf;Integrated Security=True;User Instance=True");
    string SqlStr;

    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Conn.Open();
        SqlCommand cmd1 = new SqlCommand("select * from SmartCardTab where SmartCardNo=" + float.Parse(TextBox1.Text) + "", Conn);
        SqlDataReader dr1 = cmd1.ExecuteReader();
        if (!dr1.Read())
        {
            MessageBox.Show("This SmartCard No does not exit");
            return;
        }
        Conn.Close();

        long a1 = 1001;
        Conn.Open();
        SqlCommand cmd2 = new SqlCommand("select max(rNo)+1 from  BlockCardTab",Conn);
        SqlDataReader dr2 = cmd2.ExecuteReader();
        dr2.Read();
        if (!dr2.IsDBNull(0))
        {
            a1 = long.Parse(dr2.GetValue(0).ToString());
        }
        
        Conn.Close();

        Conn.Open();
        SqlStr = "insert into  BlockCardTab values(";
        SqlStr = SqlStr + "" + a1 + ",'" + string.Format("{0:dd/MMM/yyyy}", DateTime.Today.ToString()) + "'," + float.Parse(TextBox1.Text) + ",'','" + TextBox2.Text + "','Y')";
        //MessageBox.Show(SqlStr);
        SqlCommand cmd3 = new SqlCommand(SqlStr, Conn);
        cmd3.ExecuteNonQuery();
        Conn.Close();
        DialogResult result;
        
        result= MessageBox.Show( "Card is Blocked", "Block",MessageBoxButtons.OK);
        TextBox1.Text = "";
        TextBox2.Text = "";
    }
}
