<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default11.aspx.cs" Inherits="Default11" %>

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
    <div>
    
    </div>
    <p>
        <asp:LinkButton ID="LinkButton1" runat="server" onclick="LinkButton1_Click" 
            style="z-index: 1; left: 52px; top: 402px; position: absolute">LinkButton</asp:LinkButton>
        <asp:Button ID="Button1" runat="server" BackColor="#FF6666" Font-Bold="True" 
            onclick="Button1_Click" 
            
            style="z-index: 1; left: 213px; top: 443px; position: absolute; height: 31px; width: 95px;" Text="PORTAL" 
            Visible="False" />
        <asp:Button ID="Button2" runat="server" BackColor="Aqua" Font-Bold="True" 
            style="z-index: 1; left: 801px; top: 587px; position: absolute; height: 28px; width: 85px" 
            Text="STOP TEST" onclick="Button2_Click" />
        <asp:LinkButton ID="LinkButton3" runat="server" 
            
            style="z-index: 1; left: 53px; top: 491px; position: absolute; right: 908px;" 
            onclick="LinkButton3_Click">LinkButton</asp:LinkButton>
        <asp:LinkButton ID="LinkButton2" runat="server" 
            style="z-index: 1; left: 374px; top: 402px; position: absolute" 
            onclick="LinkButton2_Click">LinkButton</asp:LinkButton>
        <asp:LinkButton ID="LinkButton4" runat="server" onclick="LinkButton4_Click" 
            style="z-index: 1; left: 375px; top: 493px; position: absolute">LinkButton</asp:LinkButton>
        <asp:Label ID="Label4" runat="server" BackColor="#FF6666" 
            style="z-index: 1; left: 30px; top: 349px; position: absolute; height: 27px; width: 122px" 
            Text="Label"></asp:Label>
    
        <asp:Timer ID="Timer1" runat="server" ontick="Timer1_Tick">
        </asp:Timer>
        <asp:Label ID="Label5" runat="server" BackColor="#FF99CC" Font-Bold="True" 
            Font-Names="Andalus" Font-Size="Larger" 
            style="z-index: 1; left: 639px; top: 49px; position: absolute; height: 54px; width: 328px" 
            Text="Label"></asp:Label>
    
    </p>
    <p>
    
        <asp:Image ID="Image1" runat="server" ImageUrl="~/logolis.jpg" 
            
            
            style="z-index: 1; left: 24px; top: 24px; position: absolute; height: 59px; width: 157px" />
    
        <asp:ScriptManager ID="ScriptManager1" runat="server">
        </asp:ScriptManager>
    
    </p>
    <p>
        &nbsp;</p>
    <asp:Image ID="Image2" runat="server" BorderColor="#FF0066" 
        BorderStyle="Outset" ImageUrl="~/exams.jpg" 
        
        
        style="z-index: 1; left: 597px; top: 125px; position: absolute; width: 434px; height: 413px" />
    <asp:Label ID="Label1" runat="server" BackColor="#FF9999" 
        style="z-index: 1; left: 23px; top: 147px; position: absolute; height: 181px; width: 494px" 
        Text="Label" Font-Bold="True" Font-Size="Larger"></asp:Label>
    <asp:Label ID="Label2" runat="server" BackColor="#66FFFF" 
        style="z-index: 1; left: 25px; top: 106px; position: absolute; height: 31px; width: 178px" 
        Text="Label" Font-Bold="True" ForeColor="#660033"></asp:Label>
    <asp:Button ID="Button3" runat="server" BackColor="#99FF99" 
        BorderColor="#CC0066" BorderStyle="Groove" Font-Bold="True" 
        onclick="Button3_Click" 
        style="z-index: 1; left: 219px; top: 555px; position: absolute; height: 33px; width: 81px" 
        Text="SKIP" />
    <p>
        <asp:Label ID="Label3" runat="server" Font-Bold="True" Font-Size="Small" 
            ForeColor="Maroon" 
            style="z-index: 1; left: 23px; top: 1183px; position: absolute; height: 17px; width: 190px" 
            Text="Designed by - Soham Chakraborty"></asp:Label>
    </p>
    <p>
        <asp:Button ID="Button4" runat="server" BackColor="#FFFFCC" 
            BorderColor="#FF0066" BorderStyle="Outset" Font-Bold="True" Font-Size="Large" 
            ForeColor="#990033" onclick="Button4_Click" 
            style="z-index: 1; left: 794px; top: 688px; position: absolute; height: 39px; width: 112px" 
            Text="REVIEW" />
        <asp:Label ID="Label6" runat="server" BorderColor="#FF0066" BorderStyle="Inset" 
            style="z-index: 1; left: 628px; top: 759px; position: absolute; height: 132px; width: 435px" 
            Text="Label" Visible="False"></asp:Label>
        <asp:LinkButton ID="LinkButton10" runat="server" 
            style="z-index: 1; left: 1108px; top: 763px; position: absolute; " 
            Visible="False" onclick="LinkButton10_Click">NEXT</asp:LinkButton>
        <asp:RadioButton ID="RadioButton1" runat="server" Font-Bold="True" 
            ForeColor="#FF6666" GroupName="g1" 
            oncheckedchanged="RadioButton1_CheckedChanged" 
            style="z-index: 1; left: 636px; top: 1007px; position: absolute" 
            Visible="False" />
        <asp:RadioButton ID="RadioButton2" runat="server" Font-Bold="True" 
            ForeColor="#FF0066" GroupName="g1" 
            style="z-index: 1; left: 636px; top: 1054px; position: absolute" 
            Visible="False" />
        <asp:RadioButton ID="RadioButton3" runat="server" Font-Bold="True" 
            ForeColor="#990033" GroupName="g1" 
            style="z-index: 1; left: 636px; top: 1102px; position: absolute" 
            Visible="False" />
        <asp:RadioButton ID="RadioButton4" runat="server" Font-Bold="True" 
            ForeColor="#660033" GroupName="g1" 
            style="z-index: 1; left: 637px; top: 1147px; position: absolute" 
            Visible="False" />
        <asp:Button ID="Button5" runat="server" BackColor="#FFFFCC" Font-Bold="True" 
            Font-Names="Arial Black" ForeColor="#0033CC" onclick="Button5_Click" 
            style="z-index: 1; left: 963px; top: 1073px; position: absolute; height: 26px; width: 78px" 
            Text="SUBMIT" Visible="False" />
    </p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
        <asp:LinkButton ID="LinkButton9" runat="server" 
            style="z-index: 1; left: 547px; top: 762px; position: absolute; height: 22px" 
            Visible="False" onclick="LinkButton9_Click">PREV</asp:LinkButton>
    </p>
    <p>
    <asp:Label ID="Label7" runat="server" BorderColor="#FF33CC" BorderStyle="Solid" 
        style="z-index: 1; left: 634px; top: 943px; position: absolute; height: 23px; width: 318px" 
        Text="Please Change Your Answer if you like :" Visible="False" 
            BackColor="#FFCCFF" Font-Bold="True" Font-Size="Large" ForeColor="#660033"></asp:Label>
    </p>
    </form>
</body>
</html>
