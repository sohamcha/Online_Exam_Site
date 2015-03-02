<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default8.aspx.cs" Inherits="Default8" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
    </div>
    <asp:Image ID="Image1" runat="server" BackColor="White" BorderColor="Maroon" 
        BorderStyle="Inset" ImageUrl="~/test.jpg" 
        style="z-index: 1; left: 526px; top: 94px; position: absolute; height: 403px; width: 570px" />
    <asp:LinkButton ID="LinkButton1" runat="server" Font-Bold="True" 
        Font-Names="Curlz MT" ForeColor="#003366" onclick="LinkButton1_Click" 
        style="z-index: 1; left: 689px; top: 22px; position: absolute; right: 274px; height: 19px">RETEST</asp:LinkButton>
    <asp:LinkButton ID="LinkButton2" runat="server" Font-Bold="True" 
        Font-Names="Curlz MT" ForeColor="Red" onclick="LinkButton2_Click" 
        style="z-index: 1; top: 23px; position: absolute; left: 788px; height: 22px; width: 102px">Go to Portal</asp:LinkButton>
    <p>
    
        <asp:Image ID="Image2" runat="server" ImageUrl="~/logolis.jpg" 
            
            
            
            style="z-index: 1; left: 24px; top: 24px; position: absolute; height: 59px; width: 157px" />
    
        <asp:Label ID="Label3" runat="server" Font-Bold="True" Font-Size="Small" 
            ForeColor="Maroon" 
            style="z-index: 1; left: 10px; top: 780px; position: absolute; height: 17px; width: 190px" 
            Text="Designed by - Soham Chakraborty"></asp:Label>
    </p>
    <asp:Panel ID="Panel1" runat="server" BackColor="#CCFF99" BorderColor="#CC0000" 
        BorderStyle="Groove" Font-Bold="True" Font-Names="Curlz MT" Font-Size="X-Large" 
        ForeColor="#FF0066" 
        style="z-index: 1; left: 16px; top: 192px; position: absolute; height: 36px; width: 455px">
        Result of your Most Recent Evaluation Test :</asp:Panel>
    <asp:Image ID="Image3" runat="server" ImageUrl="~/analyze_test_logo.gif" 
        style="z-index: 1; left: 14px; top: 81px; position: absolute; height: 95px; width: 158px" />
    <asp:Label ID="Label4" runat="server" BackColor="#FFCCFF" BorderColor="#660033" 
        BorderStyle="Solid" Font-Bold="True" Font-Names="Curlz MT" Font-Size="Large" 
        style="z-index: 1; left: 26px; top: 298px; position: absolute; height: 52px; width: 171px" 
        Text="TOTAL QUESTIONS FACED"></asp:Label>
    <asp:Label ID="Label5" runat="server" BackColor="#FF6699" BorderColor="#0099CC" 
        BorderStyle="Solid" Font-Bold="True" Font-Names="Curlz MT" Font-Size="Large" 
        style="z-index: 1; left: 26px; top: 395px; position: absolute; height: 52px; width: 166px" 
        Text="TOTAL CORRECTLY ANSWERED"></asp:Label>
    <asp:Label ID="Label6" runat="server" BackColor="#FF5050" BorderColor="#CC00CC" 
        BorderStyle="Solid" Font-Bold="True" Font-Names="Curlz MT" Font-Size="Large" 
        style="z-index: 1; left: 33px; top: 490px; position: absolute; height: 51px; width: 163px" 
        Text="TOTAL ANSWERED WRONGLY"></asp:Label>
    <asp:Label ID="Label7" runat="server" BackColor="#66CCFF" BorderColor="#FF0066" 
        BorderStyle="Solid" Font-Bold="True" Font-Names="Curlz MT" Font-Size="Large" 
        style="z-index: 1; left: 33px; top: 594px; position: absolute; height: 26px; width: 166px" 
        Text="POINTS OBTAINED"></asp:Label>
    <asp:Label ID="Label8" runat="server" Font-Bold="True" Font-Italic="True" 
        Font-Names="Palatino Linotype" Font-Size="X-Large" ForeColor="#990033" 
        style="z-index: 1; left: 282px; top: 305px; position: absolute; height: 26px; width: 111px" 
        Text="Label"></asp:Label>
    <asp:Label ID="Label9" runat="server" Font-Bold="True" Font-Italic="True" 
        Font-Names="Palatino Linotype" Font-Size="X-Large" ForeColor="Blue" 
        style="z-index: 1; left: 282px; top: 408px; position: absolute; height: 26px; width: 114px" 
        Text="Label"></asp:Label>
    <asp:Label ID="Label10" runat="server" Font-Bold="True" Font-Italic="True" 
        Font-Names="Palatino Linotype" Font-Size="X-Large" ForeColor="#FF3300" 
        style="z-index: 1; left: 286px; top: 503px; position: absolute; height: 25px; width: 99px" 
        Text="Label"></asp:Label>
    <asp:Label ID="Label11" runat="server" Font-Bold="True" Font-Italic="True" 
        Font-Names="Palatino Linotype" Font-Size="X-Large" ForeColor="#333300" 
        style="z-index: 1; left: 286px; top: 591px; position: absolute; height: 26px; width: 143px" 
        Text="Label"></asp:Label>
    </form>
</body>
</html>
