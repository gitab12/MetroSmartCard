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
public partial class CustomerSignUp : System.Web.UI.Page
{
    SqlConnection Conn = new SqlConnection("Data Source=.\\SQLEXPRESS;AttachDbFilename=|DataDirectory|\\MetroCardData.mdf;Integrated Security=True;User Instance=True");
    string SqlStr; string fVar;
    protected void Page_Load(object sender, EventArgs e)
    {

    }



    protected void Button1_Click(object sender, EventArgs e)
    {
        Conn.Open();
        SqlCommand cmd = new SqlCommand();
        SqlDataReader dr;
        cmd.Connection = Conn;
        cmd.CommandText = "select * from CustomerTab where uName='" + TextBox1.Text + "'";
        dr = cmd.ExecuteReader();

        if (dr.Read())
        {
            MessageBox.Show("This record is all ready present");
            return;

        }
        Conn.Close();

  
        string toDir;
        string FileNameVar = TextBox1.Text + FileUpload1.FileName.ToString();
        toDir = Server.MapPath(".") + "/Photos/" + FileNameVar;
        if (FileUpload1.HasFile)
        {
            FileUpload1.SaveAs(toDir);
        }


        Conn.Open();
        SqlStr = "insert into CustomerTab(uName,pWord,CName,CAdd,eMail,MobileNo,DlNo,approved) values(";
        SqlStr = SqlStr + "'" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox4.Text + "','" + TextBox5.Text + "','" + TextBox6.Text + "','" + TextBox7.Text + "','" + FileNameVar + "','N')";
        SqlCommand cmd2 = new SqlCommand(SqlStr, Conn);
        cmd2.ExecuteNonQuery();
        Conn.Close();
        Response.Redirect("CustomerSignupRes.aspx");
    }
}

