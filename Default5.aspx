<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default5.aspx.cs" Inherits="Default5" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="asp" %>

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
            position: absolute;
            top: 56px;
            left: 11px;
            z-index: 1;
            width: 419px;
            height: 41px;
        }
        .style2
        {
            position: absolute;
            top: 135px;
            left: 403px;
            z-index: 1;
            width: 567px;
            height: 20px;
        }
        .style3
        {
            position: absolute;
            top: 213px;
            left: 47px;
            z-index: 1;
            width: 400px;
            height: 24px;
        }
        .style4
        {
            position: absolute;
            top: 256px;
            left: 47px;
            z-index: 1;
            width: 138px;
            height: 22px;
        }
        .style6
        {
            position: absolute;
            top: 295px;
            left: 50px;
            z-index: 1;
            width: 67px;
            height: 26px;
        }
        .style7
        {
            position: absolute;
            top: 346px;
            left: 45px;
            z-index: 1;
            width: 328px;
            height: 20px;
        }
        .style8
        {
            position: absolute;
            top: 388px;
            left: 45px;
            z-index: 1;
            height: 37px;
            width: 368px;
        }
        .style9
        {
            position: absolute;
            top: 459px;
            left: 48px;
            z-index: 1;
            width: 224px;
            height: 22px;
        }
        .style10
        {
            position: absolute;
            top: 508px;
            left: 49px;
            z-index: 1;
            width: 71px;
            height: 25px;
        }
        .style11
        {
            position: absolute;
            top: 206px;
            left: 563px;
            z-index: 1;
            width: 428px;
            height: 388px;
        }
        .style12
        {
            position: absolute;
            top: 569px;
            left: 51px;
            z-index: 1;
            width: 101px;
            height: 22px;
        }
    </style>
</head>
<body bgcolor="#ccffff">
    <form id="form1" runat="server">
    <p>
        <asp:Label ID="Label6" runat="server" Font-Bold="True" Font-Size="Small" 
            ForeColor="Maroon" 
            style="z-index: 1; left: 15px; top: 814px; position: absolute; height: 17px; width: 190px" 
            Text="Designed by - Soham Chakraborty"></asp:Label>
    </p>
    <div>
    
    </div>
    <p>
        <asp:Label ID="Label1" runat="server" BackColor="#FFCCCC" BorderColor="Maroon" 
            BorderStyle="Groove" CssClass="style1" Font-Bold="True" 
            Font-Names="Lucida Handwriting" Font-Size="XX-Large" ForeColor="#CC3300" 
            Text="PASSWORD RECOVERY"></asp:Label>
    </p>
    <p>
        <asp:Label ID="Label2" runat="server" BackColor="#FF99CC" BorderColor="#FF0066" 
            BorderStyle="Groove" CssClass="style2" Font-Italic="True" 
            Font-Names="BatangChe" Font-Size="Large" 
            Text="Forgot it ?  Do not worry! Just Follow the Steps to Retrieve it. "></asp:Label>
    </p>
    <p>
        &nbsp;</p>
    <asp:Label ID="Label3" runat="server" CssClass="style3" Font-Bold="True" 
        ForeColor="#003366" Text="PLEASE ENTER YOUR USERNAME :"></asp:Label>
    <asp:TextBox ID="TextBox1" runat="server" CssClass="style4" 
        ontextchanged="TextBox1_TextChanged"></asp:TextBox>
    <asp:Button ID="Button2" runat="server" CssClass="style6" 
        onclick="Button2_Click" Text="SUBMIT" BackColor="#FFFF99" 
        Font-Bold="True" />
    <asp:Label ID="Label4" runat="server" CssClass="style7"></asp:Label>
    <p>
        <asp:Label ID="Label5" runat="server" CssClass="style8" Font-Bold="True" 
            Text="PLEASE ENTER THE ANSWER TO YOUR SECURITY QUESTION :" Visible="False"></asp:Label>
    </p>
    <p>
        <asp:TextBox ID="TextBox2" runat="server" CssClass="style9" Visible="False"></asp:TextBox>
    </p>
    <asp:Button ID="Button3" runat="server" CssClass="style10" Text="SUBMIT" 
        Visible="False" onclick="Button3_Click" BackColor="#CCFF99" 
        Font-Bold="True" />
    <p>
        <asp:Image ID="Image1" runat="server" BorderColor="#660033" BorderStyle="Ridge" 
            CssClass="style11" ImageUrl="~/worried-1.jpg" />
        <asp:HyperLink ID="HyperLink1" runat="server" CssClass="style12" 
            NavigateUrl="~/Default.aspx">GO TO HOME</asp:HyperLink>
    </p>
    </form>
</body>
</html>
