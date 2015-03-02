<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default7.aspx.cs" Inherits="Default7" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="asp" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body bgcolor="#ffcc99">
    <form id="form1" runat="server">
    <div>
    
    </div>
    <asp:ScriptManager ID="ScriptManager1" runat="server">
    </asp:ScriptManager>
    <p>
        <asp:Label ID="Label1" runat="server" BackColor="#99CCFF" Font-Bold="True" 
            Font-Names="Bell MT" Font-Size="XX-Large" 
            style="z-index: 1; left: 42px; top: 41px; position: absolute; height: 38px; width: 484px" 
            Text="QUESTION SUBMISSION PAGE"></asp:Label>
        <asp:DropDownList ID="DropDownList1" runat="server" 
            style="z-index: 1; left: 244px; top: 111px; position: absolute; height: 33px; width: 138px">
            <asp:ListItem>ENTER SUBJECT</asp:ListItem>
            <asp:ListItem>PRINCIPLE OF PROGRAMMING LANGUAGE</asp:ListItem>
            <asp:ListItem>ALGORYTHMS</asp:ListItem>
            <asp:ListItem>DATA STRUCTURE</asp:ListItem>
            <asp:ListItem>OPERATING SYSTEM</asp:ListItem>
            <asp:ListItem>DATABASE MANAGEMENT</asp:ListItem>
        </asp:DropDownList>
    </p>
    <p>
        <asp:Button ID="Button1" runat="server" BackColor="#FF66CC" Font-Bold="True" 
            Font-Size="Large" onclick="Button1_Click" 
            style="z-index: 1; left: 248px; top: 447px; position: absolute; height: 39px; width: 127px" 
            Text="SUBMIT" />
        <asp:TextBox ID="TextBox1" runat="server" 
            style="z-index: 1; left: 18px; top: 177px; position: absolute; height: 27px; width: 644px"></asp:TextBox>
        <asp:TextBoxWatermarkExtender ID="TextBox1_TextBoxWatermarkExtender" 
            runat="server" Enabled="True" TargetControlID="TextBox1" 
            WatermarkText="ENTER YOUR QUESTION HERE">
        </asp:TextBoxWatermarkExtender>
        <asp:TextBox ID="TextBox2" runat="server" 
            style="z-index: 1; left: 23px; top: 230px; position: absolute; height: 22px; width: 212px"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
            ControlToValidate="TextBox1" ErrorMessage="RequiredFieldValidator" 
            style="z-index: 1; left: 10px; top: 124px; position: absolute"></asp:RequiredFieldValidator>
        <asp:TextBox ID="TextBox5" runat="server" 
            style="z-index: 1; left: 417px; top: 297px; position: absolute; height: 26px; width: 208px"></asp:TextBox>
        <asp:TextBoxWatermarkExtender ID="TextBox5_TextBoxWatermarkExtender" 
            runat="server" Enabled="True" TargetControlID="TextBox5" 
            WatermarkText="OPTION 4">
        </asp:TextBoxWatermarkExtender>
        <asp:TextBoxWatermarkExtender ID="TextBox2_TextBoxWatermarkExtender" 
            runat="server" Enabled="True" TargetControlID="TextBox2" 
            WatermarkText="OPTION 1">
        </asp:TextBoxWatermarkExtender>
        <asp:TextBox ID="TextBox3" runat="server" 
            style="z-index: 1; left: 416px; top: 231px; position: absolute; height: 22px; width: 210px"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
            ControlToValidate="TextBox2" ErrorMessage="RequiredFieldValidator" 
            style="z-index: 1; left: 10px; top: 124px; position: absolute"></asp:RequiredFieldValidator>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
            ControlToValidate="TextBox3" ErrorMessage="RequiredFieldValidator" 
            style="z-index: 1; left: 10px; top: 124px; position: absolute"></asp:RequiredFieldValidator>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
            ControlToValidate="TextBox5" ErrorMessage="RequiredFieldValidator" 
            style="z-index: 1; left: 10px; top: 124px; position: absolute"></asp:RequiredFieldValidator>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
            ControlToValidate="TextBox6" ErrorMessage="RequiredFieldValidator" 
            style="z-index: 1; left: 10px; top: 124px; position: absolute"></asp:RequiredFieldValidator>
        <asp:TextBoxWatermarkExtender ID="TextBox3_TextBoxWatermarkExtender" 
            runat="server" Enabled="True" TargetControlID="TextBox3" 
            WatermarkText="OPTION 2">
        </asp:TextBoxWatermarkExtender>
        <asp:TextBox ID="TextBox4" runat="server" 
            style="z-index: 1; left: 22px; top: 309px; position: absolute; height: 20px; width: 208px"></asp:TextBox>
        <asp:TextBoxWatermarkExtender ID="TextBox4_TextBoxWatermarkExtender" 
            runat="server" Enabled="True" TargetControlID="TextBox4" 
            WatermarkText="OPTION 3">
        </asp:TextBoxWatermarkExtender>
        <asp:TextBox ID="TextBox6" runat="server" 
            style="z-index: 1; left: 203px; top: 362px; position: absolute; height: 27px; width: 221px"></asp:TextBox>
        <asp:TextBoxWatermarkExtender ID="TextBox6_TextBoxWatermarkExtender" 
            runat="server" Enabled="True" TargetControlID="TextBox6" WatermarkText="ANSWER">
        </asp:TextBoxWatermarkExtender>
    </p>
    <asp:LinkButton ID="LinkButton1" runat="server" onclick="LinkButton1_Click" 
        style="z-index: 1; left: 684px; top: 51px; position: absolute">GO TO PORTAL</asp:LinkButton>
    <p>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
            ControlToValidate="TextBox4" ErrorMessage="RequiredFieldValidator" 
            style="z-index: 1; left: 11px; top: 124px; position: absolute"></asp:RequiredFieldValidator>
        </p>
    </form>
</body>
</html>
