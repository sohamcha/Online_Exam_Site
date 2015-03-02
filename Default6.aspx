<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default6.aspx.cs" Inherits="Default6" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body bgcolor="#99ffcc">
    <form id="form1" runat="server">
    <div>
    
        <asp:Label ID="Label1" runat="server" BackColor="#FF9999" BorderColor="#990033" 
            BorderStyle="Groove" Font-Bold="True" Font-Names="Bradley Hand ITC" 
            Font-Size="XX-Large" 
            style="z-index: 1; left: 6px; top: 79px; position: absolute; height: 79px; width: 514px" 
            Text="Label"></asp:Label>
    
        <asp:Image ID="Image1" runat="server" ImageUrl="~/logolis.jpg" 
            
            
            style="z-index: 1; left: 11px; top: 7px; position: absolute; height: 59px; width: 157px" />
    
    </div>
    <p>
        <asp:Label ID="Label3" runat="server" Font-Bold="True" Font-Size="Small" 
            ForeColor="Maroon" 
            style="z-index: 1; left: 19px; top: 838px; position: absolute; height: 17px; width: 190px" 
            Text="Designed by - Soham Chakraborty"></asp:Label>
    </p>
    <p>
        <asp:Image ID="Image2" runat="server" ImageUrl="~/GOOD LUCK EXAM.jpg" 
            style="z-index: 1; left: 576px; top: 225px; position: absolute; height: 433px; width: 462px" />
    </p>
    <asp:Panel ID="Panel1" runat="server" BackColor="#FFFFCC" Font-Italic="True" 
        Font-Names="Arial Black" 
        style="z-index: 1; left: 49px; top: 220px; position: absolute; height: 24px; width: 312px">
        INSTRUCTIONS for the Evaluation :</asp:Panel>
    <asp:Panel ID="Panel2" runat="server" BackColor="#45ECFA" Font-Bold="True" 
        Font-Names="Batang" ForeColor="#CC00CC" 
        
        
        style="z-index: 1; left: 47px; top: 278px; position: absolute; height: 420px; width: 417px">
        <ul>
            <li>
                <p>
                    The TEST Will comprise of Questions from your Selected Topic only.</p>
            </li>
            <li>
                <p>
                    Please Specify the Maximum number of Questions from the DropDown List below. 
                    Your Time Limit will be calculated based on your selection.</p>
            </li>
            <li>
                <p>
                    At any point of time within the TEST, you can Quit. Your current Performance 
                    will be evaluated based on the Questions answered within the Test irrespective 
                    of it&#39;s completetion.</p>
            </li>
            <li>
                <p>
                    If your Alloted time expires before you complete the Test, the remaining 
                    Questions will be cancelled.</p>
            </li>
            <li>
                <p>
                    Each Question has a marks of 1 point alloted and wrong answer will get 0.33 
                    deducted from your total. No negative marking if unanswered.</p>
            </li>
        </ul>
    </asp:Panel>
    <asp:DropDownList ID="DropDownList1" runat="server" 
        
        
        style="z-index: 1; left: 157px; top: 726px; position: absolute; height: 27px; width: 155px">
        <asp:ListItem>MAX No. of Questions</asp:ListItem>
        <asp:ListItem>5</asp:ListItem>
        <asp:ListItem>10</asp:ListItem>
        <asp:ListItem>15</asp:ListItem>
    </asp:DropDownList>
    <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/take_test_1.jpg" 
        onclick="ImageButton1_Click" 
        
        
        style="z-index: 1; left: 149px; top: 769px; position: absolute; height: 29px; width: 176px" />
    </form>
</body>
</html>
