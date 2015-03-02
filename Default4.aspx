<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default4.aspx.cs" Inherits="Default4" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="asp" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>

<script language = "javascript" >
    javascript:window.history.forward(1);
    </script>

</head>
<body bgcolor="#ccffcc">
    <form id="form1" runat="server">
    <p>
        &nbsp;</p>
    <asp:Label ID="Label1" runat="server" BackColor="#CCCCFF" BorderColor="#CC0066" 
        BorderStyle="Ridge" Font-Bold="True" Font-Italic="True" Font-Names="Ravie" 
        Font-Size="XX-Large" ForeColor="#FF0066" 
        
        
        
        style="z-index: 1; left: 4px; top: 76px; position: absolute; height: 92px; width: 971px"></asp:Label>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
        <asp:Label ID="Label2" runat="server" BackColor="#CCFFFF" BorderColor="Lime" 
            BorderStyle="Dashed" Font-Italic="True" Font-Names="Modern No. 20" 
            Font-Size="Larger" ForeColor="#FF0066" 
            
            
            style="z-index: 1; left: 20px; top: 199px; position: absolute; height: 24px; width: 231px; bottom: 356px"> </asp:Label>
    </p>
    <asp:Panel ID="Panel4" runat="server" BorderColor="#333399" BorderStyle="Outset" 
        
        style="z-index: 1; left: 358px; top: 541px; position: absolute; height: 158px; width: 201px" 
        BackColor="#CC0099">
    </asp:Panel>
    <asp:Panel ID="Panel2" runat="server" BorderColor="#CC0099" 
        BorderStyle="Outset" 
        
        style="z-index: 1; left: 353px; top: 275px; position: absolute; height: 159px; width: 204px" 
        BackColor="#990033">
    </asp:Panel>
    <asp:Panel ID="Panel7" runat="server" BackColor="#FF6699" Font-Bold="True" 
        Font-Names="Berlin Sans FB" ForeColor="Black" 
        
        style="z-index: 1; left: 32px; top: 728px; position: absolute; height: 44px; width: 207px">
        Click to Get Your Current Score</asp:Panel>
    <p>
    </p>
    <asp:Panel ID="Panel1" runat="server" BorderColor="#660033" BorderStyle="Inset" 
        
        style="z-index: 1; left: 22px; top: 269px; position: absolute; height: 168px; width: 219px" 
        BackColor="#009999">
        <asp:ImageButton ID="ImageButton1" runat="server" 
    
            style="z-index: 1; left: 6px; top: 15px; position: absolute; height: 84px; width: 202px;" 
            ImageUrl="~/take_test_logo.gif" onclick="ImageButton1_Click1" />
        <asp:ImageButton ID="ImageButton2" runat="server" 
            ImageUrl="~/submit_question.png" 
            
            style="z-index: 1; left: 335px; top: 43px; position: absolute; height: 86px; width: 190px" 
            onclick="ImageButton2_Click" />
        <asp:DropDownList ID="DropDownList1" runat="server" 
            
            style="z-index: 1; left: 31px; top: 123px; position: absolute; height: 26px; width: 153px" 
            onselectedindexchanged="DropDownList1_SelectedIndexChanged">
            <asp:ListItem>SUBJECT TO TEST</asp:ListItem>
            <asp:ListItem>PROGRAMMING METHODOLOGY</asp:ListItem>
            <asp:ListItem>DATA STRUCTURES</asp:ListItem>
            <asp:ListItem>ALGORITHMICS</asp:ListItem>
            <asp:ListItem>OPERATING SYSTEMS</asp:ListItem>
            <asp:ListItem>DATABASE MANAGEMENT</asp:ListItem>
        </asp:DropDownList>
    </asp:Panel>
    <asp:Panel ID="Panel3" runat="server" BorderColor="#0066FF" BorderStyle="Ridge" 
        
        style="z-index: 1; left: 29px; top: 542px; position: absolute; height: 160px; width: 208px" 
        BackColor="#009900">
        <asp:ImageButton ID="ImageButton3" runat="server" 
    
            style="z-index: 1; left: 9px; top: 22px; position: absolute; width: 187px; height: 122px;" 
            ImageUrl="~/canstock5639210.jpg" onclick="ImageButton3_Click" />
    </asp:Panel>
    <asp:ScriptManager ID="ScriptManager1" runat="server">
    </asp:ScriptManager>
    <asp:ImageButton ID="ImageButton4" runat="server" ImageUrl="~/report_card2.jpg" 
        
        style="z-index: 1; left: 372px; top: 566px; position: absolute; width: 181px; height: 122px" 
        onclick="ImageButton4_Click" />
    <p>
        <asp:Image ID="Image2" runat="server" BorderColor="#CC0000" 
            BorderStyle="Outset" ImageUrl="~/exam_results_image.jpg" 
            style="z-index: 1; left: 606px; top: 277px; position: absolute; width: 677px; height: 509px" />
    </p>
    <asp:Label ID="Label3" runat="server" Font-Bold="True" Font-Size="Small" 
        ForeColor="Maroon" 
        style="z-index: 1; left: 19px; top: 811px; position: absolute; height: 17px; width: 190px" 
        Text="Designed by - Soham Chakraborty"></asp:Label>
    <div>
    
        <asp:Image ID="Image1" runat="server" ImageUrl="~/logolis.jpg" 
            
            style="z-index: 1; left: 9px; top: 9px; position: absolute; height: 59px; width: 157px" />
    
    </div>
    <asp:LinkButton ID="LinkButton1" runat="server" ForeColor="#CC0099" 
        onclick="LinkButton1_Click" 
        style="z-index: 1; top: 22px; position: absolute; height: 23px; width: 64px; left: 909px">LOGOUT</asp:LinkButton>
    <asp:Panel ID="Panel5" runat="server" BackColor="Aqua" Font-Bold="True" 
        Font-Italic="False" Font-Names="Berlin Sans FB" ForeColor="Maroon" 
        style="z-index: 1; left: 26px; top: 454px; position: absolute; height: 40px; width: 219px">
        Click to START your Evaluation</asp:Panel>
    <asp:Panel ID="Panel6" runat="server" BackColor="#FFFFCC" Font-Bold="True" 
        Font-Names="Berlin Sans FB" ForeColor="#CC0099" 
        
        style="z-index: 1; left: 361px; top: 453px; position: absolute; height: 40px; width: 203px">
        Click to Submit you Questions to our Database</asp:Panel>
    <asp:Panel ID="Panel8" runat="server" BackColor="#99CCFF" Font-Bold="True" 
        Font-Names="Berlin Sans FB" ForeColor="#CC0000" 
        
        style="z-index: 1; left: 358px; top: 728px; position: absolute; height: 45px; width: 215px">
        Get your Complete Evaluation and RANK</asp:Panel>
    </form>
</body>
</html>
