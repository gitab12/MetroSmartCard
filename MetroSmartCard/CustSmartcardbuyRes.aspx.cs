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
public partial class CustSmartcardbuyRes : System.Web.UI.Page
{
    SqlConnection Conn = new SqlConnection("Data Source=.\\SQLEXPRESS;AttachDbFilename=|DataDirectory|\\MetroCardData.mdf;Integrated Security=True;User Instance=True");
    string SqlStr;




    protected void Page_Load(object sender, EventArgs e)
    {
        long a1 = long.Parse(Request.QueryString["acard"].ToString());
        MessageBox.Show(a1.ToString());
        HyperLink2.Text = "Your Card No  " + Request.QueryString["acard"].ToString();
        Conn.Open();
        SqlCommand cmd = new SqlCommand();
        SqlDataReader dr;
        cmd.Connection = Conn;
        cmd.CommandText = "select fName,cardNo,dob,aName,add1 from  SmartCardTab where cardNo=" + a1;
        dr = cmd.ExecuteReader();
        if (dr.Read())
        {
            //string a2 = dr.GetValue(0).ToString();

            //HyperLink1a.Text = dr.GetValue(3).ToString();
            //HyperLink2a.Text = dr.GetValue(4).ToString();
            //HyperLink3a.Text = dr.GetValue(2).ToString();
            //HyperLink4a.Text = dr.GetValue(1).ToString();
        }
        Conn.Close();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        HyperLink2.Text = "Your Card No  " + Request.QueryString["acard"].ToString();
    }
}

