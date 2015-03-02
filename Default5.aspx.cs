using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

public partial class Default5 : System.Web.UI.Page
{

    static SqlConnection con;
    static SqlCommand cmd, cmd1;
    static SqlDataReader rd;
    static int validid = 0;



    protected void getq(string x)
    {
        cmd = new SqlCommand("SELECT Q FROM NAME WHERE ID='" + TextBox1.Text + "'", con);
        cmd1 = new SqlCommand("SELECT A FROM NAME WHERE ID='" + TextBox1.Text + "'", con);
        try
        {
            rd = cmd.ExecuteReader();
            rd.Read();
            if (rd.HasRows)
            {
                validid = 1;
                Label4.Text = rd.GetString(0);
                rd.Close();
                rd = cmd1.ExecuteReader();
                rd.Read();
                Session["answer"] = rd.GetString(0);
                rd.Close();
                
            }

            else
            {
                validid = 0;
                rd.Close();
            }
        }

        catch
        {
            validid = 0;
        }



    }

    
    
    
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            ConnectionStringSettings obj = ConfigurationManager.ConnectionStrings["cn"];
            con = new SqlConnection(obj.ConnectionString);
            con.Open();
        }

    }
    protected void Button2_Click(object sender, EventArgs e)
    {
         getq(TextBox1.Text);
         if (validid == 1)
         {
             Label5.Visible = true;
             TextBox2.Visible = true;
             Button3.Visible = true;
         }

         else
         {
             Response.Write("<script>alert('PLEASE ENTER A VALID USERNAME')</script>");
         }
       

    }
    protected void TextBox1_TextChanged(object sender, EventArgs e)
    {

    }
protected void  Button3_Click(object sender, EventArgs e)
{
    if (string.Compare(Session["answer"].ToString(), TextBox2.Text) == 0)
    {

        cmd = new SqlCommand("SELECT PASS FROM NAME WHERE ID='" + TextBox1.Text + "'", con);
        rd = cmd.ExecuteReader();
        rd.Read();
        Response.Write("YOUR PASSWORD IS " + rd.GetString(0) + "    THANK YOU FOR USING THIS SERVICE ");
        rd.Close();
    }

    else
        Response.Write("<script>alert('PLEASE ENTER A VALID SECURITY ANSWER')</script>");
         


}
}