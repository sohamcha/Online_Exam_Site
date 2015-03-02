using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;


public partial class Default9 : System.Web.UI.Page
{

    static SqlConnection con;
    static SqlCommand cmd;
    static SqlDataReader rd;
    static double totalq,rank,totalstu;
    static double points,cumpoints;
    
    

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {

            ConnectionStringSettings obj = ConfigurationManager.ConnectionStrings["cn"];
            con = new SqlConnection(obj.ConnectionString);
            con.Open();
            cmd = new SqlCommand("SELECT TOTAL FROM DATA WHERE ID like '"+Session["id"].ToString()+"'",con);
            rd = cmd.ExecuteReader();
            
            rd.Read();
            totalq = rd.GetDouble(0);
            rd.Close();
            cmd = new SqlCommand("SELECT TRUE FROM DATA WHERE ID like '" + Session["id"].ToString() + "'", con);
            rd = cmd.ExecuteReader();
            rd.Read();
            points = rd.GetDouble(0);
            rd.Close();
            cmd = new SqlCommand("SELECT POINT FROM DATA WHERE ID like '" + Session["id"].ToString() + "'", con);
            rd = cmd.ExecuteReader();
            rd.Read();
            cumpoints = rd.GetDouble(0);
            rd.Close();
            cmd = new SqlCommand("SELECT COUNT(ID) FROM DATA", con);
            rd = cmd.ExecuteReader();
            rd.Read();
            totalstu = (double)rd.GetInt32(0);
            rd.Close();
            cmd = new SqlCommand("SELECT ID,TRUE FROM DATA ORDER BY TRUE DESC", con);
            rd = cmd.ExecuteReader();
            for (rank = 1; rank <= totalstu; rank++)
            {
                rd.Read();
                if (rd.GetString(0) == Session["id"].ToString())
                    break;
            }
            rd.Close();

            Label3.Text = "YOUR TOTAL QUESTION ATTEMPTS TO DATE IS " + totalq;
            Label4.Text = "YOUR TOTAL MARKS OBTAINED IS " + points;
            Label5.Text = "YOUR CUMULATIVE POINTS OVER ALL QUESTIONS ATTEMPTED IS " + cumpoints;
            Label2.Text = "YOUR RANK IN OUR DATABASE IS " + rank;
            

        
        
        
        }

    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Response.Redirect("Default4.aspx");
    }
}