<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default3.aspx.cs" Inherits="Default3" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>

    <script language = "javascript" >
        javascript:window.history.forward(1);
    </script>
    <style type="text/css">
        .style1
        {
            z-index: 1;
            left: 198px;
            top: 441px;
            position: absolute;
            height: 36px;
            width: 118px;
        }
        .style2
        {
            position: absolute;
            top: 376px;
            left: 535px;
            z-index: 1;
            width: 704px;
            height: 442px;
        }
    </style>
</head>
<body bgcolor="#ccffff">
    <form id="form1" runat="server">
    <p>
        <asp:Label ID="Label3" runat="server" Font-Bold="True" Font-Size="Small" 
            ForeColor="Maroon" 
            style="z-index: 1; left: 19px; top: 828px; position: absolute; height: 17px; width: 190px" 
            Text="Designed by - Soham Chakraborty"></asp:Label>
    </p>
    <div>
    
    </div>
    <p>
        <asp:Label ID="Label1" runat="server" BackColor="White" BorderColor="#660066" 
            BorderStyle="Solid" Font-Bold="False" Font-Names="Goudy Stout" 
            Font-Size="XX-Large" ForeColor="#3366CC" 
            style="z-index: 1; left: 301px; top: 116px; position: absolute; height: 94px; width: 466px" 
            Text="REGISTRATION COMPLETED"></asp:Label>
    </p>
    <asp:Label ID="Label2" runat="server" Font-Bold="False" Font-Italic="False" 
        Font-Names="Book Antiqua" Font-Size="Large" ForeColor="Maroon" 
        
        
        style="z-index: 1; left: 222px; top: 292px; position: absolute; height: 32px; width: 664px"></asp:Label>
    <p>
        <asp:Button ID="Button1" runat="server" BackColor="#FFFFCC" 
            BorderColor="#663300" Font-Bold="True" Font-Italic="False" 
            Font-Names="Bradley Hand ITC" Font-Size="X-Large" ForeColor="#660066" 
            onclick="Button1_Click" 
            Text="LOGIN" CssClass="style1" />
        <asp:Image ID="Image1" runat="server" BorderColor="#6600FF" 
            BorderStyle="Outset" CssClass="style2" ImageUrl="~/ResultsDay07No172dpi.jpg" />
    </p>
    </form>
</body>
</html>
