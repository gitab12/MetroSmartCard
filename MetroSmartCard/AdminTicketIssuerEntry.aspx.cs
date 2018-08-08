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
public partial class AdminTicketIssuerEntry : System.Web.UI.Page
{
    SqlConnection Conn = new SqlConnection("Data Source=.\\SQLEXPRESS;AttachDbFilename=|DataDirectory|\\MetroCardData.mdf;Integrated Security=True;User Instance=True");
    string SqlStr;
    protected void Page_Load(object sender, EventArgs e)
    {

    }



    protected void Button1_Click(object sender, EventArgs e)
    {
        Conn.Open();
        SqlCommand cmd = new SqlCommand();
        SqlDataReader dr;
        cmd.Connection = Conn;
        cmd.CommandText = "select * from TicketIssuerTab where uName='" + TextBox1.Text + "'";
        dr = cmd.ExecuteReader();

        if (dr.Read())
        {
            MessageBox.Show("For this place price is allready present please check");
            return;

        }
        Conn.Close();
        Conn.Open();
        TextBox2.Text = "abcd";
        SqlStr = "insert into TicketIssuerTab values(";
        SqlStr = SqlStr + "'" + TextBox1.Text + "','" + TextBox2.Text + "','" + DropDownList2.Text + "')";
        SqlCommand cmd2 = new SqlCommand(SqlStr, Conn);
        cmd2.ExecuteNonQuery();
        Conn.Close();
        MessageBox.Show("Record Saved Successfully");
        TextBox1.Text = "";
        TextBox2.Text = "";
    }
}

