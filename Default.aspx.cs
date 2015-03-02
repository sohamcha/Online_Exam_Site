using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

public partial class Default2 : System.Web.UI.Page
{
    static SqlConnection con;
    static SqlCommand cmd, cmd1;
    static SqlDataReader rd;

    protected int search()
    {
        cmd = new SqlCommand("Select PASS from NAME Where ID = '" + TextBox3.Text + "'", con);
        rd = cmd.ExecuteReader();
        rd.Read();
        if (rd.HasRows)
        {
            if ((TextBox2.Text != "") && (TextBox2.Text == rd.GetString(0)))
            {
                rd.Close();
                return 2;
            }

            rd.Close();
            return 1;
        }


        else
        {
            rd.Close();
            return 0;
        }



    }

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
    protected void TextBox2_TextChanged(object sender, EventArgs e)
    {

    }
    protected void TextBox1_TextChanged(object sender, EventArgs e)
    {

    }
    protected void TextBox3_TextChanged(object sender, EventArgs e)
    {

    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Response.Redirect("Default2.aspx");
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        TextBox2.Attributes.Add("Value", TextBox2.Text);

        int i = search();
        if (i == 2)
        {
            Session["id"] = TextBox3.Text;
            Response.Redirect("Default4.aspx");
        }

        else if (i == 1)
        {
            Response.Write("<script>alert('PLEASE ENTER VALID PASSWORD')</script>");
        }

        else
        {
            Response.Write("<script>alert('PLEASE ENTER VALID USERNAME')</script>");
        }


    }
    protected void LinkButton2_Click(object sender, EventArgs e)
    {
        Response.Redirect("Default5.aspx");
    }
}