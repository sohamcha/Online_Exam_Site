<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="Default2" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="asp" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<script runat="server">

    protected void TextBox2_TextChanged(object sender, EventArgs e)
    {

    }
</script>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            z-index: 1;
            left: 600px;
            top: 116px;
            position: absolute;
            width: 393px;
        }
    </style>
</head>
<body background="final-exam1.jpg">
    <form id="form1" runat="server">
    <div>
    
    </div>
    <p>
        <asp:Image ID="Image1" runat="server" ImageUrl="~/logolis.jpg" 
            
            style="z-index: 1; left: 13px; top: 6px; position: absolute; height: 147px; width: 549px" 
            BorderColor="Red" BorderStyle="Double" />
    </p>
    <p>
        <asp:Image ID="Image2" runat="server" ImageUrl="~/Title2.jpg" 
            
            style="z-index: 1; left: 302px; top: 120px; position: absolute; height: 28px; width: 256px" 
            BorderColor="#FF0066" BorderStyle="Groove" />
    </p>
    <asp:TextBox ID="TextBox2" runat="server" ontextchanged="TextBox2_TextChanged" 
        
        style="z-index: 1; left: 844px; top: 16px; position: absolute; height: 22px; width: 118px;" 
        TextMode="Password"></asp:TextBox>
    <asp:TextBoxWatermarkExtender ID="TextBox2_TextBoxWatermarkExtender" 
        runat="server" Enabled="True" TargetControlID="TextBox2" 
        WatermarkText="PASSWORD">
    </asp:TextBoxWatermarkExtender>
    <asp:Button ID="Button1" runat="server" 
        style="z-index: 1; left: 726px; top: 60px; position: absolute; height: 22px; width: 59px" 
        Text="LOGIN" onclick="Button1_Click" />
    <asp:LinkButton ID="LinkButton1" runat="server" 
        
        
        style="z-index: 1; left: 846px; top: 52px; position: absolute; height: 18px; width: 157px" 
        onclick="LinkButton1_Click">New User ? SignUp!</asp:LinkButton>
    <asp:LinkButton ID="LinkButton2" runat="server" 
        
        
        style="z-index: 1; left: 856px; top: 77px; position: absolute; height: 19px; width: 134px" 
        onclick="LinkButton2_Click">Forgot Password</asp:LinkButton>
    <asp:TextBox ID="TextBox3" runat="server" ontextchanged="TextBox3_TextChanged" 
        
        style="z-index: 1; left: 687px; top: 17px; position: absolute; height: 22px; width: 129px; right: 203px;"></asp:TextBox>
    <asp:TextBoxWatermarkExtender ID="TextBox3_TextBoxWatermarkExtender" 
        runat="server" Enabled="True" TargetControlID="TextBox3" 
        WatermarkText="USERNAME">
    </asp:TextBoxWatermarkExtender>
    <asp:ScriptManager ID="ScriptManager1" runat="server">
    </asp:ScriptManager>
    <p>
        <asp:Label ID="Label1" runat="server" BackColor="White" BorderColor="#99CCFF" 
            BorderStyle="Ridge" Font-Italic="True" Font-Names="Bodoni MT" 
            Font-Size="Larger" ForeColor="#FF0066" 
            Text="Your One Stop for all Computer Studies" CssClass="style1"></asp:Label>
    </p>
    <p>
        <asp:Label ID="Label3" runat="server" Font-Bold="True" Font-Size="Small" 
            ForeColor="Maroon" 
            style="z-index: 1; left: 10px; top: 780px; position: absolute; height: 17px; width: 190px" 
            Text="Designed by - Soham Chakraborty"></asp:Label>
    </p>
    </form>


</body>
</html>
