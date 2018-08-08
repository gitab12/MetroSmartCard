
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
public partial class CustMainPage : System.Web.UI.Page
{
    SqlConnection Conn = new SqlConnection(@"Data Source=.\\SQLEXPRESS;AttachDbFilename=|DataDirectory|\\MetroCardData.mdf;Integrated Security=True;User Instance=True");
    string SqlStr;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Conn.State == ConnectionState.Open) { Conn.Close(); Conn.Open(); } else Conn.Open();
        Label1.Text = Session["cName"].ToString();
    }



}

