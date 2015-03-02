using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

public partial class Default7 : System.Web.UI.Page
{

    static SqlConnection con;
    static SqlCommand cmd, cmd1;
    static SqlDataReader rd;
    static string sub;
    static int maxqno;
    
    
    
    
    
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            ConnectionStringSettings obj = ConfigurationManager.ConnectionStrings["cn"];
            con = new SqlConnection(obj.ConnectionString);
            con.Open();
            //Response.Write("<script>alert('CONNECTION OPEN')</script>");
        }


    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        if (DropDownList1.SelectedIndex == 0)
            Response.Write("<script>alert('ENTER A VALID SUBJECT')</script>");
        else
        {
            if (DropDownList1.SelectedIndex == 1)
                sub = "PPLQ";
            else if (DropDownList1.SelectedIndex == 2)
                sub = "ALGOQ";
            else if (DropDownList1.SelectedIndex == 3)
                sub = "DSQ";
            else if (DropDownList1.SelectedIndex == 4)
                sub = "OSQ";
            else
                sub = "DBMSQ";

            cmd1 = new SqlCommand("SELECT MAX(QNO) FROM " + sub, con);
            rd = cmd1.ExecuteReader();
            rd.Read();
            maxqno = rd.GetInt32(0);
            maxqno++;
            rd.Close();
            cmd = new SqlCommand("INSERT " + sub + " VALUES (" + maxqno + ",'" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "','" + TextBox4.Text + "','" + TextBox5.Text + "','" + TextBox6.Text + "')", con);
            int i = cmd.ExecuteNonQuery();
            if (i <= 0)
                Response.Write("<script>alert('INSERTION UNSUCCESSFUL. TRY AGAIN')</script>");
            else
            Response.Write("<script>alert('INSERTION SUCCESSFUL.')</script>");
        }








    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Response.Redirect("Default4.aspx");
    }
}