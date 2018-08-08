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
public partial class CustSmartCardRecharge : System.Web.UI.Page
{
    SqlConnection Conn = new SqlConnection("Data Source=.\\SQLEXPRESS;AttachDbFilename=|DataDirectory|\\MetroCardData.mdf;Integrated Security=True;User Instance=True");
    string SqlStr;
    protected void Page_Load(object sender, EventArgs e)
    {
        TextBox1.Text = Request.QueryString["cardNo"];
        TextBox2.Text = "400";
    }



    protected void Button1_Click(object sender, EventArgs e)
    {
        long a1 = 0;
        Conn.Open();
        SqlCommand cmd = new SqlCommand();
        SqlDataReader dr;
        cmd.Connection = Conn;
        cmd.CommandText = "select max(rNo)+1 from  SmartCardTranTab";
        dr = cmd.ExecuteReader();
        if (dr.Read())
        {
            
            a1 = long.Parse(dr.GetValue(0).ToString());
        }
        Conn.Close();


        Conn.Open();
        double a2 = double.Parse(TextBox2.Text);
        SqlStr = "Insert into  SmartCardTranTab values(" + a1 + ",'" + string.Format("{0:dd/MMM/yyyy}", DateTime.Today.ToString()) + "'," + long.Parse(TextBox1.Text.ToString()) + "," + a2 + ",0,'" + TextBox3.Text + "','')";
        //MessageBox.Show(SqlStr);
        SqlCommand cmd2 = new SqlCommand(SqlStr, Conn);
        cmd2.ExecuteNonQuery();
        Conn.Close();
        MessageBox.Show("Record Saved Successfully Your transaction No : " + a1);
    }
}

