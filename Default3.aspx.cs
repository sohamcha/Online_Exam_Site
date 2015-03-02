using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Default3 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Label2.Text = "CONGRATULATIONS   "+Session["NAME"].ToString()+"   YOU HAVE COMPLETED THE REGISTRATION PROCEDURE \n\n    PLEASE CLICK THE BUTTON BELOW TO GO TO LOGIN PAGE\n\n    HAPPY LEARNING ! ";
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("Default.aspx");
    }
}