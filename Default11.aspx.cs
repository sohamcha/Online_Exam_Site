using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

public partial class Default11 : System.Web.UI.Page
{
    static SqlConnection con;
    static SqlCommand cmd, cmd1;
    static SqlDataReader rd;
    static int noq=0,time=0,maxq,maxtime,qlock=0,q,valid=0,atrue=0,afalse=0,stoptest=0;
    static int[] ans,ansarray;
    static Random rand;
    static string sub,a,revans;
    static int revflag = 0, revindex;       // revlock is for preventing continuous clicking of a right or wrong button 
    
    
    
    protected void addq()
    {
        int i;
        double total;
        cmd1 = new SqlCommand("SELECT TOTAL FROM DATA WHERE ID='"+Session["id"].ToString()+"'",con);
        rd=cmd1.ExecuteReader();
        rd.Read();
        total=rd.GetDouble(0);
        rd.Close();
        total++;
        cmd1 = new SqlCommand("UPDATE DATA SET TOTAL="+total+" WHERE ID='"+Session["id"].ToString()+"'",con);
        i=cmd1.ExecuteNonQuery();
        if(i<1)
            Response.Write("<script>alert('Could not update the Database')</script>");
    }
    
    protected void addtrue()
    {
        int i;
        double trueans;
        cmd1 = new SqlCommand("SELECT TRUE FROM DATA WHERE ID='"+Session["id"].ToString()+"'",con);
        rd=cmd1.ExecuteReader();
        rd.Read();
        trueans=rd.GetDouble(0);
        rd.Close();
        trueans++;
        cmd1 = new SqlCommand("UPDATE DATA SET TRUE="+trueans+" WHERE ID='"+Session["id"].ToString()+"'",con);
        i=cmd1.ExecuteNonQuery();
        if(i<1)
            Response.Write("<script>alert('Could not update the Database')</script>");
    }

    protected void subtrue()
    {
        int i;
        double trueans;
        cmd1 = new SqlCommand("SELECT TRUE FROM DATA WHERE ID='" + Session["id"].ToString() + "'", con);
        rd = cmd1.ExecuteReader();
        rd.Read();
        trueans = rd.GetDouble(0);
        rd.Close();
        trueans=trueans - 1.33;
        cmd1 = new SqlCommand("UPDATE DATA SET TRUE=" + trueans + " WHERE ID='" + Session["id"].ToString() + "'", con);
        i = cmd1.ExecuteNonQuery();
        if (i < 1)
            Response.Write("<script>alert('Could not update the Database')</script>");
    }
  

    protected void updatepoint()
    {
        int i;
        double point,trueans,total;
        cmd1 = new SqlCommand("SELECT TOTAL FROM DATA WHERE ID='"+Session["id"].ToString()+"'",con);
        rd=cmd1.ExecuteReader();
        rd.Read();
        total=rd.GetDouble(0);
        rd.Close();
        cmd1 = new SqlCommand("SELECT TRUE FROM DATA WHERE ID='"+Session["id"].ToString()+"'",con);
        rd=cmd1.ExecuteReader();
        rd.Read();
        trueans=rd.GetDouble(0);
        rd.Close();
        point=(trueans/total);
        cmd1 = new SqlCommand("UPDATE DATA SET POINT="+point+" WHERE ID='"+Session["id"].ToString()+"'",con);
        i=cmd1.ExecuteNonQuery();
        if(i<1)
            Response.Write("<script>alert('Could not update the Database')</script>");
    }
    
    protected void addfalse()
    {
        int i;
        double trueans;
        cmd1 = new SqlCommand("SELECT TRUE FROM DATA WHERE ID='"+Session["id"].ToString()+"'",con);
        rd=cmd1.ExecuteReader();
        rd.Read();
        trueans=rd.GetDouble(0);
        rd.Close();
        trueans=trueans-0.33;
        cmd1 = new SqlCommand("UPDATE DATA SET TRUE="+trueans+" WHERE ID='"+Session["id"].ToString()+"'",con);
        i=cmd1.ExecuteNonQuery();
        if(i<1)
            Response.Write("<script>alert('Could not update the Database')</script>");
    }

    protected void subfalse()
    {
        int i;
        double trueans;
        cmd1 = new SqlCommand("SELECT TRUE FROM DATA WHERE ID='" + Session["id"].ToString() + "'", con);
        rd = cmd1.ExecuteReader();
        rd.Read();
        trueans = rd.GetDouble(0);
        rd.Close();
        trueans = trueans + 1.33;
        cmd1 = new SqlCommand("UPDATE DATA SET TRUE=" + trueans + " WHERE ID='" + Session["id"].ToString() + "'", con);
        i = cmd1.ExecuteNonQuery();
        if (i < 1)
            Response.Write("<script>alert('Could not update the Database')</script>");
    }
   
    
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            ConnectionStringSettings obj = ConfigurationManager.ConnectionStrings["cn"];
            con = new SqlConnection(obj.ConnectionString);
            con.Open();
            maxq = Int32.Parse(Session["maxq"].ToString());
            if(maxq==5)
                maxtime=10;
            else if(maxq==10)
                maxtime=20;
            else
                maxtime=30;

        //    endtime = maxtime * 60;
            rand = new Random();
            
            ans = new int[maxq];
            ansarray = new int[maxq];
            for (int i = 0; i < maxq; i++)
            {
                ans[i] = -1;
                ansarray[i] = -1;
            }
            if(Session["testsub"].ToString()=="1")
                sub="PPLQ";
            if(Session["testsub"].ToString()=="2")
                sub="DSQ";
            if(Session["testsub"].ToString()=="3")
                sub="ALGOQ";
            if(Session["testsub"].ToString()=="4")
            sub="OSQ";
            if(Session["testsub"].ToString()=="5")
            sub="DBMSQ";
            q = rand.Next(1, maxq + 1);
            ans[noq] = q;                                         // ans Array is for the Questions Answerd
            cmd = new SqlCommand("SELECT * FROM " + sub + " WHERE QNO=" + q, con);
            rd = cmd.ExecuteReader();
            rd.Read();
            noq++;                                   //  Question Counter Incremented
            Label2.Text = "QUESTION NO. " + noq;
            
                                      
            
            Label1.Text = rd.GetString(1);
            Label4.Text = "OPTIONS ARE : ";
            LinkButton1.Text = rd.GetString(2);
            LinkButton2.Text = rd.GetString(3);
            LinkButton3.Text = rd.GetString(4);
            LinkButton4.Text = rd.GetString(5);
            
            Label5.Text = "REMAINING TIME = " + (maxtime - time) + " Minutes approx. ";
            a = rd.GetString(6);
            rd.Close();
            addq();
        }
    }
  /*  protected void Timer1_Tick(object sender, EventArgs e)
    {
        time++;
        Label3.Text = "REMAINING TIME = " + (maxtime - time) + " Minutes ";
       
        if (time >= maxtime)
            qlock = 1;
    }   */
    protected void LinkButton4_Click(object sender, EventArgs e)
    {
        if ((qlock == 0) && (stoptest == 0))
        {
            if (LinkButton4.Text == a)
            {
                atrue++;
                addtrue();
                updatepoint();
                ansarray[noq - 1] = 4;
            }

            else
            {
                Response.Write("<script>alert('SORRY, You have entered a Wrong Answer')</script>");
                afalse++;
                addfalse();
                updatepoint();
                ansarray[noq - 1] = 4;
            }



            while (noq<maxq)
            {
                q = rand.Next(1, maxq + 1);
                for (int j = 0; j < noq; j++)
                {
                    if (ans[j] == q)
                    {
                        valid = 0;
                        break;
                    }
                    valid = 1;
                }
                if (valid == 1)
                    break;
            }

            if ((valid == 0) || (noq >= maxq))
            {
                Response.Write("<script>alert('You have finished answering All The questions. Please continue to Result. ')</script>");
                Button1.Visible = true;
                Button2.Visible = false;
                Button3.Visible = false;
                Button4.Visible = false;
                Label2.Visible = false;
                Label4.Visible = false;
                Label1.Text = "PLEASE PROCEED TO YOUR PORTAL By Clicking the Portal Button. ";
                LinkButton1.Visible = false;
                LinkButton2.Visible = false;
                LinkButton3.Visible = false;
                LinkButton4.Visible = false;
            }
            else
            {
                valid = 0;
                addq();
                ans[noq] = q;
                cmd = new SqlCommand("SELECT * FROM " + sub + " WHERE QNO=" + q, con);
                rd = cmd.ExecuteReader();
                rd.Read();
                Label2.Text = "QUESTION NO. " + (noq + 1);

                noq++;                           //  Question Counter Incremented

                Label1.Text = rd.GetString(1);
                LinkButton1.Text = rd.GetString(2);
                LinkButton2.Text = rd.GetString(3);
                LinkButton3.Text = rd.GetString(4);
                LinkButton4.Text = rd.GetString(5);
                a = rd.GetString(6);
                rd.Close();
            }

        }
        else if (qlock == 1)
            Response.Write("<script>alert('YOU HAVE BEEN TIMED OUT IN THE EXAMINATION. PLEASE PROCEED TO YOUR PORTAL FOR EVALUATION')</script>");
        else
            Response.Write("<script>alert('YOU HAVE MANUALLY STOPPED THE EXAMINATION. PLEASE PROCEED TO YOUR PORTAL FOR EVALUATION')</script>");
    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        if ((qlock == 0) && (stoptest == 0))
        {
            if (LinkButton1.Text == a)
            {
                atrue++;
                addtrue();
                updatepoint();
                ansarray[noq - 1] = 1;
            }

            else
            {
                Response.Write("<script>alert('SORRY, You have entered a Wrong Answer')</script>");
                afalse++;
                addfalse();
                updatepoint();
                ansarray[noq - 1] = 1;
            }



            while (noq < maxq)
            {
                q = rand.Next(1, maxq + 1);
                for (int j = 0; j < noq; j++)
                {
                    if (ans[j] == q)
                    {
                        valid = 0;
                        break;
                    }
                    valid = 1;
                }
                if (valid == 1)
                    break;
            }

            if ((valid == 0)||(noq >= maxq))
            {
                Response.Write("<script>alert('You have finished answering All The questions. Please continue to Result. ')</script>");
                Button1.Visible = true;
                Button2.Visible = false;
                Button3.Visible = false;
                Button4.Visible = false;
                Label2.Visible = false;
                Label4.Visible = false;
                Label1.Text = "PLEASE PROCEED TO YOUR PORTAL By Clicking the Portal Button. ";
                LinkButton1.Visible = false;
                LinkButton2.Visible = false;
                LinkButton3.Visible = false;
                LinkButton4.Visible = false;
            }
            else
            {
                valid = 0;
                addq();
                ans[noq] = q;
                cmd = new SqlCommand("SELECT * FROM " + sub + " WHERE QNO=" + q, con);
                rd = cmd.ExecuteReader();
                rd.Read();
                Label2.Text = "QUESTION NO. " + (noq + 1);

                noq++;                           //  Question Counter Incremented

                Label1.Text = rd.GetString(1);
                LinkButton1.Text = rd.GetString(2);
                LinkButton2.Text = rd.GetString(3);
                LinkButton3.Text = rd.GetString(4);
                LinkButton4.Text = rd.GetString(5);
                a = rd.GetString(6);
                rd.Close();
            }

        }
        else if (qlock == 1)
            Response.Write("<script>alert('YOU HAVE BEEN TIMED OUT IN THE EXAMINATION. PLEASE PROCEED TO YOUR PORTAL FOR EVALUATION')</script>");
        else
            Response.Write("<script>alert('YOU HAVE MANUALLY STOPPED THE EXAMINATION. PLEASE PROCEED TO YOUR PORTAL FOR EVALUATION')</script>");
    }
    protected void LinkButton2_Click(object sender, EventArgs e)
    {
        if ((qlock == 0) && (stoptest == 0))
        {
            if (LinkButton2.Text == a)
            {
                atrue++;
                addtrue();
                updatepoint();
                ansarray[noq - 1] = 2;
            }

            else
            {
                Response.Write("<script>alert('SORRY, You have entered a Wrong Answer')</script>");
                afalse++;
                addfalse();
                updatepoint();
                ansarray[noq - 1] = 2;
            }



            while (noq < maxq)
            {
                q = rand.Next(1, maxq + 1);
                for (int j = 0; j < noq; j++)
                {
                    if (ans[j] == q)
                    {
                        valid = 0;
                        break;
                    }
                    valid = 1;
                }
                if (valid == 1)
                    break;
            }

            if ((valid == 0) || (noq >= maxq))
            {
                Response.Write("<script>alert('You have finished answering All The questions. Please continue to Result. ')</script>");
                Button1.Visible = true;
                Button2.Visible = false;
                Button3.Visible = false;
                Button4.Visible = false;
                Label2.Visible = false;
                Label4.Visible = false;
                Label1.Text = "PLEASE PROCEED TO YOUR PORTAL By Clicking the Portal Button. ";
                LinkButton1.Visible = false;
                LinkButton2.Visible = false;
                LinkButton3.Visible = false;
                LinkButton4.Visible = false;
            }
            else
            {
                valid = 0;
                addq();
                ans[noq] = q;
                cmd = new SqlCommand("SELECT * FROM " + sub + " WHERE QNO=" + q, con);
                rd = cmd.ExecuteReader();
                rd.Read();
                Label2.Text = "QUESTION NO. " + (noq + 1);

                noq++;                           //  Question Counter Incremented

                Label1.Text = rd.GetString(1);
                LinkButton1.Text = rd.GetString(2);
                LinkButton2.Text = rd.GetString(3);
                LinkButton3.Text = rd.GetString(4);
                LinkButton4.Text = rd.GetString(5);
                a = rd.GetString(6);
                rd.Close();
            }

        }
        else if (qlock == 1)
            Response.Write("<script>alert('YOU HAVE BEEN TIMED OUT IN THE EXAMINATION. PLEASE PROCEED TO YOUR PORTAL FOR EVALUATION')</script>");
        else
            Response.Write("<script>alert('YOU HAVE MANUALLY STOPPED THE EXAMINATION. PLEASE PROCEED TO YOUR PORTAL FOR EVALUATION')</script>");
    }
    protected void LinkButton3_Click(object sender, EventArgs e)
    {
        if ((qlock == 0) && (stoptest == 0))
        {
            if (LinkButton3.Text == a)
            {
                atrue++;
                addtrue();
                updatepoint();
                ansarray[noq - 1] = 3;
            }

            else
            {
                Response.Write("<script>alert('SORRY, You have entered a Wrong Answer')</script>");
                afalse++;
                addfalse();
                updatepoint();
                ansarray[noq - 1] = 3;
            }



            while (noq < maxq)
            {
                q = rand.Next(1, maxq + 1);
                for (int j = 0; j < noq; j++)
                {
                    if (ans[j] == q)
                    {
                        valid = 0;
                        break;
                    }
                    valid = 1;
                }
                if (valid == 1)
                    break;
            }

            if ((valid == 0) || (noq >= maxq))
            {
                Response.Write("<script>alert('You have finished answering All The questions. Please continue to Result. ')</script>");
                Button1.Visible = true;
                Button2.Visible = false;
                Button4.Visible = false;
                Button3.Visible = false;
                Label2.Visible = false;
                Label4.Visible = false;
                Label1.Text = "PLEASE PROCEED TO YOUR PORTAL By Clicking the Portal Button. ";
                LinkButton1.Visible = false;
                LinkButton2.Visible = false;
                LinkButton3.Visible = false;
                LinkButton4.Visible = false;
            }
            else
            {
                valid = 0;
                addq();
                ans[noq] = q;
                cmd = new SqlCommand("SELECT * FROM " + sub + " WHERE QNO=" + q, con);
                rd = cmd.ExecuteReader();
                rd.Read();
                Label2.Text = "QUESTION NO. " + (noq + 1);

                noq++;                           //  Question Counter Incremented

                Label1.Text = rd.GetString(1);
                LinkButton1.Text = rd.GetString(2);
                LinkButton2.Text = rd.GetString(3);
                LinkButton3.Text = rd.GetString(4);
                LinkButton4.Text = rd.GetString(5);
                a = rd.GetString(6);
                rd.Close();
            }

        }
        else if (qlock == 1)
            Response.Write("<script>alert('YOU HAVE BEEN TIMED OUT IN THE EXAMINATION. PLEASE PROCEED TO YOUR PORTAL FOR EVALUATION')</script>");
        else
            Response.Write("<script>alert('YOU HAVE MANUALLY STOPPED THE EXAMINATION. PLEASE PROCEED TO YOUR PORTAL FOR EVALUATION')</script>");
    }
protected void  Button1_Click(object sender, EventArgs e)
{
    Session["total"] = noq;                        // It will be checked ( !=NULL) in the PORTAL Page to see if any outstanding results have not been showed
    Session["true"] = atrue;
    Session["false"] = afalse;
    noq=0;
    time=0;
    qlock=0;
    valid=0;
    atrue=0;
    afalse = 0;
    stoptest = 0;
    
    Response.Redirect("Default4.aspx");
}
protected void Button3_Click(object sender, EventArgs e)
{

    if ((qlock == 0)&&(stoptest==0))
    {
        while (noq < maxq)
        {
            q = rand.Next(1, maxq + 1);
            for (int j = 0; j < noq; j++)
            {
                if (ans[j] == q)
                {
                    valid = 0;
                    break;
                }
                valid = 1;
            }
            if (valid == 1)
                break;
        }

        if ((valid == 0) || (noq >= maxq))
        {
            Response.Write("<script>alert('You have finished answering All The questions. Please continue to Result. ')</script>");
            Button1.Visible = true;
            Button2.Visible = false;
            Button4.Visible = false;
            Button3.Visible = false;
            Label2.Visible = false;
            Label4.Visible = false;
            Label1.Text = "PLEASE PROCEED TO YOUR PORTAL By Clicking the Portal Button. ";
            LinkButton1.Visible = false;
            LinkButton2.Visible = false;
            LinkButton3.Visible = false;
            LinkButton4.Visible = false;
        }
        else
        {
            valid = 0;
            updatepoint();
            addq();
            ans[noq] = q;
            cmd = new SqlCommand("SELECT * FROM " + sub + " WHERE QNO=" + q, con);
            rd = cmd.ExecuteReader();
            rd.Read();
            Label2.Text = "QUESTION NO. " + (noq + 1);

            noq++;                           //  Question Counter Incremented

            Label1.Text = rd.GetString(1);
            LinkButton1.Text = rd.GetString(2);
            LinkButton2.Text = rd.GetString(3);
            LinkButton3.Text = rd.GetString(4);
            LinkButton4.Text = rd.GetString(5);
            a = rd.GetString(6);
            rd.Close();
        }

    }

    else if(qlock==1)
        Response.Write("<script>alert('YOU HAVE BEEN TIMED OUT IN THE EXAMINATION. PLEASE PROCEED TO YOUR PORTAL FOR EVALUATION')</script>");
    else
        Response.Write("<script>alert('YOU HAVE MANUALLY STOPPED THE EXAMINATION. PLEASE PROCEED TO YOUR PORTAL FOR EVALUATION')</script>");

}
protected void Button2_Click(object sender, EventArgs e)
{
  /*  Session["total"] = noq;                        // It will be checked ( !=NULL) in the PORTAL Page to see if any outstanding results have not been showed
    Session["true"] = atrue;
    Session["false"] = afalse;   */
    stoptest = 1;
    revflag = 0;
    revindex = -1;
    Label6.Visible = false;
    Label7.Visible = false;
    LinkButton10.Visible = false;
    LinkButton9.Visible = false;
    RadioButton1.Visible = false;
    RadioButton2.Visible = false;
    RadioButton3.Visible = false;
    RadioButton4.Visible = false;
    Button5.Visible = false;
    Button4.Visible = false;
    Button1.Visible = true;
    Button2.Visible = false;
    Button3.Visible = false;
    Response.Write("<script>alert('The Evaluation has been Stopped')</script>");
    Label2.Visible = false;
    Label4.Visible = false;
    Label1.Text = "PLEASE PROCEED TO YOUR PORTAL By Clicking the Portal Button. ";
    LinkButton1.Visible = false;
    LinkButton2.Visible = false;
    LinkButton3.Visible = false;
    LinkButton4.Visible = false;
}





protected void Timer1_Tick(object sender, EventArgs e)
{
    time++;
    if (((noq < maxq) && (stoptest == 0))&&(time<maxtime))
        Label5.Text = "REMAINING TIME = " + (maxtime - time) + " Minutes approx. ";
    
    else if(time>=maxtime)
    {
        qlock = 1;
        Label5.Text = " TIME IS UP. Please proceed to your Portal.";
        Button1.Visible = true;
        Button2.Visible = false;
        Button3.Visible = false;
        Timer1.Enabled = false;
        Label2.Visible = false;
        Label4.Visible = false;
        Label1.Text = "PLEASE PROCEED TO YOUR PORTAL By Clicking the Portal Button. ";
        LinkButton1.Visible = false;
        LinkButton2.Visible = false;
        LinkButton3.Visible = false;
        LinkButton4.Visible = false;
        revflag = 0;
        revindex = -1;
        Label6.Visible = false;
        Label7.Visible = false;
        LinkButton10.Visible = false;
        LinkButton9.Visible = false;
        RadioButton1.Visible = false;
        RadioButton2.Visible = false;
        RadioButton3.Visible = false;
        RadioButton4.Visible = false;
        Button4.Visible = false;
        Button5.Visible = false;
    }
    
    else
    {
        qlock = 1;
        Label5.Text = " TEST is Stopped. Please proceed to your Portal.";
        Button1.Visible = true;
        Button2.Visible = false;
        Button3.Visible = false;
        Timer1.Enabled = false;
        Label2.Visible = false;
        Label4.Visible = false;
        Label1.Text = "PLEASE PROCEED TO YOUR PORTAL By Clicking the Portal Button. ";
        LinkButton1.Visible = false;
        LinkButton2.Visible = false;
        LinkButton3.Visible = false;
        LinkButton4.Visible = false;
        revflag = 0;
        revindex = -1;
        Label6.Visible = false;
        Label7.Visible = false;
        LinkButton10.Visible = false;
        LinkButton9.Visible = false;
        RadioButton1.Visible = false;
        RadioButton2.Visible = false;
        RadioButton3.Visible = false;
        RadioButton4.Visible = false;
        Button4.Visible = false;
        Button5.Visible = false;
    }


}
protected void Button4_Click(object sender, EventArgs e)
{
    if (revflag == 0)
    {
        Response.Write("<script>alert('The MAIN TEST Buttons has been disabled. Please EXIT the Review Section to resume Test. ')</script>");
        revflag = 1;
        Label6.Visible = true;
        Label7.Visible = true;
        LinkButton9.Visible = true;
        LinkButton10.Visible = true;
        RadioButton1.Visible = true;
        RadioButton2.Visible = true;
        RadioButton3.Visible = true;
        RadioButton4.Visible = true;
        Button5.Visible = true;
        LinkButton1.Enabled = false;
        LinkButton2.Enabled = false;
        LinkButton3.Enabled = false;
        LinkButton4.Enabled = false;
        Button3.Enabled = false;
        revindex = noq - 1;
        if (revindex > 0)
        {
            revindex--;
            cmd = new SqlCommand("SELECT * FROM " + sub + " WHERE QNO=" + ans[revindex], con);
           // revindex--;
            rd = cmd.ExecuteReader();
            rd.Read();
            Label6.Text = rd.GetString(1);
            RadioButton1.Text = rd.GetString(2);
            RadioButton2.Text = rd.GetString(3);
            RadioButton3.Text = rd.GetString(4);
            RadioButton4.Text = rd.GetString(5);
            revans = rd.GetString(6);
            rd.Close();
        }

        else
        {
            Response.Write("<script>alert('YOU ARE OUT OF QUESTIONS FOR REVIEWING')</script>");
            RadioButton1.Visible = false;
            RadioButton2.Visible = false;
            RadioButton3.Visible = false;
            RadioButton4.Visible = false;
            Button5.Visible = false;
            
        }


    }

    else
    {
        revflag = 0;
    //    revindex=-1;
        Response.Write("<script>alert('TEST RESUMED')</script>");
        Label6.Visible = false;
        Label7.Visible = false;
        LinkButton10.Visible = false;
        LinkButton9.Visible = false;
        RadioButton1.Visible = false;
        RadioButton2.Visible = false;
        RadioButton3.Visible = false;
        RadioButton4.Visible = false;
        Button5.Visible = false;
        LinkButton1.Enabled = true;
        LinkButton2.Enabled = true;
        LinkButton3.Enabled = true;
        LinkButton4.Enabled = true;
        Button3.Enabled = true;
    }
}
protected void LinkButton9_Click(object sender, EventArgs e)
{
    if ((revindex < (noq - 1)) && (revindex > 0))
    {
        revindex--;
        cmd = new SqlCommand("SELECT * FROM " + sub + " WHERE QNO=" + ans[revindex], con);
       // revindex--;
        rd = cmd.ExecuteReader();
        rd.Read();
        Label6.Text = rd.GetString(1);
        RadioButton1.Text = rd.GetString(2);
        RadioButton2.Text = rd.GetString(3);
        RadioButton3.Text = rd.GetString(4);
        RadioButton4.Text = rd.GetString(5);
        revans = rd.GetString(6);
        rd.Close();
        RadioButton1.Visible = true;
        RadioButton2.Visible = true;
        RadioButton3.Visible = true;
        RadioButton4.Visible = true;
        Button5.Visible = true;
    }

    else
    {
        Response.Write("<script>alert('YOU ARE OUT OF QUESTION')</script>");
       // revindex = 0;
        RadioButton1.Visible = false;
        RadioButton2.Visible = false;
        RadioButton3.Visible = false;
        RadioButton4.Visible = false;
        Button5.Visible = false;
       
    }
}
protected void LinkButton10_Click(object sender, EventArgs e)
{
    if ((revindex < (noq-2))&&(revindex>=0))
    {
        revindex++;
        cmd = new SqlCommand("SELECT * FROM " + sub + " WHERE QNO=" + ans[revindex], con);
        //revindex++;
        rd = cmd.ExecuteReader();
        rd.Read();
        Label6.Text = rd.GetString(1);
        RadioButton1.Text = rd.GetString(2);
        RadioButton2.Text = rd.GetString(3);
        RadioButton3.Text = rd.GetString(4);
        RadioButton4.Text = rd.GetString(5);
        revans = rd.GetString(6);
        rd.Close();
        RadioButton1.Visible = true;
        RadioButton2.Visible = true;
        RadioButton3.Visible = true;
        RadioButton4.Visible = true;
        Button5.Visible = true;
    }

    else
    {
        Response.Write("<script>alert('YOU ARE OUT OF QUESTION')</script>");
      //  revindex = noq - 2;
        RadioButton1.Visible = false;
        RadioButton2.Visible = false;
        RadioButton3.Visible = false;
        RadioButton4.Visible = false;
        Button5.Visible = false;

    }
}
/* protected void LinkButton5_Click(object sender, EventArgs e)
{

    if (revlock != 1)
    {
        if (LinkButton5.Text == revans)
        {
            afalse--;
            atrue++;
            subfalse();
            updatepoint();
        }
        else
        {
            atrue--;
            afalse++;
            subtrue();
            updatepoint();
        }
        Response.Write("<script>alert('ANSWER CHANGED SUCCESSFULLY')</script>");
        revlock = 1;
    }

    else
        Response.Write("<script>alert('YOU JUST ENTERED THIS ANSWER')</script>");

}


protected void LinkButton6_Click(object sender, EventArgs e)
{
    if (revlock != 2)
    {
        if (LinkButton6.Text == revans)
        {
            afalse--;
            atrue++;
            subfalse();
            updatepoint();
        }
        else
        {
            atrue--;
            afalse++;
            subtrue();
            updatepoint();
        }
        Response.Write("<script>alert('ANSWER CHANGED SUCCESSFULLY')</script>");
        revlock = 2;
    }

    else
        Response.Write("<script>alert('YOU JUST ENTERED THIS ANSWER')</script>");

}


protected void LinkButton7_Click(object sender, EventArgs e)
{
if (revlock != 3)
    {
        if (LinkButton7.Text == revans)
        {
            afalse--;
            atrue++;
            subfalse();
            updatepoint();
        }
        else
        {
            atrue--;
            afalse++;
            subtrue();
            updatepoint();
        }
        Response.Write("<script>alert('ANSWER CHANGED SUCCESSFULLY')</script>");
        revlock = 3;
    }

    else
        Response.Write("<script>alert('YOU JUST ENTERED THIS ANSWER')</script>");

}

protected void LinkButton8_Click(object sender, EventArgs e)
{
if (revlock != 4)
    {
        if (LinkButton8.Text == revans)
        {
            afalse--;
            atrue++;
            subfalse();
            updatepoint();
        }
        else
        {
            atrue--;
            afalse++;
            subtrue();
            updatepoint();
        }
        Response.Write("<script>alert('ANSWER CHANGED SUCCESSFULLY')</script>");
        revlock = 4;
    }

    else
        Response.Write("<script>alert('YOU JUST ENTERED THIS ANSWER')</script>");


}    */
protected void RadioButton1_CheckedChanged(object sender, EventArgs e)
{
    

}
protected void Button5_Click(object sender, EventArgs e)
{
    if (RadioButton1.Checked == true)
    {
        if (ansarray[revindex] == 1)
            Response.Write("<script>alert('You have already given this as your answer')</script>");
        else
        {
            ansarray[revindex] = 1;
            if (RadioButton1.Text == revans)
            {
                afalse--;
                atrue++;
                subfalse();
                updatepoint();
            }
            else
            {
                atrue--;
                afalse++;
                subtrue();
                updatepoint();
            }
            Response.Write("<script>alert('ANSWER CHANGED SUCCESSFULLY')</script>");
        }

    }

    if (RadioButton2.Checked == true)
    {
        if (ansarray[revindex] == 2)
            Response.Write("<script>alert('You have already given this as your answer')</script>");
        else
        {
            ansarray[revindex] = 2;
            if (RadioButton2.Text == revans)
            {
                afalse--;
                atrue++;
                subfalse();
                updatepoint();
            }
            else
            {
                atrue--;
                afalse++;
                subtrue();
                updatepoint();
            }
            Response.Write("<script>alert('ANSWER CHANGED SUCCESSFULLY')</script>");
        }

    }

    if (RadioButton3.Checked == true)
    {
        if (ansarray[revindex] == 3)
            Response.Write("<script>alert('You have already given this as your answer')</script>");
        else
        {
            ansarray[revindex] = 3;
            if (RadioButton3.Text == revans)
            {
                afalse--;
                atrue++;
                subfalse();
                updatepoint();
            }
            else
            {
                atrue--;
                afalse++;
                subtrue();
                updatepoint();
            }
            Response.Write("<script>alert('ANSWER CHANGED SUCCESSFULLY')</script>");
        }

    }

    if (RadioButton4.Checked == true)
    {
        if (ansarray[revindex] == 4)
            Response.Write("<script>alert('You have already given this as your answer')</script>");
        else
        {
            ansarray[revindex] = 4;
            if (RadioButton4.Text == revans)
            {
                afalse--;
                atrue++;
                subfalse();
                updatepoint();
            }
            else
            {
                atrue--;
                afalse++;
                subtrue();
                updatepoint();
            }
            Response.Write("<script>alert('ANSWER CHANGED SUCCESSFULLY')</script>");
        }

    }
}
}