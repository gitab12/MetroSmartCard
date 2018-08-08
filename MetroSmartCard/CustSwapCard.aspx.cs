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
public partial class CustSwapCard : System.Web.UI.Page
{
    SqlConnection Conn = new SqlConnection("Data Source=.\\SQLEXPRESS;AttachDbFilename=|DataDirectory|\\MetroCardData.mdf;Integrated Security=True;User Instance=True");
    string SqlStr;
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        if (Application["cName"] == null)
            MessageBox.Show("Session expired");
        String Sname = Application["cName"].ToString();

         int ach1 = 1;
        if (Conn.State == ConnectionState.Open) { Conn.Close(); Conn.Open(); } else Conn.Open();
        MessageBox.Show("user="+Application["cName"]);
        SqlCommand cmd2aa = new SqlCommand("select * from SmartCardTab where uName='" + Application["cName"] + "' and smartcardno="+ TextBox1.Text +"", Conn);
        SqlDataReader dr2aa = cmd2aa.ExecuteReader();
        if (!dr2aa.Read())
        {
            ach1 = 0;
            HyperLink4.Text = "Not a valid card No";
            return;
        }
        Conn.Close();

        long a1 = 0; double amt1 = 0;
        a1 = long.Parse(TextBox1.Text);

        Conn.Open();
        SqlCommand cmd2z = new SqlCommand("select * from  BlockCardTab where cardno=" + a1 + " and bStatus='Y'", Conn);
        SqlDataReader dr2z = cmd2z.ExecuteReader();
        if(dr2z.Read())
        {
            HyperLink4.Text = "Your card is blocked you can't do transaction now.";
            return;
        }
        Conn.Close();


        Conn.Open();
        SqlCommand cmd = new SqlCommand();
        SqlDataReader dr;
        cmd.Connection = Conn;
        cmd.CommandText = "select sum(dbamt) - sum(cramt) from  SmartCardTranTab where cardNo=" + a1;
        dr = cmd.ExecuteReader();
        if (dr.Read())
        {
            if (!dr.IsDBNull(0))
            { amt1 = double.Parse(dr.GetValue(0).ToString()); }
        }
        Conn.Close();

        if (amt1 < 50)
        {
            HyperLink4.Text = "You don't have sufficient balance, Your balance is : " + amt1;
        }


        Conn.Open();
        SqlCommand cmd2 = new SqlCommand();
        SqlDataReader dr2;
        cmd2.Connection = Conn;
        cmd2.CommandText = "select rPrice from  TicketPriceTab where fromstation='" + DropDownList1.Text + "' and tostation='"+ DropDownList2.Text +"'";
        dr2 = cmd2.ExecuteReader();
        if (dr2.Read())
        {

            amt1 = double.Parse(dr2.GetValue(0).ToString());
        }
        Conn.Close();


        long at1 = 0;
        Conn.Open();
        SqlCommand cmd3 = new SqlCommand();
        SqlDataReader dr3;
        cmd3.Connection = Conn;
        cmd3.CommandText = "select max(rNo)+1 from  SmartCardTranTab";
        dr3 = cmd3.ExecuteReader();
        if (dr3.Read())
        {

            at1 = long.Parse(dr3.GetValue(0).ToString());
        }
        Conn.Close();


        Conn.Open();
        
        SqlStr = "Insert into  SmartCardTranTab values(" + at1 + ",'" + string.Format("{0:dd/MMM/yyyy}", DateTime.Today.ToString()) + "'," + long.Parse(TextBox1.Text.ToString()) + ",0, " + amt1 + ",'" + DropDownList1.Text + " to " + DropDownList2.Text + "','')";
        //MessageBox.Show(SqlStr);
        SqlCommand cmd2a = new SqlCommand(SqlStr, Conn);
        cmd2a.ExecuteNonQuery();
        Conn.Close();

        HyperLink4.Text = "Successful, Amt : " + amt1;
    }
}
