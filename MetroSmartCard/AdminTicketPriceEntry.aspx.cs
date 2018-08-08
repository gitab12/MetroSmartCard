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
public partial class AdminTicketPriceEntry : System.Web.UI.Page
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
        cmd.CommandText = "select * from TicketPriceTab where TrainType='" + DropDownList1.Text + "' and fromstation='" + DropDownList2.Text + "' and toStation='" + DropDownList3.Text + "'";
        dr = cmd.ExecuteReader();

        if (dr.Read())
        {
            MessageBox.Show("For this place price is allready present please check");
            return;

        }
        Conn.Close();
        int a1 = 0, a2 = 0;
        try
        {
            a1 = int.Parse(TextBox2.Text);
            a2 = int.Parse(TextBox3.Text);
        }
        catch (System.Exception ex) { }
        Conn.Open();
        SqlStr = "insert into TicketPriceTab values(";
        SqlStr = SqlStr + "'" + DropDownList1.Text + "','" + DropDownList2.Text + "','" + DropDownList3.Text + "'," + a1 + "," + a2 + ")";
        SqlCommand cmd2 = new SqlCommand(SqlStr, Conn);
        cmd2.ExecuteNonQuery();
        Conn.Close();
        MessageBox.Show("Record Saved Successfully");
        //TextBox1.Text = "";
        TextBox2.Text = "";
    }
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
}

