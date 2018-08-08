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
public partial class CustPerDetails : System.Web.UI.Page
{
    SqlConnection Conn = new SqlConnection("Data Source=.\\SQLEXPRESS;AttachDbFilename=|DataDirectory|\\MetroCardData.mdf;Integrated Security=True;User Instance=True");
    string SqlStr;
    protected void Page_Load(object sender, EventArgs e)
    {
        
        Conn.Open();
        //MessageBox.Show(Application["UName"].ToString());
        SqlCommand cmd = new SqlCommand();
        SqlDataReader dr;
        cmd.Connection = Conn;
        cmd.CommandText = "select * from CustomerTab where uName='" + Application["cName"] + "'";
        dr = cmd.ExecuteReader();
        if (dr.Read())
        {
            HyperLink4.Text = "Name : " + dr["cName"].ToString();
            HyperLink1.Text = "Address : " + dr["cAdd"].ToString();
            HyperLink2.Text = "eMail : " + dr["eMail"].ToString();
            HyperLink5.Text = "MobileNo : " + dr["MobileNo"].ToString();
            HyperLink6.Text = "DL/Passport No : " + dr["DlNo"].ToString();
        }
        Conn.Close();

    }



    protected void Button2_Click(object sender, EventArgs e)
    {
        Conn.Open();
        //MessageBox.Show(Application["cName"].ToString());
        SqlCommand cmd = new SqlCommand();
        SqlDataReader dr;
        cmd.Connection = Conn;
        cmd.CommandText = "select * from CustomerTab where uName='" + Application["cName"] + "'";
        dr = cmd.ExecuteReader();
        if (dr.Read())
        {
            HyperLink4.Text = "Name : " + dr["cName"].ToString();
            HyperLink1.Text = "Address : " + dr["cAdd"].ToString();
            HyperLink2.Text = "eMail : " + dr["eMail"].ToString();
            HyperLink5.Text = "MobileNo : " + dr["MobileNo"].ToString();
            HyperLink6.Text = "DL/Passport No : " + dr["DlNo"].ToString();
        }
        Conn.Close();
    }
}

