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
    static int validid=1;


    protected void searchid(string x)
    {
        cmd1 = new SqlCommand("SELECT ID FROM NAME WHERE ID='" + x + "'",con);

        try
        {
            rd = cmd1.ExecuteReader();
            rd.Read();
            if (rd.HasRows)
            {
                validid = 1;
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


        
        TextBox2.Attributes.Add("Value", TextBox2.Text);
        TextBox6.Attributes.Add("Value", TextBox6.Text);
        if (!IsPostBack)
        {
            ConnectionStringSettings obj = ConfigurationManager.ConnectionStrings["cn"];
            con = new SqlConnection(obj.ConnectionString);
            con.Open();
        }

    
    
    
    }
    protected void TextBox1_TextChanged(object sender, EventArgs e)
    {

    }
    protected void TextBox3_TextChanged(object sender, EventArgs e)
    {

    }
    protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
    {
            }
    protected void TextBox4_TextChanged(object sender, EventArgs e)
    {

    }
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {

        
        if ((validid == 0))
        {

            cmd = new SqlCommand("INSERT NAME VALUES ('" + TextBox1.Text + "','" + TextBox5.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "','" + TextBox4.Text + "','" + DropDownList1.SelectedItem.ToString() + "','"+TextBox7.Text+"','"+TextBox8.Text+"')", con);
            cmd1 = new SqlCommand("INSERT DATA VALUES ('" + TextBox5.Text + "',0,0,0)", con);
            try
            {
                int i = cmd.ExecuteNonQuery();
                if (i > 0)
                i = cmd1.ExecuteNonQuery();
                if(i > 0)
                {

                    Session["NAME"] = TextBox1.Text.ToString();
                    Response.Write("<script>alert('REGISTRATION SUCCESSFULL')</script>");
                    Response.Redirect("Default3.aspx");
                }

                else
                    Response.Write("<script>alert('REGISTRATION UNSUCCESSFULL. PLEASE TRY AGAIN')</script>");
            }


            catch
            {
                Response.Write("<script>alert('REGISTRATION UNSUCCESSFULL. PLEASE TRY AGAIN')</script>");
            }
        }
        else
            Response.Write("<script>alert('MISSING or WRONG ENTRIES IN THE FORM. PLEASE CHECK AGAIN.')</script>");
        
   
    
        
    }

        protected void TextBox5_TextChanged(object sender, EventArgs e)
    {
        
        searchid(TextBox5.Text);
        if (validid == 1)
            Response.Write("<script>alert('The USERNAME in ALREADY REGISTERED to a Different User. Please TRY with a Different One')</script>");
        else
            Response.Write("<script>alert('The USERNAME in VALID')</script>");


    }
    protected void TextBox2_TextChanged(object sender, EventArgs e)
    {

    }
    protected void Timer1_Tick(object sender, EventArgs e)
    {
       
    }

    protected void Calendar1_SelectionChanged(object sender, EventArgs e)
    {
        if (Int32.Parse(Calendar1.SelectedDate.ToString("yyyy")) < (Int32.Parse(DateTime.Now.ToString("yyyy")) - 20))

            TextBox4.Text = Calendar1.SelectedDate.ToShortDateString();

        else
        {
            Response.Write("<script>alert('You are not of the Minimum Required Age to Register')</script>");
            validid = 1;
        }
        }   
    
    protected void TextBox7_TextChanged(object sender, EventArgs e)
    {

    }
    protected void Calendar1_SelectionChanged1(object sender, EventArgs e)
    {

    }
}