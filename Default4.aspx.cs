using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

public partial class Default4 : System.Web.UI.Page
{
    static SqlConnection con;
    static SqlCommand cmd;
    static SqlDataReader rd;
    

    
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            ConnectionStringSettings obj = ConfigurationManager.ConnectionStrings["cn"];
            con = new SqlConnection(obj.ConnectionString);
            con.Open();
           
            
            cmd = new SqlCommand("Select NAME from NAME Where ID = '" + Session["id"].ToString() + "'", con);
            rd = cmd.ExecuteReader();
            rd.Read();
            Session["name"] = rd.GetString(0);
            rd.Close();

            Label1.Text = "WELCOME " + Session["name"].ToString() + " to your STUDY PORTAL ";
            Label2.Text = "  Let's GET STARTED. . . .    ";
        
           }

    }
   
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {

    }
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void ImageButton1_Click1(object sender, ImageClickEventArgs e)
    {
        if (DropDownList1.SelectedIndex > 0)
        {
            Session["testsub"] = DropDownList1.SelectedIndex.ToString();
            Response.Redirect("Default6.aspx");                 //  Default6.aspx is the Exam Starting Page
        }
        else
            Response.Write("<script>alert('PLEASE SELECT A TOPIC FIRST ! ! ! ')</script>");
    }
    protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
    {
        
            Response.Redirect("Default7.aspx");                 //  Default7.aspx is the Question Submission Page
       
    }
    protected void ImageButton3_Click(object sender, ImageClickEventArgs e)
    {
        if (Session["total"] == null)
            Response.Write("<script>alert('PLEASE TAKE A TEST FIRST TO EVALUATE RESULTS')</script>");
        else
        Response.Redirect("Default8.aspx");
    }
    protected void ImageButton4_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("Default9.aspx");
    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Response.Redirect("Default.aspx");
    }
   
}