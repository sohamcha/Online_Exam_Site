<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default2.aspx.cs" Inherits="Default2" %>

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
            left: 35px;
            z-index: 1;
            width: 364px;
            height: 24px;
            top: 756px;
            right: 629px;
        }
        .style2
        {
            position: absolute;
            top: 822px;
            left: 38px;
            z-index: 1;
            width: 227px;
            height: 23px;
        }
        .style3
        {
            z-index: 1;
            left: 490px;
            position: absolute;
            height: 40px;
            width: 118px;
            top: 879px;
        }
        .style4
        {
            position: absolute;
            top: 759px;
            left: 486px;
            z-index: 1;
            width: 260px;
            height: 19px;
        }
        .style5
        {
            position: absolute;
            top: 820px;
            left: 487px;
            z-index: 1;
            width: 251px;
            height: 19px;
        }
        .style7
        {
            position: absolute;
            top: 603px;
            z-index: 1;
            left: 265px;
        }
        .style8
        {
            z-index: 1;
            left: 42px;
            top: 560px;
            position: absolute;
            height: 20px;
            width: 120px;
        }
        .style9
        {
            right: 820px;
        }
        .style10
        {
            z-index: 1;
            left: 307px;
            top: 526px;
            position: absolute;
            height: 20px;
            width: 171px;
        }
        </style>

</head>
<body bgcolor="White">
    <form id="form1" runat="server">
    <div>
    
        <asp:ScriptManager ID="ScriptManager1" runat="server">
        </asp:ScriptManager>
    
        <asp:Image ID="Image1" runat="server" ImageUrl="~/REG.jpg" 
            
            style="z-index: 1; left: 20px; top: 34px; position: absolute; width: 349px" 
            BackColor="#FFFF99" BorderColor="#FFFF66" BorderStyle="Groove" />
    
    </div>
    <p>
        &nbsp;</p>
    <p>
        <asp:Image ID="Image2" runat="server" ImageUrl="~/30975_StudyTips.jpg" 
            
            style="z-index: 1; left: 657px; top: 21px; position: absolute; height: 342px; width: 346px" 
            BorderColor="#990033" BorderStyle="Solid" />
        <asp:Label ID="Label8" runat="server" BackColor="#FF9999" BorderColor="Black" 
            BorderStyle="Outset" Font-Bold="True" Font-Italic="True" Font-Size="Large" 
            style="z-index: 1; left: 43px; top: 250px; position: absolute" Text="UserName"></asp:Label>
        <asp:TextBox ID="TextBox2" runat="server" 
            style="z-index: 1; left: 38px; top: 369px; position: absolute; height: 22px; width: 171px" 
            TextMode="Password" ontextchanged="TextBox2_TextChanged" TabIndex="2"></asp:TextBox>
        <asp:Calendar ID="Calendar1" runat="server" BackColor="White" 
            BorderColor="White" BorderWidth="1px" Font-Names="Verdana" Font-Size="9pt" 
            ForeColor="Black" NextPrevFormat="FullMonth" 
            onselectionchanged="Calendar1_SelectionChanged" 
            style="z-index: 1; left: 568px; top: 522px; position: absolute; height: 200px; width: 330px" 
            VisibleDate="1990-01-01">
            <DayHeaderStyle Font-Bold="True" Font-Size="8pt" />
            <NextPrevStyle Font-Bold="True" Font-Size="8pt" ForeColor="#333333" 
                VerticalAlign="Bottom" />
            <OtherMonthDayStyle ForeColor="#999999" />
            <SelectedDayStyle BackColor="#333399" ForeColor="White" />
            <TitleStyle BackColor="White" BorderColor="Black" BorderWidth="4px" 
                Font-Bold="True" Font-Size="12pt" ForeColor="#333399" />
            <TodayDayStyle BackColor="#CCCCCC" />
        </asp:Calendar>
        <asp:PasswordStrength ID="TextBox2_PasswordStrength" runat="server" 
            Enabled="True" TargetControlID="TextBox2">
        </asp:PasswordStrength>
        <asp:TextBox ID="TextBox5" runat="server" AutoPostBack="True" 
            ontextchanged="TextBox5_TextChanged" 
            
            style="z-index: 1; left: 41px; top: 290px; position: absolute; height: 26px; width: 170px" 
            TabIndex="1"></asp:TextBox>
    </p>
    <asp:Label ID="Label1" runat="server" Font-Size="Large" 
        style="z-index: 1; left: 43px; top: 171px; position: absolute; width: 57px; height: 21px;" 
        Text="NAME" Font-Bold="True" Font-Italic="True" ForeColor="Maroon" 
        BackColor="#CCFFCC" BorderStyle="Inset"></asp:Label>
    <p>
    <asp:TextBox ID="TextBox3" runat="server" 
        
            style="z-index: 1; left: 38px; top: 522px; position: absolute; height: 22px; width: 239px;" 
            ontextchanged="TextBox3_TextChanged" TabIndex="4"></asp:TextBox>
        <asp:TextBoxWatermarkExtender ID="TextBox3_TextBoxWatermarkExtender" 
            runat="server" Enabled="True" TargetControlID="TextBox3" 
            WatermarkText="To Get RESULTS via email">
        </asp:TextBoxWatermarkExtender>
        <asp:Label ID="Label5" runat="server" Font-Bold="True" Font-Italic="True" 
            ForeColor="Blue" 
            style="z-index: 1; left: 38px; top: 480px; position: absolute; height: 22px; width: 180px" 
            Text="EMAIL ADDRESS" BackColor="#FFCCFF" BorderStyle="Inset"></asp:Label>
    </p>
    <p>
    <asp:Label ID="Label3" runat="server" 
        style="z-index: 1; left: 40px; top: 331px; position: absolute; height: 21px; width: 91px" 
        Text="PASSWORD" Font-Bold="True" Font-Italic="True" ForeColor="#009999" 
            BackColor="#FFFF99" BorderStyle="Outset"></asp:Label>
        <asp:TextBox ID="TextBox1" runat="server" 
            
            style="z-index: 1; left: 42px; top: 211px; position: absolute; height: 23px; width: 175px" 
            ontextchanged="TextBox1_TextChanged"></asp:TextBox>
        </p>
    <p>
    </p>
        <asp:Label ID="Label6" runat="server" Font-Bold="True" Font-Italic="True" 
            ForeColor="#CC0099" 
            Text="D-O-B" BackColor="#CCFF99" BorderStyle="Outset" 
        CssClass="style8"></asp:Label>
        <asp:TextBox ID="TextBox4" runat="server" 
        ontextchanged="TextBox4_TextChanged" 
        
        style="z-index: 1; left: 37px; top: 602px; position: absolute; height: 23px; width: 171px; " 
        TabIndex="5" CssClass="style9"></asp:TextBox>
    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
        ControlToValidate="TextBox3" Display="Dynamic" ErrorMessage="ENTER VALID EMAIL" 
        ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" 
        CssClass="style10" Font-Bold="True"></asp:RegularExpressionValidator>
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
    </asp:UpdatePanel>
    <p>
        <asp:Label ID="Label7" runat="server" BackColor="Aqua" BorderStyle="Outset" 
            Font-Bold="True" Font-Italic="True" ForeColor="#FF3300" 
            style="z-index: 1; left: 35px; top: 643px; position: absolute; height: 21px; width: 273px" 
            Text="EDUCATIONAL QUALIFICATION"></asp:Label>
        <asp:Label ID="Label9" runat="server" BackColor="#CCFFCC" BorderColor="#993333" 
            BorderStyle="Outset" Font-Bold="True" Font-Italic="True" ForeColor="#0066FF" 
            style="z-index: 1; top: 405px; position: absolute; right: 825px" 
            Text="RETYPE PASSWORD"></asp:Label>
        <asp:DropDownList ID="DropDownList1" runat="server" 
            onselectedindexchanged="DropDownList1_SelectedIndexChanged" 
            
            style="z-index: 1; left: 40px; top: 691px; position: absolute; height: 21px; width: 145px" 
            TabIndex="6">
            <asp:ListItem>B.E/B.Tech</asp:ListItem>
            <asp:ListItem>M.E/M.Tech</asp:ListItem>
            <asp:ListItem>B.Sc</asp:ListItem>
            <asp:ListItem>M.Sc</asp:ListItem>
            <asp:ListItem>Others</asp:ListItem>
        </asp:DropDownList>
    </p>
    <p>
        <asp:TextBox ID="TextBox6" runat="server" 
            style="z-index: 1; left: 37px; top: 446px; position: absolute; height: 22px; width: 182px" 
            TextMode="Password" TabIndex="3"></asp:TextBox>
        <asp:CompareValidator ID="CompareValidator1" runat="server" 
            ControlToCompare="TextBox6" ControlToValidate="TextBox2" Display="Dynamic" 
            ErrorMessage="CHECK YOUR PASSWORD" 
            
            style="z-index: 1; left: 283px; top: 440px; position: absolute; height: 19px; width: 218px" 
            Font-Bold="True"></asp:CompareValidator>
    </p>
    <br />
    <br />
    <br />
    <p>
            <asp:Button ID="Button1" runat="server" BackColor="#FF6666" 
                BorderColor="#CC0000" BorderStyle="Outset" Font-Bold="True" Font-Italic="True" 
                Font-Names="Arial Black" Font-Size="Large" onclick="Button1_Click" 
                Text="REGISTER" ToolTip="Click Here to Register Finally" 
                CssClass="style3" />
            </p>
    <p>
            &nbsp;</p>
    <p>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
            ControlToValidate="TextBox4" CssClass="style7" ErrorMessage="D.O.B Required" 
            Font-Bold="True" Font-Italic="True"></asp:RequiredFieldValidator>
    </p>
    <p>
            &nbsp;</p>
    <p>
            &nbsp;</p>
    <p>
            <asp:TextBox ID="TextBox7" runat="server" CssClass="style1" 
                ontextchanged="TextBox7_TextChanged" TabIndex="6"></asp:TextBox>
            <asp:TextBox ID="TextBox8" runat="server" CssClass="style2" TabIndex="7"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                CssClass="style5" ErrorMessage="SECURITY ANSWER REQUIRED" Font-Bold="True" 
                ControlToValidate="TextBox8"></asp:RequiredFieldValidator>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                ControlToValidate="TextBox7" CssClass="style4" 
                ErrorMessage="SECURITY QUESTION REQUIRED" Font-Bold="True"></asp:RequiredFieldValidator>
            <asp:TextBoxWatermarkExtender ID="TextBox8_TextBoxWatermarkExtender" 
                runat="server" Enabled="True" TargetControlID="TextBox8" 
                WatermarkText="SECURITY ANSWER">
            </asp:TextBoxWatermarkExtender>
            <asp:TextBoxWatermarkExtender ID="TextBox7_TextBoxWatermarkExtender" 
                runat="server" Enabled="True" TargetControlID="TextBox7" 
                WatermarkText="SECURITY QUESTION">
            </asp:TextBoxWatermarkExtender>
    </p>
    <p>
            &nbsp;</p>
    <p>
            &nbsp;</p>
    <p>
            <asp:Label ID="Label10" runat="server" Font-Bold="True" Font-Size="Small" 
                ForeColor="Maroon" 
                style="z-index: 1; left: 19px; top: 919px; position: absolute; height: 17px; width: 190px" 
                Text="Designed by - Soham Chakraborty"></asp:Label>
    </p>
    </form>
</body>
</html>
