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

public partial class CustCheckBalance : System.Web.UI.Page
{
    SqlConnection Conn = new SqlConnection("Data Source=.\\SQLEXPRESS;AttachDbFilename=|DataDirectory|\\MetroCardData.mdf;Integrated Security=True;User Instance=True");
    

    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        if (Application["cName"] == null)
         MessageBox.Show("Session expired");
        String Sname= Application["cName"].ToString();

        int ach1 = 1;
        if (Conn.State == ConnectionState.Open) { Conn.Close(); Conn.Open(); } else Conn.Open();
       SqlCommand cmd2aa = new SqlCommand("select count(*) from SmartCardTab where uName='"+Sname+"' and SmartCardNo='" + TextBox1.Text + "'", Conn);
       cmd2aa.ExecuteNonQuery();

       int temp = Convert.ToInt32(cmd2aa.ExecuteScalar().ToString());
       MessageBox.Show("uname="+Sname);
      // MessageBox.Show("cardNO="+TextBox1.Text);
       if (temp == 0)
       {

           HyperLink4.Text = "Inavlid card number";
        }
        
        if (temp == 1)
        {
            //MessageBox.Show("innnnn");
            long a1 = 0;
            a1 = long.Parse(TextBox1.Text);
            Console.WriteLine(+a1);
          
            SqlCommand cmd = new SqlCommand();
            SqlDataReader dr;
            cmd.Connection = Conn;
            cmd.CommandText = "select sum(DbAmt) - sum(crAmt) from  SmartCardTranTab where cardNo=" + a1;
            //MessageBox.Show("crd:"+a1);
            dr = cmd.ExecuteReader();


           
            if (dr.Read())
            {
                //MessageBox.Show("value=" + dr.GetValue(0));
           
                               HyperLink4.Text = "Your card balance is : " + dr.GetValue(0).ToString();
           
            }
            Conn.Close();
        }
    }
    protected void TextBox1_TextChanged(object sender, EventArgs e)
    {

    }
    protected void TextBox2_TextChanged(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {

    }
}
