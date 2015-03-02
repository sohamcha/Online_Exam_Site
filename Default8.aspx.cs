using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Default8 : System.Web.UI.Page
{
    static double tot,tru,fls,pnt;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            Label8.Text = "" + Int32.Parse(Session["total"].ToString()) + "QUESTIONS ";
            Label9.Text = "" + Int32.Parse(Session["true"].ToString()) + "QUESTIONS ";
            Label10.Text = "" + Int32.Parse(Session["false"].ToString()) + "QUESTIONS ";
            tot = (double)Int32.Parse(Session["total"].ToString());
            tru = (double)Int32.Parse(Session["true"].ToString());
            fls = (double)Int32.Parse(Session["false"].ToString());
            pnt = tru - (0.3 * fls);                         //  (/ total)  is removed   
            Label11.Text = "" + pnt + " POINTS ";
        }
   
    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        
        Response.Redirect("default6.aspx");
    }
    protected void LinkButton2_Click(object sender, EventArgs e)
    {
        Response.Redirect("Default4.aspx");
    }
}