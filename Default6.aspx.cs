using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Default6 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            Label1.Text = Session["name"].ToString() + " GET Ready for Evaluation . . . ";
        }
    }

    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        if (DropDownList1.SelectedIndex > 0)
        {
            Session["maxq"] = DropDownList1.SelectedItem.ToString();
            Response.Redirect("Default11.aspx");                 //  Default6.aspx is the Exam Starting Page
        }
        else
            Response.Write("<script>alert('PLEASE SELECT THE MAX. NO. of QUESTIONS FIRST ! ! ! ')</script>");
    }
}
