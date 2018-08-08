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
public partial class CustSmartCardBuy : System.Web.UI.Page
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
        cmd.CommandText = "select max(smartcardNo)+1 from  SmartCardTab";
        dr = cmd.ExecuteReader();
        dr.Read();
        long a1 = long.Parse(dr.GetValue(0).ToString());
        
        
        double a2 = double.Parse(TextBox5.Text.ToString());
        //MessageBox.Show(DateTime.Today.Date);
        //DateTime d1 = string.Format("{0:dd/MMM/yyyy}", TextBox3.Text);
        Conn.Close();
        Conn.Open(); 
        SqlStr = "insert into  SmartCardTab values(";
        SqlStr = SqlStr + "" + a1 + ",'" + DateTime.Today.ToString("dd-MM-yyyy") + "','" + TextBox1.Text.ToUpper() + "','" + TextBox2.Text + "','" + DropDownList1.Text + "','" + TextBox3.Text + "','" + TextBox4.Text + "'," + a2 + ",'" + DropDownList2.Text + "','" + TextBox6.Text + "','" + Application["cName"] + "','" + FileUpload1.FileName + "','" + FileUpload2.FileName + "')";
        //MessageBox.Show(SqlStr);
        SqlCommand cmd2 = new SqlCommand(SqlStr, Conn);
        cmd2.ExecuteNonQuery();
        Conn.Close();
        //MessageBox.Show("Record Saved Successfully Your Card No is" + a1);
        Response.Redirect("CustSmartcardbuyRes.aspx?acard=" + a1);


    }
    protected void Calendar1_SelectionChanged(object sender, EventArgs e)
    {

    }
}

